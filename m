Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4424FF1AB
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 10:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5333710FBD8;
	Wed, 13 Apr 2022 08:21:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 133E110FBD6
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 08:21:36 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id g18so2333657ejc.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 01:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BKZXPHDbLQHuKJfs7znC9XTnIpDbBVqjUV5L1wEwf1o=;
 b=JtJsa9dFkMFrvqg8c23eMWyE8lZuCAZzjjGetSuEInIN0FR44dqAAEJ5TOCbz1vGLM
 FgIwxprTfAqGKHrYG0GBwHZXzOGsigY7/RILwvcegx8QCLnktmOT7yTo9HEGjAubaIdE
 TT1VbsS+vlvvFc/Rg9tkZPDWTJwPmSM+oAdwc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BKZXPHDbLQHuKJfs7znC9XTnIpDbBVqjUV5L1wEwf1o=;
 b=q71jmeHIS0ja3pGvFgK/2Ld0/b7zIAiFbS4uu9WMeXBI/PWmk9fdMjrhVqybDOuI6E
 lVDJz2qs92F7ql3vackudDCVG0yYY38OF+dFgbanWuIbdajuOYbFU7+3nh+TG6JMBL1/
 vYw4xs2jxD595izll/fqIjZhYniMcpQq3dp+vRzArx+WokJMCFM6sf0Ia2RcJY9My4D6
 odtIUdcwOFo2+o4EWy47xxcRcgLkmd9BHy5uaL52LbdFNIPIT7ts/KYwf6muDPCTNzjM
 CJsIzqeYBJ+Ms6rzgC9egTRZlFgk8Xyg05qrspnlb+8+0RMRG7HviO9epf5QPRQbhl5s
 hv/Q==
X-Gm-Message-State: AOAM533wI9w9j5HtshJ0kin77y9KGd3dwHxEo6Qo3mJpNP3qRQboAdh8
 ZAOQrbsGL+akHTxTPUyhsQJHOA==
X-Google-Smtp-Source: ABdhPJyPn0jhQa6CEYpj8JLZaCCKkUv1FfmRu/W0awpMowsCGhrJX1sBukvSwvO964KSgncGmCSw4g==
X-Received: by 2002:a17:907:7296:b0:6e8:97c1:a7ef with SMTP id
 dt22-20020a170907729600b006e897c1a7efmr10804550ejc.262.1649838094459; 
 Wed, 13 Apr 2022 01:21:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 u6-20020a170906408600b006e87d654270sm4234564ejj.44.2022.04.13.01.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 01:21:33 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 13 Apr 2022 10:21:28 +0200
Message-Id: <20220413082128.348186-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] fbcon: Fix delayed takeover locking
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
Cc: Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Zheyu Ma <zheyuma97@gmail.com>, Javier Martinez Canillas <javierm@redhat.com>,
 Matthew Wilcox <willy@infradead.org>, Nathan Chancellor <nathan@kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>, Guenter Roeck <linux@roeck-us.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I messed up the delayed takover path in the locking conversion in
6e7da3af008b ("fbcon: Move console_lock for register/unlink/unregister").

Fix it by re-extracting the lockless function and using it in the
delayed takeover path, where we need to hold the lock already to
iterate over the list of already registered fb. Well the current code
still is broken in there (since the list is protected by a
registration_lock, which we can't take here because it nests the other
way round with console_lock), but in the future this will be a list
protected by console_lock when this is all sorted out.

Reported-by: Nathan Chancellor <nathan@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>
Fixes: 6e7da3af008b ("fbcon: Move console_lock for register/unlink/unregister")
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Du Cheng <ducheng2@gmail.com>
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Zheyu Ma <zheyuma97@gmail.com>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Helge Deller <deller@gmx.de>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/video/fbdev/core/fbcon.c | 28 ++++++++++++++++++----------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index 6a7d470beec7..b4e43b39d9a8 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -2772,7 +2772,6 @@ static void fbcon_unbind(void)
 static inline void fbcon_unbind(void) {}
 #endif /* CONFIG_VT_HW_CONSOLE_BINDING */
 
-/* called with console_lock held */
 void fbcon_fb_unbind(struct fb_info *info)
 {
 	int i, new_idx = -1;
@@ -2822,7 +2821,6 @@ void fbcon_fb_unbind(struct fb_info *info)
 	console_unlock();
 }
 
-/* called with console_lock held */
 void fbcon_fb_unregistered(struct fb_info *info)
 {
 	int i, idx;
@@ -2928,14 +2926,11 @@ MODULE_PARM_DESC(lockless_register_fb,
 	"Lockless framebuffer registration for debugging [default=off]");
 
 /* called with console_lock held */
-int fbcon_fb_registered(struct fb_info *info)
+static int do_fb_registered(struct fb_info *info)
 {
 	int ret = 0, i, idx;
 
-	if (!lockless_register_fb)
-		console_lock();
-	else
-		atomic_inc(&ignore_console_lock_warning);
+	WARN_CONSOLE_UNLOCKED();
 
 	fbcon_registered_fb[info->node] = info;
 	fbcon_num_registered_fb++;
@@ -2945,7 +2940,7 @@ int fbcon_fb_registered(struct fb_info *info)
 
 	if (deferred_takeover) {
 		pr_info("fbcon: Deferring console take-over\n");
-		goto out;
+		return 0;
 	}
 
 	if (info_idx == -1) {
@@ -2965,7 +2960,20 @@ int fbcon_fb_registered(struct fb_info *info)
 		}
 	}
 
-out:
+	return ret;
+}
+
+int fbcon_fb_registered(struct fb_info *info)
+{
+	int ret;
+
+	if (!lockless_register_fb)
+		console_lock();
+	else
+		atomic_inc(&ignore_console_lock_warning);
+
+	ret = do_fb_registered(info);
+
 	if (!lockless_register_fb)
 		console_unlock();
 	else
@@ -3280,7 +3288,7 @@ static void fbcon_register_existing_fbs(struct work_struct *work)
 	logo_shown = FBCON_LOGO_DONTSHOW;
 
 	fbcon_for_each_registered_fb(i)
-		fbcon_fb_registered(fbcon_registered_fb[i]);
+		do_fb_registered(fbcon_registered_fb[i]);
 
 	console_unlock();
 }
-- 
2.34.1

