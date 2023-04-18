Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 086296E6B87
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1F3A10E833;
	Tue, 18 Apr 2023 17:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D91E210E820
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840560; x=1713376560;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=S6e4nJB9MqbR+lpf2nVNyeRKED5lyK90tQeqQ8prXwA=;
 b=ivklN6V0cID5f5ZNYUCMasJw+9dnSVkGjJaNCFcADb9N0Fz0o/FUVo8R
 E8KPck6l886ik1BE5xJfmrD5IqplyNu+A5wxnBEjICQV5WHgK1OJ4CWw+
 nbm8lmUBUgRDnOkke+8IP/grBWFuw4OxsK3KHB3c+qSUtOl1plKTk8HKs
 ye3X9L/t+dqsPQc/Z93CxIbYZsj9jkRxSYR4EEt3OV13bJzHe7JG98b8f
 hJe9R+NI+jsfI8QEo/Z/4C8oHPRaIrB172v0w74WfUxSvMwbVFY14htiK
 AgyTxm3hPnjGO5JrBir6sPHymGMUYr6ycDgVLjbnviaiZV3rU0O3a9TF/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334052786"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334052786"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:55:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="641451704"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="641451704"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 18 Apr 2023 10:55:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:55:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:18 +0300
Message-Id: <20230418175528.13117-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/15] drm/i915: Use REG_BIT() & co for the
 pre-ilk pfit registers
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

Modernize the gmch pfit register definitions using REG_BIT/etc.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 15 +++---
 drivers/gpu/drm/i915/display/intel_overlay.c | 16 +++---
 drivers/gpu/drm/i915/display/intel_panel.c   |  8 +--
 drivers/gpu/drm/i915/i915_reg.h              | 54 ++++++++++----------
 4 files changed, 48 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a450d62e431c..ea1b0e87ae35 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2749,6 +2749,7 @@ static void i9xx_get_pfit_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe;
 	u32 tmp;
 
 	if (!i9xx_has_pfit(dev_priv))
@@ -2759,13 +2760,13 @@ static void i9xx_get_pfit_config(struct intel_crtc_state *crtc_state)
 		return;
 
 	/* Check whether the pfit is attached to our pipe. */
-	if (DISPLAY_VER(dev_priv) < 4) {
-		if (crtc->pipe != PIPE_B)
-			return;
-	} else {
-		if ((tmp & PFIT_PIPE_MASK) != (crtc->pipe << PFIT_PIPE_SHIFT))
-			return;
-	}
+	if (DISPLAY_VER(dev_priv) >= 4)
+		pipe = REG_FIELD_GET(PFIT_PIPE_MASK, tmp);
+	else
+		pipe = PIPE_B;
+
+	if (pipe != crtc->pipe)
+		return;
 
 	crtc_state->gmch_pfit.control = tmp;
 	crtc_state->gmch_pfit.pgm_ratios =
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index c12bdca8da9b..1813ab5056a1 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -935,21 +935,25 @@ static int check_overlay_possible_on_crtc(struct intel_overlay *overlay,
 static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
 {
 	struct drm_i915_private *dev_priv = overlay->i915;
-	u32 pfit_control = intel_de_read(dev_priv, PFIT_CONTROL);
 	u32 ratio;
 
 	/* XXX: This is not the same logic as in the xorg driver, but more in
 	 * line with the intel documentation for the i965
 	 */
 	if (DISPLAY_VER(dev_priv) >= 4) {
+		u32 tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS);
+
 		/* on i965 use the PGM reg to read out the autoscaler values */
-		ratio = intel_de_read(dev_priv, PFIT_PGM_RATIOS) >> PFIT_VERT_SCALE_SHIFT_965;
+		ratio = REG_FIELD_GET(PFIT_VERT_SCALE_MASK_965, tmp);
 	} else {
-		if (pfit_control & VERT_AUTO_SCALE)
-			ratio = intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
+		u32 tmp;
+
+		if (intel_de_read(dev_priv, PFIT_CONTROL) & VERT_AUTO_SCALE)
+			tmp = intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
 		else
-			ratio = intel_de_read(dev_priv, PFIT_PGM_RATIOS);
-		ratio >>= PFIT_VERT_SCALE_SHIFT;
+			tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS);
+
+		ratio = REG_FIELD_GET(PFIT_VERT_SCALE_MASK, tmp);
 	}
 
 	overlay->pfit_vscale_ratio = ratio;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 9acdd68b2dbc..71cd08f44ed0 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -564,8 +564,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
 			bits = panel_fitter_scaling(pipe_src_h,
 						    adjusted_mode->crtc_vdisplay);
 
-			*pfit_pgm_ratios |= (bits << PFIT_HORIZ_SCALE_SHIFT |
-					     bits << PFIT_VERT_SCALE_SHIFT);
+			*pfit_pgm_ratios |= (PFIT_HORIZ_SCALE(bits) |
+					     PFIT_VERT_SCALE(bits));
 			*pfit_control |= (PFIT_ENABLE |
 					  VERT_INTERP_BILINEAR |
 					  HORIZ_INTERP_BILINEAR);
@@ -579,8 +579,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
 			bits = panel_fitter_scaling(pipe_src_w,
 						    adjusted_mode->crtc_hdisplay);
 
-			*pfit_pgm_ratios |= (bits << PFIT_HORIZ_SCALE_SHIFT |
-					     bits << PFIT_VERT_SCALE_SHIFT);
+			*pfit_pgm_ratios |= (PFIT_HORIZ_SCALE(bits) |
+					     PFIT_VERT_SCALE(bits));
 			*pfit_control |= (PFIT_ENABLE |
 					  VERT_INTERP_BILINEAR |
 					  HORIZ_INTERP_BILINEAR);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f472baf242dc..cb8611aaaa5e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2337,35 +2337,33 @@
 
 /* Panel fitting */
 #define PFIT_CONTROL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61230)
-#define   PFIT_ENABLE		(1 << 31)
-#define   PFIT_PIPE_MASK	(3 << 29)
-#define   PFIT_PIPE_SHIFT	29
-#define   PFIT_PIPE(pipe)	((pipe) << 29)
-#define   VERT_INTERP_DISABLE	(0 << 10)
-#define   VERT_INTERP_BILINEAR	(1 << 10)
-#define   VERT_INTERP_MASK	(3 << 10)
-#define   VERT_AUTO_SCALE	(1 << 9)
-#define   HORIZ_INTERP_DISABLE	(0 << 6)
-#define   HORIZ_INTERP_BILINEAR	(1 << 6)
-#define   HORIZ_INTERP_MASK	(3 << 6)
-#define   HORIZ_AUTO_SCALE	(1 << 5)
-#define   PANEL_8TO6_DITHER_ENABLE (1 << 3)
-#define   PFIT_FILTER_FUZZY	(0 << 24)
-#define   PFIT_SCALING_AUTO	(0 << 26)
-#define   PFIT_SCALING_PROGRAMMED (1 << 26)
-#define   PFIT_SCALING_PILLAR	(2 << 26)
-#define   PFIT_SCALING_LETTER	(3 << 26)
+#define   PFIT_ENABLE			REG_BIT(31)
+#define   PFIT_PIPE_MASK		REG_GENMASK(30, 29) /* 965+ */
+#define   PFIT_PIPE(pipe)		REG_FIELD_PREP(PFIT_PIPE_MASK, (pipe))
+#define   PFIT_SCALING_MASK		REG_GENMASK(28, 26) /* 965+ */
+#define   PFIT_SCALING_AUTO		REG_FIELD_PREP(PFIT_SCALING_MASK, 0)
+#define   PFIT_SCALING_PROGRAMMED	REG_FIELD_PREP(PFIT_SCALING_MASK, 1)
+#define   PFIT_SCALING_PILLAR		REG_FIELD_PREP(PFIT_SCALING_MASK, 2)
+#define   PFIT_SCALING_LETTER		REG_FIELD_PREP(PFIT_SCALING_MASK, 3)
+#define   PFIT_FILTER_MASK		REG_GENMASK(25, 24) /* 965+ */
+#define   PFIT_FILTER_FUZZY		REG_FIELD_PREP(PFIT_FILTER_MASK, 0)
+#define   PFIT_FILTER_CRISP		REG_FIELD_PREP(PFIT_FILTER_MASK, 1)
+#define   PFIT_FILTER_MEDIAN		REG_FIELD_PREP(PFIT_FILTER_MASK, 2)
+#define   VERT_INTERP_MASK		REG_GENMASK(11, 10) /* pre-965 */
+#define   VERT_INTERP_BILINEAR		REG_FIELD_PREP(VERT_INTERP_MASK, 1)
+#define   VERT_AUTO_SCALE		REG_BIT(9) /* pre-965 */
+#define   HORIZ_INTERP_MASK		REG_GENMASK(7, 6) /* pre-965 */
+#define   HORIZ_INTERP_BILINEAR		REG_FIELD_PREP(HORIZ_INTERP_MASK, 1)
+#define   HORIZ_AUTO_SCALE		REG_BIT(5) /* pre-965 */
+#define   PANEL_8TO6_DITHER_ENABLE	REG_BIT(3) /* pre-965 */
+
 #define PFIT_PGM_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61234)
-/* Pre-965 */
-#define		PFIT_VERT_SCALE_SHIFT		20
-#define		PFIT_VERT_SCALE_MASK		0xfff00000
-#define		PFIT_HORIZ_SCALE_SHIFT		4
-#define		PFIT_HORIZ_SCALE_MASK		0x0000fff0
-/* 965+ */
-#define		PFIT_VERT_SCALE_SHIFT_965	16
-#define		PFIT_VERT_SCALE_MASK_965	0x1fff0000
-#define		PFIT_HORIZ_SCALE_SHIFT_965	0
-#define		PFIT_HORIZ_SCALE_MASK_965	0x00001fff
+#define   PFIT_VERT_SCALE_MASK		REG_GENMASK(31, 20) /* pre-965 */
+#define   PFIT_VERT_SCALE(x)		REG_FIELD_PREP(PFIT_VERT_SCALE_MASK, (x))
+#define   PFIT_HORIZ_SCALE_MASK		REG_GENMASK(15, 4) /* pre-965 */
+#define   PFIT_HORIZ_SCALE(x)		REG_FIELD_PREP(PFIT_HORIZ_SCALE_MASK, (x))
+#define   PFIT_VERT_SCALE_MASK_965	REG_GENMASK(28, 16) /* 965+ */
+#define   PFIT_HORIZ_SCALE_MASK_965	REG_GENMASK(12, 0) /* 965+ */
 
 #define PFIT_AUTO_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61238)
 
-- 
2.39.2

