Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0D116FBBA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 11:12:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B4E6E451;
	Wed, 26 Feb 2020 10:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81D66E451
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 10:11:59 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id a141so1569577wme.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 02:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=igk+gx4Ypx/vIGXyT6G9J0AhguS+rQqfRpP0P3OHaAc=;
 b=vSVJFBWrPmB3AxRmzYo5Fts1YphlEl+m3MxcDo+fPBQasIEQClORWH11rK/ImXnWZb
 HXG1qV1an+D4IW4xaqqTbGO3j1Pv2+oaVCDYVo2yFL7Rompn13Wo1oHulAnDutvuuDZq
 R/3ps/8q32r1Sj4hZ2+viEQSW/MFtH52PWe9wpWnjD7krk6zTLqYbzYjgV2MZiJ7JvKZ
 ecJ6AVAdUZHyCWmLsXZYuU6FZzr5L1l/WQ9F8fhloSyCKDTd1/cBd3b1C1xFgJIJJBbt
 7Z0T5ZvDudj9hFJB87t1bF0KOolOqGZiCD/S02Qsq0illW3gSrTVaT/G/jxUuFzV5Plu
 Ylwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=igk+gx4Ypx/vIGXyT6G9J0AhguS+rQqfRpP0P3OHaAc=;
 b=Btrb43V1aA41Dab91H0aKTCalnAQtrMQI4iuIbeRe7i7skuWHRNNdiJ+8OnffViNNs
 cLAreNt8kLy0l9XHOAlCUecnL9bwPC2fmpr4p/z1XIHhwMdyg4peXVmSgOckaPRsXXn2
 bOMSt3cRePfG7zo3TL73VBfOMPQRoAAuRcA4DDEOsQvSWg0I5L6zwh0EqEQQ7zbjqbCV
 QRKt6mGwo+fzEyU5i0s5qmyhWCd8vgnw985gOIKA4GSkCWTbR+ba/xQcbU+KwcwLP9/K
 p4uFIoicJgLz58JYRtZC8VdtByUy1YiYzy6Ca/xVSypTTT3B0F24vN4a3/aWRrKTzE5F
 Jrrw==
X-Gm-Message-State: APjAAAVOM14KF2OBUChfla6nFXXRSndqRGvHSA3hfLCMYrVyY2R4KTd4
 s/fb4yjrqGOv8NnZffeK0B4=
X-Google-Smtp-Source: APXvYqzXZkartcq2JHAAj8xPjbIq9d8SeHCEX+404i+RH3U34yVF62BtwPEOKVCU0jshh7zmnKfS/A==
X-Received: by 2002:a7b:cb42:: with SMTP id v2mr4768157wmj.170.1582711917862; 
 Wed, 26 Feb 2020 02:11:57 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id r3sm2558190wrn.34.2020.02.26.02.11.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:11:57 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Wed, 26 Feb 2020 13:11:31 +0300
Message-Id: <20200226101138.15435-4-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/10] drm/i915/fbdev: convert to drm_device
 based logging.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert various instances of printk based drm logging macros to the
struct drm_device based logging macros in i915/display/intel_fbdev.c.
This also involves extracting the drm_i915_private device from various
intel types.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 89 +++++++++++++---------
 1 file changed, 51 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index b4ff77225236..15e537f058bd 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -147,7 +147,7 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_shmem(dev_priv, size);
 	if (IS_ERR(obj)) {
-		DRM_ERROR("failed to allocate framebuffer\n");
+		drm_err(&dev_priv->drm, "failed to allocate framebuffer\n");
 		return PTR_ERR(obj);
 	}
 
@@ -184,21 +184,23 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	if (intel_fb &&
 	    (sizes->fb_width > intel_fb->base.width ||
 	     sizes->fb_height > intel_fb->base.height)) {
-		DRM_DEBUG_KMS("BIOS fb too small (%dx%d), we require (%dx%d),"
-			      " releasing it\n",
-			      intel_fb->base.width, intel_fb->base.height,
-			      sizes->fb_width, sizes->fb_height);
+		drm_dbg_kms(&dev_priv->drm,
+			    "BIOS fb too small (%dx%d), we require (%dx%d),"
+			    " releasing it\n",
+			    intel_fb->base.width, intel_fb->base.height,
+			    sizes->fb_width, sizes->fb_height);
 		drm_framebuffer_put(&intel_fb->base);
 		intel_fb = ifbdev->fb = NULL;
 	}
 	if (!intel_fb || drm_WARN_ON(dev, !intel_fb_obj(&intel_fb->base))) {
-		DRM_DEBUG_KMS("no BIOS fb, allocating a new one\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "no BIOS fb, allocating a new one\n");
 		ret = intelfb_alloc(helper, sizes);
 		if (ret)
 			return ret;
 		intel_fb = ifbdev->fb;
 	} else {
-		DRM_DEBUG_KMS("re-using BIOS fb\n");
+		drm_dbg_kms(&dev_priv->drm, "re-using BIOS fb\n");
 		prealloc = true;
 		sizes->fb_width = intel_fb->base.width;
 		sizes->fb_height = intel_fb->base.height;
@@ -221,7 +223,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 
 	info = drm_fb_helper_alloc_fbi(helper);
 	if (IS_ERR(info)) {
-		DRM_ERROR("Failed to allocate fb_info\n");
+		drm_err(&dev_priv->drm, "Failed to allocate fb_info\n");
 		ret = PTR_ERR(info);
 		goto out_unpin;
 	}
@@ -241,7 +243,8 @@ static int intelfb_create(struct drm_fb_helper *helper,
 
 	vaddr = i915_vma_pin_iomap(vma);
 	if (IS_ERR(vaddr)) {
-		DRM_ERROR("Failed to remap framebuffer into virtual memory\n");
+		drm_err(&dev_priv->drm,
+			"Failed to remap framebuffer into virtual memory\n");
 		ret = PTR_ERR(vaddr);
 		goto out_unpin;
 	}
@@ -259,9 +262,9 @@ static int intelfb_create(struct drm_fb_helper *helper,
 
 	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */
 
-	DRM_DEBUG_KMS("allocated %dx%d fb: 0x%08x\n",
-		      ifbdev->fb->base.width, ifbdev->fb->base.height,
-		      i915_ggtt_offset(vma));
+	drm_dbg_kms(&dev_priv->drm, "allocated %dx%d fb: 0x%08x\n",
+		    ifbdev->fb->base.width, ifbdev->fb->base.height,
+		    i915_ggtt_offset(vma));
 	ifbdev->vma = vma;
 	ifbdev->vma_flags = flags;
 
@@ -310,6 +313,7 @@ static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
 static bool intel_fbdev_init_bios(struct drm_device *dev,
 				 struct intel_fbdev *ifbdev)
 {
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct intel_framebuffer *fb = NULL;
 	struct drm_crtc *crtc;
 	struct intel_crtc *intel_crtc;
@@ -322,21 +326,24 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		intel_crtc = to_intel_crtc(crtc);
 
 		if (!crtc->state->active || !obj) {
-			DRM_DEBUG_KMS("pipe %c not active or no fb, skipping\n",
-				      pipe_name(intel_crtc->pipe));
+			drm_dbg_kms(&i915->drm,
+				    "pipe %c not active or no fb, skipping\n",
+				    pipe_name(intel_crtc->pipe));
 			continue;
 		}
 
 		if (obj->base.size > max_size) {
-			DRM_DEBUG_KMS("found possible fb from plane %c\n",
-				      pipe_name(intel_crtc->pipe));
+			drm_dbg_kms(&i915->drm,
+				    "found possible fb from plane %c\n",
+				    pipe_name(intel_crtc->pipe));
 			fb = to_intel_framebuffer(crtc->primary->state->fb);
 			max_size = obj->base.size;
 		}
 	}
 
 	if (!fb) {
-		DRM_DEBUG_KMS("no active fbs found, not using BIOS config\n");
+		drm_dbg_kms(&i915->drm,
+			    "no active fbs found, not using BIOS config\n");
 		goto out;
 	}
 
@@ -347,13 +354,14 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		intel_crtc = to_intel_crtc(crtc);
 
 		if (!crtc->state->active) {
-			DRM_DEBUG_KMS("pipe %c not active, skipping\n",
-				      pipe_name(intel_crtc->pipe));
+			drm_dbg_kms(&i915->drm,
+				    "pipe %c not active, skipping\n",
+				    pipe_name(intel_crtc->pipe));
 			continue;
 		}
 
-		DRM_DEBUG_KMS("checking plane %c for BIOS fb\n",
-			      pipe_name(intel_crtc->pipe));
+		drm_dbg_kms(&i915->drm, "checking plane %c for BIOS fb\n",
+			    pipe_name(intel_crtc->pipe));
 
 		/*
 		 * See if the plane fb we found above will fit on this
@@ -363,9 +371,10 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		cur_size = crtc->state->adjusted_mode.crtc_hdisplay;
 		cur_size = cur_size * fb->base.format->cpp[0];
 		if (fb->base.pitches[0] < cur_size) {
-			DRM_DEBUG_KMS("fb not wide enough for plane %c (%d vs %d)\n",
-				      pipe_name(intel_crtc->pipe),
-				      cur_size, fb->base.pitches[0]);
+			drm_dbg_kms(&i915->drm,
+				    "fb not wide enough for plane %c (%d vs %d)\n",
+				    pipe_name(intel_crtc->pipe),
+				    cur_size, fb->base.pitches[0]);
 			fb = NULL;
 			break;
 		}
@@ -373,28 +382,32 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		cur_size = crtc->state->adjusted_mode.crtc_vdisplay;
 		cur_size = intel_fb_align_height(&fb->base, 0, cur_size);
 		cur_size *= fb->base.pitches[0];
-		DRM_DEBUG_KMS("pipe %c area: %dx%d, bpp: %d, size: %d\n",
-			      pipe_name(intel_crtc->pipe),
-			      crtc->state->adjusted_mode.crtc_hdisplay,
-			      crtc->state->adjusted_mode.crtc_vdisplay,
-			      fb->base.format->cpp[0] * 8,
-			      cur_size);
+		drm_dbg_kms(&i915->drm,
+			    "pipe %c area: %dx%d, bpp: %d, size: %d\n",
+			    pipe_name(intel_crtc->pipe),
+			    crtc->state->adjusted_mode.crtc_hdisplay,
+			    crtc->state->adjusted_mode.crtc_vdisplay,
+			    fb->base.format->cpp[0] * 8,
+			    cur_size);
 
 		if (cur_size > max_size) {
-			DRM_DEBUG_KMS("fb not big enough for plane %c (%d vs %d)\n",
-				      pipe_name(intel_crtc->pipe),
-				      cur_size, max_size);
+			drm_dbg_kms(&i915->drm,
+				    "fb not big enough for plane %c (%d vs %d)\n",
+				    pipe_name(intel_crtc->pipe),
+				    cur_size, max_size);
 			fb = NULL;
 			break;
 		}
 
-		DRM_DEBUG_KMS("fb big enough for plane %c (%d >= %d)\n",
-			      pipe_name(intel_crtc->pipe),
-			      max_size, cur_size);
+		drm_dbg_kms(&i915->drm,
+			    "fb big enough for plane %c (%d >= %d)\n",
+			    pipe_name(intel_crtc->pipe),
+			    max_size, cur_size);
 	}
 
 	if (!fb) {
-		DRM_DEBUG_KMS("BIOS fb not suitable for all pipes, not using\n");
+		drm_dbg_kms(&i915->drm,
+			    "BIOS fb not suitable for all pipes, not using\n");
 		goto out;
 	}
 
@@ -416,7 +429,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 	}
 
 
-	DRM_DEBUG_KMS("using BIOS fb for initial console\n");
+	drm_dbg_kms(&i915->drm, "using BIOS fb for initial console\n");
 	return true;
 
 out:
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
