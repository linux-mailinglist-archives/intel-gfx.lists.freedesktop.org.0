Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C46579656BD
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:09:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D899D10E7E9;
	Fri, 30 Aug 2024 05:08:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gQ+nqFkc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08FEC10E7E1;
 Fri, 30 Aug 2024 05:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994526; x=1756530526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8t50vVmai0c9uo2vDJ85pIABtdUV63WlZ1f5xdJTY+g=;
 b=gQ+nqFkcRakyWkAGGnGSb74gMD0aizJMXDAtiZFfFO1h6KlcyuuUn5O9
 zozZVKuJuHsAlmUESgXiXwdehYQAeT15jjVrabuy9GzTq6yjiIuzzrZYN
 aZNAw4vwLSlSF2IHbGGymyBxf9eLsawop54tiQqJr18VGl4u+QBjcW2eZ
 IDjRqhrQTrTYlD18VeQ64aouOF7gE3mTMk3/OeSIy1a3H3eQ9x11RG3Bg
 4HWn5oodeyvRkkG5mu+PqOBwrx3d5pXDv4ieiDSnYj6AG0tXResAgZXVb
 2eQk50qw3rL1yJ1g9WnTd3FK6muXdxF0Sh5k3L/HVUEqKzqoZ5zQUuI60 g==;
X-CSE-ConnectionGUID: ft+9IHmgRlKONwaGFSnOlw==
X-CSE-MsgGUID: F2cbOwe9QYmdq/e8UQ3sEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421691"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421691"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:46 -0700
X-CSE-ConnectionGUID: Jge0VAdFSyyx5CD4e38QXA==
X-CSE-MsgGUID: oReoDD3iTkye32+Zdm+nBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610286"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 14/19] drm/i915/display: Move intel_crtc_joined_pipe_mask to
 intel_joiner
Date: Fri, 30 Aug 2024 10:39:44 +0530
Message-ID: <20240830050950.2528450-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
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

Move the helper to get joined pipe mask to intel_joiner.c

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  9 ++---
 drivers/gpu/drm/i915/display/intel_display.c | 35 ++++++++------------
 drivers/gpu/drm/i915/display/intel_display.h |  1 -
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  7 ++--
 drivers/gpu/drm/i915/display/intel_joiner.c  |  7 ++++
 drivers/gpu/drm/i915/display/intel_joiner.h  |  1 +
 6 files changed, 31 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index aa176f4d42c4..87dbb7733eda 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -66,6 +66,7 @@
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
 #include "intel_hti.h"
+#include "intel_joiner.h"
 #include "intel_lspcon.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_modeset_lock.h"
@@ -3043,7 +3044,7 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 	struct intel_crtc *pipe_crtc;
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+					 intel_joiner_crtc_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3055,7 +3056,7 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+					 intel_joiner_crtc_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -3319,7 +3320,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(crtc_state)) {
+						 intel_joiner_crtc_joined_pipe_mask(crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -3429,7 +3430,7 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 		return;
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(crtc_state))
+					 intel_joiner_crtc_joined_pipe_mask(crtc_state))
 		intel_update_active_dpll(state, pipe_crtc, encoder);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9af3ea6c7642..97f01a02efe3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -274,13 +274,6 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
 		crtc->pipe == intel_joiner_get_primary_pipe(crtc_state);
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
@@ -1679,13 +1672,13 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		return;
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state))
+						 intel_joiner_crtc_joined_pipe_mask(new_crtc_state))
 		intel_dmc_enable_pipe(dev_priv, pipe_crtc->pipe);
 
 	intel_encoders_pre_pll_enable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+						 intel_joiner_crtc_joined_pipe_mask(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1696,7 +1689,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_pre_enable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+						 intel_joiner_crtc_joined_pipe_mask(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1715,7 +1708,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+						 intel_joiner_crtc_joined_pipe_mask(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -1751,7 +1744,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_enable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+						 intel_joiner_crtc_joined_pipe_mask(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 		enum pipe hsw_workaround_pipe;
@@ -1846,7 +1839,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_post_disable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+					 intel_joiner_crtc_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1856,7 +1849,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_post_pll_disable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state))
+					 intel_joiner_crtc_joined_pipe_mask(old_crtc_state))
 		intel_dmc_disable_pipe(i915, pipe_crtc->pipe);
 }
 
@@ -6632,7 +6625,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 		return;
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
+						 intel_joiner_crtc_joined_pipe_mask(new_crtc_state)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -6745,13 +6738,13 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	 * or we race against vblank off.
 	 */
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state))
+					 intel_joiner_crtc_joined_pipe_mask(old_crtc_state))
 		intel_crtc_disable_pipe_crc(pipe_crtc);
 
 	dev_priv->display.funcs.display->crtc_disable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+					 intel_joiner_crtc_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *new_pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
@@ -6816,7 +6809,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 
 		intel_old_crtc_state_disables(state, crtc);
 
-		disable_pipes &= ~intel_crtc_joined_pipe_mask(old_crtc_state);
+		disable_pipes &= ~intel_joiner_crtc_joined_pipe_mask(old_crtc_state);
 	}
 
 	/* Disable everything else left on */
@@ -6829,7 +6822,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 
 		intel_old_crtc_state_disables(state, crtc);
 
-		disable_pipes &= ~intel_crtc_joined_pipe_mask(old_crtc_state);
+		disable_pipes &= ~intel_joiner_crtc_joined_pipe_mask(old_crtc_state);
 	}
 
 	drm_WARN_ON(&i915->drm, disable_pipes);
@@ -6956,7 +6949,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		    is_trans_port_sync_master(new_crtc_state))
 			continue;
 
-		modeset_pipes &= ~intel_crtc_joined_pipe_mask(new_crtc_state);
+		modeset_pipes &= ~intel_joiner_crtc_joined_pipe_mask(new_crtc_state);
 
 		intel_enable_crtc(state, crtc);
 	}
@@ -6974,7 +6967,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if (intel_crtc_is_joiner_secondary(new_crtc_state))
 			continue;
 
-		modeset_pipes &= ~intel_crtc_joined_pipe_mask(new_crtc_state);
+		modeset_pipes &= ~intel_joiner_crtc_joined_pipe_mask(new_crtc_state);
 
 		intel_enable_crtc(state, crtc);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 6bf423e36bc9..72643f278c2e 100644
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
index 15541932b809..0fc76455de1f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -47,6 +47,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
+#include "intel_joiner.h"
 #include "intel_link_bw.h"
 #include "intel_psr.h"
 #include "intel_vdsc.h"
@@ -1009,7 +1010,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 		    !intel_dp_mst_is_master_trans(old_crtc_state));
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+					 intel_joiner_crtc_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1034,7 +1035,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
-					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+					 intel_joiner_crtc_joined_pipe_mask(old_crtc_state)) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
@@ -1301,7 +1302,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	intel_enable_transcoder(pipe_config);
 
 	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
-						 intel_crtc_joined_pipe_mask(pipe_config)) {
+						 intel_joiner_crtc_joined_pipe_mask(pipe_config)) {
 		const struct intel_crtc_state *pipe_crtc_state =
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.c b/drivers/gpu/drm/i915/display/intel_joiner.c
index b24dfdbc9840..e6dfed812564 100644
--- a/drivers/gpu/drm/i915/display/intel_joiner.c
+++ b/drivers/gpu/drm/i915/display/intel_joiner.c
@@ -231,3 +231,10 @@ int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 
 	return 0;
 }
+
+u8 intel_joiner_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.h b/drivers/gpu/drm/i915/display/intel_joiner.h
index 3417274de4a2..f8c0cd27536c 100644
--- a/drivers/gpu/drm/i915/display/intel_joiner.h
+++ b/drivers/gpu/drm/i915/display/intel_joiner.h
@@ -28,5 +28,6 @@ u8 intel_joiner_find_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 second
 void intel_joiner_get_config(struct intel_crtc_state *crtc_state);
 int intel_joiner_add_affected_planes(struct intel_atomic_state *state);
 int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state);
+u8 intel_joiner_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
 
 #endif/* __INTEL_JOINER_H__ */
-- 
2.45.2

