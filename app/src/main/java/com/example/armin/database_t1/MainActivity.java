package com.example.armin.database_t1;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.widget.TextView;

import com.example.armin.database_t1.educativa.db.Cursos;
import com.example.armin.database_t1.educativa.db.Inventory;

import java.util.List;


public class MainActivity extends AppCompatActivity {

    private TextView mTextMessage;
    private Inventory inventory;
    private TextView txt_aux;
    private List<Cursos> cursosList;

    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationView.OnNavigationItemSelectedListener() {

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            switch (item.getItemId()) {
                case R.id.navigation_home:
                    mTextMessage.setText(R.string.title_home);
                    return true;
                case R.id.navigation_dashboard:
                    mTextMessage.setText(R.string.title_dashboard);
                    return true;
                case R.id.navigation_notifications:
                    mTextMessage.setText(R.string.title_notifications);
                    return true;
            }
            return false;
        }
    };

    //AÑADI ESTA WEAAAA
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mTextMessage = (TextView) findViewById(R.id.message);
        txt_aux = (TextView) findViewById(R.id.txt_test);

        BottomNavigationView navigation = (BottomNavigationView) findViewById(R.id.navigation);
        navigation.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener);

        inventory = new Inventory(getApplicationContext());

        List<Cursos> user_to_profiles= inventory.getAllCursos();

        txt_aux.setText(user_to_profiles.get(1).getName_Course());


    }

}
