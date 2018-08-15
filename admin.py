#!/usr/bin/env python
# -*- coding: utf-8 -*-

import itchat
import subprocess

@itchat.msg_register(itchat.content.TEXT, isFriendChat=True, isGroupChat=False, isMpChat=False)
def print_content(msg):
    child.stdin.write(msg['Text']+'\n')  
    return child.stdout.readline()

itchat.auto_login()
itchat.send(u'登录成功!', 'filehelper')
child = subprocess.Popen("srcds_run -port 27015 +map district_coop +maxplayers 32 -workshop", shell=True)
itchat.run()
