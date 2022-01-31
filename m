Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 901F54A50FA
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 22:07:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5532A10E546;
	Mon, 31 Jan 2022 21:06:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37AC110E4DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 21:06:51 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 l129-20020a1c2587000000b0035394fedf14so200222wml.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 13:06:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=70C1nUGW1Odwr3K26s4abeBZbxMd/ekX/TwRBXQgU6I=;
 b=Cktd6LG20ahzPI4oj3t4KT9MFDkIjKZcnN4iE+WrSr6LnFr8k7E/f/zMHzEosSr2Ow
 V1HO2plPctry6v8vF5kL/X6lOJUj2xn269gw+kQqt/GEhdetUhCgfrbU+SNnT9V9zUht
 Ra6Zf969RefcZ8k+CXKYoHtO5GO1Lfo7OnFfc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=70C1nUGW1Odwr3K26s4abeBZbxMd/ekX/TwRBXQgU6I=;
 b=SGVdSr/lJp1pxuPuuqQzsSI6FZCCPB4lSBfCRh5lL3v3J8EHzoyp2pHNEy6LCjaRtR
 extxAozZqBUeTBmxmtoB3e1qWMEASVs59staJyD4wwMgDvihEpAii1X0xBNOYsPSh2lZ
 yYNdB3P5HL9s+UbH4Od88d+lutYhaIDd/86YAPIS0nBdJPqtrUGEklAqGBLbLFWP29SY
 5JQm0PIfQQ1G+noejFQutKy0ruUW06ilKQDHlvjNOkgFB+SDyOlA89RKUBgdpYhTiVfV
 ZAYOHDyUock+L5qfKmfZuWisioJ6tq4EHCmt0dLEy5SoeD+UtDgdgfFKXKVpp8DgDogB
 NRiQ==
X-Gm-Message-State: AOAM5310lI6L+vWuQ7G+JEG4c0Lchup2cZRcpEotj9exwIJblUEQ8vkP
 20xe2nZwoX98LitahknTbVRPVw==
X-Google-Smtp-Source: ABdhPJxrzmAxjflibmy9TG+Tz9akgKGj2BNfeHpJ8d17fTQTFbXHnAsoNzZUYtYG9tFfmy514BI1MA==
X-Received: by 2002:a05:600c:3386:: with SMTP id
 o6mr20080048wmp.79.1643663209778; 
 Mon, 31 Jan 2022 13:06:49 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b11sm314961wmq.46.2022.01.31.13.06.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 13:06:49 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 31 Jan 2022 22:05:47 +0100
Message-Id: <20220131210552.482606-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/21] fbcon: Move console_lock for
 register/unlink/unregister
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: linux-fbdev@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Xiyu Yang <xiyuyang19@fudan.edu.cn>, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Zheyu Ma <zheyuma97@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Zhen Lei <thunder.leizhen@huawei.com>, Guenter Roeck <linux@roeck-us.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ideally console_lock becomes an implementation detail of fbcon.c and
doesn't show up anywhere in fbmem.c. We're still pretty far from that,
but at least the register/unregister code is there now.

With this the do_fb_ioctl() handler is the only code in fbmem.c still
calling console_lock().

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Du Cheng <ducheng2@gmail.com>
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Zheyu Ma <zheyuma97@gmail.com>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: Zhen Lei <thunder.leizhen@huawei.com>
Cc: Xiyu Yang <xiyuyang19@fudan.edu.cn>
---
 drivers/video/fbdev/core/fbcon.c | 33 ++++++++++++++++++++++++++------
 drivers/video/fbdev/core/fbmem.c | 23 ++--------------------
 2 files changed, 29 insertions(+), 27 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index 11b9f962af6f..e5e8aaf6f60d 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -2776,10 +2776,12 @@ void fbcon_fb_unbind(struct fb_info *info)
 	int i, new_idx = -1;
 	int idx = info->node;
 
-	WARN_CONSOLE_UNLOCKED();
+	console_lock();
 
-	if (!fbcon_has_console_bind)
+	if (!fbcon_has_console_bind) {
+		console_unlock();
 		return;
+	}
 
 	for (i = first_fb_vc; i <= last_fb_vc; i++) {
 		if (con2fb_map[i] != idx &&
@@ -2814,6 +2816,8 @@ void fbcon_fb_unbind(struct fb_info *info)
 		}
 		fbcon_unbind();
 	}
+
+	console_unlock();
 }
 
 /* called with console_lock held */
@@ -2821,10 +2825,12 @@ void fbcon_fb_unregistered(struct fb_info *info)
 {
 	int i, idx;
 
-	WARN_CONSOLE_UNLOCKED();
+	console_lock();
 
-	if (deferred_takeover)
+	if (deferred_takeover) {
+		console_unlock();
 		return;
+	}
 
 	idx = info->node;
 	for (i = first_fb_vc; i <= last_fb_vc; i++) {
@@ -2853,6 +2859,7 @@ void fbcon_fb_unregistered(struct fb_info *info)
 
 	if (!num_registered_fb)
 		do_unregister_con_driver(&fb_con);
+	console_unlock();
 }
 
 void fbcon_remap_all(struct fb_info *info)
@@ -2910,19 +2917,27 @@ static inline void fbcon_select_primary(struct fb_info *info)
 }
 #endif /* CONFIG_FRAMEBUFFER_DETECT_PRIMARY */
 
+static bool lockless_register_fb;
+module_param_named_unsafe(lockless_register_fb, lockless_register_fb, bool, 0400);
+MODULE_PARM_DESC(lockless_register_fb,
+	"Lockless framebuffer registration for debugging [default=off]");
+
 /* called with console_lock held */
 int fbcon_fb_registered(struct fb_info *info)
 {
 	int ret = 0, i, idx;
 
-	WARN_CONSOLE_UNLOCKED();
+	if (!lockless_register_fb)
+		console_lock();
+	else
+		atomic_inc(&ignore_console_lock_warning);
 
 	idx = info->node;
 	fbcon_select_primary(info);
 
 	if (deferred_takeover) {
 		pr_info("fbcon: Deferring console take-over\n");
-		return 0;
+		goto out;
 	}
 
 	if (info_idx == -1) {
@@ -2942,6 +2957,12 @@ int fbcon_fb_registered(struct fb_info *info)
 		}
 	}
 
+out:
+	if (!lockless_register_fb)
+		console_unlock();
+	else
+		atomic_dec(&ignore_console_lock_warning);
+
 	return ret;
 }
 
diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
index fd51d12f2702..904ef1250677 100644
--- a/drivers/video/fbdev/core/fbmem.c
+++ b/drivers/video/fbdev/core/fbmem.c
@@ -1573,14 +1573,9 @@ static void do_remove_conflicting_framebuffers(struct apertures_struct *a,
 	}
 }
 
-static bool lockless_register_fb;
-module_param_named_unsafe(lockless_register_fb, lockless_register_fb, bool, 0400);
-MODULE_PARM_DESC(lockless_register_fb,
-	"Lockless framebuffer registration for debugging [default=off]");
-
 static int do_register_framebuffer(struct fb_info *fb_info)
 {
-	int i, ret;
+	int i;
 	struct fb_videomode mode;
 
 	if (fb_check_foreignness(fb_info))
@@ -1649,17 +1644,7 @@ static int do_register_framebuffer(struct fb_info *fb_info)
 	}
 #endif
 
-	if (!lockless_register_fb)
-		console_lock();
-	else
-		atomic_inc(&ignore_console_lock_warning);
-	ret = fbcon_fb_registered(fb_info);
-
-	if (!lockless_register_fb)
-		console_unlock();
-	else
-		atomic_dec(&ignore_console_lock_warning);
-	return ret;
+	return fbcon_fb_registered(fb_info);
 }
 
 static void unbind_console(struct fb_info *fb_info)
@@ -1669,9 +1654,7 @@ static void unbind_console(struct fb_info *fb_info)
 	if (WARN_ON(i < 0 || i >= FB_MAX || registered_fb[i] != fb_info))
 		return;
 
-	console_lock();
 	fbcon_fb_unbind(fb_info);
-	console_unlock();
 }
 
 static void unlink_framebuffer(struct fb_info *fb_info)
@@ -1714,9 +1697,7 @@ static void do_unregister_framebuffer(struct fb_info *fb_info)
 		fb_notifier_call_chain(FB_EVENT_FB_UNREGISTERED, &event);
 	}
 #endif
-	console_lock();
 	fbcon_fb_unregistered(fb_info);
-	console_unlock();
 
 	/* this may free fb info */
 	put_fb_info(fb_info);
-- 
2.33.0

