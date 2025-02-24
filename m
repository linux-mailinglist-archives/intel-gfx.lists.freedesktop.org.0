Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 853C3A42189
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D47010E3E7;
	Mon, 24 Feb 2025 13:42:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y4ql7NnL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11D3710E16F;
 Mon, 24 Feb 2025 08:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740385855; x=1771921855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zqWdQKGawMVieBkf6oRitd6QH+AYv54SumpKPwY1o2g=;
 b=Y4ql7NnLgr0f2oUrRYRop4OTpnl3hp1gY+01ITEBZwEMwXNMUBJyVNqk
 Zla7VppI0wS3hnMnUZcnNgZObqKd+vcbQtuppX9ifmHY5YYUbjaTXO6x5
 9eA4w3QWfeBdSihlg8F1vZRjgpCBaVyHA4UJ5wZr5/ilibr1X6KmU3GPn
 H88sgSF1JYlNl39zsCfS0QS3YfmIu8K4Ryg1MaRtxo7pEMU9ByK+Ei9iJ
 2uBlWtRGS7rjF988axVeK1WUzEGw8jiJcdRXqyw1UM42TsvhJ+/lxSZ8c
 JHB2ulj1utXu5+f7Z5OLYJ2gbHIvolOapK4cstTwqJMR+q3Sxkj+PCw2m w==;
X-CSE-ConnectionGUID: a0syvw1wTOq+crOBTA6Ebg==
X-CSE-MsgGUID: 4TI+4zq2SKqsjtzfsBHVfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="41250276"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41250276"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 00:30:55 -0800
X-CSE-ConnectionGUID: 4LwjgQgfRa6Sx/BmiIp69g==
X-CSE-MsgGUID: Nslya9HrSrqQ4XJeqdeV/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116630684"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 24 Feb 2025 00:30:52 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 2/8] drm/i915/lobf: Disintegrate alpm_disable from
 psr_disable
Date: Mon, 24 Feb 2025 13:38:41 +0530
Message-Id: <20250224080847.326350-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250224080847.326350-1-animesh.manna@intel.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
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

Currently clearing of alpm registers is done through psr_disable()
which is always not correct, without psr also alpm can exist. So
dis-integrate alpm_disable() from psr_disable().

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 21 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_alpm.h     |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 ++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 11 ----------
 5 files changed, 25 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index a53ed83f6b22..d94c96ba46b1 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -365,6 +365,7 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state)
 {
 	lnl_alpm_configure(intel_dp, crtc_state);
+	intel_dp->alpm_parameters.transcoder = crtc_state->cpu_transcoder;
 }
 
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
@@ -440,3 +441,23 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
 	debugfs_create_file("i915_edp_lobf_info", 0444, root,
 			    connector, &i915_edp_lobf_info_fops);
 }
+
+void intel_alpm_disable(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->alpm_parameters.transcoder;
+
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	if (!(intel_de_read(display, ALPM_CTL(display, cpu_transcoder)) & ALPM_CTL_ALPM_ENABLE))
+		return;
+
+	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
+		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
+		     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+
+	intel_de_rmw(display,
+		     PORT_ALPM_CTL(cpu_transcoder),
+		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index 2f862b0476a8..91f51fb24f98 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -28,4 +28,5 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
 bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
 bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
+void intel_alpm_disable(struct intel_dp *intel_dp);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7937f4de66cb..26aa32d4d50e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -35,6 +35,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "icl_dsi.h"
+#include "intel_alpm.h"
 #include "intel_audio.h"
 #include "intel_audio_regs.h"
 #include "intel_backlight.h"
@@ -3570,6 +3571,7 @@ static void intel_ddi_disable_dp(struct intel_atomic_state *state,
 	intel_dp->link_trained = false;
 
 	intel_psr_disable(intel_dp, old_crtc_state);
+	intel_alpm_disable(intel_dp);
 	intel_edp_backlight_off(old_conn_state);
 	/* Disable the decompression in DP Sink */
 	intel_dp_sink_disable_decompression(state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4440521e3e9e..b78721c451b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1801,6 +1801,7 @@ struct intel_dp {
 	struct {
 		u8 io_wake_lines;
 		u8 fast_wake_lines;
+		enum transcoder transcoder;
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c1dd9c739fd4..1d202f2eb356 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2141,17 +2141,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	if (intel_dp_is_edp(intel_dp))
 		intel_snps_phy_update_psr_power_state(&dp_to_dig_port(intel_dp)->base, false);
 
-	/* Panel Replay on eDP is always using ALPM aux less. */
-	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
-		intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
-			     ALPM_CTL_ALPM_ENABLE |
-			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
-
-		intel_de_rmw(display,
-			     PORT_ALPM_CTL(cpu_transcoder),
-			     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
-	}
-
 	/* Disable PSR on Sink */
 	if (!intel_dp->psr.panel_replay_enabled) {
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
-- 
2.29.0

