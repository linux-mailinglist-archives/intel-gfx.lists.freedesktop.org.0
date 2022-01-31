Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A28EB4A5100
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 22:07:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2029810E590;
	Mon, 31 Jan 2022 21:06:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF1C410E50B
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 21:06:52 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 l35-20020a05600c1d2300b0034d477271c1so233989wms.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 13:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xR2Cpj9NPzd3PMXMumK8tGjLNRzMjrUh58YqCebhDEo=;
 b=ZXAAWHU3cxYjQqaynKuzlDitJZki2ld78sfGg5BvoOXCxWUICbZVwllmG72oQjrJqV
 MFAF6FjmGHluZ4RcYolzuSjzNn2P05ro9f3pwcZjHwx7b9I20PuWxiFZLgb3boxLRRsu
 DLoJLArEnqol2fPTAyDdyu3SOHyLveDYE6buc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xR2Cpj9NPzd3PMXMumK8tGjLNRzMjrUh58YqCebhDEo=;
 b=CtMiz3dwtIj41NMI+AeioSghsjt0M0svKCb9ZHJ91neWWWBGphfesRkKVwTgscWW5N
 F7lg0MoOfM50ZuyGeRSx3arcII7CiJQKa7uaq5vH0ue6oLyDioo1OiiETMatpegKnUey
 3tByZ/VWrQRkOLKYjXV27WWjBcpVMvJ9irNvMroVLtN7K6dpAg0PBRijsZmxf6GIxMlh
 iS9BJsApQva1vPY5Ys8WtNEwGTC2v4WPBrn0wAHljACTDyZS+pDkxDkj4cs+fE79ENwV
 Suu1oakGrlCPbu0VD7UNtUQdSDED5PpfiaVjIK6SCuOXsJcmtcRtzIhm+S0ttkiekWSC
 kMxQ==
X-Gm-Message-State: AOAM533qLdNdAqDFWQMGeIen6+j76hsvYOwNOang/hW+2KTulIEnd9TZ
 1JO+Npugsss8b7fDgxYnz8ZCQw==
X-Google-Smtp-Source: ABdhPJwsHKFlXJjctslIwLzw0eq71bo0GChWx/OaKsX1kI+rSPX9G1EgnGiUQOnkpJ2lxJyTJPvEfw==
X-Received: by 2002:a05:600c:38a:: with SMTP id
 w10mr23340953wmd.12.1643663211423; 
 Mon, 31 Jan 2022 13:06:51 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b11sm314961wmq.46.2022.01.31.13.06.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 13:06:51 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 31 Jan 2022 22:05:49 +0100
Message-Id: <20220131210552.482606-19-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/21] fbcon: untangle fbcon_exit
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
Cc: linux-fbdev@vger.kernel.org, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There's a bunch of confusions going on here:
- The deferred fbcon setup notifier should only be cleaned up from
  fb_console_exit(), to be symmetric with fb_console_init()
- We also need to make sure we don't race with the work, which means
  temporarily dropping the console lock (or we can deadlock)
- That also means no point in clearing deferred_takeover, we are
  unloading everything anyway.
- Finally rename fbcon_exit to fbcon_release_all and move it, since
  that's what's it doing when being called from consw->con_deinit
  through fbcon_deinit.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Du Cheng <ducheng2@gmail.com>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
---
 drivers/video/fbdev/core/fbcon.c | 63 ++++++++++++++++----------------
 1 file changed, 32 insertions(+), 31 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index 5c14e24d14a1..22581952b4fd 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -185,7 +185,6 @@ static void fbcon_set_disp(struct fb_info *info, struct fb_var_screeninfo *var,
 			   int unit);
 static void fbcon_modechanged(struct fb_info *info);
 static void fbcon_set_all_vcs(struct fb_info *info);
-static void fbcon_exit(void);
 
 static struct device *fbcon_device;
 
@@ -1149,6 +1148,27 @@ static void fbcon_free_font(struct fbcon_display *p, bool freefont)
 
 static void set_vc_hi_font(struct vc_data *vc, bool set);
 
+static void fbcon_release_all(void)
+{
+	struct fb_info *info;
+	int i, j, mapped;
+
+	for_each_registered_fb(i) {
+		mapped = 0;
+		info = registered_fb[i];
+
+		for (j = first_fb_vc; j <= last_fb_vc; j++) {
+			if (con2fb_map[j] == i) {
+				mapped = 1;
+				con2fb_map[j] = -1;
+			}
+		}
+
+		if (mapped)
+			fbcon_release(info);
+	}
+}
+
 static void fbcon_deinit(struct vc_data *vc)
 {
 	struct fbcon_display *p = &fb_display[vc->vc_num];
@@ -1188,7 +1208,7 @@ static void fbcon_deinit(struct vc_data *vc)
 		set_vc_hi_font(vc, false);
 
 	if (!con_is_bound(&fb_con))
-		fbcon_exit();
+		fbcon_release_all();
 
 	if (vc->vc_num == logo_shown)
 		logo_shown = FBCON_LOGO_CANSHOW;
@@ -3316,34 +3336,6 @@ static void fbcon_start(void)
 #endif
 }
 
-static void fbcon_exit(void)
-{
-	struct fb_info *info;
-	int i, j, mapped;
-
-#ifdef CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER
-	if (deferred_takeover) {
-		dummycon_unregister_output_notifier(&fbcon_output_nb);
-		deferred_takeover = false;
-	}
-#endif
-
-	for_each_registered_fb(i) {
-		mapped = 0;
-		info = registered_fb[i];
-
-		for (j = first_fb_vc; j <= last_fb_vc; j++) {
-			if (con2fb_map[j] == i) {
-				mapped = 1;
-				con2fb_map[j] = -1;
-			}
-		}
-
-		if (mapped)
-			fbcon_release(info);
-	}
-}
-
 void __init fb_console_init(void)
 {
 	int i;
@@ -3383,10 +3375,19 @@ static void __exit fbcon_deinit_device(void)
 
 void __exit fb_console_exit(void)
 {
+#ifdef CONFIG_FRAMEBUFFER_CONSOLE_DEFERRED_TAKEOVER
+	console_lock();
+	if (deferred_takeover)
+		dummycon_unregister_output_notifier(&fbcon_output_nb);
+	console_unlock();
+
+	cancel_work_sync(&fbcon_deferred_takeover_work);
+#endif
+
 	console_lock();
 	fbcon_deinit_device();
 	device_destroy(fb_class, MKDEV(0, 0));
-	fbcon_exit();
+
 	do_unregister_con_driver(&fb_con);
 	console_unlock();
 }	
-- 
2.33.0

