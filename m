Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F6B4A50D1
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 22:06:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D48610E47E;
	Mon, 31 Jan 2022 21:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB3F10E42D
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 21:06:39 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id r7so11184571wmq.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 13:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9elcEF+FUVtrFo+P664bpKhWxlWsFcRwRHhOMNgwzW0=;
 b=XHfO/wn8IkfHT202i85gyvWrkloyUnQE6uoga9lWrzNazjOOPB/rjjTQiTJ02imTWA
 54VOxqV1+ChwVtmjS9FUQkPhKTM2bbY7b8fBwefpQdOiYS10EBKZRaaoaHE+LsfiEOsv
 p7W/lx2r1iXlJDKVVMadBVoM3d+pe9DFQ63FU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9elcEF+FUVtrFo+P664bpKhWxlWsFcRwRHhOMNgwzW0=;
 b=ni7rYrBJ9TvP/KdZ8qcI7alW4ltFmws2Ci+f4UAE1oMkcbaowhvw5LO8EGTWXHtHGA
 ejIPQtkaJECWhWdm7TbnmaioKanFJp6mXjmv6aMX/3ORhIBdpnX9FkXgdbHWNK3YvxxC
 TDRuVy5ULRuhpG5kV7xRBwoTG406XPsGiXzJRof5ZK+TfSzM1RydoYtRJHd6Ahc7tZ98
 5B2tCdV3TQxgmqr/LhcG+DDiYobl2j8Tokd9s9wZbl06SG+S8dNmjPXKSjOuAzP8bwLc
 Jx631fGeU6EYA0RV67tTdJ0sC2BntKkm6BiWEPkqpTebR68u4xBIalYwMcz+gM+fyEsp
 5xIA==
X-Gm-Message-State: AOAM530E+IV8aLAGiuhGovZXUzuAB4d1cIIvnaddkvVjHQVgvwtSfaed
 V+GLhB6LBsN3oM2QW5jMgFNTijc8LAzBFg==
X-Google-Smtp-Source: ABdhPJzFYJxnbuwjv7BgWbSbiYaq6SzlYYSYRiulgLOPdfd4aJ33/Z0Erh9dIHL4H0VhctMf+XoN4Q==
X-Received: by 2002:a05:600c:3593:: with SMTP id
 p19mr19647246wmq.172.1643663197952; 
 Mon, 31 Jan 2022 13:06:37 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b11sm314961wmq.46.2022.01.31.13.06.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 13:06:37 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 31 Jan 2022 22:05:34 +0100
Message-Id: <20220131210552.482606-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/21] fbcon: Restore fbcon scrolling
 acceleration
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
Cc: Sven Schnelle <svens@stackframe.org>, linux-fbdev@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Sam Ravnborg <sam@ravnborg.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Javier Martinez Canillas <javierm@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Pavel Machek <pavel@ucw.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Dave Airlie <airlied@gmail.com>,
 Helge Deller <deller@gmx.de>, Gerd Hoffmann <kraxel@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This functionally undoes 39aead8373b3 ("fbcon: Disable accelerated
scrolling"), but behind the FRAMEBUFFER_CONSOLE_LEGACY_ACCELERATION
option.

References: https://lore.kernel.org/dri-devel/feea8303-2b83-fc36-972c-4fc8ad723bde@gmx.de/
Fixes: 39aead8373b3 ("fbcon: Disable accelerated scrolling")
Cc: Helge Deller <deller@gmx.de>
Cc: <stable@vger.kernel.org> # v5.11+
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Dave Airlie <airlied@gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Sven Schnelle <svens@stackframe.org>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/video/fbdev/core/fbcon.c | 48 ++++++++++++++++++++++++++++----
 1 file changed, 42 insertions(+), 6 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index 2ff90061c7f3..39dc18a5de86 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -1125,13 +1125,15 @@ static void fbcon_init(struct vc_data *vc, int init)
 
 	ops->graphics = 0;
 
-	/*
-	 * No more hw acceleration for fbcon.
-	 *
-	 * FIXME: Garbage collect all the now dead code after sufficient time
-	 * has passed.
-	 */
+#ifdef CONFIG_FRAMEBUFFER_CONSOLE_ROTATION
+	if ((info->flags & FBINFO_HWACCEL_COPYAREA) &&
+	    !(info->flags & FBINFO_HWACCEL_DISABLED))
+		p->scrollmode = SCROLL_MOVE;
+	else /* default to something safe */
+		p->scrollmode = SCROLL_REDRAW;
+#else
 	p->scrollmode = SCROLL_REDRAW;
+#endif
 
 	/*
 	 *  ++guenther: console.c:vc_allocate() relies on initializing
@@ -1971,15 +1973,49 @@ static void updatescrollmode(struct fbcon_display *p,
 {
 	struct fbcon_ops *ops = info->fbcon_par;
 	int fh = vc->vc_font.height;
+	int cap = info->flags;
+	u16 t = 0;
+	int ypan = FBCON_SWAP(ops->rotate, info->fix.ypanstep,
+			      info->fix.xpanstep);
+	int ywrap = FBCON_SWAP(ops->rotate, info->fix.ywrapstep, t);
 	int yres = FBCON_SWAP(ops->rotate, info->var.yres, info->var.xres);
 	int vyres = FBCON_SWAP(ops->rotate, info->var.yres_virtual,
 				   info->var.xres_virtual);
+	int good_pan = (cap & FBINFO_HWACCEL_YPAN) &&
+		divides(ypan, vc->vc_font.height) && vyres > yres;
+	int good_wrap = (cap & FBINFO_HWACCEL_YWRAP) &&
+		divides(ywrap, vc->vc_font.height) &&
+		divides(vc->vc_font.height, vyres) &&
+		divides(vc->vc_font.height, yres);
+	int reading_fast = cap & FBINFO_READS_FAST;
+	int fast_copyarea = (cap & FBINFO_HWACCEL_COPYAREA) &&
+		!(cap & FBINFO_HWACCEL_DISABLED);
+	int fast_imageblit = (cap & FBINFO_HWACCEL_IMAGEBLIT) &&
+		!(cap & FBINFO_HWACCEL_DISABLED);
 
 	p->vrows = vyres/fh;
 	if (yres > (fh * (vc->vc_rows + 1)))
 		p->vrows -= (yres - (fh * vc->vc_rows)) / fh;
 	if ((yres % fh) && (vyres % fh < yres % fh))
 		p->vrows--;
+
+	if (good_wrap || good_pan) {
+		if (reading_fast || fast_copyarea)
+			p->scrollmode = good_wrap ?
+				SCROLL_WRAP_MOVE : SCROLL_PAN_MOVE;
+		else
+			p->scrollmode = good_wrap ? SCROLL_REDRAW :
+				SCROLL_PAN_REDRAW;
+	} else {
+		if (reading_fast || (fast_copyarea && !fast_imageblit))
+			p->scrollmode = SCROLL_MOVE;
+		else
+			p->scrollmode = SCROLL_REDRAW;
+	}
+
+#ifndef CONFIG_FRAMEBUFFER_CONSOLE_ROTATION
+	p->scrollmode = SCROLL_REDRAW;
+#endif
 }
 
 #define PITCH(w) (((w) + 7) >> 3)
-- 
2.33.0

