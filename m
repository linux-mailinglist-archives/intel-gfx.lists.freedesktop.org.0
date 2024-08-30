Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9DA9656AC
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96C8E10E7D4;
	Fri, 30 Aug 2024 05:08:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="igzuI8CE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB14610E7D4;
 Fri, 30 Aug 2024 05:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994504; x=1756530504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BIC/1iCIkrevisH2UloSBsJn3ueAa4PZPRN6oUY1SNQ=;
 b=igzuI8CE4OTH9FNqp0eFHCGtVnnSgfO6jUtcN7r2T1ghEt8Vz7x2gHW1
 4YFggAg0m/845y0KzmssCd+Be8wNc5r4WnmaCxdMFF5KdLT/262pEaDru
 3ow4wdbK/kHdsT7G54oBnYLm/5Sd58pxuEY8wyISDMNEeLbhQIZv9PnDY
 MS/Ty3HkzhgqPAjXs/rVVXs7W9h8Jj/A+M8sB2Nx/6OS7B3RGnIG1ZzlO
 YCqrVM70c6lfTTvm5RYeWSd/B36HThVZUcGXPAWLkKlHIvJR98v+/V2RR
 TyKx91YpOvDj3bXbBnhSwTb6BLwmxrU3xsSmTpec31+pq3HJr0iV6seEa A==;
X-CSE-ConnectionGUID: CpiZbafpTVq0ZGFTQVf26A==
X-CSE-MsgGUID: Lb6rI+GUToWEaZg+w2JWNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421670"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421670"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:24 -0700
X-CSE-ConnectionGUID: jiUcHjuSRI6vsXTgBtZYKw==
X-CSE-MsgGUID: omDV3bGaTI+UTax2Ri5Chg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610186"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:21 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 03/19] drm/i915/ddi: Move all mso related helpers to a new file
Date: Fri, 30 Aug 2024 10:39:33 +0530
Message-ID: <20240830050950.2528450-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Move the MSO related helper functions from intel_ddi.c to a new file
intel_dss.c to improve code modularity and maintainability.
The corresponding headers are also moved to intel_dss.h.

v2: Retain the old naming scheme for the functions and only add dss
prefix. (Jani)

v3: Remove extra line at the end of header file.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/Makefile            |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c | 86 ++---------------------
 drivers/gpu/drm/i915/display/intel_dss.c | 87 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dss.h | 20 ++++++
 drivers/gpu/drm/xe/Makefile              |  1 +
 5 files changed, 114 insertions(+), 81 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dss.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dss.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index c63fa2133ccb..e55ce8ba123c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -328,6 +328,7 @@ i915-y += \
 	display/intel_dsi.o \
 	display/intel_dsi_dcs_backlight.o \
 	display/intel_dsi_vbt.o \
+	display/intel_dss.o \
 	display/intel_dvo.o \
 	display/intel_encoder.o \
 	display/intel_gmbus.o \
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4566a60c981c..7cc766043a5b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -57,7 +57,7 @@
 #include "intel_dp_tunnel.h"
 #include "intel_dpio_phy.h"
 #include "intel_dsi.h"
-#include "intel_dss_regs.h"
+#include "intel_dss.h"
 #include "intel_encoder.h"
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
@@ -2349,82 +2349,6 @@ static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
 	}
 }
 
-/*
- * Splitter enable for eDP MSO is limited to certain pipes, on certain
- * platforms.
- */
-static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
-{
-	if (DISPLAY_VER(i915) > 20)
-		return ~0;
-	else if (IS_ALDERLAKE_P(i915))
-		return BIT(PIPE_A) | BIT(PIPE_B);
-	else
-		return BIT(PIPE_A);
-}
-
-static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
-				     struct intel_crtc_state *pipe_config)
-{
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-	u32 dss1;
-
-	if (!HAS_MSO(i915))
-		return;
-
-	dss1 = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
-
-	pipe_config->splitter.enable = dss1 & SPLITTER_ENABLE;
-	if (!pipe_config->splitter.enable)
-		return;
-
-	if (drm_WARN_ON(&i915->drm, !(intel_ddi_splitter_pipe_mask(i915) & BIT(pipe)))) {
-		pipe_config->splitter.enable = false;
-		return;
-	}
-
-	switch (dss1 & SPLITTER_CONFIGURATION_MASK) {
-	default:
-		drm_WARN(&i915->drm, true,
-			 "Invalid splitter configuration, dss1=0x%08x\n", dss1);
-		fallthrough;
-	case SPLITTER_CONFIGURATION_2_SEGMENT:
-		pipe_config->splitter.link_count = 2;
-		break;
-	case SPLITTER_CONFIGURATION_4_SEGMENT:
-		pipe_config->splitter.link_count = 4;
-		break;
-	}
-
-	pipe_config->splitter.pixel_overlap = REG_FIELD_GET(OVERLAP_PIXELS_MASK, dss1);
-}
-
-static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-	u32 dss1 = 0;
-
-	if (!HAS_MSO(i915))
-		return;
-
-	if (crtc_state->splitter.enable) {
-		dss1 |= SPLITTER_ENABLE;
-		dss1 |= OVERLAP_PIXELS(crtc_state->splitter.pixel_overlap);
-		if (crtc_state->splitter.link_count == 2)
-			dss1 |= SPLITTER_CONFIGURATION_2_SEGMENT;
-		else
-			dss1 |= SPLITTER_CONFIGURATION_4_SEGMENT;
-	}
-
-	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
-		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
-		     OVERLAP_PIXELS_MASK, dss1);
-}
-
 static u8 mtl_get_port_width(u8 lane_count)
 {
 	switch (lane_count) {
@@ -2559,7 +2483,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/*
 	 * 6.e Program CoG/MSO configuration bits in DSS_CTL1 if selected.
 	 */
-	intel_ddi_mso_configure(crtc_state);
+	intel_dss_mso_configure(crtc_state);
 
 	if (!is_mst)
 		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
@@ -2714,7 +2638,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/*
 	 * 7.g Program CoG/MSO configuration bits in DSS_CTL1 if selected.
 	 */
-	intel_ddi_mso_configure(crtc_state);
+	intel_dss_mso_configure(crtc_state);
 
 	if (!is_mst)
 		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
@@ -3959,7 +3883,7 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 
 	intel_ddi_read_func_ctl(encoder, pipe_config);
 
-	intel_ddi_mso_get_config(encoder, pipe_config);
+	intel_dss_mso_get_config(encoder, pipe_config);
 
 	pipe_config->has_audio =
 		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
@@ -5191,7 +5115,7 @@ void intel_ddi_init(struct intel_display *display,
 		dig_port->hpd_pulse = intel_dp_hpd_pulse;
 
 		if (dig_port->dp.mso_link_count)
-			encoder->pipe_mask = intel_ddi_splitter_pipe_mask(dev_priv);
+			encoder->pipe_mask = intel_dss_mso_pipe_mask(dev_priv);
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
new file mode 100644
index 000000000000..e774f55f7008
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg_defs.h"
+#include "intel_de.h"
+#include "intel_display_types.h"
+#include "intel_dss.h"
+#include "intel_dss_regs.h"
+
+/*
+ * Splitter enable for eDP MSO is limited to certain pipes, on certain
+ * platforms.
+ */
+u8 intel_dss_mso_pipe_mask(struct drm_i915_private *i915)
+{
+	if (DISPLAY_VER(i915) > 20)
+		return ~0;
+	else if (IS_ALDERLAKE_P(i915))
+		return BIT(PIPE_A) | BIT(PIPE_B);
+	else
+		return BIT(PIPE_A);
+}
+
+void intel_dss_mso_get_config(struct intel_encoder *encoder,
+			      struct intel_crtc_state *pipe_config)
+{
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	u32 dss1;
+
+	if (!HAS_MSO(i915))
+		return;
+
+	dss1 = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
+
+	pipe_config->splitter.enable = dss1 & SPLITTER_ENABLE;
+	if (!pipe_config->splitter.enable)
+		return;
+
+	if (drm_WARN_ON(&i915->drm, !(intel_dss_mso_pipe_mask(i915) & BIT(pipe)))) {
+		pipe_config->splitter.enable = false;
+		return;
+	}
+
+	switch (dss1 & SPLITTER_CONFIGURATION_MASK) {
+	default:
+		drm_WARN(&i915->drm, true,
+			 "Invalid splitter configuration, dss1=0x%08x\n", dss1);
+		fallthrough;
+	case SPLITTER_CONFIGURATION_2_SEGMENT:
+		pipe_config->splitter.link_count = 2;
+		break;
+	case SPLITTER_CONFIGURATION_4_SEGMENT:
+		pipe_config->splitter.link_count = 4;
+		break;
+	}
+
+	pipe_config->splitter.pixel_overlap = REG_FIELD_GET(OVERLAP_PIXELS_MASK, dss1);
+}
+
+void intel_dss_mso_configure(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	u32 dss1 = 0;
+
+	if (!HAS_MSO(i915))
+		return;
+
+	if (crtc_state->splitter.enable) {
+		dss1 |= SPLITTER_ENABLE;
+		dss1 |= OVERLAP_PIXELS(crtc_state->splitter.pixel_overlap);
+		if (crtc_state->splitter.link_count == 2)
+			dss1 |= SPLITTER_CONFIGURATION_2_SEGMENT;
+		else
+			dss1 |= SPLITTER_CONFIGURATION_4_SEGMENT;
+	}
+
+	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
+		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
+		     OVERLAP_PIXELS_MASK, dss1);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
new file mode 100644
index 000000000000..95302d061205
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_DSS_H__
+#define __INTEL_DSS_H__
+
+#include "linux/types.h"
+
+struct drm_i915_private;
+struct intel_crtc_state;
+struct intel_encoder;
+
+u8 intel_dss_mso_pipe_mask(struct drm_i915_private *i915);
+void intel_dss_mso_get_config(struct intel_encoder *encoder,
+			      struct intel_crtc_state *pipe_config);
+void intel_dss_mso_configure(const struct intel_crtc_state *crtc_state);
+
+#endif /* __INTEL_DSS_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index edfd812e0f41..ff1c0ce6da86 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -228,6 +228,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_dsi.o \
 	i915-display/intel_dsi_dcs_backlight.o \
 	i915-display/intel_dsi_vbt.o \
+	i915-display/intel_dss.o \
 	i915-display/intel_encoder.o \
 	i915-display/intel_fb.o \
 	i915-display/intel_fbc.o \
-- 
2.45.2

