#!/bin/bash
clear
 if [ -d "server" ]
then
	echo "[Cube]已发现server文件夹！"
else
	mkdir server
fi

if [ -a server/eula.txt ]
then
	echo "[Cube]已发现eula.txt"
else
	touch server/eula.txt;echo "eula=TRUE">>server/eula.txt
fi

if [ -a server/server.properties ];then
 	echo "[Cube]已发现server.properties"
else
	touch server/server.properties
echo "generator-settings=
force-gamemode=false
allow-nether=true
gamemode=0
enable-query=false
player-idle-timeout=0
difficulty=1
spawn-monsters=true
op-permission-level=4
pvp=true
snooper-enabled=true
level-type=DEFAULT
hardcore=false
enable-command-block=false
max-players=20
network-compression-threshold=256
resource-pack-sha1=
max-world-size=29999984
server-port=25565
server-ip=
spawn-npcs=true
allow-flight=false
level-name=world
view-distance=10
resource-pack=
spawn-animals=true
white-list=false
generate-structures=true
online-mode=false
max-build-height=256
level-seed=
prevent-proxy-connections=false
use-native-transport=true
motd=A Minecraft Server
enable-rcon=false">>server/server.properties
fi
echo
echo
echo "   ⌠▓▒▓▒▓▒     ⌠█┐ ┌█     ⌠▓▓▒▓▒     ⌠▓▒▓▒▓                      "
echo "  ║▓           │▒║ ║▒     ║▓    ▓    ║▒_                         "
echo "  ║▓           ║◙║ ║◙     ≡◙◙◙◙◙     ≡◙◙◙◙◙                      "
echo "  ║▓           │▒└_┘▒     ║▓    ▓    ║▒                          " 
echo "  ║▓           ⌡◘▒▓▒◘     ⌡▓▓▒▓▒     ⌡▓▓▒▓▒                      "
echo "  ║▓                                                             "
echo "   ⌡▓▒▓▒▓▒                                                       "
echo "                                           Ver 4.0               "
echo "                                         Linux Edition           " 
echo "                                                                 " 
echo "                                   Powered by:Love_Spin          " 
echo "                                                                 " 
echo "                                                                 "
echo
echo "       *************请按任意按键继续......*************"
read -n1
	while true
do
clear
echo
echo "      [Cube] 请选择 (输入选项前的数字即可)"
echo  
echo "          [1]开启服务器"
echo "          [2]配置服务器"
echo "          [3]下载服务端"
echo "          [4]Cauldron服务器选项"
echo "          [5]退出服务器"
echo "          [6]软件说明书"
echo "          [7]更新日志"
echo
read -p "请输入:" cmd
	case $cmd in
  1 ) 
	clear
if [ -a server/start.jar ]||[ -a *.jar ]||[ -a server/Cauldronjar.jar ];then
	echo "[Cube]发现ｊａｒ文件，正在启动服务器"
		 mv *.jar start.jar
		cp -r start.jar server
		cd server/
		java -jar start.jar
	echo "[Cube]服务器已关闭"
	break;
else echo "[Cube]未发现jar文件,请在菜单界面选择下载服务端，或者把服务端jar文件放在与开服器的同一个文件夹内!"
	break;
	fi
	;;
       
 2 )
	vim server/server.properties
	;;
 3 )
 clear
	
while true
do
         echo "[Cube]下载服务端  *支持断点续传"
	echo
	echo "      请选择服务端类型："
	echo "              [1]Spigot"
	echo "              [2]PaperSpigot  (待更新)"
	echo "              [3]Cauldron     "
        echo "              [4]CraftBukkit  (待更新)"
        echo "              [5]Sponge       (待更新)"
        echo "              [6]TacoSpigot   (待更新)"
        echo "              [7]BungeeCord   (待更新)"
	echo "              [8]返回"
		read -p "请输入:" lx
        clear
			if [ $lx -eq 1 ];then
                                        echo
					echo "         [Cube]选择Spigot服务端版本 *支持断点续传"
					echo ""
					echo "                [1]1.12"
					echo "                [2]1.11.2"
					echo "                [3]1.10.2"
					echo "                [4]1.9.4"
					echo "                [5]1.8.8"
					echo "                [6]返回"
							read -p "请输入:" sp
								case $sp in
									1 ) wget -c "yivesmirror.com/files/spigot/spigot-1.12-R0.1-SNAPSHOT-b1372.jar"
								;;
                                                                        2) wget -c "yivesmirror.com/files/spigot/spigot-1.11.2-R0.1-SNAPSHOT.jar"
                                                                ;;
                                                                        3) wget -c "yivesmirror.com/files/spigot/spigot-1.10.2-R0.1-SNAPSHOT.jar"
                                                                ;;
                                                                        4) wget -c "yivesmirror.com/files/spigot/spigot-1.9.4-R0.1-SNAPSHOT.jar"
                                                                ;;
                                                                        5) wget -c "yivesmirror.com/files/spigot/spigot-1.8.8-R0.1-SNAPSHOT.jar"
                                                                ;;
                                                                        6) return;
                                                                              clear
                                                                ;;
								esac
                        elif [ $lx -eq 3 ];then
                                    echo
                                    echo "         [Cube]选择Cauldron服务端版本  *支持断点续传"
                                    echo
                                    echo  "               [1]1.7.10"
                                    echo  "               [2]返回"
                                    echo
                                                                        read -p "请输入:" cau
                                                                                    case $cau in
                                                                                                    1)clear
                                                                                                        echo "[Cube]正在下载服务端，请稍后....．"
                                                                                                    
                                                                                                        wget -c "https://nchc.dl.sourceforge.net/project/cauldron-unofficial/1.7.10/libraries-1.1388.1.0.zip" -O Cauldronlib.zip 
                                                                                                          wget -c "https://nchc.dl.sourceforge.net/project/cauldron-unofficial/1.7.10/cauldron-1.7.10-1.1388.1.0-server.jar" -O Cauldronjar.jar
                                                                                        ;;
                                                                                                    2) return;
                                                                                                            clear
                                                                                        ;;
                                                                                        esac
			elif [ $lx -eq 8 ];then
                        break
                        fi
                                        
                                        

          done
	;;
4  )clear
        echo "[Cube]Cauldron服务端选项"
        echo
        echo "      [1]安装Cauldron服务端"
        echo "      [2]开启Cauldron服务器"
        echo "      [3]管理mod    (待更新)"
        echo "      [4]返回"
        echo
                read -p "请输入:" cx
                            case $cx in 
                                    1 ) 
        
                                            echo "[Cube]您必须在Cube服务端下载界面下载Cauldron!!"
                                            echo "[Cube]请按回车键确认并安装！"
                                            read -n1
                                                    if [ -a Cauldronjar.jar ];then
                                                                    echo "[Cube]已发现Cauldron主程序"
                                                                    cp -r Cauldronjar.jar server
                                                  else
                                                                    echo "[Cube]未发现Cauldron主程序，请重新下载并检查"
                                                                    read -n1
                                                                    return;
                                                                    
                                                    fi
                                                    if [ -a Cauldronlib.zip ];then
                                                                    echo "[Cube]已发现Cauldron Lib文件"
                                                    cp -r Cauldronlib.zip server
                                                    cd server
                                                    unzip Cauldronlib.zip
                                                    else
                                                                  echo "[Cube]未发现Cauldron　Lib文件，请重新下载并检查"
                                                                    read -n1
                                                                    return;
                                                                    clear
                                            echo "[Cube]安装成功"
                                                    fi
                                    
                    ;;
                                  2 )
                                        if [ -a server/Cauldronjar.jar  ];then
                                                                echo "[Cube]已发现Cauldron主程序，正在打开服务器．．．．"
                                                                cd server
                                                                java -jar Cauldronjar.jar
                                        else 
                                                                echo "[Cube]未发现Cauldron主程序，请检查是否下载和安装！"
                                                                break;
                                                                clear
                                    fi
                        ;;
                                
                        esac
        
        
        ;;

		
5 )
	break
    ;;
6 )
	vim Readme.txt
    ;;
7 )
	vim 更新日志.txt
;;

 
	esac
done
echo
echo
echo **********请按任意按键退出服务器......**********
read -n1
