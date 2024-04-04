Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C34BC899083
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03DD6113582;
	Thu,  4 Apr 2024 21:35:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ond+qv/D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E5FD11357B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266534; x=1743802534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qEU5D4DnNg3sREaZGqHEef2NeopmuQY0yjZb5lpfaF8=;
 b=Ond+qv/DIP4HMB8KC67UoeZ5AkOMFFyp17B293i8NpS6vno69krux4WW
 XlwYIDlfybCvqUujr1vrQU4qnPJRqZUbTPurcKo7HZcKyiuCNPq/wsM3x
 JUQGyN3ytaHhnI8/ppGG7IXNrKSRDz38ZbJIno4tBdrEEehvvNFvQLFrD
 DprhPsI1jLMaEs9FWfipYfRxMAq6L33/L7j6ijor2/s/k/AHOSosgfIUp
 9k0DlW73yGjXtSP3TU8Fv/ILB8D7RcvlcVRQRuYKVp6KX0O6rIlQtAF7B
 bEF66TfWJ9JciN7ah/IGLpcjX8e//BGhJWntt6ovBX46S2hSXlA7A7/QY w==;
X-CSE-ConnectionGUID: 4x3V3pUlQEmufOx1Y2Bozg==
X-CSE-MsgGUID: fgUA5ZWsQ/2YNdO3aoJZtg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710844"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710844"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:35:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790639"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790639"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:35:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:35:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v2 14/17] drm/i915: Handle joined pipes inside
 hsw_crtc_disable()
Date: Fri,  5 Apr 2024 00:34:38 +0300
Message-ID: <20240404213441.17637-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reorganize the crtc disable path to only deal with the
master pipes/transcoders in intel_old_crtc_state_disables()
and offload the handling of joined pipes to hsw_crtc_disable().
This makes the whole thing much more sensible since we can
actually control the order in which we do the per-pipe vs.
per-transcoder modeset steps.

v2: Use the name 'pipe_crtc' for the per-pipe crtc pointer

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 64 ++++++++++++--------
 1 file changed, 39 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9f5ff11d74b8..7bd7b059ac7d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1791,29 +1791,28 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_crtc *pipe_crtc;
 
 	/*
 	 * FIXME collapse everything to one hook.
 	 * Need care with mst->ddi interactions.
 	 */
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
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+		const struct intel_crtc_state *old_pipe_crtc_state =
+			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
-		intel_encoders_post_pll_disable(state, crtc);
+		intel_disable_shared_dpll(old_pipe_crtc_state);
+	}
 
-		intel_dmc_disable_pipe(i915, crtc->pipe);
+	intel_encoders_post_pll_disable(state, crtc);
 
-		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-						 intel_crtc_bigjoiner_slave_pipes(old_crtc_state))
-			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
-	}
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(old_crtc_state))
+		intel_dmc_disable_pipe(i915, pipe_crtc->pipe);
 }
 
 static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
@@ -6832,21 +6831,31 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 					  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	struct intel_crtc *pipe_crtc;
 
 	/*
 	 * We need to disable pipe CRC before disabling the pipe,
 	 * or we race against vblank off.
 	 */
-	intel_crtc_disable_pipe_crc(crtc);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(old_crtc_state))
+		intel_crtc_disable_pipe_crc(pipe_crtc);
 
 	dev_priv->display.funcs.display->crtc_disable(state, crtc);
-	crtc->active = false;
-	intel_fbc_disable(crtc);
 
-	if (!new_crtc_state->hw.active)
-		intel_initial_watermarks(state, crtc);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+		const struct intel_crtc_state *new_pipe_crtc_state =
+			intel_atomic_get_new_crtc_state(state, pipe_crtc);
+
+		pipe_crtc->active = false;
+		intel_fbc_disable(pipe_crtc);
+
+		if (!new_pipe_crtc_state->hw.active)
+			intel_initial_watermarks(state, pipe_crtc);
+	}
 }
 
 static void intel_commit_modeset_disables(struct intel_atomic_state *state)
@@ -6886,19 +6895,21 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
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
@@ -6906,9 +6917,12 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
+		if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
+			continue;
+
 		intel_old_crtc_state_disables(state, crtc);
 
-		disable_pipes &= ~BIT(crtc->pipe);
+		disable_pipes &= ~intel_crtc_joined_pipe_mask(old_crtc_state);
 	}
 
 	drm_WARN_ON(&i915->drm, disable_pipes);
-- 
2.43.2

