Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCE59656B2
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1961010E7D8;
	Fri, 30 Aug 2024 05:08:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iwl3o4vP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCE7410E7DB;
 Fri, 30 Aug 2024 05:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994512; x=1756530512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VtEFBL8Jj2E9+bKyC2waH5FupJwQvLQVDKlwdfjlYIo=;
 b=Iwl3o4vPjH7Ea1WcpnErVQYf8/5OkkxGqi3jOk2K/PPvOcTDvPe1CwxX
 awzf7ZRip35983zqDql2aenlvTE76LNLQsA6EosP/BhhfQ+jUfzUeWWht
 StukrfvzhhcXw3Kt1MDwFyVeCeZRmJUq5fNlK1TN5LA/Lp7b2r+YNJDUx
 8oCtiFr6Zv6HeA4anz4rOFpVYR145P0KXiq2QfSI8RZDJv2wTmPKUnMe5
 9I8cJv0s3rDoiLjhc8c8MGd10ZAyDi7Epz7BqKMICatu70oFbozJg05Gx
 EJu+yt6OZ8PmhG1vEDHdvDcSVq0zsD4aVKcNTpyj1tOTPD6Q1zk8nPMbw w==;
X-CSE-ConnectionGUID: 3+c9KqpnTcO+PPl5hFBdAw==
X-CSE-MsgGUID: wDM60w+0R12k4Xyf4MFMlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421678"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421678"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:32 -0700
X-CSE-ConnectionGUID: IS+7b1K/RrqvLwqncm7sYg==
X-CSE-MsgGUID: oYSuv90ZQOyOF7/0BRoArQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610245"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:30 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 07/19] drm/i915/icl_dsi: Move helpers to configure dsi dual
 link to intel_dss
Date: Fri, 30 Aug 2024 10:39:37 +0530
Message-ID: <20240830050950.2528450-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Move the function to configure dss_ctl for dual_link dsi to intel_dss
files. While at it, use struct intel_display wherever possible.

v2: Avoid modifying the code while movement. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c   | 57 ++----------------------
 drivers/gpu/drm/i915/display/intel_dss.c | 50 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dss.h |  3 ++
 3 files changed, 57 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 79e149d51cb2..ec880d1cbbee 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -44,7 +44,7 @@
 #include "intel_de.h"
 #include "intel_dsi.h"
 #include "intel_dsi_vbt.h"
-#include "intel_dss_regs.h"
+#include "intel_dss.h"
 #include "intel_panel.h"
 #include "intel_vdsc.h"
 #include "skl_scaler.h"
@@ -274,55 +274,6 @@ static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
 	}
 }
 
-static void configure_dual_link_mode(struct intel_encoder *encoder,
-				     const struct intel_crtc_state *pipe_config,
-				     u8 dual_link, u8 pixel_overlap)
-{
-	struct intel_display *display = to_intel_display(encoder);
-	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
-	u32 dss_ctl1;
-
-	/* FIXME: Move all DSS handling to intel_vdsc.c */
-	if (DISPLAY_VER(display) >= 12) {
-		struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-
-		dss_ctl1_reg = ICL_PIPE_DSS_CTL1(crtc->pipe);
-		dss_ctl2_reg = ICL_PIPE_DSS_CTL2(crtc->pipe);
-	} else {
-		dss_ctl1_reg = DSS_CTL1;
-		dss_ctl2_reg = DSS_CTL2;
-	}
-
-	dss_ctl1 = intel_de_read(display, dss_ctl1_reg);
-	dss_ctl1 |= SPLITTER_ENABLE;
-	dss_ctl1 &= ~OVERLAP_PIXELS_MASK;
-	dss_ctl1 |= OVERLAP_PIXELS(pixel_overlap);
-
-	if (dual_link == DSI_DUAL_LINK_FRONT_BACK) {
-		const struct drm_display_mode *adjusted_mode =
-					&pipe_config->hw.adjusted_mode;
-		u16 hactive = adjusted_mode->crtc_hdisplay;
-		u16 dl_buffer_depth;
-
-		dss_ctl1 &= ~DUAL_LINK_MODE_INTERLEAVE;
-		dl_buffer_depth = hactive / 2 + pixel_overlap;
-
-		if (dl_buffer_depth > MAX_DL_BUFFER_TARGET_DEPTH)
-			drm_err(display->drm,
-				"DL buffer depth exceed max value\n");
-
-		dss_ctl1 &= ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
-		dss_ctl1 |= LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
-		intel_de_rmw(display, dss_ctl2_reg, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
-			     RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth));
-	} else {
-		/* Interleave */
-		dss_ctl1 |= DUAL_LINK_MODE_INTERLEAVE;
-	}
-
-	intel_de_write(display, dss_ctl1_reg, dss_ctl1);
-}
-
 /* aka DSI 8X clock */
 static int afe_clk(struct intel_encoder *encoder,
 		   const struct intel_crtc_state *crtc_state)
@@ -791,9 +742,9 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 		}
 
 		/* configure stream splitting */
-		configure_dual_link_mode(encoder, pipe_config,
-					 intel_dsi->dual_link,
-					 intel_dsi->pixel_overlap);
+		intel_dss_dsi_dual_link_mode_configure(encoder, pipe_config,
+						       intel_dsi->dual_link,
+						       intel_dsi->pixel_overlap);
 	}
 
 	for_each_dsi_port(port, intel_dsi->ports) {
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index 3f7f416eb3fa..969e32143983 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -7,6 +7,7 @@
 #include "i915_reg_defs.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dsi.h"
 #include "intel_dss.h"
 #include "intel_dss_regs.h"
 
@@ -87,3 +88,52 @@ void intel_dss_mso_configure(const struct intel_crtc_state *crtc_state)
 		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
 		     OVERLAP_PIXELS_MASK, dss1);
 }
+
+void intel_dss_dsi_dual_link_mode_configure(struct intel_encoder *encoder,
+					    const struct intel_crtc_state *pipe_config,
+					    u8 dual_link,
+					    u8 pixel_overlap)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
+	u32 dss_ctl1;
+
+	if (DISPLAY_VER(display) >= 12) {
+		struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+
+		dss_ctl1_reg = ICL_PIPE_DSS_CTL1(crtc->pipe);
+		dss_ctl2_reg = ICL_PIPE_DSS_CTL2(crtc->pipe);
+	} else {
+		dss_ctl1_reg = DSS_CTL1;
+		dss_ctl2_reg = DSS_CTL2;
+	}
+
+	dss_ctl1 = intel_de_read(display, dss_ctl1_reg);
+	dss_ctl1 |= SPLITTER_ENABLE;
+	dss_ctl1 &= ~OVERLAP_PIXELS_MASK;
+	dss_ctl1 |= OVERLAP_PIXELS(pixel_overlap);
+
+	if (dual_link == DSI_DUAL_LINK_FRONT_BACK) {
+		const struct drm_display_mode *adjusted_mode =
+					&pipe_config->hw.adjusted_mode;
+		u16 hactive = adjusted_mode->crtc_hdisplay;
+		u16 dl_buffer_depth;
+
+		dss_ctl1 &= ~DUAL_LINK_MODE_INTERLEAVE;
+		dl_buffer_depth = hactive / 2 + pixel_overlap;
+
+		if (dl_buffer_depth > MAX_DL_BUFFER_TARGET_DEPTH)
+			drm_err(display->drm,
+				"DL buffer depth exceed max value\n");
+
+		dss_ctl1 &= ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
+		dss_ctl1 |= LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
+		intel_de_rmw(display, dss_ctl2_reg, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
+			     RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth));
+	} else {
+		/* Interleave */
+		dss_ctl1 |= DUAL_LINK_MODE_INTERLEAVE;
+	}
+
+	intel_de_write(display, dss_ctl1_reg, dss_ctl1);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
index d4629052979a..aa8c67c15855 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.h
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -16,5 +16,8 @@ u8 intel_dss_mso_pipe_mask(struct intel_display *display);
 void intel_dss_mso_get_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config);
 void intel_dss_mso_configure(const struct intel_crtc_state *crtc_state);
+void intel_dss_dsi_dual_link_mode_configure(struct intel_encoder *encoder,
+					    const struct intel_crtc_state *pipe_config,
+					    u8 dual_link, u8 pixel_overlap);
 
 #endif /* __INTEL_DSS_H__ */
-- 
2.45.2

