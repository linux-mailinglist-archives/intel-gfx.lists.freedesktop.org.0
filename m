Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C73479656B9
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31FE510E7EF;
	Fri, 30 Aug 2024 05:08:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bizcG1q9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F330C10E7EA;
 Fri, 30 Aug 2024 05:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994530; x=1756530530;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QeGVJ12XqKgKMP9+GBYyENSKdhBfzzBz+5WzoeEcbdk=;
 b=bizcG1q94hSNiGVAPOmhBKWrL4E6CI39xeTiBfNk2TKEE1LB8oWoi0ss
 HKg3lQHhN7AHmY/JN1Za0ERM7OKMSE/95sH26BMAMxf9RXzcefLUtyWpD
 RgANtwgvr6AjAKwhDNTU4fRBN7W77o43SQiCmgONf7c+72qLdjf0fMXIv
 wumMiLlqqYp4szDK4S14V3DFMw1hq+oz8BxT+yqoMRSuLPxijVOfznuKY
 PXC1gnbdxgSGsbrQHwTffgmhDhGNSqDcUtgPPTaPdhpM3PXv0IeuIYaPe
 ISB0OZaOXaZu5o46q5odzxFCJFuBG4PK9PqGKlmk3fepJtq+mlZ8L33lY g==;
X-CSE-ConnectionGUID: Ukpnz5bbRU6RRu23oMYbRQ==
X-CSE-MsgGUID: yJmq5X0tQQOAYzVRmr11sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421697"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421697"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:50 -0700
X-CSE-ConnectionGUID: EaG8zH4yQl+6SEb1rXQD+g==
X-CSE-MsgGUID: 4elZbMmQQju1+qE2g0Tm/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610296"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 16/19] drm/i915/display: Move intel_crtc_is_joiner_secondary
 to intel_joiner
Date: Fri, 30 Aug 2024 10:39:46 +0530
Message-ID: <20240830050950.2528450-17-ankit.k.nautiyal@intel.com>
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

Move the helper to check secondary joiner pipes to intel_joiner.

v2: Rebase.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  3 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 30 +++++++------------
 drivers/gpu/drm/i915/display/intel_display.h  |  1 -
 .../drm/i915/display/intel_display_debugfs.c  |  3 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |  5 ++--
 drivers/gpu/drm/i915/display/intel_dss.c      |  5 ++--
 drivers/gpu/drm/i915/display/intel_joiner.c   |  8 +++++
 drivers/gpu/drm/i915/display/intel_joiner.h   |  1 +
 .../drm/i915/display/intel_modeset_setup.c    |  9 +++---
 10 files changed, 36 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e979786aa5cf..478205b88502 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -49,6 +49,7 @@
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
+#include "intel_joiner.h"
 #include "skl_scaler.h"
 #include "skl_watermark.h"
 
@@ -722,7 +723,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (new_crtc_state && intel_crtc_is_joiner_secondary(new_crtc_state)) {
+	if (new_crtc_state && intel_joiner_crtc_is_joiner_secondary(new_crtc_state)) {
 		struct intel_crtc *primary_crtc =
 			intel_primary_crtc(new_crtc_state);
 		struct intel_plane *primary_crtc_plane =
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 606fa069c93c..269c97343c72 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -225,7 +225,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->sync_mode_slaves_mask);
 
 	drm_printf(&p, "joiner: %s, pipes: 0x%x\n",
-		   intel_crtc_is_joiner_secondary(pipe_config) ? "secondary" :
+		   intel_joiner_crtc_is_joiner_secondary(pipe_config) ? "secondary" :
 		   intel_joiner_crtc_is_joiner_primary(pipe_config) ? "primary" : "no",
 		   pipe_config->joiner_pipes);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4506cf9fa031..71d9f132e46c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -258,19 +258,11 @@ u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 		return 0;
 }
 
-bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-
-	return crtc_state->joiner_pipes &&
-		crtc->pipe != intel_joiner_get_primary_pipe(crtc_state);
-}
-
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (intel_crtc_is_joiner_secondary(crtc_state))
+	if (intel_joiner_crtc_is_joiner_secondary(crtc_state))
 		return intel_crtc_for_pipe(i915, intel_joiner_get_primary_pipe(crtc_state));
 	else
 		return to_intel_crtc(crtc_state->uapi.crtc);
@@ -4311,7 +4303,7 @@ intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	WARN_ON(intel_crtc_is_joiner_secondary(crtc_state));
+	WARN_ON(intel_joiner_crtc_is_joiner_secondary(crtc_state));
 
 	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
 				  crtc_state->uapi.degamma_lut);
@@ -4328,7 +4320,7 @@ intel_crtc_copy_uapi_to_hw_state_modeset(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	WARN_ON(intel_crtc_is_joiner_secondary(crtc_state));
+	WARN_ON(intel_joiner_crtc_is_joiner_secondary(crtc_state));
 
 	crtc_state->hw.enable = crtc_state->uapi.enable;
 	crtc_state->hw.active = crtc_state->uapi.active;
@@ -6181,14 +6173,14 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state)) {
-			if (intel_crtc_is_joiner_secondary(new_crtc_state))
+			if (intel_joiner_crtc_is_joiner_secondary(new_crtc_state))
 				copy_joiner_crtc_state_nomodeset(state, crtc);
 			else
 				intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
 			continue;
 		}
 
-		if (drm_WARN_ON(&i915->drm, intel_crtc_is_joiner_secondary(new_crtc_state)))
+		if (drm_WARN_ON(&i915->drm, intel_joiner_crtc_is_joiner_secondary(new_crtc_state)))
 			continue;
 
 		ret = intel_crtc_prepare_cleared_state(state, crtc);
@@ -6207,7 +6199,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		if (drm_WARN_ON(&i915->drm, intel_crtc_is_joiner_secondary(new_crtc_state)))
+		if (drm_WARN_ON(&i915->drm, intel_joiner_crtc_is_joiner_secondary(new_crtc_state)))
 			continue;
 
 		if (!new_crtc_state->hw.enable)
@@ -6318,7 +6310,7 @@ int intel_atomic_check(struct drm_device *dev,
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		if (intel_crtc_is_joiner_secondary(new_crtc_state)) {
+		if (intel_joiner_crtc_is_joiner_secondary(new_crtc_state)) {
 			drm_WARN_ON(&dev_priv->drm, new_crtc_state->uapi.enable);
 			continue;
 		}
@@ -6787,7 +6779,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_joiner_secondary(old_crtc_state))
+		if (intel_joiner_crtc_is_joiner_secondary(old_crtc_state))
 			continue;
 
 		/* In case of Transcoder port Sync master slave CRTCs can be
@@ -6809,7 +6801,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_joiner_secondary(old_crtc_state))
+		if (intel_joiner_crtc_is_joiner_secondary(old_crtc_state))
 			continue;
 
 		intel_old_crtc_state_disables(state, crtc);
@@ -6934,7 +6926,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_joiner_secondary(new_crtc_state))
+		if (intel_joiner_crtc_is_joiner_secondary(new_crtc_state))
 			continue;
 
 		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
@@ -6956,7 +6948,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
-		if (intel_crtc_is_joiner_secondary(new_crtc_state))
+		if (intel_joiner_crtc_is_joiner_secondary(new_crtc_state))
 			continue;
 
 		modeset_pipes &= ~intel_joiner_crtc_joined_pipe_mask(new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 6ef756a8781e..5528e9c9568f 100644
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
index 74f527647aa9..2f862876f269 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -32,6 +32,7 @@
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_joiner.h"
 #include "intel_panel.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
@@ -581,7 +582,7 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 	if (crtc_state->joiner_pipes)
 		seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
 			   crtc_state->joiner_pipes,
-			   intel_crtc_is_joiner_secondary(crtc_state) ? "slave" : "master");
+			   intel_joiner_crtc_is_joiner_secondary(crtc_state) ? "slave" : "master");
 
 	intel_vdsc_state_dump(&p, 1, crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 3ca29afa5422..b80014b66ff4 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -10,6 +10,7 @@
 #include "intel_display_types.h"
 #include "intel_drrs.h"
 #include "intel_frontbuffer.h"
+#include "intel_joiner.h"
 #include "intel_panel.h"
 
 /**
@@ -157,7 +158,7 @@ void intel_drrs_activate(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->hw.active)
 		return;
 
-	if (intel_crtc_is_joiner_secondary(crtc_state))
+	if (intel_joiner_crtc_is_joiner_secondary(crtc_state))
 		return;
 
 	mutex_lock(&crtc->drrs.mutex);
@@ -189,7 +190,7 @@ void intel_drrs_deactivate(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->hw.active)
 		return;
 
-	if (intel_crtc_is_joiner_secondary(old_crtc_state))
+	if (intel_joiner_crtc_is_joiner_secondary(old_crtc_state))
 		return;
 
 	mutex_lock(&crtc->drrs.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index 01303feadcef..6029e9a16655 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -11,6 +11,7 @@
 #include "intel_dsi.h"
 #include "intel_dss.h"
 #include "intel_dss_regs.h"
+#include "intel_joiner.h"
 #include "intel_vdsc.h"
 
 /*
@@ -168,7 +169,7 @@ void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_st
 	u32 dss_ctl1_val = 0;
 
 	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
-		if (intel_crtc_is_joiner_secondary(crtc_state))
+		if (intel_joiner_crtc_is_joiner_secondary(crtc_state))
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
 		else
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
@@ -194,7 +195,7 @@ void intel_dss_enable_compressed_joiner(const struct intel_crtc_state *crtc_stat
 	}
 	if (crtc_state->joiner_pipes) {
 		dss_ctl1_val |= BIG_JOINER_ENABLE;
-		if (!intel_crtc_is_joiner_secondary(crtc_state))
+		if (!intel_joiner_crtc_is_joiner_secondary(crtc_state))
 			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
 	intel_de_write(display, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.c b/drivers/gpu/drm/i915/display/intel_joiner.c
index d36df20f811f..f7acd2de8ffb 100644
--- a/drivers/gpu/drm/i915/display/intel_joiner.c
+++ b/drivers/gpu/drm/i915/display/intel_joiner.c
@@ -246,3 +246,11 @@ bool intel_joiner_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_sta
 	return crtc_state->joiner_pipes &&
 		crtc->pipe == intel_joiner_get_primary_pipe(crtc_state);
 }
+
+bool intel_joiner_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return crtc_state->joiner_pipes &&
+		crtc->pipe != intel_joiner_get_primary_pipe(crtc_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.h b/drivers/gpu/drm/i915/display/intel_joiner.h
index 4f19d623558a..b3266ebf8922 100644
--- a/drivers/gpu/drm/i915/display/intel_joiner.h
+++ b/drivers/gpu/drm/i915/display/intel_joiner.h
@@ -30,5 +30,6 @@ int intel_joiner_add_affected_planes(struct intel_atomic_state *state);
 int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state);
 u8 intel_joiner_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
 bool intel_joiner_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
+bool intel_joiner_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
 
 #endif/* __INTEL_JOINER_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 72694dde3c22..466770f8b564 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -25,6 +25,7 @@
 #include "intel_dmc.h"
 #include "intel_fifo_underrun.h"
 #include "intel_modeset_setup.h"
+#include "intel_joiner.h"
 #include "intel_pch_display.h"
 #include "intel_pmdemand.h"
 #include "intel_tc.h"
@@ -204,7 +205,7 @@ static u8 get_transcoder_pipes(struct drm_i915_private *i915,
 		if (temp_crtc_state->cpu_transcoder == INVALID_TRANSCODER)
 			continue;
 
-		if (intel_crtc_is_joiner_secondary(temp_crtc_state))
+		if (intel_joiner_crtc_is_joiner_secondary(temp_crtc_state))
 			continue;
 
 		if (transcoder_mask & BIT(temp_crtc_state->cpu_transcoder))
@@ -328,7 +329,7 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (intel_crtc_is_joiner_secondary(crtc_state))
+	if (intel_joiner_crtc_is_joiner_secondary(crtc_state))
 		return;
 
 	crtc_state->uapi.enable = crtc_state->hw.enable;
@@ -495,7 +496,7 @@ static bool intel_sanitize_crtc(struct intel_crtc *crtc,
 	}
 
 	if (!crtc_state->hw.active ||
-	    intel_crtc_is_joiner_secondary(crtc_state))
+	    intel_joiner_crtc_is_joiner_secondary(crtc_state))
 		return false;
 
 	needs_link_reset = intel_crtc_needs_link_reset(crtc);
@@ -754,7 +755,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 				struct intel_crtc *secondary_crtc;
 
 				/* encoder should read be linked to joiner primary */
-				WARN_ON(intel_crtc_is_joiner_secondary(crtc_state));
+				WARN_ON(intel_joiner_crtc_is_joiner_secondary(crtc_state));
 
 				for_each_intel_crtc_in_pipe_mask(&i915->drm, secondary_crtc,
 								 intel_crtc_joiner_secondary_pipes(crtc_state)) {
-- 
2.45.2

