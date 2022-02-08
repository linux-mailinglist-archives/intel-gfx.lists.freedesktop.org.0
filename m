Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B656A4AE2D4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 22:08:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 874C410E32B;
	Tue,  8 Feb 2022 21:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E281510E366
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 21:08:32 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id w11so599672wra.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 13:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gIPhliOnck3yOxw+Dv+3394kB7U1re82IdjUQLdsD7g=;
 b=Z8I9ZWk9KMGjtYjkOSq4opEZfrkrnm27stq7L+c8hIZk05qksyUdm4+sUlt0rBndyT
 DQX+SOTc8GS9LeEBc6pi7uSkAVol2kWAn54PJoRSgOd/ccDFsbs79VlWsrIJgy+5UY4z
 adq/p7y0DkEQ++cwOVxs6Wiyy9rvfDf9eMg00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gIPhliOnck3yOxw+Dv+3394kB7U1re82IdjUQLdsD7g=;
 b=aRfpyVju4AkcIIV9eE1twN2nY5bN1esjg9V2soBGN/KRw234BTFG2D7BHlD2ExcWIc
 Uf2N1we1BJ03OwL4JybLGsn/0us5pjWLGUxvlnuAYLb/lbbBynuCoRtzo0D23C0W1adu
 rF8hDyltSgFrq2QLr0Q4sOaP+zgyL3S/xebNC6XaFZt0zirGPcQOJsnNhBLKBqWKR8gz
 AQVyXXi4/QPfcOx2OIwrCPDzm7lMrLNZr4gT5wA4Pnbx9PZepTMSbI1DuW47PNDMJ+BU
 TR22w1CJs3zROBtEwTisDW7UFYF5tDviFbaH6vMsQlhN+HEjkv8JU5NDAv9qcQamFuCF
 mUzA==
X-Gm-Message-State: AOAM5323RlI99eM1187FvXpbUoq/aBeDFDGDY6F+A35FVuQlimy5A/hH
 xjGD1vdOE2Pn806b0I1rn1HoEQ==
X-Google-Smtp-Source: ABdhPJyfRPn4N3kWII/WebNvQR+2lSObKOj91UPPo9uSAdMr7ixXbhsF1UhRz3GGz4BQn3bFDSUu7A==
X-Received: by 2002:a5d:64c1:: with SMTP id f1mr4878344wri.5.1644354511285;
 Tue, 08 Feb 2022 13:08:31 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o14sm3033561wmr.3.2022.02.08.13.08.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 13:08:30 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  8 Feb 2022 22:08:07 +0100
Message-Id: <20220208210824.2238981-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/19] fbcon: Move fbcon_bmove(_rec) functions
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
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoids two forward declarations, and more importantly, matches what
I've done in my fbcon scrolling restore patches - so I need this to
avoid a bunch of conflicts in rebasing since we ended up merging
Helge's series instead.

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

