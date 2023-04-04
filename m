Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 816C86D6D51
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 21:41:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 679B910E79D;
	Tue,  4 Apr 2023 19:40:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4173C10E051
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 19:40:51 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id h8so135141641ede.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 12:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680637249;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=c2Awfk5QL9D/F3Q8zIEOQEzEoAB93VdE7E9Enf3BSXc=;
 b=dTqsYxHw0VxJyO1GEWOSymuYJ0/ANfF9UGweWelHCgqThBrfcgDAv34TERGodfPsom
 49jibnm7zIV0/ZDR/HsPuTn4+JXgBKF7xc53/ATYcEzkiCY9ZToXIbgMb09FEViaZxrT
 k8X2klOSFx+r6ibzt/tM5CPJiQ5SzaVs2f/dA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680637249;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=c2Awfk5QL9D/F3Q8zIEOQEzEoAB93VdE7E9Enf3BSXc=;
 b=OHeckw4cHtasWdxpqesIzck/qSUdUwAWs277hkT0PhABlYThecAJ0j/SCyUn/btZfS
 +/bDESn69z3pY4dg/ceRNB79LcosdbtdbgeOQH7fFwllYvHBPVJz15jCIzj2Q9Z6bJx/
 mqfAd60jO5s57v+sK4vqdDNTYtHh5060TDWhemJAKk4BYiwteyTBJDH2BV1NQt5aCAoE
 1uASjKSkijltTe4aXYTBSYXzBqkwSe06CsNLJpoDAh/EGGR/K3TiwgjUmCQcj/Fc2OtC
 igj30rwDEZpWxZZaWOhdZNTJl/rs8Wzn/+LOLws3Uu/dnnf+jhL3wQtqLq83DItgtHgI
 l0Dw==
X-Gm-Message-State: AAQBX9foaG79mTnLaa0SbrTXiCWUNl8RiQ4UBGD4Rp7lGIdL2u/Cs0rg
 fqzIEr6yrWgliVWWn7QlfsopCQ==
X-Google-Smtp-Source: AKy350a/2kuoOTDgk8X7NxVuU+g0JXxbm7z6oCovaurOeDmPHN2bIC/mfGa4Ljph4QSNk5LCrgFQ/w==
X-Received: by 2002:a17:906:5195:b0:947:bff2:1c2b with SMTP id
 y21-20020a170906519500b00947bff21c2bmr2915223ejk.1.1680637249384; 
 Tue, 04 Apr 2023 12:40:49 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 xb7-20020a170907070700b00948c2f245a9sm2472802ejb.110.2023.04.04.12.40.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 12:40:49 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  4 Apr 2023 21:40:38 +0200
Message-Id: <20230404194038.472803-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
References: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/fb-helper: fix input validation gaps in
 check_var
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apparently drivers need to check all this stuff themselves, which for
most things makes sense I guess. And for everything else we luck out,
because modern distros stopped supporting any other fbdev drivers than
drm ones and I really don't want to argue anymore about who needs to
check stuff. Therefore fixing all this just for drm fbdev emulation is
good enough.

Note that var->active is not set or validated. This is just control
flow for fbmem.c and needs to be validated in there as needed.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/drm_fb_helper.c | 49 +++++++++++++++++++++++++--------
 1 file changed, 38 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index b9696d13a741..ef4eb8b12766 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -1543,6 +1543,27 @@ static void drm_fb_helper_fill_pixel_fmt(struct fb_var_screeninfo *var,
 	}
 }
 
+static void __fill_var(struct fb_var_screeninfo *var,
+		       struct drm_framebuffer *fb)
+{
+	int i;
+
+	var->xres_virtual = fb->width;
+	var->yres_virtual = fb->height;
+	var->accel_flags = FB_ACCELF_TEXT;
+	var->bits_per_pixel = drm_format_info_bpp(fb->format, 0);
+
+	var->height = var->width = 0;
+	var->left_margin = var->right_margin = 0;
+	var->upper_margin = var->lower_margin = 0;
+	var->hsync_len = var->vsync_len = 0;
+	var->sync = var->vmode = 0;
+	var->rotate = 0;
+	var->colorspace = 0;
+	for (i = 0; i < 4; i++)
+		var->reserved[i] = 0;
+}
+
 /**
  * drm_fb_helper_check_var - implementation for &fb_ops.fb_check_var
  * @var: screeninfo to check
@@ -1595,8 +1616,22 @@ int drm_fb_helper_check_var(struct fb_var_screeninfo *var,
 		return -EINVAL;
 	}
 
-	var->xres_virtual = fb->width;
-	var->yres_virtual = fb->height;
+	__fill_var(var, fb);
+
+	/*
+	 * fb_pan_display() validates this, but fb_set_par() doesn't and just
+	 * falls over. Note that __fill_var above adjusts y/res_virtual.
+	 */
+	if (var->yoffset > var->yres_virtual - var->yres ||
+	    var->xoffset > var->xres_virtual - var->xres)
+		return -EINVAL;
+
+	/* We neither support grayscale nor FOURCC (also stored in here). */
+	if (var->grayscale > 0)
+		return -EINVAL;
+
+	if (var->nonstd)
+		return -EINVAL;
 
 	/*
 	 * Workaround for SDL 1.2, which is known to be setting all pixel format
@@ -1612,11 +1647,6 @@ int drm_fb_helper_check_var(struct fb_var_screeninfo *var,
 		drm_fb_helper_fill_pixel_fmt(var, format);
 	}
 
-	/*
-	 * Likewise, bits_per_pixel should be rounded up to a supported value.
-	 */
-	var->bits_per_pixel = bpp;
-
 	/*
 	 * drm fbdev emulation doesn't support changing the pixel format at all,
 	 * so reject all pixel format changing requests.
@@ -2040,12 +2070,9 @@ static void drm_fb_helper_fill_var(struct fb_info *info,
 	}
 
 	info->pseudo_palette = fb_helper->pseudo_palette;
-	info->var.xres_virtual = fb->width;
-	info->var.yres_virtual = fb->height;
-	info->var.bits_per_pixel = drm_format_info_bpp(format, 0);
-	info->var.accel_flags = FB_ACCELF_TEXT;
 	info->var.xoffset = 0;
 	info->var.yoffset = 0;
+	__fill_var(&info->var, fb);
 	info->var.activate = FB_ACTIVATE_NOW;
 
 	drm_fb_helper_fill_pixel_fmt(&info->var, format);
-- 
2.40.0

