Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 281A886A975
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 09:02:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB4F510E82D;
	Wed, 28 Feb 2024 08:02:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uo2Mwg9K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5E0E10E82D
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 08:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709107339; x=1740643339;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jcArGVqfVBtYHbDeQ1t0YBVzUpEFnZ4HapbN6Ks0QMQ=;
 b=Uo2Mwg9KWiArRbjkElglYu8Q8YAbecT9cUPj3fIOpG/CIllrd8bWO0FO
 EloYRVSM2ovyoMMOS2b+maH2xyikwJ/Gr0wfiLvZBCLdWm8pj+lpXRQsb
 5JR73an39f//waNqTbAene9RZ2azXQ5iHEnc3t6urPBcvFyARtmMq5KZ8
 1Fp+j/IlFGjPHiwGOKDWUnkda266n4HBNOB2NscphEmG359LsXVSXOX7y
 NqljNgkunqIWIFh/4ixbOyYqyTWYdNEeZFlB+iEqBuNgKfIfMcrPf33qn
 mr+f2bpsQzs2KlTZAj+hFazgvIT0jTtnhZ3OVDG4CC42QuAJG2T6tHl1f g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14205679"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="14205679"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 00:02:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7220655"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa007.fm.intel.com with ESMTP; 28 Feb 2024 00:02:17 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, Stanislav.Lisovskiy@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 2/2] drm/i915: Implement vblank synchronized MBUS join changes
Date: Wed, 28 Feb 2024 10:02:13 +0200
Message-Id: <20240228080213.17441-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240228080213.17441-1-stanislav.lisovskiy@intel.com>
References: <20240228080213.17441-1-stanislav.lisovskiy@intel.com>
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

Currently we can't change MBUS join status without doing a modeset,
because we are lacking mechanism to synchronize those with vblank.
However then this means that we can't do a fastset, if there is a need
to change MBUS join state. Fix that by implementing such change.
We already call correspondent check and update at pre_plane dbuf update,
so the only thing left is to have a non-modeset version of that.
If active pipes stay the same then fastset is possible and only MBUS
join state/ddb allocation updates would be committed.

v2: Implement additional changes according to BSpec.
    Vblank wait is needed after MBus/Dbuf programming in case if
    no modeset is done and we are switching from single to multiple
    displays, i.e mbus join state switches from "joined" to  "non-joined"
    state. Otherwise vblank wait is not needed according to spec.

v3: Split mbus and dbox programming into to pre/post plane update parts,
    how it should be done according to BSpec.

v4: - Place "single display to multiple displays scenario" MBUS/DBOX programming
      after DDB reallocation, but before crtc enabling(that is where is has
      to be according to spec).
    - Check if crtc is still active, not only the old state.
    - Do a vblank wait if MBUX DBOX register was modified.
    - And of course do vblank wait only if crtc was active.
    - Do vblank wait only if we are not doing a modeset, if we are doing
      something before *commit_modeset_enables, because all crtcs might be
      disabled at this moment, so we will get WARN if try waiting for vblank
      then.
    - Still getting FIFO underrun so try waiting for vblank in pre_plane update
      as well.
    - Write also pipe that we need to sync with to MBUS_CTL register.

v5: - Do vblank wait only for the first pipe, if mbus is joined
    - Check also if new/old_dbuf_state is not NULL, before getting single pipe
      and active pipes.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  13 ++-
 drivers/gpu/drm/i915/display/skl_watermark.c | 104 +++++++++++++++----
 drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
 3 files changed, 96 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 00ac65a140298..989818f5d342f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6906,6 +6906,17 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		}
 	}
 
+	/*
+	 * Some MBUS/DBuf update scenarios(mbus join disable) require that
+	 * changes are done _after_ DDB reallocation, but _before_ crtc enabling.
+	 * Typically we are disabling resources in post_plane/crtc_enable hooks,
+	 * however in that case BSpec explicitly states that this should be done
+	 * before we enable additional displays.
+	 * FIXME: Should we still call this also there(post_plane hook)
+	 * for extra-safety? If so, how to make sure, we don't call it twice?
+	 */
+	intel_dbuf_mbus_post_ddb_update(state);
+
 	update_pipes = modeset_pipes;
 
 	/*
@@ -7148,9 +7159,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	intel_encoders_update_prepare(state);
-
 	intel_dbuf_pre_plane_update(state);
-	intel_mbus_dbox_update(state);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->do_async_flip)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 606b7ba9db9ce..f0604ede399f7 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2628,13 +2628,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
-		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
-			/* TODO: Implement vblank synchronized MBUS joining changes */
-			ret = intel_modeset_all_pipes_late(state, "MBUS joining change");
-			if (ret)
-				return ret;
-		}
-
 		drm_dbg_kms(&i915->drm,
 			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x), mbus joined? %s->%s\n",
 			    old_dbuf_state->enabled_slices,
@@ -3539,8 +3532,9 @@ static void intel_dbuf_mbus_update(struct intel_atomic_state *state)
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	u32 mbus_ctl, dbuf_min_tracker_val;
 	enum dbuf_slice slice;
-	const struct intel_dbuf_state *dbuf_state =
+	const struct intel_dbuf_state *new_dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
+	enum pipe pipe = ffs(new_dbuf_state->active_pipes) - 1;
 
 	if (!HAS_MBUS_JOINING(i915))
 		return;
@@ -3549,13 +3543,13 @@ static void intel_dbuf_mbus_update(struct intel_atomic_state *state)
 	 * TODO: Implement vblank synchronized MBUS joining changes.
 	 * Must be properly coordinated with dbuf reprogramming.
 	 */
-	if (dbuf_state->joined_mbus) {
+	if (new_dbuf_state->joined_mbus) {
 		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
-			MBUS_JOIN_PIPE_SELECT_NONE;
+			MBUS_JOIN_PIPE_SELECT(pipe);
 		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(3);
 	} else {
 		mbus_ctl = MBUS_HASHING_MODE_2x2 |
-			MBUS_JOIN_PIPE_SELECT_NONE;
+			MBUS_JOIN_PIPE_SELECT(pipe);
 		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(1);
 	}
 
@@ -3576,21 +3570,35 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_new_dbuf_state(state);
 	const struct intel_dbuf_state *old_dbuf_state =
 		intel_atomic_get_old_dbuf_state(state);
+	int new_num_active_pipes = 0;
+	int old_num_active_pipes = 0;
 
 	if (!new_dbuf_state ||
 	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
 	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
 		return;
 
+	new_num_active_pipes = hweight8(new_dbuf_state->active_pipes);
+
+	if (old_dbuf_state)
+		old_num_active_pipes = hweight8(old_dbuf_state->active_pipes);
+
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	if ((hweight8(new_dbuf_state->active_pipes) <= hweight8(old_dbuf_state->active_pipes))
-	    || (old_dbuf_state->active_pipes == 0))
+	/*
+	 * Switching from multiple to single display scenario(enable mbus join).
+	 * Also we put here "<=" instead of "<" for suboptimal cases, when
+	 * we switch from single => single display, enabling mbus join.
+	 */
+	if (new_num_active_pipes <= old_num_active_pipes)
 		intel_dbuf_mbus_update(state);
 
 	gen9_dbuf_slices_update(i915,
 				old_dbuf_state->enabled_slices |
 				new_dbuf_state->enabled_slices);
+
+	if (new_num_active_pipes <= old_num_active_pipes)
+		intel_mbus_dbox_update(state);
 }
 
 void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
@@ -3608,13 +3616,59 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	if (hweight8(new_dbuf_state->active_pipes) > hweight8(old_dbuf_state->active_pipes))
-		intel_dbuf_mbus_update(state);
-
 	gen9_dbuf_slices_update(i915,
 				new_dbuf_state->enabled_slices);
 }
 
+void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state)
+{
+	const struct intel_dbuf_state *new_dbuf_state =
+		intel_atomic_get_new_dbuf_state(state);
+	const struct intel_dbuf_state *old_dbuf_state =
+		intel_atomic_get_old_dbuf_state(state);
+	enum pipe pipe;
+	int new_num_active_pipes = 0;
+	int old_num_active_pipes = 0;
+
+	if (!new_dbuf_state ||
+	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
+	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
+		return;
+
+	pipe = ffs(new_dbuf_state->active_pipes) - 1;
+	new_num_active_pipes = hweight8(new_dbuf_state->active_pipes);
+
+	if (old_dbuf_state)
+		old_num_active_pipes = hweight8(old_dbuf_state->active_pipes);
+
+	WARN_ON(!new_dbuf_state->base.changed);
+
+	/*
+	 * Switching from single to multiple display scenario
+	 */
+	if (new_num_active_pipes > old_num_active_pipes) {
+		struct intel_crtc *crtc;
+		struct intel_crtc_state *new_crtc_state;
+		int i;
+		intel_dbuf_mbus_update(state);
+		intel_mbus_dbox_update(state);
+
+		if (state->modeset)
+			return;
+
+		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+			/*
+			 * According to BSpec we should wait vblank on single display,
+			 * before enabling additional displays
+			 */
+			if (!new_crtc_state->hw.active || (crtc->pipe != pipe))
+				continue;
+
+			intel_crtc_wait_for_next_vblank(crtc);
+		}
+	}
+}
+
 static bool xelpdp_is_only_pipe_per_dbuf_bank(enum pipe pipe, u8 active_pipes)
 {
 	switch (pipe) {
@@ -3638,8 +3692,8 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
-	const struct intel_crtc_state *new_crtc_state;
-	const struct intel_crtc *crtc;
+	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
+	struct intel_crtc *crtc;
 	u32 val = 0;
 	int i;
 
@@ -3685,12 +3739,14 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
 		val |= MBUS_DBOX_B_CREDIT(8);
 	}
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-		u32 pipe_val = val;
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
+		u32 pipe_val = val, old_pipe_val;
 
 		if (!new_crtc_state->hw.active)
 			continue;
 
+		old_pipe_val = intel_de_read(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe));
+
 		if (DISPLAY_VER(i915) >= 14) {
 			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
 							      new_dbuf_state->active_pipes))
@@ -3700,6 +3756,14 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
 		}
 
 		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), pipe_val);
+
+		/*
+		 * BSpec instructs us to wait for vblank, if credits were changed.
+		 * However we need to do that here only if crtc was active prior to change.
+		 */
+		if (old_pipe_val != pipe_val &&
+		    old_crtc_state->hw.active && !state->modeset)
+			intel_crtc_wait_for_next_vblank(crtc);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index e3d1d74a7b170..5a97556a68c2c 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -73,6 +73,7 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
 int intel_dbuf_init(struct drm_i915_private *i915);
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
 void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
+void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
 void intel_mbus_dbox_update(struct intel_atomic_state *state);
 
 #endif /* __SKL_WATERMARK_H__ */
-- 
2.37.3

