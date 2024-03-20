Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 125E1880A88
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 06:06:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74BBF10E7CD;
	Wed, 20 Mar 2024 05:06:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kpMcY83f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F9210E7CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710911213; x=1742447213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XgPld5MqEcixHkPXRicr1iecYu2FnxI0jr4KfhVY8b8=;
 b=kpMcY83fHg5Po9GYXES+rvMew4KkwTVjouopMgokssbLY9J681850W6v
 dNEJuQOZBMYHxwqx6K0L8/ylNWGzFOrlBkWLAGu4FUWUO6ZGfVvalBA+Y
 ywinjI5Ls70S+dFRpOlW7mWo1o6k2nHO9MCJ5KRsrY4GNdLavr10fErRk
 w9Jzh4kx60asu8UnRS5igQMEqU63XpvxmZTfrK1fNwu+ZT7hXFZ59lPF8
 eChakk40PceaYsqBh8rkY23oMjlgPkvYtea0EQF7O/pvcnadHsQ9pnmfw
 H5rl5mDkyya1JEq1qtRbCwxTOoTnMd77KRSGu7ZN6gzuvvSj90XSFJzck Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5936581"
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; 
   d="scan'208";a="5936581"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 22:06:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="14423567"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 19 Mar 2024 22:06:51 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v20 8/9] drm/i915/display: Compute vrr_vsync params
Date: Wed, 20 Mar 2024 10:30:20 +0530
Message-Id: <20240320050020.3785596-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240318111216.3715694-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240318111216.3715694-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v5:
- Send AS SDP only when VRR is enabled.

--v6:
- Add TRANS_VRR_VSYNC befor enabling VRR as per bspec. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  2 ++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 33 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h               |  7 ++++
 4 files changed, 41 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eb8f36b38c41..9e5924e21eee 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5356,6 +5356,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.flipline);
 		PIPE_CONF_CHECK_I(vrr.pipeline_full);
 		PIPE_CONF_CHECK_I(vrr.guardband);
+		PIPE_CONF_CHECK_I(vrr.vsync_start);
+		PIPE_CONF_CHECK_I(vrr.vsync_end);
 	}
 
 #undef PIPE_CONF_CHECK_X
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 36fcded7564a..95da3cf27188 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1431,6 +1431,7 @@ struct intel_crtc_state {
 		bool enable, in_range;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
+		u32 vsync_end, vsync_start;
 	} vrr;
 
 	/* Stream Splitter for eDP MSO */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index eb5bd0743902..856378f8b90e 100644
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
@@ -165,6 +167,14 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (crtc_state->uapi.vrr_enabled) {
 		crtc_state->vrr.enable = true;
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
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
 
@@ -240,6 +250,12 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		return;
 
 	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
+
+	if (HAS_AS_SDP(dev_priv))
+		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
+			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
+			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
+
 	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
 		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 }
@@ -258,13 +274,16 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_de_wait_for_clear(dev_priv, TRANS_VRR_STATUS(cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
 	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), 0);
+
+	if (HAS_AS_SDP(dev_priv))
+		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder), 0);
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	u32 trans_vrr_ctl;
+	u32 trans_vrr_ctl, trans_vrr_vsync;
 
 	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
 
@@ -284,6 +303,16 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
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
index 3ff6a38826cb..2ede6982175c 100644
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

