package com.example.armin.database_t1.educativa.db;

/**
 * Created by armin on 29/08/2018.
 */

public final class Cursos {

    int id;
    String name_Course;

    public Cursos(int id, String name_Course) {
        this.id = id;
        this.name_Course = name_Course;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName_Course() {
        return name_Course;
    }

    public void setName_Course(String name_Course) {
        this.name_Course = name_Course;
    }
}
