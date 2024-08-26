Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 634A295EF8E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 13:14:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B7A10E1DA;
	Mon, 26 Aug 2024 11:14:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UP+cFRj7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D5210E1DA;
 Mon, 26 Aug 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724670862; x=1756206862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uu4BhlmCIHAubv+maBusKd8Yg/+2AnfCm+gK53Nsp8c=;
 b=UP+cFRj77pohvT41GZRAreyCJ6JYMSvgBQ2+oBmakYm7Qo0eUq7MQoPT
 aRPEJi33E3tl+Vviw/jOQ3P6f3vBWSRsirkG5usqeuRZsYKW6bGGY6WPw
 ctMAwJtw3C1fYNMgqwKLiFxn06A5Ys62HlmWlBa/GpIOkP6bkstV71C2O
 XFy/COloUGRAq0ls30g2rMwlFoxsZVNXkclAqHH7LyQELbDy2OA6SDSuU
 5AsobgXDpknMIT+rzYKwJWR8IyHSM//l1ek+tqV4+Z8CAERifihExh3Z4
 jxQVhu5JlYbvQTL9cWZ2ygLinO6Tv4UB/Gx6aCxw3ZHd7rqQrt3iITmBD g==;
X-CSE-ConnectionGUID: qEJkIzrEScGsl3szGflylA==
X-CSE-MsgGUID: EwDZEqnKT+SnzkhC9Pf78g==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="23213585"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23213585"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:22 -0700
X-CSE-ConnectionGUID: VPLW8VP8QSKby1Nr9AOCRA==
X-CSE-MsgGUID: rw2ttk+jQdmVZ370pan3Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67291430"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:14:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 10/12] drm/i915/display: Move helper to check for secondary
 joiner pipe
Date: Mon, 26 Aug 2024 16:45:24 +0530
Message-ID: <20240826111527.1113622-11-ankit.k.nautiyal@intel.com>
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

Move the helper to check secondary joiner pipes to intel_dss.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  3 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 30 +++++++------------
 drivers/gpu/drm/i915/display/intel_display.h  |  1 -
 .../drm/i915/display/intel_display_debugfs.c  |  3 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |  5 ++--
 drivers/gpu/drm/i915/display/intel_dss.c      | 12 ++++++--
 drivers/gpu/drm/i915/display/intel_dss.h      |  1 +
 .../drm/i915/display/intel_modeset_setup.c    |  9 +++---
 9 files changed, 35 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e979786aa5cf..eb9075e4ea3f 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -47,6 +47,7 @@
 #include "intel_display_rps.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
+#include "intel_dss.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "skl_scaler.h"
@@ -722,7 +723,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (new_crtc_state && intel_crtc_is_joiner_secondary(new_crtc_state)) {
+	if (new_crtc_state && intel_dss_is_secondary_joiner_pipe(new_crtc_state)) {
 		struct intel_crtc *primary_crtc =
 			intel_primary_crtc(new_crtc_state);
 		struct intel_plane *primary_crtc_plane =
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index f2764f283f9b..cc1532ec6afc 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -225,7 +225,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->sync_mode_slaves_mask);
 
 	drm_printf(&p, "joiner: %s, pipes: 0x%x\n",
-		   intel_crtc_is_joiner_secondary(pipe_config) ? "secondary" :
+		   intel_dss_is_secondary_joiner_pipe(pipe_config) ? "secondary" :
 		   intel_dss_is_primary_joiner_pipe(pipe_config) ? "primary" : "no",
 		   pipe_config->joiner_pipes);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a7b136689695..151cd6ad47f1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -257,14 +257,6 @@ u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 		return 0;
 }
 
-bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-
-	return crtc_state->joiner_pipes &&
-		crtc->pipe != intel_dss_get_primary_joiner_pipe(crtc_state);
-}
-
 static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
 {
 	return hweight8(crtc_state->joiner_pipes);
@@ -274,7 +266,7 @@ struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (intel_crtc_is_joiner_secondary(crtc_state))
+	if (intel_dss_is_secondary_joiner_pipe(crtc_state))
 		return intel_crtc_for_pipe(i915, intel_dss_get_primary_joiner_pipe(crtc_state));
 	else
 		return to_intel_crtc(crtc_state->uapi.crtc);
@@ -4453,7 +4445,7 @@ intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	WARN_ON(intel_crtc_is_joiner_secondary(crtc_state));
+	WARN_ON(intel_dss_is_secondary_joiner_pipe(crtc_state));
 
 	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
 				  crtc_state->uapi.degamma_lut);
@@ -4470,7 +4462,7 @@ intel_crtc_copy_uapi_to_hw_state_modeset(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	WARN_ON(intel_crtc_is_joiner_secondary(crtc_state));
+	WARN_ON(intel_dss_is_secondary_joiner_pipe(crtc_state));
 
 	crtc_state->hw.enable = crtc_state->uapi.enable;
 	crtc_state->hw.active = crtc_state->uapi.active;
@@ -6396,14 +6388,14 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state)) {
-			if (intel_crtc_is_joiner_secondary(new_crtc_state))
+			if (intel_dss_is_secondary_joiner_pipe(new_crtc_state))
 				copy_joiner_crtc_state_nomodeset(state, crtc);
 			else
 				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
 			continue;
 		}
 
-		if (drm_WARN_ON(&i915->drm, intel_crtc_is_joiner_secondary(new_crtc_state)))
+		if (drm_WARN_ON(&i915->drm, intel_dss_is_secondary_joiner_pipe(new_crtc_state)))
 			continue;
 
 		ret = intel_crtc_prepare_cleared_state(state, crtc);
@@ -6422,7 +6414,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		if (drm_WARN_ON(&i915->drm, intel_crtc_is_joiner_secondary(new_crtc_state)))
+		if (drm_WARN_ON(&i915->drm, intel_dss_is_secondary_joiner_pipe(new_crtc_state)))
 			continue;
 
 		if (!new_crtc_state->hw.enable)
@@ -6533,7 +6525,7 @@ int intel_atomic_check(struct drm_device *dev,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		if (intel_crtc_is_joiner_secondary(new_crtc_state)) {
+		if (intel_dss_is_secondary_joiner_pipe(new_crtc_state)) {
 			drm_WARN_ON(&dev_priv->drm, new_crtc_state->uapi.enable);
 			continue;
 		}
@@ -7002,7 +6994,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_joiner_secondary(old_crtc_state))
+		if (intel_dss_is_secondary_joiner_pipe(old_crtc_state))
 			continue;
 
 		/* In case of Transcoder port Sync master slave CRTCs can be
@@ -7024,7 +7016,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_joiner_secondary(old_crtc_state))
+		if (intel_dss_is_secondary_joiner_pipe(old_crtc_state))
 			continue;
 
 		intel_old_crtc_state_disables(state, crtc);
@@ -7149,7 +7141,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_joiner_secondary(new_crtc_state))
+		if (intel_dss_is_secondary_joiner_pipe(new_crtc_state))
 			continue;
 
 		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
@@ -7171,7 +7163,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_joiner_secondary(new_crtc_state))
+		if (intel_dss_is_secondary_joiner_pipe(new_crtc_state))
 			continue;
 
 		modeset_pipes &= ~intel_dss_get_joined_pipe_mask(new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 0135c959632d..7bb44cec2015 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -422,7 +422,6 @@ intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
-bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 0cf0b4223513..ba4d9d23a887 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -27,6 +27,7 @@
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_drrs.h"
+#include "intel_dss.h"
 #include "intel_fbc.h"
 #include "intel_fbdev.h"
 #include "intel_hdcp.h"
@@ -581,7 +582,7 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 	if (crtc_state->joiner_pipes)
 		seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
 			   crtc_state->joiner_pipes,
-			   intel_crtc_is_joiner_secondary(crtc_state) ? "slave" : "master");
+			   intel_dss_is_secondary_joiner_pipe(crtc_state) ? "slave" : "master");
 
 	intel_vdsc_state_dump(&p, 1, crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 3ca29afa5422..2b566c07d6fa 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -9,6 +9,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_drrs.h"
+#include "intel_dss.h"
 #include "intel_frontbuffer.h"
 #include "intel_panel.h"
 
@@ -157,7 +158,7 @@ void intel_drrs_activate(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->hw.active)
 		return;
 
-	if (intel_crtc_is_joiner_secondary(crtc_state))
+	if (intel_dss_is_secondary_joiner_pipe(crtc_state))
 		return;
 
 	mutex_lock(&crtc->drrs.mutex);
@@ -189,7 +190,7 @@ void intel_drrs_deactivate(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->hw.active)
 		return;
 
-	if (intel_crtc_is_joiner_secondary(old_crtc_state))
+	if (intel_dss_is_secondary_joiner_pipe(old_crtc_state))
 		return;
 
 	mutex_lock(&crtc->drrs.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index 1a8bfd8e9247..3f53963ccb6e 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -167,7 +167,7 @@ void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_st
 	u32 dss_ctl1_val = 0;
 
 	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
-		if (intel_crtc_is_joiner_secondary(crtc_state))
+		if (intel_dss_is_secondary_joiner_pipe(crtc_state))
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
 		else
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
@@ -191,7 +191,7 @@ void intel_dss_enable_compressed_joiner(const struct intel_crtc_state *crtc_stat
 	}
 	if (crtc_state->joiner_pipes) {
 		dss_ctl1_val |= BIG_JOINER_ENABLE;
-		if (!intel_crtc_is_joiner_secondary(crtc_state))
+		if (!intel_dss_is_secondary_joiner_pipe(crtc_state))
 			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
 	intel_de_write(display, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
@@ -282,3 +282,11 @@ bool intel_dss_is_primary_joiner_pipe(const struct intel_crtc_state *crtc_state)
 	return crtc_state->joiner_pipes &&
 		crtc->pipe == intel_dss_get_primary_joiner_pipe(crtc_state);
 }
+
+bool intel_dss_is_secondary_joiner_pipe(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return crtc_state->joiner_pipes &&
+		crtc->pipe != intel_dss_get_primary_joiner_pipe(crtc_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
index e627582f6883..345e6544db05 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.h
+++ b/drivers/gpu/drm/i915/display/intel_dss.h
@@ -38,6 +38,7 @@ void intel_dss_get_uncompressed_joiner_pipes(struct intel_display *display,
 u8 intel_dss_get_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
 enum pipe intel_dss_get_primary_joiner_pipe(const struct intel_crtc_state *crtc_state);
 bool intel_dss_is_primary_joiner_pipe(const struct intel_crtc_state *crtc_state);
+bool intel_dss_is_secondary_joiner_pipe(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_DSS_H__ */
 
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 6f85f5352455..bf9a7ae5baa0 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -23,6 +23,7 @@
 #include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
+#include "intel_dss.h"
 #include "intel_fifo_underrun.h"
 #include "intel_modeset_setup.h"
 #include "intel_pch_display.h"
@@ -204,7 +205,7 @@ static u8 get_transcoder_pipes(struct drm_i915_private *i915,
 		if (temp_crtc_state->cpu_transcoder == INVALID_TRANSCODER)
 			continue;
 
-		if (intel_crtc_is_joiner_secondary(temp_crtc_state))
+		if (intel_dss_is_secondary_joiner_pipe(temp_crtc_state))
 			continue;
 
 		if (transcoder_mask & BIT(temp_crtc_state->cpu_transcoder))
@@ -326,7 +327,7 @@ static void intel_modeset_update_connector_atomic_state(struct drm_i915_private
 
 static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state)
 {
-	if (intel_crtc_is_joiner_secondary(crtc_state))
+	if (intel_dss_is_secondary_joiner_pipe(crtc_state))
 		return;
 
 	crtc_state->uapi.enable = crtc_state->hw.enable;
@@ -474,7 +475,7 @@ static bool intel_sanitize_crtc(struct intel_crtc *crtc,
 	}
 
 	if (!crtc_state->hw.active ||
-	    intel_crtc_is_joiner_secondary(crtc_state))
+	    intel_dss_is_secondary_joiner_pipe(crtc_state))
 		return false;
 
 	needs_link_reset = intel_crtc_needs_link_reset(crtc);
@@ -733,7 +734,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 				struct intel_crtc *secondary_crtc;
 
 				/* encoder should read be linked to joiner primary */
-				WARN_ON(intel_crtc_is_joiner_secondary(crtc_state));
+				WARN_ON(intel_dss_is_secondary_joiner_pipe(crtc_state));
 
 				for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
 								 intel_crtc_joiner_secondary_pipes(crtc_state)) {
-- 
2.45.2

