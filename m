Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 878F54A50F1
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 22:07:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F68F10E50C;
	Mon, 31 Jan 2022 21:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4286A10E4D1
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 21:06:48 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id w11so27877327wra.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 13:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NgnSdd2AvfoeNcByN2bDHp+PhpIRGYatmO8U9PanFuc=;
 b=S+8VBUNNneiGc1+bGPSnrLBcbuVFkgKSU1F9WHEKGEhoPtQNo9kYEWH32/VdEJ10IN
 +9JFlSujzOM4Bw11VzRyD+o6Ay/zYtaJDCVsEreNhW23/UsII4y11JSGXkMSZ5oO87vf
 awGxIE+pHd6B7RDP848NhmOIATd3HdslcGwVw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NgnSdd2AvfoeNcByN2bDHp+PhpIRGYatmO8U9PanFuc=;
 b=sZDuqIeRLKT9MK3lN56SkcTFErHPjZxD7CdPUNFkz6sKSjK1pQwdQZdVlOkVI5qvzl
 e6tbTOWyGJhx54F+81daC+rqW/RaSbuc4vgxvE3+gJTUEZihtGOa+eH30dSnRXIIQqmy
 kkYQyd77MeMup6GbqiGkNiVXyLdd6gfOEm1bqpGB7ldKAVb9iwY2FFHukAyUeBDSMey+
 XxZLW4YR2lnFMUkN5q8LEXWOa7BXBE4UVf8N/BiArlEWoayFtX0zV/51lH1pbg7Y8w01
 tS7/GfLgmzBsLe2MZV6JoWBCH/J/xpe/56AVonQAp6n95bbRCHifCU5D1sQTY0T8Oq6J
 oyww==
X-Gm-Message-State: AOAM530nEssixRgwuKAyR2pM9yLYeEKtBXdxCDNL6rwVxgkUXeJ02ap9
 WwJvAlYTRPHzLS18CEauqJfBuQ==
X-Google-Smtp-Source: ABdhPJzMRGhgP+Wd468RY30pZW2pKS4gWFtsBggDBPv5aBnxBsUkCxh6leO3bSHMlVVRxYvL1JzDCg==
X-Received: by 2002:a5d:4b4d:: with SMTP id w13mr19360147wrs.640.1643663206862; 
 Mon, 31 Jan 2022 13:06:46 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b11sm314961wmq.46.2022.01.31.13.06.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 13:06:46 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 31 Jan 2022 22:05:44 +0100
Message-Id: <20220131210552.482606-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/21] fbcon: move more common code into
 fb_open()
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
 Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No idea why con2fb_acquire_newinfo() initializes much less than
fbcon_startup(), but so be it. From a quick look most of the
un-initialized stuff should be fairly harmless, but who knows.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Du Cheng <ducheng2@gmail.com>
---
 drivers/video/fbdev/core/fbcon.c | 74 +++++++++++++-------------------
 1 file changed, 31 insertions(+), 43 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index b83a5a77d8a8..5a3391ff038d 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -680,8 +680,18 @@ static int fbcon_invalid_charcount(struct fb_info *info, unsigned charcount)
 
 #endif /* CONFIG_MISC_TILEBLITTING */
 
+static void fbcon_release(struct fb_info *info)
+{
+	if (info->fbops->fb_release)
+		info->fbops->fb_release(info, 0);
+
+	module_put(info->fbops->owner);
+}
+
 static int fbcon_open(struct fb_info *info)
 {
+	struct fbcon_ops *ops;
+
 	if (!try_module_get(info->fbops->owner))
 		return -ENODEV;
 
@@ -691,19 +701,22 @@ static int fbcon_open(struct fb_info *info)
 		return -ENODEV;
 	}
 
-	return 0;
-}
+	ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);
+	if (!ops) {
+		fbcon_release(info);
+		return -ENOMEM;
+	}
 
-static void fbcon_release(struct fb_info *info)
-{
-	if (info->fbops->fb_release)
-		info->fbops->fb_release(info, 0);
+	INIT_DELAYED_WORK(&ops->cursor_work, fb_flashcursor);
+	ops->info = info;
+	info->fbcon_par = ops;
+	ops->cur_blink_jiffies = HZ / 5;
 
-	module_put(info->fbops->owner);
+	return 0;
 }
 
 static int con2fb_acquire_newinfo(struct vc_data *vc, struct fb_info *info,
-				  int unit, int oldidx)
+				  int unit)
 {
 	struct fbcon_ops *ops = NULL;
 	int err;
@@ -712,27 +725,10 @@ static int con2fb_acquire_newinfo(struct vc_data *vc, struct fb_info *info,
 	if (err)
 		return err;
 
-	if (!err) {
-		ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);
-		if (!ops)
-			err = -ENOMEM;
-
-		INIT_DELAYED_WORK(&ops->cursor_work, fb_flashcursor);
-	}
-
-	if (!err) {
-		ops->cur_blink_jiffies = HZ / 5;
-		ops->info = info;
-		info->fbcon_par = ops;
-
-		if (vc)
-			set_blitting_type(vc, info);
-	}
+	ops = info->fbcon_par;
 
-	if (err) {
-		con2fb_map[unit] = oldidx;
-		fbcon_release(info);
-	}
+	if (vc)
+		set_blitting_type(vc, info);
 
 	return err;
 }
@@ -840,9 +836,11 @@ static int set_con2fb_map(int unit, int newidx, int user)
 
 	found = search_fb_in_map(newidx);
 
-	con2fb_map[unit] = newidx;
-	if (!err && !found)
-		err = con2fb_acquire_newinfo(vc, info, unit, oldidx);
+	if (!err && !found) {
+		err = con2fb_acquire_newinfo(vc, info, unit);
+		if (!err)
+			con2fb_map[unit] = newidx;
+	}
 
 	/*
 	 * If old fb is not mapped to any of the consoles,
@@ -939,20 +937,10 @@ static const char *fbcon_startup(void)
 	if (fbcon_open(info))
 		return NULL;
 
-	ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);
-	if (!ops) {
-		fbcon_release(info);
-		return NULL;
-	}
-
-	INIT_DELAYED_WORK(&ops->cursor_work, fb_flashcursor);
-
+	ops = info->fbcon_par;
 	ops->currcon = -1;
 	ops->graphics = 1;
 	ops->cur_rotate = -1;
-	ops->cur_blink_jiffies = HZ / 5;
-	ops->info = info;
-	info->fbcon_par = ops;
 
 	p->con_rotate = initial_rotation;
 	if (p->con_rotate == -1)
@@ -1022,7 +1010,7 @@ static void fbcon_init(struct vc_data *vc, int init)
 		return;
 
 	if (!info->fbcon_par)
-		con2fb_acquire_newinfo(vc, info, vc->vc_num, -1);
+		con2fb_acquire_newinfo(vc, info, vc->vc_num);
 
 	/* If we are not the first console on this
 	   fb, copy the font from that console */
-- 
2.33.0

