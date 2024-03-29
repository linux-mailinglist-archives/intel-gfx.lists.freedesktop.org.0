Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1373D89103E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7AC10EE87;
	Fri, 29 Mar 2024 01:13:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I34zUFYT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED1B10EE87
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674830; x=1743210830;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ngi0qQ1BZ/D8gHbnVmrOMuDPNqvefEQ6MqZrGic4DEo=;
 b=I34zUFYTXqtSC8bg4x9pMjcZ9TP21aRFu8OaUfzV3nX6qayF5U4UW3Sa
 uT0Vvb4tK1T6/0aHW0WIB0ZeOtQcZxGdAUtx/Pbrnoctq3F5XZRzuuKTg
 Jaf1SyconKO1eG7C1TCgMeLXDLy4CkviN/evAgJelvMk2qjphw7dT+48b
 O4Eb3jVsNLcbpn7JQtSKCTGmzWhsULGh/A41NsX0aM/oW4k6JQrqW1FUI
 7u3+tQzFSJaYLE7dlyyQFUHDaK1G0efDpDgL2X8IMKuk1qkpQ321xf2YU
 GC2ipsq2TgFgKJOVz4XeriyXrtf+pxDL86HQsl+7Cggt2Y4lNVsPsurZk g==;
X-CSE-ConnectionGUID: lZFUKfSSRm2KA2uekUKw0Q==
X-CSE-MsgGUID: iOjlV7ruScerDKvHjKcbug==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756337"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756337"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786782"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786782"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 18/22] drm/i915: Handle joined pipes inside hsw_crtc_disable()
Date: Fri, 29 Mar 2024 03:12:50 +0200
Message-ID: <20240329011254.24160-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 64 ++++++++++++--------
 1 file changed, 39 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 58ee40786d5c..c15ea046c62a 100644
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
@@ -6784,21 +6783,31 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
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
@@ -6838,19 +6847,21 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
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
@@ -6858,9 +6869,12 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
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

