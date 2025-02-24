Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 398A1A42192
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B02B10E457;
	Mon, 24 Feb 2025 13:42:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B23bAJJe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F83E10E13C;
 Mon, 24 Feb 2025 06:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740378607; x=1771914607;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4KZNeaFvJGQoHuFfiL+O68xLN/+zLJmGxuXzCmjuh8w=;
 b=B23bAJJeZCk3jVRzkVQgbtzOZF5WotBFHoANWjGwELSjXkf5zJaxY8Do
 K9qVe+inKxIYmIuRd59bAcsbJXboBqgr421cK+rmz/nHjOdC9DA2BheDj
 3krpgt7qmb3Jx0u8C2bw8eUupg2ntXUFbkpanK1FrlRuhk5kak5e1zuIK
 7xmOf3mQlMUvfuzaRK0/yMvfMuLhoFTd7r6iS0Hnq62k4GMlAaaDagmxM
 ptnU8BccJ+u7VX4APSplNFH0+PUdMkgiVB1f5BdNkmj+F51LN5X7kFLNs
 8MWRClGiu6182rZQOUATVLvx/erF77Wem18/Ze9NMFYJslcvR9vLwpCSd w==;
X-CSE-ConnectionGUID: cL2KwAlVQrOqAQjcC8OzYg==
X-CSE-MsgGUID: HoIrFcZnQW6Qweh28j5Wzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28719707"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28719707"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:30:07 -0800
X-CSE-ConnectionGUID: Vr6DknBiToSMXlMxxBukmw==
X-CSE-MsgGUID: hy7+yc0xR8iESzfGmd3lZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120076619"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:30:07 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 17/20] drm/i915/display: Use fixed_rr timings in modeset
 sequence
Date: Mon, 24 Feb 2025 11:47:14 +0530
Message-ID: <20250224061717.1095226-18-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
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

During modeset enable sequence, program the fixed timings, and turn on the
VRR Timing Generator (VRR TG) for platforms that always use VRR TG.

For this intel_vrr_set_transcoder now always programs fixed timings.
Later if vrr timings are required, vrr_enable() will switch
to the real VRR timings.

For platforms that will always use VRR TG, the VRR_CTL Enable bit is set
and reset in the transcoder enable/disable path.

v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
v4: Have separate functions to enable/disable VRR CTL

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +++
 drivers/gpu/drm/i915/display/intel_vrr.c    | 40 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_vrr.h    |  3 ++
 4 files changed, 38 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5082f38b0a02..8863d1526aea 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -77,6 +77,7 @@
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
+#include "intel_vrr.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
@@ -3276,6 +3277,8 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 				   const struct intel_crtc_state *old_crtc_state,
 				   const struct drm_connector_state *old_conn_state)
 {
+	intel_vrr_transcoder_disable(old_crtc_state);
+
 	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
 		intel_ddi_post_disable_hdmi_or_sst(state, encoder, old_crtc_state,
 						   old_conn_state);
@@ -3524,6 +3527,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
 
 	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
+	intel_vrr_transcoder_enable(crtc_state);
+
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
 	intel_audio_sdp_split_update(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2c4a9ac6f61e..5ec353eceab4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1048,6 +1048,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
 		intel_crtc_vblank_off(old_pipe_crtc_state);
 	}
 
+	intel_vrr_transcoder_disable(old_crtc_state);
+
 	intel_disable_transcoder(old_crtc_state);
 
 	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payload);
@@ -1325,6 +1327,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 
 	intel_ddi_enable_transcoder_func(encoder, pipe_config);
 
+	intel_vrr_transcoder_enable(pipe_config);
+
 	intel_ddi_clear_act_sent(encoder, pipe_config);
 
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e77f5b483b09..551dcc16f0d4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -434,6 +434,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	bool needs_modeset = intel_crtc_needs_modeset(crtc_state);
 
 	if (intel_crtc_is_joiner_secondary(crtc_state))
 		return;
@@ -447,12 +448,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
 			     0, PIPE_VBLANK_WITH_DELAY);
 
-	if (!intel_vrr_possible(crtc_state)) {
-		intel_de_write(display,
-			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
-		return;
-	}
-
 	if (crtc_state->cmrr.enable) {
 		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
 			       upper_32_bits(crtc_state->cmrr.cmrr_m));
@@ -464,14 +459,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			       lower_32_bits(crtc_state->cmrr.cmrr_n));
 	}
 
-	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
-		       crtc_state->vrr.vmin - 1);
-	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
-		       crtc_state->vrr.vmax - 1);
-	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-		       trans_vrr_ctl(crtc_state));
-	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
-		       crtc_state->vrr.flipline - 1);
+	intel_vrr_set_fixed_rr_timings(crtc_state);
+	intel_vrr_update_guardband(crtc_state, needs_modeset);
 
 	if (HAS_AS_SDP(display))
 		intel_de_write(display,
@@ -614,6 +603,29 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
 
+void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!intel_vrr_always_use_vrr_tg(display))
+		return;
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+}
+
+void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!intel_vrr_always_use_vrr_tg(display))
+		return;
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
+}
+
 static
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index e4e9cadcdf9e..750a380da9e3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -12,6 +12,7 @@ struct drm_connector_state;
 struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dsb;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
@@ -37,5 +38,7 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
 void intel_vrr_update_guardband(const struct intel_crtc_state *crtc_state, bool needs_modeset);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
+void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
+void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

