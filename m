Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA026E6B85
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DBF910E820;
	Tue, 18 Apr 2023 17:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B00110E830
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840560; x=1713376560;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OMHAFzZrofMWWdCu8H3y19mF6NSFY/t/EM6wBBj4B0c=;
 b=PzvvDYNo1qpVS23ueFFwFLwMqj4foL5qiIQJ4Ncf3YAIROS84Q1znxgx
 IYca0RpZUfpVIzaR1wQHlTOmzhlBf6cS8onmyu3s+nEc3lJvJq5/bqFQc
 1l78ZpcpnKYwB6tg3pQPZG9FtPEdKC/OlB1GS6fSVjqLRck7+l1AmqdUk
 lg9SUN2g/WLhH79GW6ZqPrtnedD1LqJtJd3sG70WQwbfPBsujW30hJr5G
 xuyiqDnttdBgJFTDWiz7hMaVeeNKJpH6a9qQhWqa+/6x5m6vPmZiM6vu9
 rtvR8P06L/q9pRj7XHzEwKgvHPUgdOw3QOfyontX4Nfbjn/jn/V7lpEMA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334052793"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334052793"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:55:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="641451718"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="641451718"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 18 Apr 2023 10:55:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:55:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:19 +0300
Message-Id: <20230418175528.13117-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/15] drm/i915: Namespace pfit registers
 properly
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

Give the PFIT_CONTROL bits a consistent namespace.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c |  2 +-
 drivers/gpu/drm/i915/display/intel_panel.c   | 25 ++++++++++----------
 drivers/gpu/drm/i915/i915_reg.h              | 14 +++++------
 4 files changed, 22 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 0de44b3631cd..8e9a3d72b83b 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -150,7 +150,7 @@ static void intel_lvds_get_config(struct intel_encoder *encoder,
 	if (DISPLAY_VER(dev_priv) < 4) {
 		tmp = intel_de_read(dev_priv, PFIT_CONTROL);
 
-		crtc_state->gmch_pfit.control |= tmp & PANEL_8TO6_DITHER_ENABLE;
+		crtc_state->gmch_pfit.control |= tmp & PFIT_PANEL_8TO6_DITHER_ENABLE;
 	}
 
 	crtc_state->hw.adjusted_mode.crtc_clock = crtc_state->port_clock;
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 1813ab5056a1..d6fe2bbabe55 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -948,7 +948,7 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
 	} else {
 		u32 tmp;
 
-		if (intel_de_read(dev_priv, PFIT_CONTROL) & VERT_AUTO_SCALE)
+		if (intel_de_read(dev_priv, PFIT_CONTROL) & PFIT_VERT_AUTO_SCALE)
 			tmp = intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
 		else
 			tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS);
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 71cd08f44ed0..9232a305b1e6 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -567,8 +567,8 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
 			*pfit_pgm_ratios |= (PFIT_HORIZ_SCALE(bits) |
 					     PFIT_VERT_SCALE(bits));
 			*pfit_control |= (PFIT_ENABLE |
-					  VERT_INTERP_BILINEAR |
-					  HORIZ_INTERP_BILINEAR);
+					  PFIT_VERT_INTERP_BILINEAR |
+					  PFIT_HORIZ_INTERP_BILINEAR);
 		}
 	} else if (scaled_width < scaled_height) { /* letter */
 		centre_vertically(adjusted_mode,
@@ -582,15 +582,16 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
 			*pfit_pgm_ratios |= (PFIT_HORIZ_SCALE(bits) |
 					     PFIT_VERT_SCALE(bits));
 			*pfit_control |= (PFIT_ENABLE |
-					  VERT_INTERP_BILINEAR |
-					  HORIZ_INTERP_BILINEAR);
+					  PFIT_VERT_INTERP_BILINEAR |
+					  PFIT_HORIZ_INTERP_BILINEAR);
 		}
 	} else {
 		/* Aspects match, Let hw scale both directions */
 		*pfit_control |= (PFIT_ENABLE |
-				  VERT_AUTO_SCALE | HORIZ_AUTO_SCALE |
-				  VERT_INTERP_BILINEAR |
-				  HORIZ_INTERP_BILINEAR);
+				  PFIT_VERT_AUTO_SCALE |
+				  PFIT_HORIZ_AUTO_SCALE |
+				  PFIT_VERT_INTERP_BILINEAR |
+				  PFIT_HORIZ_INTERP_BILINEAR);
 	}
 }
 
@@ -638,10 +639,10 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 			if (DISPLAY_VER(dev_priv) >= 4)
 				pfit_control |= PFIT_SCALING_AUTO;
 			else
-				pfit_control |= (VERT_AUTO_SCALE |
-						 VERT_INTERP_BILINEAR |
-						 HORIZ_AUTO_SCALE |
-						 HORIZ_INTERP_BILINEAR);
+				pfit_control |= (PFIT_VERT_AUTO_SCALE |
+						 PFIT_VERT_INTERP_BILINEAR |
+						 PFIT_HORIZ_AUTO_SCALE |
+						 PFIT_HORIZ_INTERP_BILINEAR);
 		}
 		break;
 	default:
@@ -662,7 +663,7 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 
 	/* Make sure pre-965 set dither correctly for 18bpp panels. */
 	if (DISPLAY_VER(dev_priv) < 4 && crtc_state->pipe_bpp == 18)
-		pfit_control |= PANEL_8TO6_DITHER_ENABLE;
+		pfit_control |= PFIT_PANEL_8TO6_DITHER_ENABLE;
 
 	crtc_state->gmch_pfit.control = pfit_control;
 	crtc_state->gmch_pfit.pgm_ratios = pfit_pgm_ratios;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index cb8611aaaa5e..eea739e0b48a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2349,13 +2349,13 @@
 #define   PFIT_FILTER_FUZZY		REG_FIELD_PREP(PFIT_FILTER_MASK, 0)
 #define   PFIT_FILTER_CRISP		REG_FIELD_PREP(PFIT_FILTER_MASK, 1)
 #define   PFIT_FILTER_MEDIAN		REG_FIELD_PREP(PFIT_FILTER_MASK, 2)
-#define   VERT_INTERP_MASK		REG_GENMASK(11, 10) /* pre-965 */
-#define   VERT_INTERP_BILINEAR		REG_FIELD_PREP(VERT_INTERP_MASK, 1)
-#define   VERT_AUTO_SCALE		REG_BIT(9) /* pre-965 */
-#define   HORIZ_INTERP_MASK		REG_GENMASK(7, 6) /* pre-965 */
-#define   HORIZ_INTERP_BILINEAR		REG_FIELD_PREP(HORIZ_INTERP_MASK, 1)
-#define   HORIZ_AUTO_SCALE		REG_BIT(5) /* pre-965 */
-#define   PANEL_8TO6_DITHER_ENABLE	REG_BIT(3) /* pre-965 */
+#define   PFIT_VERT_INTERP_MASK		REG_GENMASK(11, 10) /* pre-965 */
+#define   PFIT_VERT_INTERP_BILINEAR	REG_FIELD_PREP(PFIT_VERT_INTERP_MASK, 1)
+#define   PFIT_VERT_AUTO_SCALE		REG_BIT(9) /* pre-965 */
+#define   PFIT_HORIZ_INTERP_MASK	REG_GENMASK(7, 6) /* pre-965 */
+#define   PFIT_HORIZ_INTERP_BILINEAR	REG_FIELD_PREP(PFIT_HORIZ_INTERP_MASK, 1)
+#define   PFIT_HORIZ_AUTO_SCALE		REG_BIT(5) /* pre-965 */
+#define   PFIT_PANEL_8TO6_DITHER_ENABLE	REG_BIT(3) /* pre-965 */
 
 #define PFIT_PGM_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61234)
 #define   PFIT_VERT_SCALE_MASK		REG_GENMASK(31, 20) /* pre-965 */
-- 
2.39.2

