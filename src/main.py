import pymysql


def execute_sql_file(file_path, cursor):
    with open(file_path, 'r') as sql_file:
        sql_script = sql_file.read()
        cursor.execute(sql_script)
    cursor.connection.commit()


def main():
    # Establish connection
    connection = pymysql.connect(
        host='localhost',
        port=3306,
        user='root',
        password='123456789',
        database='blogs_app',
        cursorclass=pymysql.cursors.DictCursor
    )

    try:
        with connection.cursor() as cursor:
            # Execute the SQL script to create tables
            sql_files_paths = [
                './tables/users.sql', './tables/posts.sql', './tables/comments.sql', './tables/user_details.sql',
                './tables/cars.sql', './tables/user_mobiles.sql', './tables/user_finance.sql'
            ]

            for sql_file_path in sql_files_paths:
                execute_sql_file(sql_file_path, cursor)
    finally:
        # Close the connection
        connection.close()


main()
