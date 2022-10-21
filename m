Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7789A607C1F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 18:25:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A90B510E405;
	Fri, 21 Oct 2022 16:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 960A410E510
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 16:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666369489; x=1697905489;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9g/fUiY2vcMio2kecj8HrSiVp5BQL0PK0t91kR375tE=;
 b=QS0HSYe4fi0/Zg6mLhxIJFPRkhreYB/mPQFjWbrMDtuZRLlUQr97A9+g
 UP4IN5lJbHBLQ4LFiFja0cScWEFdGsgWpPq1OGSx5tjTJ+oSqTpx9EdBJ
 PxsK+DG8z4aiNNe6CxEPCKbUn944pWSJ2eVrLTiffZBuVDB11S8fFFKbO
 ne8JEEoDArhvnKUc3WOA6+DW8ocx/Ya1zfBYRZXSFq1WnG/ipeh6JmK3n
 H4dv8yk7sy9k+68nHoc+AyhF+9LctfFP3Vf+ld/LloidFBvWd0LL4tNo4
 q1VHvsvVhpfdmC4Ykoei1yMx8MpUzNmRPRf27qDHxtUZz5sNH5RazsRxF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="294440707"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="294440707"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 09:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="773109950"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="773109950"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 21 Oct 2022 09:24:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Oct 2022 19:24:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 19:24:39 +0300
Message-Id: <20221021162442.27283-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221021162442.27283-1-ville.syrjala@linux.intel.com>
References: <20221021162442.27283-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915: Introduce
 intel_crtc_needs_fastset()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the somewhat obscure crtc_state.update_pipe checks
with a more descriptive thing. Also nicely matches the
intel_crtc_needs_modeset() counterpart for full modesets.

v2: Handle one more case in the fbc code

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c        |  6 ++--
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  6 ++--
 drivers/gpu/drm/i915/display/intel_display.c  | 28 ++++++++++---------
 .../drm/i915/display/intel_display_types.h    |  6 ++++
 drivers/gpu/drm/i915/display/intel_fbc.c      |  3 +-
 .../drm/i915/display/intel_modeset_verify.c   |  3 +-
 7 files changed, 33 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index a5be4af792cb..c23fabb76fda 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -105,7 +105,7 @@ static bool hsw_ips_need_disable(struct intel_atomic_state *state,
 	 */
 	if (IS_HASWELL(i915) &&
 	    (new_crtc_state->uapi.color_mgmt_changed ||
-	     new_crtc_state->update_pipe) &&
+	     intel_crtc_needs_fastset(new_crtc_state)) &&
 	    new_crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
 		return true;
 
@@ -147,7 +147,7 @@ static bool hsw_ips_need_enable(struct intel_atomic_state *state,
 	 */
 	if (IS_HASWELL(i915) &&
 	    (new_crtc_state->uapi.color_mgmt_changed ||
-	     new_crtc_state->update_pipe) &&
+	     intel_crtc_needs_fastset(new_crtc_state)) &&
 	    new_crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
 		return true;
 
@@ -155,7 +155,7 @@ static bool hsw_ips_need_enable(struct intel_atomic_state *state,
 	 * We can't read out IPS on broadwell, assume the worst and
 	 * forcibly enable IPS on the first fastset.
 	 */
-	if (new_crtc_state->update_pipe && old_crtc_state->inherited)
+	if (intel_crtc_needs_fastset(new_crtc_state) && old_crtc_state->inherited)
 		return true;
 
 	return !old_crtc_state->ips_enabled;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 6be1fe34c83b..af7dbac7ed32 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -387,7 +387,7 @@ static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_sta
 		!intel_crtc_needs_modeset(crtc_state) &&
 		!crtc_state->preload_luts &&
 		(crtc_state->uapi.color_mgmt_changed ||
-		 crtc_state->update_pipe);
+		 intel_crtc_needs_fastset(crtc_state));
 }
 
 static void intel_crtc_vblank_work(struct kthread_work *base)
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 87899e89b3a7..96422c98656a 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -631,8 +631,10 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 *
 	 * FIXME bigjoiner fastpath would be good
 	 */
-	if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state) ||
-	    crtc_state->update_pipe || crtc_state->bigjoiner_pipes)
+	if (!crtc_state->hw.active ||
+	    intel_crtc_needs_modeset(crtc_state) ||
+	    intel_crtc_needs_fastset(crtc_state) ||
+	    crtc_state->bigjoiner_pipes)
 		goto slow;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 606f9140d024..0929fb8a4302 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4853,7 +4853,8 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	if (c8_planes_changed(crtc_state))
 		crtc_state->uapi.color_mgmt_changed = true;
 
-	if (mode_changed || crtc_state->update_pipe ||
+	if (mode_changed ||
+	    intel_crtc_needs_fastset(crtc_state) ||
 	    crtc_state->uapi.color_mgmt_changed) {
 		ret = intel_color_check(crtc_state);
 		if (ret)
@@ -4880,7 +4881,8 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 9) {
-		if (mode_changed || crtc_state->update_pipe) {
+		if (mode_changed ||
+		    intel_crtc_needs_fastset(crtc_state)) {
 			ret = skl_update_scaler_crtc(crtc_state);
 			if (ret)
 				return ret;
@@ -6924,7 +6926,7 @@ static int intel_atomic_check(struct drm_device *dev,
 			goto fail;
 
 		if (!intel_crtc_needs_modeset(new_crtc_state) &&
-		    !new_crtc_state->update_pipe)
+		    !intel_crtc_needs_fastset(new_crtc_state))
 			continue;
 
 		intel_crtc_state_dump(new_crtc_state, state,
@@ -6962,7 +6964,8 @@ static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		bool mode_changed = intel_crtc_needs_modeset(crtc_state);
 
-		if (mode_changed || crtc_state->update_pipe ||
+		if (mode_changed ||
+		    intel_crtc_needs_fastset(crtc_state) ||
 		    crtc_state->uapi.color_mgmt_changed) {
 			intel_dsb_prepare(crtc_state);
 		}
@@ -7047,13 +7050,13 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 	 */
 	if (!modeset) {
 		if (new_crtc_state->uapi.color_mgmt_changed ||
-		    new_crtc_state->update_pipe)
+		    intel_crtc_needs_fastset(new_crtc_state))
 			intel_color_commit_arm(new_crtc_state);
 
 		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 			bdw_set_pipemisc(new_crtc_state);
 
-		if (new_crtc_state->update_pipe)
+		if (intel_crtc_needs_fastset(new_crtc_state))
 			intel_pipe_fastset(old_crtc_state, new_crtc_state);
 	}
 
@@ -7113,16 +7116,16 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	if (!modeset) {
 		if (new_crtc_state->preload_luts &&
 		    (new_crtc_state->uapi.color_mgmt_changed ||
-		     new_crtc_state->update_pipe))
+		     intel_crtc_needs_fastset(new_crtc_state)))
 			intel_color_load_luts(new_crtc_state);
 
 		intel_pre_plane_update(state, crtc);
 
-		if (new_crtc_state->update_pipe)
+		if (intel_crtc_needs_fastset(new_crtc_state))
 			intel_encoders_update_pipe(state, crtc);
 
 		if (DISPLAY_VER(i915) >= 11 &&
-		    new_crtc_state->update_pipe)
+		    intel_crtc_needs_fastset(new_crtc_state))
 			icl_set_pipe_chicken(new_crtc_state);
 	}
 
@@ -7130,7 +7133,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	if (!modeset &&
 	    (new_crtc_state->uapi.color_mgmt_changed ||
-	     new_crtc_state->update_pipe))
+	     intel_crtc_needs_fastset(new_crtc_state)))
 		intel_color_commit_noarm(new_crtc_state);
 
 	intel_crtc_planes_update_noarm(state, crtc);
@@ -7152,7 +7155,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	 * valid pipe configuration from the BIOS we need to take care
 	 * of enabling them on the CRTC's first fastset.
 	 */
-	if (new_crtc_state->update_pipe && !modeset &&
+	if (intel_crtc_needs_fastset(new_crtc_state) && !modeset &&
 	    old_crtc_state->inherited)
 		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
 }
@@ -7510,9 +7513,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (intel_crtc_needs_modeset(new_crtc_state) ||
-		    new_crtc_state->update_pipe) {
+		    intel_crtc_needs_fastset(new_crtc_state))
 			intel_modeset_get_crtc_power_domains(new_crtc_state, &put_domains[crtc->pipe]);
-		}
 	}
 
 	intel_commit_modeset_disables(state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2b853e9e51d..60c748e4e0d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2058,6 +2058,12 @@ intel_crtc_needs_modeset(const struct intel_crtc_state *crtc_state)
 	return drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
 }
 
+static inline bool
+intel_crtc_needs_fastset(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->update_pipe;
+}
+
 static inline u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state)
 {
 	return i915_ggtt_offset(plane_state->ggtt_vma);
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 64b371f9a5fd..3f24f326b989 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1520,7 +1520,8 @@ void intel_fbc_update(struct intel_atomic_state *state,
 
 		mutex_lock(&fbc->lock);
 
-		if (crtc_state->update_pipe && plane_state->no_fbc_reason) {
+		if (intel_crtc_needs_fastset(crtc_state) &&
+		    plane_state->no_fbc_reason) {
 			if (fbc->state.plane == plane)
 				__intel_fbc_disable(fbc);
 		} else {
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 0fdcf2e6d57f..842d70f0dfd2 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -227,7 +227,8 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 			       struct intel_crtc_state *old_crtc_state,
 			       struct intel_crtc_state *new_crtc_state)
 {
-	if (!intel_crtc_needs_modeset(new_crtc_state) && !new_crtc_state->update_pipe)
+	if (!intel_crtc_needs_modeset(new_crtc_state) &&
+	    !intel_crtc_needs_fastset(new_crtc_state))
 		return;
 
 	intel_wm_state_verify(crtc, new_crtc_state);
-- 
2.35.1

