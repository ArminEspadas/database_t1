package com.example.armin.database_t1.educativa.db;

import android.content.Context;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by armin on 28/08/2018.
 */


//*****************************************************************************************************************
//---------------------------------------------------------------------------------------------------------------------
// CATEGORY CURSOR
    class CursosCursor extends CursorWrapper {

        public CursosCursor(Cursor cursor) {super(cursor);}


        public Cursos getCursos(){

            Cursor cursor = getWrappedCursor();
            return  new Cursos(cursor.getInt(cursor.getColumnIndex(RedDbSchema.Curso_Table.Columns.ID)),
                    cursor.getString(cursor.getColumnIndex(RedDbSchema.Curso_Table.Columns.NAME_COURSE)));
        }

    }

//*****************************************************************************************************************
//---------------------------------------------------------------------------------------------------------------------
public final class Inventory {

    private InventoryHelper inventoryHelper;
    private SQLiteDatabase db;

    public  Inventory(Context context) {
        inventoryHelper = new InventoryHelper(context);
        db = inventoryHelper.getWritableDatabase();
    }

    //*****************************************************************************************************************
//---------------------------------------------------------------------------------------------------------------------
     // Obtener todos los cursos

    public List<Cursos> getAllCursos() {
        List<Cursos> list = new ArrayList<Cursos>();

        CursosCursor cursor = new CursosCursor((db.rawQuery("SELECT * FROM curso ORDER BY id", null)));

        while (cursor.moveToNext()) {

            list.add((cursor.getCursos()));  // metodo wrappcursor
        }

        cursor.close();
        return list;

    }







}
