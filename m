Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7519D4F3F70
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 23:04:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49EF610E657;
	Tue,  5 Apr 2022 21:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08AFE10E42F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 21:03:44 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id r7so236256wmq.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Apr 2022 14:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SNfnquI4tWaevQ/hGQnSlOtJzOaEmz6wNKKd8vFh89E=;
 b=Z2c8tOY/cn1a2couOx9Gt6IynaX30/NZBYmlKge6GHJb66tJi+Nuv3pe0EtptaIZFQ
 lcQI1Zjo8qzjBecOXaGRK0GxcKhTd6A2lBxNCaUsPH+F9u1g+lE3IIUP9usYpNIBeZ6e
 RmzkG95o2a98DUAWkTQolG/dP45WdBttybMHY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SNfnquI4tWaevQ/hGQnSlOtJzOaEmz6wNKKd8vFh89E=;
 b=pIkQnY3IDRfp9IxEm/D5udVRD3U6xVb4zePYsB40Lvy4ucNzlJni5a62bGppOFnjd5
 mIDtGI9pFO+TFxAmvtnak0DDO4V5R30jrprE3J9ewvhQBnWiAwje/TSNEEVqDZPkQyRs
 D+A3eXFYGiQU0RYKKYtlSR/R9EXqGi8tPz6JBLeDylyIRcz4YMFwpiGOW6qy9zfmNmUL
 Ljpdq+uP09MrIyZRfZu7V/sSCGo+aAnBrATGPnKc51FcTMO8u3jMClVt3chd+paEis6p
 x1n4FHXtJG/YsWFQXsHHRrmqfiAnH6z78YRi2Ns8erp+kkK2aKSPUNKjafy2Ql5IA3Xb
 mYDg==
X-Gm-Message-State: AOAM531rNY2h8DhWttgSqzKg6aQrpQpyW9m/pZ3YabqriR06uN4+TnT+
 nskpBMJn1ohZGzY4zDfWFSpT0Q==
X-Google-Smtp-Source: ABdhPJys9WOCoJ06yDG91PznM2NhXf10VAEJjYQ3j/j98S1dggGH7oCXHml0fb3ZoxYeGBcA5pfisA==
X-Received: by 2002:a05:600c:3505:b0:38c:a3a8:8479 with SMTP id
 h5-20020a05600c350500b0038ca3a88479mr4737756wmq.4.1649192623540; 
 Tue, 05 Apr 2022 14:03:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 az19-20020a05600c601300b0038cadf3aa69sm4858569wmb.36.2022.04.05.14.03.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 14:03:43 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  5 Apr 2022 23:03:20 +0200
Message-Id: <20220405210335.3434130-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
References: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/17] fbcon: Move fbcon_bmove(_rec) functions
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
 Javier Martinez Canillas <javierm@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoids two forward declarations, and more importantly, matches what
I've done in my fbcon scrolling restore patches - so I need this to
avoid a bunch of conflicts in rebasing since we ended up merging
Helge's series instead.

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Helge Deller <deller@gmx.de>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Du Cheng <ducheng2@gmail.com>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/video/fbdev/core/fbcon.c | 134 +++++++++++++++----------------
 1 file changed, 65 insertions(+), 69 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index 235eaab37d84..e925bb608e25 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -164,15 +164,11 @@ static int fbcon_cursor_noblink;
  */
 
 static void fbcon_clear_margins(struct vc_data *vc, int bottom_only);
-static void fbcon_bmove(struct vc_data *vc, int sy, int sx, int dy, int dx,
-			int height, int width);
 static void fbcon_set_palette(struct vc_data *vc, const unsigned char *table);
 
 /*
  *  Internal routines
  */
-static void fbcon_bmove_rec(struct vc_data *vc, struct fbcon_display *p, int sy, int sx,
-			    int dy, int dx, int height, int width, u_int y_break);
 static void fbcon_set_disp(struct fb_info *info, struct fb_var_screeninfo *var,
 			   int unit);
 static void fbcon_redraw_move(struct vc_data *vc, struct fbcon_display *p,
@@ -1667,6 +1663,71 @@ static void fbcon_redraw(struct vc_data *vc, struct fbcon_display *p,
 	}
 }
 
+static void fbcon_bmove_rec(struct vc_data *vc, struct fbcon_display *p, int sy, int sx,
+			    int dy, int dx, int height, int width, u_int y_break)
+{
+	struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
+	struct fbcon_ops *ops = info->fbcon_par;
+	u_int b;
+
+	if (sy < y_break && sy + height > y_break) {
+		b = y_break - sy;
+		if (dy < sy) {	/* Avoid trashing self */
+			fbcon_bmove_rec(vc, p, sy, sx, dy, dx, b, width,
+					y_break);
+			fbcon_bmove_rec(vc, p, sy + b, sx, dy + b, dx,
+					height - b, width, y_break);
+		} else {
+			fbcon_bmove_rec(vc, p, sy + b, sx, dy + b, dx,
+					height - b, width, y_break);
+			fbcon_bmove_rec(vc, p, sy, sx, dy, dx, b, width,
+					y_break);
+		}
+		return;
+	}
+
+	if (dy < y_break && dy + height > y_break) {
+		b = y_break - dy;
+		if (dy < sy) {	/* Avoid trashing self */
+			fbcon_bmove_rec(vc, p, sy, sx, dy, dx, b, width,
+					y_break);
+			fbcon_bmove_rec(vc, p, sy + b, sx, dy + b, dx,
+					height - b, width, y_break);
+		} else {
+			fbcon_bmove_rec(vc, p, sy + b, sx, dy + b, dx,
+					height - b, width, y_break);
+			fbcon_bmove_rec(vc, p, sy, sx, dy, dx, b, width,
+					y_break);
+		}
+		return;
+	}
+	ops->bmove(vc, info, real_y(p, sy), sx, real_y(p, dy), dx,
+		   height, width);
+}
+
+static void fbcon_bmove(struct vc_data *vc, int sy, int sx, int dy, int dx,
+			int height, int width)
+{
+	struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
+	struct fbcon_display *p = &fb_display[vc->vc_num];
+
+	if (fbcon_is_inactive(vc, info))
+		return;
+
+	if (!width || !height)
+		return;
+
+	/*  Split blits that cross physical y_wrap case.
+	 *  Pathological case involves 4 blits, better to use recursive
+	 *  code rather than unrolled case
+	 *
+	 *  Recursive invocations don't need to erase the cursor over and
+	 *  over again, so we use fbcon_bmove_rec()
+	 */
+	fbcon_bmove_rec(vc, p, sy, sx, dy, dx, height, width,
+			p->vrows - p->yscroll);
+}
+
 static bool fbcon_scroll(struct vc_data *vc, unsigned int t, unsigned int b,
 		enum con_scroll dir, unsigned int count)
 {
@@ -1867,71 +1928,6 @@ static bool fbcon_scroll(struct vc_data *vc, unsigned int t, unsigned int b,
 }
 
 
-static void fbcon_bmove(struct vc_data *vc, int sy, int sx, int dy, int dx,
-			int height, int width)
-{
-	struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
-	struct fbcon_display *p = &fb_display[vc->vc_num];
-
-	if (fbcon_is_inactive(vc, info))
-		return;
-
-	if (!width || !height)
-		return;
-
-	/*  Split blits that cross physical y_wrap case.
-	 *  Pathological case involves 4 blits, better to use recursive
-	 *  code rather than unrolled case
-	 *
-	 *  Recursive invocations don't need to erase the cursor over and
-	 *  over again, so we use fbcon_bmove_rec()
-	 */
-	fbcon_bmove_rec(vc, p, sy, sx, dy, dx, height, width,
-			p->vrows - p->yscroll);
-}
-
-static void fbcon_bmove_rec(struct vc_data *vc, struct fbcon_display *p, int sy, int sx,
-			    int dy, int dx, int height, int width, u_int y_break)
-{
-	struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
-	struct fbcon_ops *ops = info->fbcon_par;
-	u_int b;
-
-	if (sy < y_break && sy + height > y_break) {
-		b = y_break - sy;
-		if (dy < sy) {	/* Avoid trashing self */
-			fbcon_bmove_rec(vc, p, sy, sx, dy, dx, b, width,
-					y_break);
-			fbcon_bmove_rec(vc, p, sy + b, sx, dy + b, dx,
-					height - b, width, y_break);
-		} else {
-			fbcon_bmove_rec(vc, p, sy + b, sx, dy + b, dx,
-					height - b, width, y_break);
-			fbcon_bmove_rec(vc, p, sy, sx, dy, dx, b, width,
-					y_break);
-		}
-		return;
-	}
-
-	if (dy < y_break && dy + height > y_break) {
-		b = y_break - dy;
-		if (dy < sy) {	/* Avoid trashing self */
-			fbcon_bmove_rec(vc, p, sy, sx, dy, dx, b, width,
-					y_break);
-			fbcon_bmove_rec(vc, p, sy + b, sx, dy + b, dx,
-					height - b, width, y_break);
-		} else {
-			fbcon_bmove_rec(vc, p, sy + b, sx, dy + b, dx,
-					height - b, width, y_break);
-			fbcon_bmove_rec(vc, p, sy, sx, dy, dx, b, width,
-					y_break);
-		}
-		return;
-	}
-	ops->bmove(vc, info, real_y(p, sy), sx, real_y(p, dy), dx,
-		   height, width);
-}
-
 static void updatescrollmode_accel(struct fbcon_display *p,
 					struct fb_info *info,
 					struct vc_data *vc)
-- 
2.34.1

