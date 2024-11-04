import pandas as pd
def insert_csv_to_mysql(file_path, table_name):
    # Leer el archivo CSV en un DataFrame
    df = pd.read_csv(file_path, encoding='Windows-1252',delimiter=';', on_bad_lines='skip')
    df = df.replace("'", r"\\'", regex=True)
    df['Release'] = pd.to_datetime(df['Release'], format='%d/%m/%Y', errors='coerce')
    df['Release'] = pd.to_datetime(df['Release'], errors='coerce').dt.strftime('%Y-%m-%d')
    da=pd.DataFrame(df['Artist1'])
    da = da.drop_duplicates(subset=['Artist1'], keep='first')
    dal=pd.DataFrame(df)
    dal = dal.drop_duplicates(subset=['Album'], keep='first')
    dc=pd.DataFrame(df)
    dc=dc.dropna(subset=['Artist2'])


    # Conectarse a MySQL
    """connection = connect_to_mysql()
    if connection is None:
        return
    
    cursor = connection.cursor()
"""
    # Iterar sobre cada fila en el DataFrame y construir e insertar el comando SQL
    sql_insert="INSERT INTO `cancion` (`nombre`, `id_artista`, `id_album`, `popularity`, `duration`, `danceability`, `energy`, `llave`, `loudness`, `speechiness`, `acousticness`, `liveness`, `rank`) VALUES"
    album_insert="INSERT INTO album (`nombre`,`fecha_lanzamiento`,`id_artista`) VALUES"
    artist_insert="INSERT INTO artista (`nombre`) VALUES"
    colab_insert="INSERT INTO r_colaborador_cancion (`id_artista`,`id_cancion`) VALUES"
    for _, row in df.iterrows():
        values = tuple(row)
        #print("Valor{table_name} , ",row,":",values)
        #sql_insert+=str(row[0])
        
        sql_insert+=f" ('{str(row[1])}',(SELECT id FROM ARTISTA WHERE nombre='{str(row[2])}'),(SELECT id FROM ALBUM WHERE nombre='{str(row[3])}'),{str(row[4])},{str(row[5])},{str(row[6])},{str(row[7])},{str(row[8])},{str(row[9])},{str(row[10])},{str(row[11])},{str(row[12])},{str(row[0])}) ,"
    sql_insert+=";"
    
    for _, row in da.iterrows():
        artist_insert+=f"('{str(row[0])}'),"
    artist_insert+=";"
    for _, row in dal.iterrows():
        album_insert+=f"('{str(row[3])}','{str(row[13])}',(SELECT id FROM ARTISTA WHERE nombre='{str(row[2])}')),"
    album_insert+=";"
    for _, row in dc.iterrows():
        colab_insert+=f"((SELECT id FROM ARTISTA WHERE nombre='{str(row[14])}'),(SELECT id FROM CANCION WHERE nombre='{str(row[1])}')),"
    colab_insert+=";"
    print(colab_insert)
        
    """ placeholders = ", ".join(["%s"] * len(row))
        sql_insert = f"INSERT INTO {table_name} VALUES ({placeholders})"
        
        try:
            cursor.execute(sql_insert, values)
            print(f"Fila insertada: {values}")
        except Error as e:
            print(f"Error al insertar en MySQL: {e}") """

    # Confirmar transacciones e insertar datos

    print("Inserciones completadas y conexión cerrada.")

# Llama a la función con el archivo CSV y la tabla destino en MySQL
file_path = r"C:\Users\Aaron\OneDrive\Documents\Año4\ADIU\Ejemplo_practica\Practica1_ADIU\CountryHits240901.csv"  # Cambia por la ruta de tu archivo CSV
import chardet


# Detecta la codificación
with open(file_path, "rb") as file:
    result = chardet.detect(file.read(10000))  # Lee los primeros 10,000 bytes para estimar la codificación

print("Codificación detectada:", result["encoding"])
table_name = "Spotify"    # Cambia por el nombre de tu tabla
insert_csv_to_mysql(file_path, table_name)