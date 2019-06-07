/******************************************************************************************************************/ // 창고지기 위치찾기

void current_position(void current_position[current_y][current_x];)
{
        for(level=0; level<5; level++)
        {
                for(y=0; y<30; y++)
                {
                        for(x=0; x<30; x++)
                        {
                                switch(map[level][y][x])
                                {
                                        case '@':
                                          current_position[current_y][current_x];
                                          current_y=y;
                                          current_x=x;
                                }
                        }
                }
        }
}
/********************************************************************************************************************/ // 창고지기 움직이기

void move_position(void current_position[current_y][current_x];){

int key;
int mx=0, my=0;

void current_position();

while(1){
        key = getch();

        switch(key){                            // key 값

                case 'h'
                        mx=-1; break;
                case 'j'
                        my=+1; break;
                case 'k'
                        my=-1; break;
                case 'l'
                        mx=+1; break;
        }


    if(current_position[current_y + my][current_x + mx] =='.')     //현재위치의 다음칸이 빈공간일때
    {
           current_position[current_y][current_x]=='.';                 //현재위치를 빈공간으로
           current_position[current_y + my][current_x + mx]=='@';       //현재의 다음위치를 창고지기로
    }

    else if(current_position[current_y + my][current_x + mx] == '#')      //현재위치의 다음칸이 벽일떄
    {
          mx=0;
          my=0;                                                                 //mx와 my값을 0으로 초기화
          current_position[current_y + my][current_x + mx] == '@'               //초기화된 값을 대입하므로 창고지기 위치 변함없음.
    }
}

/***************************************************************************************************************/ // 창고지기 박스 움직이기

void move_box(void current_position[current_y][current_x];){

        void current_position();
        void move_position();

        if(current_position[current_y + my*2][current_x + mx*2] == '.')  //창고지기 옆옆칸이 빈공간이고
        {
                if(current_position[current_y + my][current_x + mx] == '$') // 창고지기 옆칸이 박스일때
                {

                   current_position[current_y][current_x] == '.';                     //창고지기 위치는 빈공간
                   current_position[current_y + my][current_x + mx] == '@' ;               //박스칸에는 창고지기
                   current_position[current_y + my*2][current_x + mx*2] == '$';                //빈공간에는 박스 놓는다.
                   }

        }
        else if (current_position[current_y + my*2][current_x + mx*2] == '#')       //창고지기 옆옆칸이 벽이고
        {
                if(current_position[current_y + my][current_x + mx] == '$')     //창고지기 옆칸이 박스면
                        current_position[current_y][current_x] == '@'; // 안움직이게 하기

        }

        else if(current_position[current_y + my*2][current_x + mx*2] == '$')     //창고지기 옆옆칸이 박스고
        {
                if(current_position[current_y + my][current_x + mx] == '$')      //창고지기 옆칸이 박스면
                        current_position[current_y][current_x] == '@';
        }


}
