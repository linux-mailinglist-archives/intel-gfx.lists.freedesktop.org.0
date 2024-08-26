Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFB795EF8D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 13:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EB3510E1D9;
	Mon, 26 Aug 2024 11:14:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OpWIraZw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D28A10E1D8;
 Mon, 26 Aug 2024 11:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724670858; x=1756206858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oGfAX2zDM3KoDv+cySuV+SqMvBxttUxxO4SSFAJzuU4=;
 b=OpWIraZwgjEnk+DMkDCp3/nQLknZ5u5nENfjwIqgUxi13XYNUDH4evhD
 mF/AOB4NvFRxh+JZl15kt01lpix0F0BJ3H/O5QT/KHzVyWHaFUvApgCT+
 MtNGD4WgDNNL1jnaM3QjlnFjoKB3gBaqf/xcgS2cOnOO3TZWlsq8wKPjQ
 jlw+gkykGRNO00roc0Kwtt+YWq9sXfuyV9UxGd6VPmCe8XXZVzO8en0+F
 xW2f48NEFb76Wrewl/++84mhG/GOyNhAYo/fzAq/iWwB0WfjelYQ27FQt
 5P7fYaOFdtpHRw8YbPzU/b0DopgAKBIVLq/cb8UOKPgzDZA6opK78k25e g==;
X-CSE-ConnectionGUID: Z/VTChi7SMa9WK58YVCsaQ==
X-CSE-MsgGUID: UqRiP6dSTUeSikMe2Y2D8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="23213575"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23213575"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:18 -0700
X-CSE-ConnectionGUID: eV3bn4TWTjyFtpDXok0aeg==
X-CSE-MsgGUID: SLVWq0KbRTKwUs8L60z/LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67291416"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 08/12] drm/i915/display: Move helper to get joined pipe mask
 to intel_dss
Date: Mon, 26 Aug 2024 16:45:22 +0530
Message-ID: <20240826111527.1113622-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
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

Rename intel_crtc_joined_pipe_mask with
intel_dss_get_joined_pipe_mask and move it to intel_dss files.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  8 ++---
 drivers/gpu/drm/i915/display/intel_display.c | 35 ++++++++------------
 drivers/gpu/drm/i915/display/intel_display.h |  1 -
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  7 ++--
 drivers/gpu/drm/i915/display/intel_dss.c     |  7 ++++
 drivers/gpu/drm/i915/display/intel_dss.h     |  1 +
 6 files changed, 30 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index de7db5a028db..9421f0c4d25e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3043,7 +3043,7 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 	struct intel_crtc *pipe_crtc;
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+					 intel_dss_get_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3055,7 +3055,7 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+					 intel_dss_get_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3319,7 +3319,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(crtc_state)) {
+						 intel_dss_get_joined_pipe_mask(crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -3429,7 +3429,7 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 		return;
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(crtc_state))
+					 intel_dss_get_joined_pipe_mask(crtc_state))
 		intel_update_active_dpll(state, pipe_crtc, encoder);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ab57c2f39cf5..1c0d297c250b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -283,13 +283,6 @@ static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
 	return hweight8(crtc_state->joiner_pipes);
 }
 
-u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-
-	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
-}
-
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
@@ -1688,13 +1681,13 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		return;
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state))
+						 intel_dss_get_joined_pipe_mask(new_crtc_state))
 		intel_dmc_enable_pipe(dev_priv, pipe_crtc->pipe);
 
 	intel_encoders_pre_pll_enable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+						 intel_dss_get_joined_pipe_mask(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1705,7 +1698,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_pre_enable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+						 intel_dss_get_joined_pipe_mask(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1724,7 +1717,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+						 intel_dss_get_joined_pipe_mask(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1760,7 +1753,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_enable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+						 intel_dss_get_joined_pipe_mask(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 		enum pipe hsw_workaround_pipe;
@@ -1855,7 +1848,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_post_disable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+					 intel_dss_get_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1865,7 +1858,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_post_pll_disable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state))
+					 intel_dss_get_joined_pipe_mask(old_crtc_state))
 		intel_dmc_disable_pipe(i915, pipe_crtc->pipe);
 }
 
@@ -6852,7 +6845,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 		return;
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+						 intel_dss_get_joined_pipe_mask(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -6965,13 +6958,13 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	 * or we race against vblank off.
 	 */
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state))
+					 intel_dss_get_joined_pipe_mask(old_crtc_state))
 		intel_crtc_disable_pipe_crc(pipe_crtc);
 
 	dev_priv->display.funcs.display->crtc_disable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+					 intel_dss_get_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *new_pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -7036,7 +7029,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 
 		intel_old_crtc_state_disables(state, crtc);
 
-		disable_pipes &= ~intel_crtc_joined_pipe_mask(old_crtc_state);
+		disable_pipes &= ~intel_dss_get_joined_pipe_mask(old_crtc_state);
 	}
 
 	/* Disable everything else left on */
@@ -7049,7 +7042,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 
 		intel_old_crtc_state_disables(state, crtc);
 
-		disable_pipes &= ~intel_crtc_joined_pipe_mask(old_crtc_state);
+		disable_pipes &= ~intel_dss_get_joined_pipe_mask(old_crtc_state);
 	}
 
 	drm_WARN_ON(&i915->drm, disable_pipes);
@@ -7176,7 +7169,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		    is_trans_port_sync_master(new_crtc_state))
 			continue;
 
-		modeset_pipes &= ~intel_crtc_joined_pipe_mask(new_crtc_state);
+		modeset_pipes &= ~intel_dss_get_joined_pipe_mask(new_crtc_state);
 
 		intel_enable_crtc(state, crtc);
 	}
@@ -7194,7 +7187,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if (intel_crtc_is_joiner_secondary(new_crtc_state))
 			continue;
 
-		modeset_pipes &= ~intel_crtc_joined_pipe_mask(new_crtc_state);
+		modeset_pipes &= ~intel_dss_get_joined_pipe_mask(new_crtc_state);
 
 		intel_enable_crtc(state, crtc);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b0cf6ca70952..b9316373dad3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -422,7 +422,6 @@ intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
-u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 45d2230d1801..59da0712b0eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -45,6 +45,7 @@
 #include "intel_dp_tunnel.h"
 #include "intel_dp_link_training.h"
 #include "intel_dpio_phy.h"
+#include "intel_dss.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
 #include "intel_link_bw.h"
@@ -1009,7 +1010,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 		    !intel_dp_mst_is_master_trans(old_crtc_state));
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+					 intel_dss_get_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1034,7 +1035,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+					 intel_dss_get_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1301,7 +1302,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	intel_enable_transcoder(pipe_config);
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(pipe_config)) {
+						 intel_dss_get_joined_pipe_mask(pipe_config)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index fadaf1f2674c..89a8c9205a3f 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -262,3 +262,10 @@ void intel_dss_get_uncompressed_joiner_pipes(struct intel_display *display,
 			*secondary_pipes |= BIT(pipe);
 	}
 }
+
+u8 intel_dss_get_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
index 16d2bbc3add8..cf2ee3f028bb 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.h
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -33,6 +33,7 @@ void intel_dss_get_uncompressed_joiner_pipes(struct intel_display *display,
 					     struct intel_crtc *crtc,
 					     u8 *primary_pipes,
 					     u8 *secondary_pipes);
+u8 intel_dss_get_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_DSS_H__ */
 
-- 
2.45.2

