Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D4787A229
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 05:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBED10F006;
	Wed, 13 Mar 2024 04:03:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KM7v3bTc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A4E110E3BC;
 Wed, 13 Mar 2024 04:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710302585; x=1741838585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2Y6WMn36B9mOdF7+0vBRQRNqoA9xF0jiI6g3BOlUqOY=;
 b=KM7v3bTcLNAz08kX+1e4xCGWvrbtV934bv1ozR2xcArBUGpAVvQA+Frd
 FMGjJGIpd5LtHvgGCk30ChVx5G+MsqYVW94gpyWaiKvcPu8iU+AAhHqUg
 KdFRHObJ+piY5PnoqZuf6z7IxWTjBd2fRB6wu7L9CcQyFXM1sd3/y4du/
 YmJ6CKTfQk7tmwHm6rcdX8lTGBi739acYD2UHoj87ZUGLgYEpTSCdtqNQ
 owRQ3xZWxVc5BhXf2Pb6g7z4Oan7j1pdyX53iltymkZAtLF3FGnX4YxQj
 HeMvWNgy96l8z7BLEHTnN7dhpYZ7QyRhG3uSt13s0oLjTxJ5QWRgstrHW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8859589"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="8859589"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 21:03:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="42770690"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa001.fm.intel.com with ESMTP; 12 Mar 2024 21:03:03 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH v18 8/9] drm/i915/display: Compute vrr_vsync params
Date: Wed, 13 Mar 2024 09:26:25 +0530
Message-Id: <20240313035625.3339996-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240311094238.3320888-9-mitulkumar.ajitkumar.golani@intel.com>
References: <20240311094238.3320888-9-mitulkumar.ajitkumar.golani@intel.com>
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

Compute vrr_vsync_start/end, which sets the position
for hardware to send the Vsync at a fixed position
relative to the end of the Vblank.

--v2:
- Updated VSYNC_START/END macros to VRR_VSYNC_START/END. (Ankit)
- Updated bit fields of VRR_VSYNC_START/END. (Ankit)

--v3:
- Add PIPE_CONF_CHECK_I(vrr.vsync_start/end).
- Read/write vrr_vsync params only when we intend to send
adaptive_sync sdp.

--v4:
- Use VRR_SYNC_START/END macros correctly.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  2 ++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 30 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h               |  7 +++++
 4 files changed, 38 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8f1d948408d3..fed4ed18d53b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5377,6 +5377,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.flipline);
 		PIPE_CONF_CHECK_I(vrr.pipeline_full);
 		PIPE_CONF_CHECK_I(vrr.guardband);
+		PIPE_CONF_CHECK_I(vrr.vsync_start);
+		PIPE_CONF_CHECK_I(vrr.vsync_end);
 	}
 
 #undef PIPE_CONF_CHECK_X
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8a286751dc39..c2e08f641989 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1430,6 +1430,7 @@ struct intel_crtc_state {
 		bool enable, in_range;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
+		u32 vsync_end, vsync_start;
 	} vrr;
 
 	/* Stream Splitter for eDP MSO */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index eb5bd0743902..ed38fee196b8 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_vrr.h"
+#include "intel_dp.h"
 
 bool intel_vrr_is_capable(struct intel_connector *connector)
 {
@@ -113,6 +114,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
@@ -165,6 +167,15 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (crtc_state->uapi.vrr_enabled) {
 		crtc_state->vrr.enable = true;
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+
+		if (intel_dp_as_sdp_supported(intel_dp)) {
+			crtc_state->vrr.vsync_start =
+				(crtc_state->hw.adjusted_mode.crtc_vtotal -
+					crtc_state->hw.adjusted_mode.vsync_start);
+			crtc_state->vrr.vsync_end =
+				(crtc_state->hw.adjusted_mode.crtc_vtotal -
+					crtc_state->hw.adjusted_mode.vsync_end);
+		}
 	}
 }
 
@@ -204,6 +215,11 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
 	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl(crtc_state));
 	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
+
+	if (crtc_state->vrr.vsync_end && crtc_state->vrr.vsync_start)
+		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
+			       VRR_VSYNC_END(crtc_state->hw.adjusted_mode.vsync_end) |
+				   VRR_VSYNC_START(crtc_state->hw.adjusted_mode.vsync_start));
 }
 
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
@@ -264,7 +280,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	u32 trans_vrr_ctl;
+	u32 trans_vrr_ctl, trans_vrr_vsync;
 
 	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
 
@@ -284,6 +300,16 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
 	}
 
-	if (crtc_state->vrr.enable)
+	if (crtc_state->vrr.enable) {
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+
+		if (HAS_AS_SDP(dev_priv)) {
+			trans_vrr_vsync =
+				intel_de_read(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder));
+			crtc_state->vrr.vsync_start =
+				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
+			crtc_state->vrr.vsync_end =
+				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
+		}
+	}
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9bda3a24cd94..9512f4c58094 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2095,6 +2095,13 @@
 #define   TRANS_PUSH_EN			REG_BIT(31)
 #define   TRANS_PUSH_SEND		REG_BIT(30)
 
+#define _TRANS_VRR_VSYNC_A		0x60078
+#define TRANS_VRR_VSYNC(trans)		_MMIO_TRANS2(trans, _TRANS_VRR_VSYNC_A)
+#define VRR_VSYNC_END_MASK		REG_GENMASK(28, 16)
+#define VRR_VSYNC_END(vsync_end)	REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
+#define VRR_VSYNC_START_MASK		REG_GENMASK(12, 0)
+#define VRR_VSYNC_START(vsync_start)	REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
+
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
-- 
2.25.1

