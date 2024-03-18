Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A08D287E861
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 12:18:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E418210F290;
	Mon, 18 Mar 2024 11:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OSj5+Vt3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8855310F290
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 11:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710760730; x=1742296730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wt3Xt2I8zKGtaMQlvmgY9GjH4NclDbFTqRcByLlEtWw=;
 b=OSj5+Vt3jdAArHp0AfMUgY5B34a/3d/BgN9XggOLYM2FcOOPgryXJksV
 81htV1CL0UIX2f4fu2Yfjfi1yFJpJQEmzZGDIaAMVM/hL5gY0N2BML0VQ
 OI5pqgjuMXcNtsdDeJPXb+sjvZY7n0wZRprd9jFa0VWwrKy8mNk4UxsrW
 USGXOBjyAVIc/PMhEt6tP0o6L2EscDjaqytHNaGZvlGk9VEYzyYGzcX8C
 /ck+dC8B7xN31I9kp7lf1xL+i3e61pQqlEIh2AEdn3lIVXWrGD2uXljrV
 gFlbsubvz7iNSGfFRK+j644Pdo9rliaU3IwKeNZRL8vDTqIYXmjNk1Cir w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="16203899"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="16203899"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 04:18:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="18124268"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 18 Mar 2024 04:18:48 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH v19 8/9] drm/i915/display: Compute vrr_vsync params
Date: Mon, 18 Mar 2024 16:42:16 +0530
Message-Id: <20240318111216.3715694-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240313035625.3339996-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240313035625.3339996-1-mitulkumar.ajitkumar.golani@intel.com>
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
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  2 ++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 33 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h               |  7 ++++
 4 files changed, 41 insertions(+), 2 deletions(-)

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
index eb5bd0743902..1d53623e7e0b 100644
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
 
@@ -242,6 +252,12 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
 	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
 		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+
+	if (HAS_AS_SDP(dev_priv)) {
+		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
+			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
+			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
+	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
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

