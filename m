Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5853FB39670
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 10:11:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE42310E85B;
	Thu, 28 Aug 2025 08:11:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VIUxWfM2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D96E10E83E
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 08:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756368671; x=1787904671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J9jQTYRZCOAjXvZABTDCRD41UEnixD9mRCgHkMfzhYc=;
 b=VIUxWfM28o8MUgbgFmXMZWRNESaBtfY7TM48t+zyYQfTlyRnsxf+n4sa
 QD9ORxeXty6bmwQ6WXjOHKZxEa8qegPEyfspFwmz0SVW0Ai91lEGBAdbF
 8VJ1dy8UiwtrUrOT9OUe7qaZZam/kgi0Y90b+cvZIlOxhZDU2k2PgalFZ
 yNBgS/yTgHQoTzWDU05mtcWXsETNIWnC/tM4oDowJn+ERgrd1Gf7k+SHr
 R70iG66h1j83Lic4TOJDZsMwarhjZkrKlDRMsANfx0G/i5KpNzPpNNsBx
 h1Y0fuULuz1ZjDhRQAk+MZfoB912QAkIXKDn4QuJOBHuHQqu2QzIdmexB Q==;
X-CSE-ConnectionGUID: ZV8vYzAxSHqBTE66g2E1UQ==
X-CSE-MsgGUID: MpAyAS59QeuBOknhQdbKSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58483045"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58483045"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 01:11:11 -0700
X-CSE-ConnectionGUID: N3doXlTLQkWGGkAr9Pd65w==
X-CSE-MsgGUID: AgrEt0zMRSiV2njamdzZEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="201012682"
Received: from shawnle1-i9-build-machine.itwn.intel.com ([10.225.64.200])
 by orviesa002.jf.intel.com with ESMTP; 28 Aug 2025 01:11:09 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>, Shankar Uma <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Imre Deak <imre.deak@intel.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 2/2] drm/i915: compute pipe bpp from link bandwidth management
Date: Thu, 28 Aug 2025 08:06:49 +0000
Message-Id: <20250828080649.186452-2-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250828080649.186452-1-shawn.c.lee@intel.com>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <20250828080649.186452-1-shawn.c.lee@intel.com>
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

Since intel_fdi_compute_pipe_bpp() is no longer FDI-specific and
now applies to all connectors. Move it to intel_link_bw.c,
and rename to intel_link_bw_compute_pipe_bpp().

Cc: Shankar Uma <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c     |  5 ++--
 drivers/gpu/drm/i915/display/intel_fdi.c     | 28 --------------------
 drivers/gpu/drm/i915/display/intel_fdi.h     |  1 -
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_link_bw.c | 28 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_link_bw.h |  1 +
 drivers/gpu/drm/i915/display/intel_lvds.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_sdvo.c    |  3 ++-
 8 files changed, 38 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 898c5d9e8f7a..31e68047f217 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -50,6 +50,7 @@
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
 #include "intel_hotplug_irq.h"
+#include "intel_link_bw.h"
 #include "intel_load_detect.h"
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
@@ -421,7 +422,7 @@ static int pch_crt_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	crtc_state->has_pch_encoder = true;
-	if (!intel_fdi_compute_pipe_bpp(crtc_state))
+	if (!intel_link_bw_compute_pipe_bpp(crtc_state))
 		return -EINVAL;
 
 	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
@@ -446,7 +447,7 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	crtc_state->has_pch_encoder = true;
-	if (!intel_fdi_compute_pipe_bpp(crtc_state))
+	if (!intel_link_bw_compute_pipe_bpp(crtc_state))
 		return -EINVAL;
 
 	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 8039a84671cc..59a36b3a22c1 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -292,34 +292,6 @@ int intel_fdi_link_freq(struct intel_display *display,
 		return display->fdi.pll_freq;
 }
 
-/**
- * intel_fdi_compute_pipe_bpp - compute pipe bpp limited by max link bpp
- * @crtc_state: the crtc state
- *
- * Compute the pipe bpp limited by the CRTC's maximum link bpp. Encoders can
- * call this function during state computation in the simple case where the
- * link bpp will always match the pipe bpp. This is the case for all non-DP
- * encoders, while DP encoders will use a link bpp lower than pipe bpp in case
- * of DSC compression.
- *
- * Returns %true in case of success, %false if pipe bpp would need to be
- * reduced below its valid range.
- */
-bool intel_fdi_compute_pipe_bpp(struct intel_crtc_state *crtc_state)
-{
-	int pipe_bpp = min(crtc_state->pipe_bpp,
-			   fxp_q4_to_int(crtc_state->max_link_bpp_x16));
-
-	pipe_bpp = rounddown(pipe_bpp, 2 * 3);
-
-	if (pipe_bpp < 6 * 3)
-		return false;
-
-	crtc_state->pipe_bpp = pipe_bpp;
-
-	return true;
-}
-
 int ilk_fdi_compute_config(struct intel_crtc *crtc,
 			   struct intel_crtc_state *pipe_config)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index ad5e103c38a8..1cd08df9b0c2 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -20,7 +20,6 @@ struct intel_link_bw_limits;
 int intel_fdi_add_affected_crtcs(struct intel_atomic_state *state);
 int intel_fdi_link_freq(struct intel_display *display,
 			const struct intel_crtc_state *pipe_config);
-bool intel_fdi_compute_pipe_bpp(struct intel_crtc_state *crtc_state);
 int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
 			   struct intel_crtc_state *pipe_config);
 int intel_fdi_atomic_check_link(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 027e8ed0cea8..4650181932d7 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -61,6 +61,7 @@
 #include "intel_hdcp_regs.h"
 #include "intel_hdcp_shim.h"
 #include "intel_hdmi.h"
+#include "intel_link_bw.h"
 #include "intel_lspcon.h"
 #include "intel_panel.h"
 #include "intel_pfit.h"
@@ -2346,7 +2347,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
 		pipe_config->pixel_multiplier = 2;
 
-	if (!intel_fdi_compute_pipe_bpp(pipe_config))
+	if (!intel_link_bw_compute_pipe_bpp(pipe_config))
 		return -EINVAL;
 
 	pipe_config->has_audio =
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index d194a366ff10..f52dee0ea412 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -164,6 +164,34 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
 	return ret;
 }
 
+/**
+ * intel_link_bw_compute_pipe_bpp - compute pipe bpp limited by max link bpp
+ * @crtc_state: the crtc state
+ *
+ * Compute the pipe bpp limited by the CRTC's maximum link bpp. Encoders can
+ * call this function during state computation in the simple case where the
+ * link bpp will always match the pipe bpp. This is the case for all non-DP
+ * encoders, while DP encoders will use a link bpp lower than pipe bpp in case
+ * of DSC compression.
+ *
+ * Returns %true in case of success, %false if pipe bpp would need to be
+ * reduced below its valid range.
+ */
+bool intel_link_bw_compute_pipe_bpp(struct intel_crtc_state *crtc_state)
+{
+	int pipe_bpp = min(crtc_state->pipe_bpp,
+			   fxp_q4_to_int(crtc_state->max_link_bpp_x16));
+
+	pipe_bpp = rounddown(pipe_bpp, 2 * 3);
+
+	if (pipe_bpp < 6 * 3)
+		return false;
+
+	crtc_state->pipe_bpp = pipe_bpp;
+
+	return true;
+}
+
 /**
  * intel_link_bw_set_bpp_limit_for_pipe - set link bpp limit for a pipe to its minimum
  * @state: atomic state
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
index b499042e62b1..a458c8edacf6 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
@@ -34,5 +34,6 @@ bool intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
 int intel_link_bw_atomic_check(struct intel_atomic_state *state,
 			       struct intel_link_bw_limits *new_limits);
 void intel_link_bw_connector_debugfs_add(struct intel_connector *connector);
+bool intel_link_bw_compute_pipe_bpp(struct intel_crtc_state *crtc_state);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 7e48a235c99f..48f4d8ed4f15 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -48,6 +48,7 @@
 #include "intel_dpll.h"
 #include "intel_fdi.h"
 #include "intel_gmbus.h"
+#include "intel_link_bw.h"
 #include "intel_lvds.h"
 #include "intel_lvds_regs.h"
 #include "intel_panel.h"
@@ -433,7 +434,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 
 	if (HAS_PCH_SPLIT(display)) {
 		crtc_state->has_pch_encoder = true;
-		if (!intel_fdi_compute_pipe_bpp(crtc_state))
+		if (!intel_link_bw_compute_pipe_bpp(crtc_state))
 			return -EINVAL;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 87aff2754f69..eae07d3909cc 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -52,6 +52,7 @@
 #include "intel_gmbus.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_link_bw.h"
 #include "intel_panel.h"
 #include "intel_sdvo.h"
 #include "intel_sdvo_regs.h"
@@ -1367,7 +1368,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 
 	if (HAS_PCH_SPLIT(display)) {
 		pipe_config->has_pch_encoder = true;
-		if (!intel_fdi_compute_pipe_bpp(pipe_config))
+		if (!intel_link_bw_compute_pipe_bpp(pipe_config))
 			return -EINVAL;
 	}
 
-- 
2.34.1

