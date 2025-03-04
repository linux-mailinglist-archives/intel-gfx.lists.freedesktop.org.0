Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA61EA4D67B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:32:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7553410E535;
	Tue,  4 Mar 2025 08:32:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nwZsKt48";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D85B10E525;
 Tue,  4 Mar 2025 08:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077146; x=1772613146;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RPPeASVKQj+f4f73ocZv8S4yI6SxbyuS1Bbdr8dwnX8=;
 b=nwZsKt48+CKcE7QfI/AWZaldj1d7UosBlvJssq+dOkI3WCIVPZ44fzJ1
 PXusc6u2rvCO5TrYT60D3NMotKl9V+Qzl/EoKN8S+Y5r4Q5E7h6/qTnea
 4zIf6jVfKqL3XMgxrvXznpgdVZYklkGUM9yIr13C4zySIuLTQxu40UN3e
 NJJYSmcZgKpqrLz57LRQIcbYxFlXpdQiBBE6zCVS0Ls8KebMPzKpNzvjB
 1ZTxD5jl9SQwBWdaPx3PdG4F3s4Owx9xaE51kf83sL3Qoj2sORTyXvdM1
 L8276AHs3+xPZq7TqXbyq9enPpi0kypf+RQO970JZQOWdIscNpcs94FZA Q==;
X-CSE-ConnectionGUID: /7GeHdtNSSaBQLbpRlaiDg==
X-CSE-MsgGUID: dbnrCxwQRTOwZavQoFX9Zg==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="45910189"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="45910189"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:26 -0800
X-CSE-ConnectionGUID: I6ESeCCIR3CLfGldAiIGzA==
X-CSE-MsgGUID: QhSiiJ71TO2RqYnnLzx7WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155492245"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:24 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 15/22] drm/i915/display: Use fixed_rr timings in modeset
 sequence
Date: Tue,  4 Mar 2025 13:49:41 +0530
Message-ID: <20250304081948.3177034-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
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
v5:
-For platforms that do not always have VRRTG on, do write bits other
than enable bit and also use write the TRANS_VRR_PUSH register. (Ville)
-Avoid writing trans_ctl_vrr if !vrr_possible().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    |  5 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++
 drivers/gpu/drm/i915/display/intel_vrr.c    | 59 ++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vrr.h    |  3 ++
 4 files changed, 57 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 20fc258a4d6d..6f083c28c455 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -78,6 +78,7 @@
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
+#include "intel_vrr.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
@@ -3273,6 +3274,8 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 				   const struct intel_crtc_state *old_crtc_state,
 				   const struct drm_connector_state *old_conn_state)
 {
+	intel_vrr_transcoder_disable(old_crtc_state);
+
 	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
 		intel_ddi_post_disable_hdmi_or_sst(state, encoder, old_crtc_state,
 						   old_conn_state);
@@ -3521,6 +3524,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
 
 	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
+	intel_vrr_transcoder_enable(crtc_state);
+
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
 	intel_audio_sdp_split_update(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index bd47cf127b4c..7dbc9b3bdbe4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1049,6 +1049,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
 		intel_crtc_vblank_off(old_pipe_crtc_state);
 	}
 
+	intel_vrr_transcoder_disable(old_crtc_state);
+
 	intel_disable_transcoder(old_crtc_state);
 
 	drm_dp_remove_payload_part1(&intel_dp->mst.mgr, new_mst_state, new_payload);
@@ -1326,6 +1328,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 
 	intel_ddi_enable_transcoder_func(encoder, pipe_config);
 
+	intel_vrr_transcoder_enable(pipe_config);
+
 	intel_ddi_clear_act_sent(encoder, pipe_config);
 
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c1387d3f60b2..97040ab9ed86 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -456,12 +456,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
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
@@ -473,14 +467,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
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
 
 	if (HAS_AS_SDP(display))
 		intel_de_write(display,
@@ -614,6 +601,50 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
 
+void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!HAS_VRR(display))
+		return;
+
+	if (!intel_vrr_possible(crtc_state))
+		return;
+
+	if (!intel_vrr_always_use_vrr_tg(display)) {
+		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+			       trans_vrr_ctl(crtc_state));
+		return;
+	}
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+
+	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
+		       TRANS_PUSH_EN);
+}
+
+void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!HAS_VRR(display))
+		return;
+
+	if (!intel_vrr_possible(crtc_state))
+		return;
+
+	if (!intel_vrr_always_use_vrr_tg(display)) {
+		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+			       trans_vrr_ctl(crtc_state));
+		return;
+	}
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
+}
+
 static
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 514822577e8a..c81f98f83b58 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -12,6 +12,7 @@ struct drm_connector_state;
 struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dsb;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
@@ -35,5 +36,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
+void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
+void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

