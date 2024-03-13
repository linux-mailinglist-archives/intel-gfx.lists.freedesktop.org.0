Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E649587A55E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 11:00:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11BD010F1CB;
	Wed, 13 Mar 2024 10:00:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i+NuX4Mo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 775FB10F4BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 10:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710324009; x=1741860009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2IcMcb9wQg6QD5YVUqZVb62gRQ68wi1aFJNomWNUJPU=;
 b=i+NuX4Mogo0P9VJovOG2l9AJ86BBQupKHtfVPa1nCTnTSgBHo1vALdSK
 eqF4mT2E51SozMq/PN3G59R31xcRNxmOULSY9xsMXViv1fQYFOV6Oqtdq
 bN94VUrxpdKI1YWzIeLVMWyPrHSCgzFIkisdiJZNTPU/RxAaJn9dzwMss
 yiSrUB6wTT7CUGS2JtxTwNUKPCcEksRQqg/Q/FMU6HVTr1QCIowZzvRzS
 nuh8YmchszCD4q7qVgFZe3OR5yVzJr/v54k45NdttnfkkoYKel42FmoSp
 JKVWbIDQ87+bN00vakQY2m5cwXNFNArLJFblnD9EEGGUXvVSqNwBvby3r g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8885994"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="8885994"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 02:59:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11931515"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa006.fm.intel.com with ESMTP; 13 Mar 2024 02:59:57 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 4/6] drm/i915: Handle joined pipes inside hsw_crtc_disable()
Date: Wed, 13 Mar 2024 11:59:47 +0200
Message-Id: <20240313095949.6898-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240313095949.6898-1-stanislav.lisovskiy@intel.com>
References: <20240313095949.6898-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Reorganize the crtc disable path to only deal with the
master pipes/transcoders in intel_old_crtc_state_disables()
and offload the handling of joined pipes to hsw_crtc_disable().
This makes the whole thing much more sensible since we can
actually control the order in which we do the per-pipe vs.
per-transcoder modeset steps.

v2: Fixed rebase conflict(intel_crtc_state_disables signature had changed)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 62 +++++++++++---------
 1 file changed, 35 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 021db26a630af..3120fc80f0a67 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1793,29 +1793,23 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	u8 pipe_mask = intel_crtc_joined_pipe_mask(old_crtc_state);
+	struct intel_crtc *pipe_mask_crtc;
 
-	/*
-	 * FIXME collapse everything to one hook.
-	 * Need care with mst->ddi interactions.
-	 */
-	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
-		intel_encoders_disable(state, crtc);
-		intel_encoders_post_disable(state, crtc);
-	}
-
-	intel_disable_shared_dpll(old_crtc_state);
+	intel_encoders_disable(state, crtc);
+	intel_encoders_post_disable(state, crtc);
 
-	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
-		struct intel_crtc *slave_crtc;
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_mask_crtc, pipe_mask) {
+		const struct intel_crtc_state *pipe_mask_crtc_state =
+			intel_atomic_get_old_crtc_state(state, pipe_mask_crtc);
 
-		intel_encoders_post_pll_disable(state, crtc);
+		intel_disable_shared_dpll(pipe_mask_crtc_state);
+	}
 
-		intel_dmc_disable_pipe(i915, crtc->pipe);
+	intel_encoders_post_pll_disable(state, crtc);
 
-		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-						 intel_crtc_bigjoiner_slave_pipes(old_crtc_state))
-			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
-	}
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_mask_crtc, pipe_mask)
+		intel_dmc_disable_pipe(i915, pipe_mask_crtc->pipe);
 }
 
 static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
@@ -6758,19 +6752,28 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	u8 pipe_mask = intel_crtc_joined_pipe_mask(new_crtc_state);
+	struct intel_crtc *pipe_mask_crtc;
 
 	/*
 	 * We need to disable pipe CRC before disabling the pipe,
 	 * or we race against vblank off.
 	 */
-	intel_crtc_disable_pipe_crc(crtc);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_mask_crtc, pipe_mask)
+		intel_crtc_disable_pipe_crc(pipe_mask_crtc);
 
 	dev_priv->display.funcs.display->crtc_disable(state, crtc);
-	crtc->active = false;
-	intel_fbc_disable(crtc);
 
-	if (!new_crtc_state->hw.active)
-		intel_initial_watermarks(state, crtc);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_mask_crtc, pipe_mask) {
+		const struct intel_crtc_state *pipe_mask_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_mask_crtc);
+
+		pipe_mask_crtc->active = false;
+		intel_fbc_disable(pipe_mask_crtc);
+
+		if (!pipe_mask_crtc_state->hw.active)
+			intel_initial_watermarks(state, pipe_mask_crtc);
+	}
 }
 
 static void intel_commit_modeset_disables(struct intel_atomic_state *state)
@@ -6810,19 +6813,21 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
+		if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
+			continue;
+
 		/* In case of Transcoder port Sync master slave CRTCs can be
 		 * assigned in any order and we need to make sure that
 		 * slave CRTCs are disabled first and then master CRTC since
 		 * Slave vblanks are masked till Master Vblanks.
 		 */
 		if (!is_trans_port_sync_slave(old_crtc_state) &&
-		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
-		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
+		    !intel_dp_mst_is_slave_trans(old_crtc_state))
 			continue;
 
 		intel_old_crtc_state_disables(state, crtc);
 
-		disable_pipes &= ~BIT(crtc->pipe);
+		disable_pipes &= ~intel_crtc_joined_pipe_mask(old_crtc_state);
 	}
 
 	/* Disable everything else left on */
@@ -6830,9 +6835,12 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
+                if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
+                        continue;
+
 		intel_old_crtc_state_disables(state, crtc);
 
-		disable_pipes &= ~BIT(crtc->pipe);
+		disable_pipes &= ~intel_crtc_joined_pipe_mask(old_crtc_state);
 	}
 
 	drm_WARN_ON(&i915->drm, disable_pipes);
-- 
2.37.3

