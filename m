Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3D595BB53
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 18:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB4710EB55;
	Thu, 22 Aug 2024 16:05:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fbW4tKTN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40A8310EB54;
 Thu, 22 Aug 2024 16:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724342732; x=1755878732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pZIAiyxANRo5EmKdtc15qrWd3WsnHBzObnqaWIEu8hY=;
 b=fbW4tKTNlTI5YtxKLoeliLZITszUuzYL+TFLLFVb9xwfvY7suHoDZ2Jk
 i57C9+h2mrAz2S1Paqe2dUIf221ZVR5YxduPuAOMurB+SnpZMH8AA48Ui
 HFDBCf105UXxS2yjwSb1T3cVJLTF2JCPXm9EBZ2RiWWwXB3yI14RwAiRY
 MZmizt42HBKP6lwNKAoHblbcK+VGhfjmzhvjlx//7Dv/uo9Qgxqq3is6r
 /AnstzW9jJRT5uVfxhaXxg6Dm0X9gTTFtTjGNOL99QECbkVkw5VD3u1wQ
 aB9/Zzi4l+xrLF2c1cIXuzEfPkIwrTkxKpuRCmK/zk3hXTNGoWy2Nqeah w==;
X-CSE-ConnectionGUID: dfkAAxIYSJaepFT70v4O+A==
X-CSE-MsgGUID: LfTqovK6RIOA0rdjbh+mWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22953111"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22953111"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:32 -0700
X-CSE-ConnectionGUID: QHUwQstzSyix/ypsSh0mMg==
X-CSE-MsgGUID: YD8YUvkPQvy8VIc95Yg1nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="61169344"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/7] drm/i915/sprite: convert to struct intel_display
Date: Thu, 22 Aug 2024 19:04:54 +0300
Message-Id: <094db6a9f40404fcc14843d32b45465d31730d96.1724342644.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724342644.git.jani.nikula@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_sprite.[ch] to struct intel_display.

Some stragglers	are left behind	where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 209 +++++++++++---------
 1 file changed, 112 insertions(+), 97 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index f8cceb3e5d8e..e657b09ede99 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -48,9 +48,9 @@
 #include "intel_sprite.h"
 #include "intel_sprite_regs.h"
 
-static char sprite_name(struct drm_i915_private *i915, enum pipe pipe, int sprite)
+static char sprite_name(struct intel_display *display, enum pipe pipe, int sprite)
 {
-	return pipe * DISPLAY_RUNTIME_INFO(i915)->num_sprites[pipe] + sprite + 'A';
+	return pipe * DISPLAY_RUNTIME_INFO(display)->num_sprites[pipe] + sprite + 'A';
 }
 
 static void i9xx_plane_linear_gamma(u16 gamma[8])
@@ -67,7 +67,7 @@ static void
 chv_sprite_update_csc(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum plane_id plane_id = plane->id;
 	/*
@@ -100,35 +100,35 @@ chv_sprite_update_csc(const struct intel_plane_state *plane_state)
 	if (!fb->format->is_yuv)
 		return;
 
-	intel_de_write_fw(dev_priv, SPCSCYGOFF(plane_id),
+	intel_de_write_fw(display, SPCSCYGOFF(plane_id),
 			  SPCSC_OOFF(0) | SPCSC_IOFF(0));
-	intel_de_write_fw(dev_priv, SPCSCCBOFF(plane_id),
+	intel_de_write_fw(display, SPCSCCBOFF(plane_id),
 			  SPCSC_OOFF(0) | SPCSC_IOFF(0));
-	intel_de_write_fw(dev_priv, SPCSCCROFF(plane_id),
+	intel_de_write_fw(display, SPCSCCROFF(plane_id),
 			  SPCSC_OOFF(0) | SPCSC_IOFF(0));
 
-	intel_de_write_fw(dev_priv, SPCSCC01(plane_id),
+	intel_de_write_fw(display, SPCSCC01(plane_id),
 			  SPCSC_C1(csc[1]) | SPCSC_C0(csc[0]));
-	intel_de_write_fw(dev_priv, SPCSCC23(plane_id),
+	intel_de_write_fw(display, SPCSCC23(plane_id),
 			  SPCSC_C1(csc[3]) | SPCSC_C0(csc[2]));
-	intel_de_write_fw(dev_priv, SPCSCC45(plane_id),
+	intel_de_write_fw(display, SPCSCC45(plane_id),
 			  SPCSC_C1(csc[5]) | SPCSC_C0(csc[4]));
-	intel_de_write_fw(dev_priv, SPCSCC67(plane_id),
+	intel_de_write_fw(display, SPCSCC67(plane_id),
 			  SPCSC_C1(csc[7]) | SPCSC_C0(csc[6]));
-	intel_de_write_fw(dev_priv, SPCSCC8(plane_id), SPCSC_C0(csc[8]));
+	intel_de_write_fw(display, SPCSCC8(plane_id), SPCSC_C0(csc[8]));
 
-	intel_de_write_fw(dev_priv, SPCSCYGICLAMP(plane_id),
+	intel_de_write_fw(display, SPCSCYGICLAMP(plane_id),
 			  SPCSC_IMAX(1023) | SPCSC_IMIN(0));
-	intel_de_write_fw(dev_priv, SPCSCCBICLAMP(plane_id),
+	intel_de_write_fw(display, SPCSCCBICLAMP(plane_id),
 			  SPCSC_IMAX(512) | SPCSC_IMIN(-512));
-	intel_de_write_fw(dev_priv, SPCSCCRICLAMP(plane_id),
+	intel_de_write_fw(display, SPCSCCRICLAMP(plane_id),
 			  SPCSC_IMAX(512) | SPCSC_IMIN(-512));
 
-	intel_de_write_fw(dev_priv, SPCSCYGOCLAMP(plane_id),
+	intel_de_write_fw(display, SPCSCYGOCLAMP(plane_id),
 			  SPCSC_OMAX(1023) | SPCSC_OMIN(0));
-	intel_de_write_fw(dev_priv, SPCSCCBOCLAMP(plane_id),
+	intel_de_write_fw(display, SPCSCCBOCLAMP(plane_id),
 			  SPCSC_OMAX(1023) | SPCSC_OMIN(0));
-	intel_de_write_fw(dev_priv, SPCSCCROCLAMP(plane_id),
+	intel_de_write_fw(display, SPCSCCROCLAMP(plane_id),
 			  SPCSC_OMAX(1023) | SPCSC_OMIN(0));
 }
 
@@ -139,7 +139,7 @@ static void
 vlv_sprite_update_clrc(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
@@ -168,9 +168,9 @@ vlv_sprite_update_clrc(const struct intel_plane_state *plane_state)
 	}
 
 	/* FIXME these register are single buffered :( */
-	intel_de_write_fw(dev_priv, SPCLRC0(pipe, plane_id),
+	intel_de_write_fw(display, SPCLRC0(pipe, plane_id),
 			  SP_CONTRAST(contrast) | SP_BRIGHTNESS(brightness));
-	intel_de_write_fw(dev_priv, SPCLRC1(pipe, plane_id),
+	intel_de_write_fw(display, SPCLRC1(pipe, plane_id),
 			  SP_SH_SIN(sh_sin) | SP_SH_COS(sh_cos));
 }
 
@@ -357,7 +357,7 @@ static u32 vlv_sprite_ctl(const struct intel_crtc_state *crtc_state,
 static void vlv_sprite_update_gamma(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
@@ -373,7 +373,7 @@ static void vlv_sprite_update_gamma(const struct intel_plane_state *plane_state)
 	/* FIXME these register are single buffered :( */
 	/* The two end points are implicit (0.0 and 1.0) */
 	for (i = 1; i < 8 - 1; i++)
-		intel_de_write_fw(dev_priv, SPGAMC(pipe, plane_id, i - 1),
+		intel_de_write_fw(display, SPGAMC(pipe, plane_id, i - 1),
 				  gamma[i] << 16 | gamma[i] << 8 | gamma[i]);
 }
 
@@ -382,7 +382,7 @@ vlv_sprite_update_noarm(struct intel_plane *plane,
 			const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
 	int crtc_x = plane_state->uapi.dst.x1;
@@ -390,11 +390,11 @@ vlv_sprite_update_noarm(struct intel_plane *plane,
 	u32 crtc_w = drm_rect_width(&plane_state->uapi.dst);
 	u32 crtc_h = drm_rect_height(&plane_state->uapi.dst);
 
-	intel_de_write_fw(dev_priv, SPSTRIDE(pipe, plane_id),
+	intel_de_write_fw(display, SPSTRIDE(pipe, plane_id),
 			  plane_state->view.color_plane[0].mapping_stride);
-	intel_de_write_fw(dev_priv, SPPOS(pipe, plane_id),
+	intel_de_write_fw(display, SPPOS(pipe, plane_id),
 			  SP_POS_Y(crtc_y) | SP_POS_X(crtc_x));
-	intel_de_write_fw(dev_priv, SPSIZE(pipe, plane_id),
+	intel_de_write_fw(display, SPSIZE(pipe, plane_id),
 			  SP_HEIGHT(crtc_h - 1) | SP_WIDTH(crtc_w - 1));
 }
 
@@ -403,6 +403,7 @@ vlv_sprite_update_arm(struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state,
 		      const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
@@ -420,18 +421,18 @@ vlv_sprite_update_arm(struct intel_plane *plane,
 		chv_sprite_update_csc(plane_state);
 
 	if (key->flags) {
-		intel_de_write_fw(dev_priv, SPKEYMINVAL(pipe, plane_id),
+		intel_de_write_fw(display, SPKEYMINVAL(pipe, plane_id),
 				  key->min_value);
-		intel_de_write_fw(dev_priv, SPKEYMSK(pipe, plane_id),
+		intel_de_write_fw(display, SPKEYMSK(pipe, plane_id),
 				  key->channel_mask);
-		intel_de_write_fw(dev_priv, SPKEYMAXVAL(pipe, plane_id),
+		intel_de_write_fw(display, SPKEYMAXVAL(pipe, plane_id),
 				  key->max_value);
 	}
 
-	intel_de_write_fw(dev_priv, SPCONSTALPHA(pipe, plane_id), 0);
+	intel_de_write_fw(display, SPCONSTALPHA(pipe, plane_id), 0);
 
-	intel_de_write_fw(dev_priv, SPLINOFF(pipe, plane_id), linear_offset);
-	intel_de_write_fw(dev_priv, SPTILEOFF(pipe, plane_id),
+	intel_de_write_fw(display, SPLINOFF(pipe, plane_id), linear_offset);
+	intel_de_write_fw(display, SPTILEOFF(pipe, plane_id),
 			  SP_OFFSET_Y(y) | SP_OFFSET_X(x));
 
 	/*
@@ -439,8 +440,8 @@ vlv_sprite_update_arm(struct intel_plane *plane,
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	intel_de_write_fw(dev_priv, SPCNTR(pipe, plane_id), sprctl);
-	intel_de_write_fw(dev_priv, SPSURF(pipe, plane_id),
+	intel_de_write_fw(display, SPCNTR(pipe, plane_id), sprctl);
+	intel_de_write_fw(display, SPSURF(pipe, plane_id),
 			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
 
 	vlv_sprite_update_clrc(plane_state);
@@ -451,18 +452,19 @@ static void
 vlv_sprite_disable_arm(struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
 
-	intel_de_write_fw(dev_priv, SPCNTR(pipe, plane_id), 0);
-	intel_de_write_fw(dev_priv, SPSURF(pipe, plane_id), 0);
+	intel_de_write_fw(display, SPCNTR(pipe, plane_id), 0);
+	intel_de_write_fw(display, SPSURF(pipe, plane_id), 0);
 }
 
 static bool
 vlv_sprite_get_hw_state(struct intel_plane *plane,
 			enum pipe *pipe)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	enum plane_id plane_id = plane->id;
@@ -474,7 +476,7 @@ vlv_sprite_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	ret = intel_de_read(dev_priv, SPCNTR(plane->pipe, plane_id)) & SP_ENABLE;
+	ret = intel_de_read(display, SPCNTR(plane->pipe, plane_id)) & SP_ENABLE;
 
 	*pipe = plane->pipe;
 
@@ -766,7 +768,7 @@ static void ivb_sprite_linear_gamma(const struct intel_plane_state *plane_state,
 static void ivb_sprite_update_gamma(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	u16 gamma[18];
 	int i;
@@ -778,17 +780,17 @@ static void ivb_sprite_update_gamma(const struct intel_plane_state *plane_state)
 
 	/* FIXME these register are single buffered :( */
 	for (i = 0; i < 16; i++)
-		intel_de_write_fw(dev_priv, SPRGAMC(pipe, i),
+		intel_de_write_fw(display, SPRGAMC(pipe, i),
 				  gamma[i] << 20 | gamma[i] << 10 | gamma[i]);
 
-	intel_de_write_fw(dev_priv, SPRGAMC16(pipe, 0), gamma[i]);
-	intel_de_write_fw(dev_priv, SPRGAMC16(pipe, 1), gamma[i]);
-	intel_de_write_fw(dev_priv, SPRGAMC16(pipe, 2), gamma[i]);
+	intel_de_write_fw(display, SPRGAMC16(pipe, 0), gamma[i]);
+	intel_de_write_fw(display, SPRGAMC16(pipe, 1), gamma[i]);
+	intel_de_write_fw(display, SPRGAMC16(pipe, 2), gamma[i]);
 	i++;
 
-	intel_de_write_fw(dev_priv, SPRGAMC17(pipe, 0), gamma[i]);
-	intel_de_write_fw(dev_priv, SPRGAMC17(pipe, 1), gamma[i]);
-	intel_de_write_fw(dev_priv, SPRGAMC17(pipe, 2), gamma[i]);
+	intel_de_write_fw(display, SPRGAMC17(pipe, 0), gamma[i]);
+	intel_de_write_fw(display, SPRGAMC17(pipe, 1), gamma[i]);
+	intel_de_write_fw(display, SPRGAMC17(pipe, 2), gamma[i]);
 	i++;
 }
 
@@ -797,6 +799,7 @@ ivb_sprite_update_noarm(struct intel_plane *plane,
 			const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	int crtc_x = plane_state->uapi.dst.x1;
@@ -812,14 +815,14 @@ ivb_sprite_update_noarm(struct intel_plane *plane,
 			SPRITE_SRC_WIDTH(src_w - 1) |
 			SPRITE_SRC_HEIGHT(src_h - 1);
 
-	intel_de_write_fw(dev_priv, SPRSTRIDE(pipe),
+	intel_de_write_fw(display, SPRSTRIDE(pipe),
 			  plane_state->view.color_plane[0].mapping_stride);
-	intel_de_write_fw(dev_priv, SPRPOS(pipe),
+	intel_de_write_fw(display, SPRPOS(pipe),
 			  SPRITE_POS_Y(crtc_y) | SPRITE_POS_X(crtc_x));
-	intel_de_write_fw(dev_priv, SPRSIZE(pipe),
+	intel_de_write_fw(display, SPRSIZE(pipe),
 			  SPRITE_HEIGHT(crtc_h - 1) | SPRITE_WIDTH(crtc_w - 1));
 	if (IS_IVYBRIDGE(dev_priv))
-		intel_de_write_fw(dev_priv, SPRSCALE(pipe), sprscale);
+		intel_de_write_fw(display, SPRSCALE(pipe), sprscale);
 }
 
 static void
@@ -827,6 +830,7 @@ ivb_sprite_update_arm(struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state,
 		      const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
@@ -840,20 +844,20 @@ ivb_sprite_update_arm(struct intel_plane *plane,
 	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
 
 	if (key->flags) {
-		intel_de_write_fw(dev_priv, SPRKEYVAL(pipe), key->min_value);
-		intel_de_write_fw(dev_priv, SPRKEYMSK(pipe),
+		intel_de_write_fw(display, SPRKEYVAL(pipe), key->min_value);
+		intel_de_write_fw(display, SPRKEYMSK(pipe),
 				  key->channel_mask);
-		intel_de_write_fw(dev_priv, SPRKEYMAX(pipe), key->max_value);
+		intel_de_write_fw(display, SPRKEYMAX(pipe), key->max_value);
 	}
 
 	/* HSW consolidates SPRTILEOFF and SPRLINOFF into a single SPROFFSET
 	 * register */
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		intel_de_write_fw(dev_priv, SPROFFSET(pipe),
+		intel_de_write_fw(display, SPROFFSET(pipe),
 				  SPRITE_OFFSET_Y(y) | SPRITE_OFFSET_X(x));
 	} else {
-		intel_de_write_fw(dev_priv, SPRLINOFF(pipe), linear_offset);
-		intel_de_write_fw(dev_priv, SPRTILEOFF(pipe),
+		intel_de_write_fw(display, SPRLINOFF(pipe), linear_offset);
+		intel_de_write_fw(display, SPRTILEOFF(pipe),
 				  SPRITE_OFFSET_Y(y) | SPRITE_OFFSET_X(x));
 	}
 
@@ -862,8 +866,8 @@ ivb_sprite_update_arm(struct intel_plane *plane,
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	intel_de_write_fw(dev_priv, SPRCTL(pipe), sprctl);
-	intel_de_write_fw(dev_priv, SPRSURF(pipe),
+	intel_de_write_fw(display, SPRCTL(pipe), sprctl);
+	intel_de_write_fw(display, SPRSURF(pipe),
 			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
 
 	ivb_sprite_update_gamma(plane_state);
@@ -873,20 +877,22 @@ static void
 ivb_sprite_disable_arm(struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
-	intel_de_write_fw(dev_priv, SPRCTL(pipe), 0);
+	intel_de_write_fw(display, SPRCTL(pipe), 0);
 	/* Disable the scaler */
 	if (IS_IVYBRIDGE(dev_priv))
-		intel_de_write_fw(dev_priv, SPRSCALE(pipe), 0);
-	intel_de_write_fw(dev_priv, SPRSURF(pipe), 0);
+		intel_de_write_fw(display, SPRSCALE(pipe), 0);
+	intel_de_write_fw(display, SPRSURF(pipe), 0);
 }
 
 static bool
 ivb_sprite_get_hw_state(struct intel_plane *plane,
 			enum pipe *pipe)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
@@ -897,7 +903,7 @@ ivb_sprite_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	ret =  intel_de_read(dev_priv, SPRCTL(plane->pipe)) & SPRITE_ENABLE;
+	ret =  intel_de_read(display, SPRCTL(plane->pipe)) & SPRITE_ENABLE;
 
 	*pipe = plane->pipe;
 
@@ -1073,7 +1079,7 @@ static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
 static void g4x_sprite_update_gamma(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	u16 gamma[8];
@@ -1088,7 +1094,7 @@ static void g4x_sprite_update_gamma(const struct intel_plane_state *plane_state)
 	/* FIXME these register are single buffered :( */
 	/* The two end points are implicit (0.0 and 1.0) */
 	for (i = 1; i < 8 - 1; i++)
-		intel_de_write_fw(dev_priv, DVSGAMC_G4X(pipe, i - 1),
+		intel_de_write_fw(display, DVSGAMC_G4X(pipe, i - 1),
 				  gamma[i] << 16 | gamma[i] << 8 | gamma[i]);
 }
 
@@ -1103,7 +1109,7 @@ static void ilk_sprite_linear_gamma(u16 gamma[17])
 static void ilk_sprite_update_gamma(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	enum pipe pipe = plane->pipe;
 	u16 gamma[17];
@@ -1117,12 +1123,12 @@ static void ilk_sprite_update_gamma(const struct intel_plane_state *plane_state)
 
 	/* FIXME these register are single buffered :( */
 	for (i = 0; i < 16; i++)
-		intel_de_write_fw(dev_priv, DVSGAMC_ILK(pipe, i),
+		intel_de_write_fw(display, DVSGAMC_ILK(pipe, i),
 				  gamma[i] << 20 | gamma[i] << 10 | gamma[i]);
 
-	intel_de_write_fw(dev_priv, DVSGAMCMAX_ILK(pipe, 0), gamma[i]);
-	intel_de_write_fw(dev_priv, DVSGAMCMAX_ILK(pipe, 1), gamma[i]);
-	intel_de_write_fw(dev_priv, DVSGAMCMAX_ILK(pipe, 2), gamma[i]);
+	intel_de_write_fw(display, DVSGAMCMAX_ILK(pipe, 0), gamma[i]);
+	intel_de_write_fw(display, DVSGAMCMAX_ILK(pipe, 1), gamma[i]);
+	intel_de_write_fw(display, DVSGAMCMAX_ILK(pipe, 2), gamma[i]);
 	i++;
 }
 
@@ -1131,7 +1137,7 @@ g4x_sprite_update_noarm(struct intel_plane *plane,
 			const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	int crtc_x = plane_state->uapi.dst.x1;
 	int crtc_y = plane_state->uapi.dst.y1;
@@ -1146,13 +1152,13 @@ g4x_sprite_update_noarm(struct intel_plane *plane,
 			DVS_SRC_WIDTH(src_w - 1) |
 			DVS_SRC_HEIGHT(src_h - 1);
 
-	intel_de_write_fw(dev_priv, DVSSTRIDE(pipe),
+	intel_de_write_fw(display, DVSSTRIDE(pipe),
 			  plane_state->view.color_plane[0].mapping_stride);
-	intel_de_write_fw(dev_priv, DVSPOS(pipe),
+	intel_de_write_fw(display, DVSPOS(pipe),
 			  DVS_POS_Y(crtc_y) | DVS_POS_X(crtc_x));
-	intel_de_write_fw(dev_priv, DVSSIZE(pipe),
+	intel_de_write_fw(display, DVSSIZE(pipe),
 			  DVS_HEIGHT(crtc_h - 1) | DVS_WIDTH(crtc_w - 1));
-	intel_de_write_fw(dev_priv, DVSSCALE(pipe), dvsscale);
+	intel_de_write_fw(display, DVSSCALE(pipe), dvsscale);
 }
 
 static void
@@ -1160,6 +1166,7 @@ g4x_sprite_update_arm(struct intel_plane *plane,
 		      const struct intel_crtc_state *crtc_state,
 		      const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
@@ -1173,14 +1180,14 @@ g4x_sprite_update_arm(struct intel_plane *plane,
 	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
 
 	if (key->flags) {
-		intel_de_write_fw(dev_priv, DVSKEYVAL(pipe), key->min_value);
-		intel_de_write_fw(dev_priv, DVSKEYMSK(pipe),
+		intel_de_write_fw(display, DVSKEYVAL(pipe), key->min_value);
+		intel_de_write_fw(display, DVSKEYMSK(pipe),
 				  key->channel_mask);
-		intel_de_write_fw(dev_priv, DVSKEYMAX(pipe), key->max_value);
+		intel_de_write_fw(display, DVSKEYMAX(pipe), key->max_value);
 	}
 
-	intel_de_write_fw(dev_priv, DVSLINOFF(pipe), linear_offset);
-	intel_de_write_fw(dev_priv, DVSTILEOFF(pipe),
+	intel_de_write_fw(display, DVSLINOFF(pipe), linear_offset);
+	intel_de_write_fw(display, DVSTILEOFF(pipe),
 			  DVS_OFFSET_Y(y) | DVS_OFFSET_X(x));
 
 	/*
@@ -1188,8 +1195,8 @@ g4x_sprite_update_arm(struct intel_plane *plane,
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	intel_de_write_fw(dev_priv, DVSCNTR(pipe), dvscntr);
-	intel_de_write_fw(dev_priv, DVSSURF(pipe),
+	intel_de_write_fw(display, DVSCNTR(pipe), dvscntr);
+	intel_de_write_fw(display, DVSSURF(pipe),
 			  intel_plane_ggtt_offset(plane_state) + dvssurf_offset);
 
 	if (IS_G4X(dev_priv))
@@ -1202,19 +1209,20 @@ static void
 g4x_sprite_disable_arm(struct intel_plane *plane,
 		       const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
-	intel_de_write_fw(dev_priv, DVSCNTR(pipe), 0);
+	intel_de_write_fw(display, DVSCNTR(pipe), 0);
 	/* Disable the scaler */
-	intel_de_write_fw(dev_priv, DVSSCALE(pipe), 0);
-	intel_de_write_fw(dev_priv, DVSSURF(pipe), 0);
+	intel_de_write_fw(display, DVSSCALE(pipe), 0);
+	intel_de_write_fw(display, DVSSURF(pipe), 0);
 }
 
 static bool
 g4x_sprite_get_hw_state(struct intel_plane *plane,
 			enum pipe *pipe)
 {
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
@@ -1225,7 +1233,7 @@ g4x_sprite_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	ret = intel_de_read(dev_priv, DVSCNTR(plane->pipe)) & DVS_ENABLE;
+	ret = intel_de_read(display, DVSCNTR(plane->pipe)) & DVS_ENABLE;
 
 	*pipe = plane->pipe;
 
@@ -1255,7 +1263,7 @@ static int
 g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
 			 struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	const struct drm_rect *src = &plane_state->uapi.src;
 	const struct drm_rect *dst = &plane_state->uapi.dst;
@@ -1281,7 +1289,8 @@ g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
 		if (src_h & 1) {
-			drm_dbg_kms(&i915->drm, "Source height must be even with interlaced modes\n");
+			drm_dbg_kms(display->drm,
+				    "Source height must be even with interlaced modes\n");
 			return -EINVAL;
 		}
 		min_height = 6;
@@ -1293,19 +1302,22 @@ g4x_sprite_check_scaling(struct intel_crtc_state *crtc_state,
 
 	if (src_w < min_width || src_h < min_height ||
 	    src_w > 2048 || src_h > 2048) {
-		drm_dbg_kms(&i915->drm, "Source dimensions (%dx%d) exceed hardware limits (%dx%d - %dx%d)\n",
+		drm_dbg_kms(display->drm,
+			    "Source dimensions (%dx%d) exceed hardware limits (%dx%d - %dx%d)\n",
 			    src_w, src_h, min_width, min_height, 2048, 2048);
 		return -EINVAL;
 	}
 
 	if (width_bytes > 4096) {
-		drm_dbg_kms(&i915->drm, "Fetch width (%d) exceeds hardware max with scaling (%u)\n",
+		drm_dbg_kms(display->drm,
+			    "Fetch width (%d) exceeds hardware max with scaling (%u)\n",
 			    width_bytes, 4096);
 		return -EINVAL;
 	}
 
 	if (stride > 4096) {
-		drm_dbg_kms(&i915->drm, "Stride (%u) exceeds hardware max with scaling (%u)\n",
+		drm_dbg_kms(display->drm,
+			    "Stride (%u) exceeds hardware max with scaling (%u)\n",
 			    stride, 4096);
 		return -EINVAL;
 	}
@@ -1317,6 +1329,7 @@ static int
 g4x_sprite_check(struct intel_crtc_state *crtc_state,
 		 struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	int min_scale = DRM_PLANE_NO_SCALING;
@@ -1324,7 +1337,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 	int ret;
 
 	if (g4x_fb_scalable(plane_state->hw.fb)) {
-		if (DISPLAY_VER(dev_priv) < 7) {
+		if (DISPLAY_VER(display) < 7) {
 			min_scale = 1;
 			max_scale = 16 << 16;
 		} else if (IS_IVYBRIDGE(dev_priv)) {
@@ -1353,7 +1366,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	if (DISPLAY_VER(dev_priv) >= 7)
+	if (DISPLAY_VER(display) >= 7)
 		plane_state->ctl = ivb_sprite_ctl(crtc_state, plane_state);
 	else
 		plane_state->ctl = g4x_sprite_ctl(crtc_state, plane_state);
@@ -1364,6 +1377,7 @@ g4x_sprite_check(struct intel_crtc_state *crtc_state,
 int chv_plane_check_rotation(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	struct intel_display *display = to_intel_display(plane->base.dev);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	unsigned int rotation = plane_state->hw.rotation;
 
@@ -1371,7 +1385,7 @@ int chv_plane_check_rotation(const struct intel_plane_state *plane_state)
 	if (IS_CHERRYVIEW(dev_priv) &&
 	    rotation & DRM_MODE_ROTATE_180 &&
 	    rotation & DRM_MODE_REFLECT_X) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Cannot rotate and reflect at the same time\n");
 		return -EINVAL;
 	}
@@ -1573,6 +1587,7 @@ struct intel_plane *
 intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 			  enum pipe pipe, int sprite)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_plane *plane;
 	const struct drm_plane_funcs *plane_funcs;
 	unsigned int supported_rotations;
@@ -1604,7 +1619,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 		}
 
 		plane_funcs = &vlv_sprite_funcs;
-	} else if (DISPLAY_VER(dev_priv) >= 7) {
+	} else if (DISPLAY_VER(display) >= 7) {
 		plane->update_noarm = ivb_sprite_update_noarm;
 		plane->update_arm = ivb_sprite_update_arm;
 		plane->disable_arm = ivb_sprite_disable_arm;
@@ -1663,11 +1678,11 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 
 	modifiers = intel_fb_plane_get_modifiers(dev_priv, INTEL_PLANE_CAP_TILING_X);
 
-	ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
+	ret = drm_universal_plane_init(display->drm, &plane->base,
 				       0, plane_funcs,
 				       formats, num_formats, modifiers,
 				       DRM_PLANE_TYPE_OVERLAY,
-				       "sprite %c", sprite_name(dev_priv, pipe, sprite));
+				       "sprite %c", sprite_name(display, pipe, sprite));
 	kfree(modifiers);
 
 	if (ret)
-- 
2.39.2

