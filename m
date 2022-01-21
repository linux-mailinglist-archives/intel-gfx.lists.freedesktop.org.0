Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD400495E6E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 12:31:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C025E10EA98;
	Fri, 21 Jan 2022 11:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D462110EA94
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 11:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642764670; x=1674300670;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aEVaCTMjTURi2qvJ4R9PpgSeqit9/FUV48bT/9cHp54=;
 b=R5j+uRqY0Ef8+eu4EBmBYcm9raU6baTN8esCEII+sBdaBVasFf7ejU28
 PifFA3nSeIZxcIDgmoWAyPJO6A0pz+RmM8sWoAYitC3WZdus8+6vLdEv4
 394jtObrCzsS9sgTHTKe+bTxlMDLVNYsP/VVbTcCjQ3lScWMzQ/T7LOYb
 hFepA99zz25EGGe4NYmi8L6JsHEO755TttvH6AGLsEl0jJfUI2nRPZIFn
 XSkouZKb4V0UyyiSMXmBDp4F1pIxc1+mvP+FE4d9LXXDzRf2DjRc6qswe
 qG6szL4l0qcJoodx3S+64kRookqUsGm2tG0CRgwESVty/K6ybzH1nkZOI w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245582978"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245582978"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 03:31:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="579581635"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga008.fm.intel.com with SMTP; 21 Jan 2022 03:31:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 13:31:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 13:30:36 +0200
Message-Id: <20220121113036.23240-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
References: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Make pre-skl sprite plane
 registers unlocked
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Drop the locks around sprite plane register writes. The
lock isn't needed since each plane's register are neatly
contained on their own cachelines.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 45 ---------------------
 1 file changed, 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 7ffca5669ab9..0376fc48c011 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -429,9 +429,6 @@ vlv_sprite_update_noarm(struct intel_plane *plane,
 	int crtc_y = plane_state->uapi.dst.y1;
 	u32 crtc_w = drm_rect_width(&plane_state->uapi.dst);
 	u32 crtc_h = drm_rect_height(&plane_state->uapi.dst);
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, SPSTRIDE(pipe, plane_id),
 			  plane_state->view.color_plane[0].mapping_stride);
@@ -439,8 +436,6 @@ vlv_sprite_update_noarm(struct intel_plane *plane,
 			  SP_POS_Y(crtc_y) | SP_POS_X(crtc_x));
 	intel_de_write_fw(dev_priv, SPSIZE(pipe, plane_id),
 			  SP_HEIGHT(crtc_h - 1) | SP_WIDTH(crtc_w - 1));
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -456,14 +451,11 @@ vlv_sprite_update_arm(struct intel_plane *plane,
 	u32 x = plane_state->view.color_plane[0].x;
 	u32 y = plane_state->view.color_plane[0].y;
 	u32 sprctl, linear_offset;
-	unsigned long irqflags;
 
 	sprctl = plane_state->ctl | vlv_sprite_ctl_crtc(crtc_state);
 
 	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B)
 		chv_sprite_update_csc(plane_state);
 
@@ -493,8 +485,6 @@ vlv_sprite_update_arm(struct intel_plane *plane,
 
 	vlv_sprite_update_clrc(plane_state);
 	vlv_sprite_update_gamma(plane_state);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -504,14 +494,9 @@ vlv_sprite_disable_arm(struct intel_plane *plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	enum plane_id plane_id = plane->id;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, SPCNTR(pipe, plane_id), 0);
 	intel_de_write_fw(dev_priv, SPSURF(pipe, plane_id), 0);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static bool
@@ -861,15 +846,12 @@ ivb_sprite_update_noarm(struct intel_plane *plane,
 	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
 	u32 sprscale = 0;
-	unsigned long irqflags;
 
 	if (crtc_w != src_w || crtc_h != src_h)
 		sprscale = SPRITE_SCALE_ENABLE |
 			SPRITE_SRC_WIDTH(src_w - 1) |
 			SPRITE_SRC_HEIGHT(src_h - 1);
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	intel_de_write_fw(dev_priv, SPRSTRIDE(pipe),
 			  plane_state->view.color_plane[0].mapping_stride);
 	intel_de_write_fw(dev_priv, SPRPOS(pipe),
@@ -878,8 +860,6 @@ ivb_sprite_update_noarm(struct intel_plane *plane,
 			  SPRITE_HEIGHT(crtc_h - 1) | SPRITE_WIDTH(crtc_w - 1));
 	if (IS_IVYBRIDGE(dev_priv))
 		intel_de_write_fw(dev_priv, SPRSCALE(pipe), sprscale);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -894,14 +874,11 @@ ivb_sprite_update_arm(struct intel_plane *plane,
 	u32 x = plane_state->view.color_plane[0].x;
 	u32 y = plane_state->view.color_plane[0].y;
 	u32 sprctl, linear_offset;
-	unsigned long irqflags;
 
 	sprctl = plane_state->ctl | ivb_sprite_ctl_crtc(crtc_state);
 
 	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	if (key->flags) {
 		intel_de_write_fw(dev_priv, SPRKEYVAL(pipe), key->min_value);
 		intel_de_write_fw(dev_priv, SPRKEYMSK(pipe),
@@ -930,8 +907,6 @@ ivb_sprite_update_arm(struct intel_plane *plane,
 			  intel_plane_ggtt_offset(plane_state) + sprsurf_offset);
 
 	ivb_sprite_update_gamma(plane_state);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -940,17 +915,12 @@ ivb_sprite_disable_arm(struct intel_plane *plane,
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, SPRCTL(pipe), 0);
 	/* Disable the scaler */
 	if (IS_IVYBRIDGE(dev_priv))
 		intel_de_write_fw(dev_priv, SPRSCALE(pipe), 0);
 	intel_de_write_fw(dev_priv, SPRSURF(pipe), 0);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static bool
@@ -1203,15 +1173,12 @@ g4x_sprite_update_noarm(struct intel_plane *plane,
 	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
 	u32 dvsscale = 0;
-	unsigned long irqflags;
 
 	if (crtc_w != src_w || crtc_h != src_h)
 		dvsscale = DVS_SCALE_ENABLE |
 			DVS_SRC_WIDTH(src_w - 1) |
 			DVS_SRC_HEIGHT(src_h - 1);
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	intel_de_write_fw(dev_priv, DVSSTRIDE(pipe),
 			  plane_state->view.color_plane[0].mapping_stride);
 	intel_de_write_fw(dev_priv, DVSPOS(pipe),
@@ -1219,8 +1186,6 @@ g4x_sprite_update_noarm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, DVSSIZE(pipe),
 			  DVS_HEIGHT(crtc_h - 1) | DVS_WIDTH(crtc_w - 1));
 	intel_de_write_fw(dev_priv, DVSSCALE(pipe), dvsscale);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -1235,14 +1200,11 @@ g4x_sprite_update_arm(struct intel_plane *plane,
 	u32 x = plane_state->view.color_plane[0].x;
 	u32 y = plane_state->view.color_plane[0].y;
 	u32 dvscntr, linear_offset;
-	unsigned long irqflags;
 
 	dvscntr = plane_state->ctl | g4x_sprite_ctl_crtc(crtc_state);
 
 	linear_offset = intel_fb_xy_to_linear(x, y, plane_state, 0);
 
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
-
 	if (key->flags) {
 		intel_de_write_fw(dev_priv, DVSKEYVAL(pipe), key->min_value);
 		intel_de_write_fw(dev_priv, DVSKEYMSK(pipe),
@@ -1266,8 +1228,6 @@ g4x_sprite_update_arm(struct intel_plane *plane,
 		g4x_sprite_update_gamma(plane_state);
 	else
 		ilk_sprite_update_gamma(plane_state);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static void
@@ -1276,16 +1236,11 @@ g4x_sprite_disable_arm(struct intel_plane *plane,
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
-	unsigned long irqflags;
-
-	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, DVSCNTR(pipe), 0);
 	/* Disable the scaler */
 	intel_de_write_fw(dev_priv, DVSSCALE(pipe), 0);
 	intel_de_write_fw(dev_priv, DVSSURF(pipe), 0);
-
-	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
 
 static bool
-- 
2.32.0

