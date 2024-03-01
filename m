Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B9986E71A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 18:23:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0BDC10E135;
	Fri,  1 Mar 2024 17:23:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dKq5fth+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B41AA10EA84
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 17:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709313830; x=1740849830;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t8Xc3e1C7jzGadnwfBx+ArEN1yJYTPCPUrs/Rr39ASA=;
 b=dKq5fth+Xx+4nfFUBT7ffOp69NwqdJ22mrxj9JtDjFodGbV/AoU8Jn62
 LwiflMVSKZai2NK3fVC5pi17TJmx6fv409dxQmZBYQUVooRjkRDBVmPeA
 tfU8Kn5sLzHcNZxXZ8Nfie9QG3ecOhwg/OPZVA0opZIg72JAQ9F8ONoYx
 OR9kfWHRtN31joeVnojLM2BYx/ix3+qLjzg1AQAyq0mSR55m+/cav2hOy
 Eb40wyaCmaqxHsG7Zp2XYsWyKGyLmqBAR3X7GUNUSc19etQ38Ig8YsDP4
 51b4w1a66Ws/2+h80yjYO9ppHYJ/ztFmRWlz1OPfjPVfs1DnBs0BirBI8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3726515"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="3726515"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 09:23:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="827772083"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="827772083"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 09:23:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 19:23:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: [PATCH v2 8/8] drm/i915: Handle joined pipes inside hsw_crtc_disable()
Date: Fri,  1 Mar 2024 19:23:46 +0200
Message-ID: <20240301172346.4393-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240301143600.1334-9-ville.syrjala@linux.intel.com>
References: <20240301143600.1334-9-ville.syrjala@linux.intel.com>
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

v2: Pass the correct crtc pointer to .crtc_disable()

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 66 ++++++++++++--------
 1 file changed, 39 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1df3923cc30d..e01536983303 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1793,29 +1793,27 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *old_master_crtc_state =
 		intel_atomic_get_old_crtc_state(state, master_crtc);
 	struct drm_i915_private *i915 = to_i915(master_crtc->base.dev);
+	u8 pipe_mask = intel_crtc_joined_pipe_mask(old_master_crtc_state);
+	struct intel_crtc *crtc;
 
 	/*
 	 * FIXME collapse everything to one hook.
 	 * Need care with mst->ddi interactions.
 	 */
-	if (!intel_crtc_is_bigjoiner_slave(old_master_crtc_state)) {
-		intel_encoders_disable(state, master_crtc);
-		intel_encoders_post_disable(state, master_crtc);
-	}
-
-	intel_disable_shared_dpll(old_master_crtc_state);
+	intel_encoders_disable(state, master_crtc);
+	intel_encoders_post_disable(state, master_crtc);
 
-	if (!intel_crtc_is_bigjoiner_slave(old_master_crtc_state)) {
-		struct intel_crtc *slave_crtc;
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *old_crtc_state =
+			intel_atomic_get_old_crtc_state(state, crtc);
 
-		intel_encoders_post_pll_disable(state, master_crtc);
+		intel_disable_shared_dpll(old_crtc_state);
+	}
 
-		intel_dmc_disable_pipe(i915, master_crtc->pipe);
+	intel_encoders_post_pll_disable(state, master_crtc);
 
-		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-						 intel_crtc_bigjoiner_slave_pipes(old_master_crtc_state))
-			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
-	}
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask)
+		intel_dmc_disable_pipe(i915, crtc->pipe);
 }
 
 static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
@@ -6753,24 +6751,33 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 }
 
 static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
-					  struct intel_crtc *crtc)
+					  struct intel_crtc *master_crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_master_crtc_state =
+		intel_atomic_get_old_crtc_state(state, master_crtc);
+	u8 pipe_mask = intel_crtc_joined_pipe_mask(old_master_crtc_state);
+	struct intel_crtc *crtc;
 
 	/*
 	 * We need to disable pipe CRC before disabling the pipe,
 	 * or we race against vblank off.
 	 */
-	intel_crtc_disable_pipe_crc(crtc);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask)
+		intel_crtc_disable_pipe_crc(crtc);
 
-	dev_priv->display.funcs.display->crtc_disable(state, crtc);
-	crtc->active = false;
-	intel_fbc_disable(crtc);
+	dev_priv->display.funcs.display->crtc_disable(state, master_crtc);
 
-	if (!new_crtc_state->hw.active)
-		intel_initial_watermarks(state, crtc);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *new_crtc_state =
+			intel_atomic_get_new_crtc_state(state, crtc);
+
+		crtc->active = false;
+		intel_fbc_disable(crtc);
+
+		if (!new_crtc_state->hw.active)
+			intel_initial_watermarks(state, crtc);
+	}
 }
 
 static void intel_commit_modeset_disables(struct intel_atomic_state *state)
@@ -6810,19 +6817,21 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
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
@@ -6830,9 +6839,12 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
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
2.43.0

