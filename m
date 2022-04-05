Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A407C4F3F83
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 23:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD24610EEBF;
	Tue,  5 Apr 2022 21:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC49610EEBC
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 21:03:49 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id c7so400107wrd.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Apr 2022 14:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ii3Nhkdc1PsQpJibVbASPuL+CL9a9pampKTaQUBuOx0=;
 b=Obh+/hdGsVQdKWDwQ2yyfDzOxXTaBbAJpPoi4FaoOu5W/e70H4xefbk6sMDFYxWfPk
 7N8yvcTALGEADKT4KJ+PY9x63o299FO+L5MZ2nb6w6PsaV7BPLDnH3E4weZ0s0IhnhGo
 MWUkVUyziN4sdTOPBqyG3ALRPwR6uAILz9qms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ii3Nhkdc1PsQpJibVbASPuL+CL9a9pampKTaQUBuOx0=;
 b=iB8eodebV84BG8PTLWwEg6peepDuAl4h3f9q13F+bzlE62DFS7fosIuwgRSi9/VtL5
 ygxq6p/IhK54Sj1kS3lHjx7PJTbL8yXhzHy0b66ct3OjI8WJxfpBR4iBC67Fq7weuORS
 yDGf8zpSzIjI2Kx0FR9jc7kk8UHCfCKv3LT7KiN35Sw9eD485KNHPiE7NvjlSD5kbZh4
 v9bOYRzGXRKHcDvXRkjfq+3U3Kcmi4yyFlIdeXN7qlbcpCcen6iu1g7/RKpsobNx3DzO
 y5MM+WbQN1i9UUFddDw9rS6+C1ua0aMpnnpd3w2yeHTNFs7r57l2IAAWhs4cCiCcKS8m
 kq4A==
X-Gm-Message-State: AOAM530TSh0eoXdvfYvgiq3LHqdcnFBGtTJlsUSb9eDLO1QwRlXNlaP6
 89djcfrBhR8/8pJwQYB3rRDbeQ==
X-Google-Smtp-Source: ABdhPJzcAQpi7DKeuKrAmthLzGnjqKZsxOGurILtUt9O/PqPsyylkpzrhTKBASPE+U17zvJh/H+w9g==
X-Received: by 2002:adf:dbc6:0:b0:205:8e9a:29ab with SMTP id
 e6-20020adfdbc6000000b002058e9a29abmr4025866wrj.7.1649192628307; 
 Tue, 05 Apr 2022 14:03:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 az19-20020a05600c601300b0038cadf3aa69sm4858569wmb.36.2022.04.05.14.03.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 14:03:47 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  5 Apr 2022 23:03:25 +0200
Message-Id: <20220405210335.3434130-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
References: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/17] fbcon: Replace FBCON_FLAGS_INIT with a
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
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
index 759299667023..81860ca80838 100644
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

