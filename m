Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AADB465193
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:26:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A776ECE7;
	Wed,  1 Dec 2021 15:26:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BBAD6ECE0
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:26:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="260456724"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="260456724"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:26:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="512752502"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 01 Dec 2021 07:26:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:26:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:41 +0200
Message-Id: <20211201152552.7821-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/14] drm/i915: Get rid of the "sizes are 0
 based" stuff
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

Replace the "sizes are 0 based" stuff with just straight
up -1 where needed. Less confusing all around.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c   | 26 ++++---------------
 .../drm/i915/display/skl_universal_plane.c    |  6 +----
 2 files changed, 6 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 1b99a9501a45..2067a7bca4a8 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -431,10 +431,6 @@ vlv_sprite_update_noarm(struct intel_plane *plane,
 	u32 crtc_h = drm_rect_height(&plane_state->uapi.dst);
 	unsigned long irqflags;
 
-	/* Sizes are 0 based */
-	crtc_w--;
-	crtc_h--;
-
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, SPSTRIDE(pipe, plane_id),
@@ -442,7 +438,7 @@ vlv_sprite_update_noarm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, SPPOS(pipe, plane_id),
 			  (crtc_y << 16) | crtc_x);
 	intel_de_write_fw(dev_priv, SPSIZE(pipe, plane_id),
-			  (crtc_h << 16) | crtc_w);
+			  ((crtc_h - 1) << 16) | (crtc_w - 1));
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
 }
@@ -866,21 +862,15 @@ ivb_sprite_update_noarm(struct intel_plane *plane,
 	u32 sprscale = 0;
 	unsigned long irqflags;
 
-	/* Sizes are 0 based */
-	src_w--;
-	src_h--;
-	crtc_w--;
-	crtc_h--;
-
 	if (crtc_w != src_w || crtc_h != src_h)
-		sprscale = SPRITE_SCALE_ENABLE | (src_w << 16) | src_h;
+		sprscale = SPRITE_SCALE_ENABLE | ((src_w - 1) << 16) | (src_h - 1);
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, SPRSTRIDE(pipe),
 			  plane_state->view.color_plane[0].mapping_stride);
 	intel_de_write_fw(dev_priv, SPRPOS(pipe), (crtc_y << 16) | crtc_x);
-	intel_de_write_fw(dev_priv, SPRSIZE(pipe), (crtc_h << 16) | crtc_w);
+	intel_de_write_fw(dev_priv, SPRSIZE(pipe), ((crtc_h - 1) << 16) | (crtc_w - 1));
 	if (IS_IVYBRIDGE(dev_priv))
 		intel_de_write_fw(dev_priv, SPRSCALE(pipe), sprscale);
 
@@ -1208,21 +1198,15 @@ g4x_sprite_update_noarm(struct intel_plane *plane,
 	u32 dvsscale = 0;
 	unsigned long irqflags;
 
-	/* Sizes are 0 based */
-	src_w--;
-	src_h--;
-	crtc_w--;
-	crtc_h--;
-
 	if (crtc_w != src_w || crtc_h != src_h)
-		dvsscale = DVS_SCALE_ENABLE | (src_w << 16) | src_h;
+		dvsscale = DVS_SCALE_ENABLE | ((src_w - 1) << 16) | (src_h - 1);
 
 	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
 
 	intel_de_write_fw(dev_priv, DVSSTRIDE(pipe),
 			  plane_state->view.color_plane[0].mapping_stride);
 	intel_de_write_fw(dev_priv, DVSPOS(pipe), (crtc_y << 16) | crtc_x);
-	intel_de_write_fw(dev_priv, DVSSIZE(pipe), (crtc_h << 16) | crtc_w);
+	intel_de_write_fw(dev_priv, DVSSIZE(pipe), ((crtc_h - 1) << 16) | (crtc_w - 1));
 	intel_de_write_fw(dev_priv, DVSSCALE(pipe), dvsscale);
 
 	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9ff24a0e79b4..09948922016b 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1022,10 +1022,6 @@ skl_program_plane_noarm(struct intel_plane *plane,
 	u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
 	unsigned long irqflags;
 
-	/* Sizes are 0 based */
-	src_w--;
-	src_h--;
-
 	/* The scaler will handle the output position */
 	if (plane_state->scaler_id >= 0) {
 		crtc_x = 0;
@@ -1045,7 +1041,7 @@ skl_program_plane_noarm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
 			  (crtc_y << 16) | crtc_x);
 	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
-			  (src_h << 16) | src_w);
+			  ((src_h - 1) << 16) | (src_w - 1));
 
 	if (intel_fb_is_rc_ccs_cc_modifier(fb->modifier)) {
 		intel_de_write_fw(dev_priv, PLANE_CC_VAL(pipe, plane_id, 0),
-- 
2.32.0

