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
echo "   ⌡▓▒▓▒▓▒    now everyone can run MC Server                     "
echo
echo "                                            Ver 8.5              "
echo "                                         Linux Edition           " 
echo "                                                                 " 
echo "                                                                 " 
echo "                Powered by:  Love_Spin                           " 
echo "                                                                 "
echo
echo "       *************请按任意按键继续**************"
read -n1

if [ -a config.txt ];then
		echo "[Cube]已发现config.txt"
		name=$(cat config.txt)
else 
read -p "请输入您的用户名：" name
			touch config.txt
			echo $name>>config.txt
	if [ $name="Love_Spin" ];then
		echo "[开发者Love_Spin]哟，你敢盗我名字！！"
		name="盗名字贼"
		echo "[Cube]正在载入中......"
		sleep 2
	else
		echo "[Cube]是一个好名字！"
		echo "[Cube]正在载入中......"
		sleep 2
	fi

fi



	while true
do
clear
echo
echo -e "	[Cube]\033[33m $name \033[0m欢迎使用！请选择"
echo
echo "          [N]新手一键快速开服"  
echo "          [1]开启服务器"
echo "          [2]配置服务器"
echo "          [3]下载服务端" 
echo "          [4]Cauldron服务器选项"
echo "          [5]小工具"         
echo "          [6]客服"
echo "          [Q/q]退出服务器"
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
	read -n1
else echo "[Cube]未发现jar文件,请在菜单界面选择下载服务端，或者把服务端jar文件放在与开服器的同一个文件夹内!"
	read -n1
	fi
	;;
       
 2 )
	vim server/server.properties
	;;
 3 )
 clear
	
while true
do
	clear
         echo "[Cube]下载服务端  *支持断点续传"
	echo
	echo "      请选择服务端类型："
echo
echo "Vanilla:"	
	echo "              [1]Spigot"
	echo "              [2]PaperSpigot  "
	echo "              [3]Glowstone    (待更新)"
	echo "              [4]TacoSpigot   (待更新)"
        echo "              [5]CraftBukkit  (待更新)"
echo

echo "Forge:"
	echo "              [6]Cauldron(MCPC+)     "
        echo "              [7]Sponge       (待更新)"
        echo "              [8]TacoSpigot   (待更新)"
echo

echo "Multi-Threaded:"
	echo "              [9]Torch        (待更新)"
	echo "              [10]HOSE        (待更新)"
echo
echo "Network:"
	echo "              [11]WaterFall   (待更新)"
	echo "              [12]HexaCord    (待更新)"
	echo "              [13]Travertine	(待更新)"
	echo "              [14]BugeeCord   (待更新)"
echo
echo "MCPE:"
	echo "              [15]Nukkit      (待更新)"
	echo "              [16]Genisys     (待更新)"
	echo "              [17]PocketMine  (待更新)         插件及Mod服务端请往上拉"
echo
echo "Other:"
	echo "              [18]Bukkit		(待更新)"
	echo "              [19]Pixelmon		(待更新)"
	echo "              [20]MultiCraft  (待更新)"
echo
	echo "              [888]返回"
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
					echo "                [q]返回"
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
                                                                        q) return;
                                                                              clear
                                                                ;;
								esac
			elif [ $lx -eq 2 ];then
				     echo
                                    echo "         [Cube]选择PaperSpigot服务端版本  *支持断点续传"
                                    echo
                                    echo "               [1]1.12"
				    echo "               [2]1.11.2"
				    echo "               [3]1.8.8"
                                    echo "               [q]返回"
                                    echo
							read -p "请输入:" psd
								case $pad in
									1)clear
									    echo "[Cube]正在下载服务端，请稍后....．"
									    wget -c "http://yivesmirror.com/files/paperspigot/PaperSpigot-latest.jar"
									;;
									2)clear
										echo "[Cube]正在下载服务端，请稍后....．"
										wget -c "http://yivesmirror.com/files/paperspigot/PaperSpigot-1.11.2-b1104.jar"
										;;
									3)clear
										echo "[Cube]正在下载服务端，请稍后....．"
										wget -c "http://yivesmirror.com/files/paperspigot/PaperSpigot-api-1.8.8-R0.1-SNAPSHOT-latest.jar"
										;;
	                                                                  q) return
                                                                               clear  	         
                                                                                        ;;
                                                                                        esac
				
                        elif [ $lx -eq 6 ];then
                                    echo
                                    echo "         [Cube]选择Cauldron服务端版本  *支持断点续传"
                                    echo
                                    echo  "               [1]1.7.10"
                                    echo  "               [q]返回"
                                    echo
                                                                        read -p "请输入:" cau
                                                                                    case $cau in
                                                                                                    1)clear
                                                                                                        echo "[Cube]正在下载服务端，请稍后....．"
                                                                                                    
                                                                                                        wget -c "https://nchc.dl.sourceforge.net/project/cauldron-unofficial/1.7.10/libraries-1.1388.1.0.zip" -O Cauldronlib.zip 
                                                                                                          wget -c "https://nchc.dl.sourceforge.net/project/cauldron-unofficial/1.7.10/cauldron-1.7.10-1.1388.1.0-server.jar" -O Cauldronjar.jar
                                                                                        ;;
                                                                                                    q) return;
                                                                                                            clear
                                                                                        ;;
                                                                                        esac
			elif [ $lx -eq 888 ];then
                        break
                        fi
                                        
                                        

          done
	;;
4  )clear
while true
do
clear
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
																		echo "[Cube]服务器已关闭"
																		read -n1
                                        else 
                                                                echo "[Cube]未发现Cauldron主程序，请检查是否下载和安装！"
								read -n1
                                                                break;
                                                                clear
                                    fi
                        ;;
				4)
					break
			;;
                                
                        esac
        
        done
        ;;
5)
while true
do
clear
echo 
echo "	[Cube]小工具界面"
echo ""
echo "		[1]帮助中心"
echo "		[2]软件说明书"
echo "		[3]下载更新"
echo "		[4]修改用户名"
echo "		[5]查看版本号"
echo "		[6]更新日志"
echo "		[7]返回"
	read -p "请输入:" xgj
			case $xgj in
				1)
					echo "官方ＱＱ群：108484347"
					read -n1
					return;
					;;
				2)
					vim 更新日志.txt
					;;
				3)
				echo "[Cube]下载更新方法：按回车键，然后在Cube for Linux文件夹里可以找到cubemc文件夹，里面的Cube for Linux.sh便是更新文件"				
				read -n1
				git clone https://github.com/HenryKingChina/cubemc.git
					;;

				4)
					read -p "请输入您的用户名：" name
					echo $name>config.txt
 
 

					;;
				5)
					echo "Ver 8.5"
					echo "更新代号：O"
					read -n1
					return
					;;
				6)
					
					vim 更新日志.txt
			;;
				7)
					break
				;;


esac
done
;;


		
			"q" )
				break
			    ;;
			"Q")
				break
				;;
			
			
			
6)
	#客服
clear
echo "[Cube]这是客服界面"
echo -e "[Cube]开发者\033[45;37m [imgcre] \033[0m和南九正在上线....."
echo "[Cube]请等待1s"
sleep 1
echo "[Cube]请等待2s"
sleep 1
echo "[Cube]请等待3s"
sleep 2
echo
echo -e "[Cube]\033[42;37m online! \033[0m"
echo
name=$(cat config.txt)
	while true
do

echo -e "\033[45;37m [imgcre] \033[0m正在输入中...."
sleep 1
echo -e "\033[45;37m [imgcre] \033[0m请问有什么问题或疑问么?"
read -p [$name] qe
			
#特殊疑问词

		

			if [[ $qe =~ "怎么" ]]||[[ $qe =~ "如何" ]]||[[ $qe =~ "咋" ]];then
		#怎么开服系列　start
					if [[ $qe =~ "开服" ]]||[[ $qe =~ "启动" ]]||[[ $qe =~ "开启服务器" ]]||[[ $qe =~ "使用" ]]||[[ $qe =~ "用" ]]||[[ $qe =~ "服务器" ]];then
						echo -e "\033[45;37m [imgcre] \033[0m正在输入中...."
						sleep 2
						echo -e "\033[45;37m [imgcre] \033[0m$name你好！可以把事先准备好的服务端放在与开服器同一个文件夹里，或者直接下载服务端直接开服即可！"
						echo
		#怎么开服系列　end
                            elif [[ $qe =~ "安装" ]]||[[ $qe =~ "装" ]]||[[ $qe =~ "弄" ]]||[[ $qe =~ "搞" ]]||[[ $qe =~ "整" ]]||[[ $qe =~ "办" ]]||[[ $qe =~ "做" ]];then
						if [[ $qe =~ "插件" ]];then
								echo -e "\033[45;37m [imgcre] \033[0m正在输入中...."
								sleep 2
								echo -e "\033[45;37m [imgcre] \033[0m$name你好！把下载的插件拖到server/plugin然后开服就行了！"
								echo
						elif [[ $qe =~ "mod" ]]||[[ $qe =~ "Mod" ]]||[[ $qe =~ "MOD" ]]||[[ $qe =~ "MoD" ]]||[[ $qe =~ "mOD" ]]||[[ $qe =~ "moD" ]]||[[ $qe =~ "mOd" ]]||[[ $qe =~ "MOd" ]];then
								echo -e "\033[45;37m [imgcre] \033[0m正在输入中...."
								sleep 2
								echo -e "\033[45;37m [imgcre] \033[0m$name你好！去下载Cauldron服务端，然后在Cauldron服务端界面中启动服务器。然后把下载的mod拖到server/mod然后开服就行了！"
								echo
				elif [[ $qe =~ "下载" ]]||[[ $qe =~ "下" ]];then
								echo -e "\033[45;37m [imgcre] \033[0m正在输入中...."
								sleep 2
								echo -e "\033[45;37m [imgcre] \033[0m$name你好！去下载服务端界面选择服务端，并选择版本就行了"





                                            else 
                                                        if [[ $qe =~ "搞" ]]||[[ $qe =~ "弄" ]]||[[ $qe =~ "做" ]]||[[ $qe =~ "办" ]]||[[ $qe =~ "整" ]];then
						echo -e "\033[45;37m [imgcre] \033[0m正在输入中...."
						sleep 2
						echo -e "\033[45;37m [imgcre] \033[0m$name你好！请问问题问完整！"
						echo
                                                fi

				
                            
                            
                            
                            
						fi
					



					

					
					
    					fi
			
			
					
                    elif [[ $qe =~ "退出" ]];then
				echo "[Cube]正在断线...."
				sleep 2
				echo -e "\033[45;37m [imgcre] \033[0m谢谢你的咨询"
				sleep 1
				break
			elif [[ $qe =~ "帮助" ]];then 
				echo -e "\033[45;37m [imgcre] \033[0m正在输入中...."
				sleep 2
				echo -e "\033[45;37m [imgcre] \033[0m可以问我怎么开服啊！实在不行请加入ＱＱ群或者等待更新客服！"
				echo
			else
				echo -e "\033[45;37m [imgcre] \033[0m正在输入中...."
				sleep 1
				echo -e "\033[45;37m [imgcre] \033[0m我不知道你在问什么问题，如需退出，请输入退出即可。查看帮助，输入帮助即可。"
				echo
			fi

done
read -n1

;;
#客服end





"N" )
while true
do
clear
echo
echo "	[Cube]请选择你想开的服务器"
echo "	"
echo "		[1]可以装Mod和插件"
echo "		[2]只能装插件"
echo "		[q]返回"
read -p "请选择:" ns1
		case $ns1 in
			1)	echo
				echo "	[Cube]请选择想游玩的版本"
				echo "		"
				echo "			[1]1.7.10"
				echo "			[q]返回"
					read -p "请选择:" nsver1
						case $nsver1 in
							1)clear 
								echo "[Cube]正在准备下载"
								wget -c "https://nchc.dl.sourceforge.net/project/cauldron-unofficial/1.7.10/libraries-1.1388.1.0.zip" -O Cauldronlib.zip 
                                                                wget -c "https://nchc.dl.sourceforge.net/project/cauldron-unofficial/1.7.10/cauldron-1.7.10-1.1388.1.0-server.jar" -O Cauldronjar.jar
								echo "[Cube]正在准备安装"
			                                          if [ -a Cauldronjar.jar ];then
                                                                    echo "[Cube]已发现服务器主程序"
                                                                    cp -r Cauldronjar.jar server
                                                  else
                                                                    echo "[Cube]未发现服务器主程序，请重新下载并检查"
                                                                    read -n1
                                                                    return;
                                                                    
                                                    fi
                                                    if [ -a Cauldronlib.zip ];then
                                                                    echo "[Cube]已发现服务器Lib文件"
                                                    cp -r Cauldronlib.zip server
                                                    cd server
                                                    unzip Cauldronlib.zip
                                                    else
                                                                  echo "[Cube]未发现服务器Lib文件，请重新下载并检查"
                                                                    read -n1
                                                                    return;
                                                                    clear
                                            echo "[Cube]安装成功"
                                                    fi
					    echo "[Cube]请前去主页面的“Cauldron服务器选项“中开启服务器"
								read -n1
                                                                   ;;




							q)return;
							clear
								;;
						esac
;;

			2)echo
				echo "	[Cube]请选择想游玩的版本"
				echo "		"
					
				echo "         [1]1.12"
				echo "         [2]1.11.2"
				echo "         [3]1.10.2"
				echo "         [4]1.9.4"
				echo "         [5]1.8.8"
				echo "			[q]返回"
						read -p "请输入:" xssp
								case $xssp in
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
                                                                        q) return;
                                                                              clear
                                                                ;;
								esac
							echo "[Cube]请前往主页面选择开启服务器！"
							read -n1






			    ;;

				q)
					break
				;;



			esac

		done	
			
		 
	esac


done
echo
echo
echo **********请按任意按键退出服务器***********
read -n1
