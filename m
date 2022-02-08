Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC63F4AE2E1
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 22:08:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87AE010E51B;
	Tue,  8 Feb 2022 21:08:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F30BB10E4FF
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 21:08:44 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id r7so138181wmq.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 13:08:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gS4cB1np1M5WffNPCk4lBUp+Ft8dXY94oZrLVYHaHIU=;
 b=POlHKow3MVpKZFu37kNTQBf60vXI/Bdf0/kdIpeZxBk+FetbUOq7GWpdR/E7ywdHH6
 6A8znecVyMGtnphv3jPdoQeC1TZW2v3uwbFzVY/WoLwOj8AtjmVGu62bi97NgT0FawcD
 T1Dvp2sActs5q6ehz/awhILYoFHe66ZE+SqPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gS4cB1np1M5WffNPCk4lBUp+Ft8dXY94oZrLVYHaHIU=;
 b=yLYM+JA8V6S5BXH8Oq0zgBk3XwibhIVHQlgL6PUAEGlcejqfCDHfanSWtJSNZmKlCE
 XMHowUIdMHNp7ggc3ErCqwjQSkdv96WKedxJMPoaTZItzf/Bs/pBqqFac4EJgbhFE3YP
 OTZ9ywQoOYWfbuhIAeVW+gUFzQwH7aiVANrAxYs2UGbso+JrYPbQqzj6IRQjAPwlPaXv
 4WTWW7YKxURdbmKcuB8cOj6dKZ+29GTdbNijVRpjI870lKnLJQvFIX9PgWcOTurOYzUQ
 kY6jJt1GnM2YYqhkpKDvKWwPkQoXAB2NlV3Z1zyhrUJDSbYuMuF5XekN9mSCetV6zWb1
 eXzQ==
X-Gm-Message-State: AOAM532QauTeeOzfEJot/cZuEQsGT6x1GxC2BuQv5YFJ6SUHHJZGCrY+
 SCi25vm9SHfcrL3kEu4vGINYGA==
X-Google-Smtp-Source: ABdhPJw/XJ2Q8Ob/zJyksXM8gBtUTQabIf26mhSeRQ5qUe8UkM0HAwCg61/bEu2b1DdCs9/6qE+0Ng==
X-Received: by 2002:a05:600c:3505:: with SMTP id
 h5mr2617699wmq.122.1644354523501; 
 Tue, 08 Feb 2022 13:08:43 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o14sm3033561wmr.3.2022.02.08.13.08.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 13:08:42 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  8 Feb 2022 22:08:12 +0100
Message-Id: <20220208210824.2238981-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/19] fbcon: Replace FBCON_FLAGS_INIT with a
 boolean
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
 LKML <linux-kernel@vger.kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's only one flag and slightly tidier code.

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Du Cheng <ducheng2@gmail.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Claudio Suarez <cssk@net-c.es>
---
 drivers/video/fbdev/core/fbcon.c | 11 +++++------
 drivers/video/fbdev/core/fbcon.h |  4 +---
 2 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index a368ed602e2e..058e885d24f6 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -775,7 +775,7 @@ static void con2fb_init_display(struct vc_data *vc, struct fb_info *info,
 
 	ops->currcon = fg_console;
 
-	if (info->fbops->fb_set_par && !(ops->flags & FBCON_FLAGS_INIT)) {
+	if (info->fbops->fb_set_par && !ops->initialized) {
 		ret = info->fbops->fb_set_par(info);
 
 		if (ret)
@@ -784,7 +784,7 @@ static void con2fb_init_display(struct vc_data *vc, struct fb_info *info,
 				"error code %d\n", ret);
 	}
 
-	ops->flags |= FBCON_FLAGS_INIT;
+	ops->initialized = true;
 	ops->graphics = 0;
 	fbcon_set_disp(info, &info->var, unit);
 
@@ -1103,8 +1103,7 @@ static void fbcon_init(struct vc_data *vc, int init)
 	 * We need to do it in fbcon_init() to prevent screen corruption.
 	 */
 	if (con_is_visible(vc) && vc->vc_mode == KD_TEXT) {
-		if (info->fbops->fb_set_par &&
-		    !(ops->flags & FBCON_FLAGS_INIT)) {
+		if (info->fbops->fb_set_par && !ops->initialized) {
 			ret = info->fbops->fb_set_par(info);
 
 			if (ret)
@@ -1113,7 +1112,7 @@ static void fbcon_init(struct vc_data *vc, int init)
 					"error code %d\n", ret);
 		}
 
-		ops->flags |= FBCON_FLAGS_INIT;
+		ops->initialized = true;
 	}
 
 	ops->graphics = 0;
@@ -1186,7 +1185,7 @@ static void fbcon_deinit(struct vc_data *vc)
 	if (con_is_visible(vc))
 		fbcon_del_cursor_work(info);
 
-	ops->flags &= ~FBCON_FLAGS_INIT;
+	ops->initialized = false;
 finished:
 
 	fbcon_free_font(p, free_font);
diff --git a/drivers/video/fbdev/core/fbcon.h b/drivers/video/fbdev/core/fbcon.h
index 6708ca0048aa..0eaf54a21151 100644
--- a/drivers/video/fbdev/core/fbcon.h
+++ b/drivers/video/fbdev/core/fbcon.h
@@ -18,8 +18,6 @@
 
 #include <asm/io.h>
 
-#define FBCON_FLAGS_INIT         1
-
    /*
     *    This is the interface between the low-level console driver and the
     *    low-level frame buffer device
@@ -79,7 +77,7 @@ struct fbcon_ops {
 	int    blank_state;
 	int    graphics;
 	int    save_graphics; /* for debug enter/leave */
-	int    flags;
+	bool   initialized;
 	int    rotate;
 	int    cur_rotate;
 	char  *cursor_data;
-- 
2.34.1

