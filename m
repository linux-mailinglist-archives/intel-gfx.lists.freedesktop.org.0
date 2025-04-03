Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8F5A7A075
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 947DD10E989;
	Thu,  3 Apr 2025 09:51:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A8Q0i+nB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 507D310E989;
 Thu,  3 Apr 2025 09:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743673877; x=1775209877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OTVNlPyCAI+/8Paha6TLnwICNQz02bJyj9n8Szx15u4=;
 b=A8Q0i+nBUvot9YDKGxdVRsuktQ+UZneQisXZHGGi3neOOxMMV/o0/+Zp
 nNdGItBzZ44aEoAsEJKlPeD+KFDR8RGCoJQRPBQUaJHA8hDZ7dh3k1fEq
 qM3dmpvqLJg/Jouz2FioGVwn+BY5EQW5So0BaQMUGS1qdfM13h0YQA+h9
 VYEcDNMFW353QOTnwIBFFrbMSovUcPexe5XQg4U21gjLw5ZfPX1slTU+B
 q4iQtD2ail7nFsi5JTO6nn4s1xZ8SoviX9ObCxyR0yrZOUQk5RAvXzpHy
 /5eBXlHccZylAAhFNjVLVnn/7+z/p3nEChAoV6lmfPxMfFQPOQRAksDS8 g==;
X-CSE-ConnectionGUID: QtlGh3BKQrK8+3HvNhAB1Q==
X-CSE-MsgGUID: sPzENYhzQaC4oZvKyx3UDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45196635"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45196635"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:51:17 -0700
X-CSE-ConnectionGUID: bWmrISxoSwSuEZ/iOcmbqQ==
X-CSE-MsgGUID: j18jYXSITM6dGo0ZIm4nbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127463723"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 03 Apr 2025 02:51:15 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 3/8] drm/i915/lobf: Disintegrate alpm_disable from
 psr_disable
Date: Thu,  3 Apr 2025 14:58:20 +0530
Message-Id: <20250403092825.484347-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250403092825.484347-1-animesh.manna@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
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

v1: Initial version.
v2:
- Remove h/w register read from alpm_disable(). [Jani]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c      | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_alpm.h      |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c       |  2 ++
 .../gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c       | 11 -----------
 5 files changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 5293cbd02988..5072f87d9c80 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -367,6 +367,7 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state)
 {
 	lnl_alpm_configure(intel_dp, crtc_state);
+	intel_dp->alpm_parameters.transcoder = crtc_state->cpu_transcoder;
 }
 
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
@@ -442,3 +443,20 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
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
index 56068b2ef964..eecc73cbf73c 100644
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
@@ -3553,6 +3554,7 @@ static void intel_ddi_disable_dp(struct intel_atomic_state *state,
 	intel_dp->link_trained = false;
 
 	intel_psr_disable(intel_dp, old_crtc_state);
+	intel_alpm_disable(intel_dp);
 	intel_edp_backlight_off(old_conn_state);
 	/* Disable the decompression in DP Sink */
 	intel_dp_sink_disable_decompression(state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 367b53a9eae2..0b3d29d42ee2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1805,6 +1805,7 @@ struct intel_dp {
 	struct {
 		u8 io_wake_lines;
 		u8 fast_wake_lines;
+		enum transcoder transcoder;
 
 		/* LNL and beyond */
 		u8 check_entry_lines;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7ad4a01e0378..1bd2fcd0fa4b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2130,17 +2130,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
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

