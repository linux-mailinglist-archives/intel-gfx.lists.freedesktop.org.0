Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC50B14FFEE
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 00:03:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76A8C6E13A;
	Sun,  2 Feb 2020 23:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7094D6E136
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Feb 2020 23:03:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Feb 2020 15:03:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,395,1574150400"; d="scan'208";a="263228815"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2020 15:03:06 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 00:59:35 +0200
Message-Id: <20200202225940.7845-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200202225940.7845-1-stanislav.lisovskiy@intel.com>
References: <20200202225940.7845-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v17 1/6] drm/i915: Remove skl_ddl_allocation
 struct
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Current consensus that it is redundant as
we already have skl_ddb_values struct out there,
also this struct contains only single member
which makes it unnecessary.

v2: As dirty_pipes soon going to be nuked away
    from skl_ddb_values, evacuating enabled_slices
    to safer in dev_priv.

v3: Changed "enabled_slices" to be "enabled_dbuf_slices_num"
    (Matt Roper)

v4: - Wrapped the line getting number of dbuf slices(Matt Roper)
    - Removed indeed redundant skl_ddb_values declaration(Matt Roper)

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 16 +++----
 .../drm/i915/display/intel_display_power.c    |  8 ++--
 .../drm/i915/display/intel_display_types.h    |  4 +-
 drivers/gpu/drm/i915/i915_drv.h               | 11 +----
 drivers/gpu/drm/i915/intel_pm.c               | 45 +++++++++----------
 drivers/gpu/drm/i915/intel_pm.h               |  5 +--
 6 files changed, 38 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b0af37fb6d4a..eadbde3996b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14039,12 +14039,11 @@ static void verify_wm_state(struct intel_crtc *crtc,
 	struct skl_hw_state {
 		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
 		struct skl_ddb_entry ddb_uv[I915_MAX_PLANES];
-		struct skl_ddb_allocation ddb;
 		struct skl_pipe_wm wm;
 	} *hw;
-	struct skl_ddb_allocation *sw_ddb;
 	struct skl_pipe_wm *sw_wm;
 	struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
+	u8 hw_enabled_slices;
 	const enum pipe pipe = crtc->pipe;
 	int plane, level, max_level = ilk_wm_max_level(dev_priv);
 
@@ -14060,15 +14059,14 @@ static void verify_wm_state(struct intel_crtc *crtc,
 
 	skl_pipe_ddb_get_hw_state(crtc, hw->ddb_y, hw->ddb_uv);
 
-	skl_ddb_get_hw_state(dev_priv, &hw->ddb);
-	sw_ddb = &dev_priv->wm.skl_hw.ddb;
+	hw_enabled_slices = intel_enabled_dbuf_slices_num(dev_priv);
 
 	if (INTEL_GEN(dev_priv) >= 11 &&
-	    hw->ddb.enabled_slices != sw_ddb->enabled_slices)
+	    hw_enabled_slices != dev_priv->enabled_dbuf_slices_num)
 		drm_err(&dev_priv->drm,
 			"mismatch in DBUF Slices (expected %u, got %u)\n",
-			sw_ddb->enabled_slices,
-			hw->ddb.enabled_slices);
+			dev_priv->enabled_dbuf_slices_num,
+			hw_enabled_slices);
 
 	/* planes */
 	for_each_universal_plane(dev_priv, pipe, plane) {
@@ -15427,8 +15425,8 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
-	u8 hw_enabled_slices = dev_priv->wm.skl_hw.ddb.enabled_slices;
-	u8 required_slices = state->wm_results.ddb.enabled_slices;
+	u8 hw_enabled_slices = dev_priv->enabled_dbuf_slices_num;
+	u8 required_slices = state->enabled_dbuf_slices_num;
 	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
 	const u8 num_pipes = INTEL_NUM_PIPES(dev_priv);
 	u8 update_pipes = 0, modeset_pipes = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 64943179c05e..86e349bbc0af 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4436,7 +4436,7 @@ static u8 intel_dbuf_max_slices(struct drm_i915_private *dev_priv)
 void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
 			    u8 req_slices)
 {
-	const u8 hw_enabled_slices = dev_priv->wm.skl_hw.ddb.enabled_slices;
+	const u8 hw_enabled_slices = dev_priv->enabled_dbuf_slices_num;
 	bool ret;
 
 	if (req_slices > intel_dbuf_max_slices(dev_priv)) {
@@ -4454,7 +4454,7 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
 		ret = intel_dbuf_slice_set(dev_priv, DBUF_CTL_S2, false);
 
 	if (ret)
-		dev_priv->wm.skl_hw.ddb.enabled_slices = req_slices;
+		dev_priv->enabled_dbuf_slices_num = req_slices;
 }
 
 static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
@@ -4475,7 +4475,7 @@ static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
 		 * FIXME: for now pretend that we only have 1 slice, see
 		 * intel_enabled_dbuf_slices_num().
 		 */
-		dev_priv->wm.skl_hw.ddb.enabled_slices = 1;
+		dev_priv->enabled_dbuf_slices_num = 1;
 }
 
 static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
@@ -4496,7 +4496,7 @@ static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
 		 * FIXME: for now pretend that the first slice is always
 		 * enabled, see intel_enabled_dbuf_slices_num().
 		 */
-		dev_priv->wm.skl_hw.ddb.enabled_slices = 1;
+		dev_priv->enabled_dbuf_slices_num = 1;
 }
 
 static void icl_mbus_init(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7c6133a9c51b..ce1d9a917c5f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -495,8 +495,8 @@ struct intel_atomic_state {
 	 */
 	bool global_state_changed;
 
-	/* Gen9+ only */
-	struct skl_ddb_values wm_results;
+	/* Number of enabled DBuf slices */
+	u8 enabled_dbuf_slices_num;
 
 	struct i915_sw_fence commit_ready;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a71ff233cc55..ebebc4246e6c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -798,14 +798,6 @@ static inline bool skl_ddb_entry_equal(const struct skl_ddb_entry *e1,
 	return false;
 }
 
-struct skl_ddb_allocation {
-	u8 enabled_slices; /* GEN11 has configurable 2 slices */
-};
-
-struct skl_ddb_values {
-	struct skl_ddb_allocation ddb;
-};
-
 struct skl_wm_level {
 	u16 min_ddb_alloc;
 	u16 plane_res_b;
@@ -1173,7 +1165,6 @@ struct drm_i915_private {
 		/* current hardware state */
 		union {
 			struct ilk_wm_values hw;
-			struct skl_ddb_values skl_hw;
 			struct vlv_wm_values vlv;
 			struct g4x_wm_values g4x;
 		};
@@ -1195,6 +1186,8 @@ struct drm_i915_private {
 		bool distrust_bios_wm;
 	} wm;
 
+	u8 enabled_dbuf_slices_num; /* GEN11 has configurable 2 slices */
+
 	struct dram_info {
 		bool valid;
 		bool is_16gb_dimm;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index a2d2407af2ed..89aa188c8cf5 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3597,16 +3597,16 @@ bool ilk_disable_lp_wm(struct drm_i915_private *dev_priv)
 	return _ilk_disable_lp_wm(dev_priv, WM_DIRTY_LP_ALL);
 }
 
-static u8 intel_enabled_dbuf_slices_num(struct drm_i915_private *dev_priv)
+u8 intel_enabled_dbuf_slices_num(struct drm_i915_private *dev_priv)
 {
-	u8 enabled_slices;
+	u8 enabled_dbuf_slices_num;
 
 	/* Slice 1 will always be enabled */
-	enabled_slices = 1;
+	enabled_dbuf_slices_num = 1;
 
 	/* Gen prior to GEN11 have only one DBuf slice */
 	if (INTEL_GEN(dev_priv) < 11)
-		return enabled_slices;
+		return enabled_dbuf_slices_num;
 
 	/*
 	 * FIXME: for now we'll only ever use 1 slice; pretend that we have
@@ -3614,9 +3614,9 @@ static u8 intel_enabled_dbuf_slices_num(struct drm_i915_private *dev_priv)
 	 * toggling of the second slice.
 	 */
 	if (0 && I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE)
-		enabled_slices++;
+		enabled_dbuf_slices_num++;
 
-	return enabled_slices;
+	return enabled_dbuf_slices_num;
 }
 
 /*
@@ -3820,9 +3820,10 @@ bool intel_can_enable_sagv(struct intel_atomic_state *state)
 static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv,
 			      const struct intel_crtc_state *crtc_state,
 			      const u64 total_data_rate,
-			      const int num_active,
-			      struct skl_ddb_allocation *ddb)
+			      const int num_active)
 {
+	struct drm_atomic_state *state = crtc_state->uapi.state;
+	struct intel_atomic_state *intel_state = to_intel_atomic_state(state);
 	const struct drm_display_mode *adjusted_mode;
 	u64 total_data_bw;
 	u16 ddb_size = INTEL_INFO(dev_priv)->ddb_size;
@@ -3844,9 +3845,9 @@ static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv,
 	 * - should validate we stay within the hw bandwidth limits
 	 */
 	if (0 && (num_active > 1 || total_data_bw >= GBps(12))) {
-		ddb->enabled_slices = 2;
+		intel_state->enabled_dbuf_slices_num = 2;
 	} else {
-		ddb->enabled_slices = 1;
+		intel_state->enabled_dbuf_slices_num = 1;
 		ddb_size /= 2;
 	}
 
@@ -3857,7 +3858,6 @@ static void
 skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
 				   const struct intel_crtc_state *crtc_state,
 				   const u64 total_data_rate,
-				   struct skl_ddb_allocation *ddb,
 				   struct skl_ddb_entry *alloc, /* out */
 				   int *num_active /* out */)
 {
@@ -3883,7 +3883,7 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
 		*num_active = hweight8(dev_priv->active_pipes);
 
 	ddb_size = intel_get_ddb_size(dev_priv, crtc_state, total_data_rate,
-				      *num_active, ddb);
+				      *num_active);
 
 	/*
 	 * If the state doesn't change the active CRTC's or there is no
@@ -4044,10 +4044,10 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 	intel_display_power_put(dev_priv, power_domain, wakeref);
 }
 
-void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv,
-			  struct skl_ddb_allocation *ddb /* out */)
+void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv)
 {
-	ddb->enabled_slices = intel_enabled_dbuf_slices_num(dev_priv);
+	dev_priv->enabled_dbuf_slices_num =
+				intel_enabled_dbuf_slices_num(dev_priv);
 }
 
 /*
@@ -4224,8 +4224,7 @@ icl_get_total_relative_data_rate(struct intel_crtc_state *crtc_state,
 }
 
 static int
-skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state,
-		      struct skl_ddb_allocation *ddb /* out */)
+skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
 {
 	struct drm_atomic_state *state = crtc_state->uapi.state;
 	struct drm_crtc *crtc = crtc_state->uapi.crtc;
@@ -4267,7 +4266,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state,
 
 
 	skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state, total_data_rate,
-					   ddb, alloc, &num_active);
+					   alloc, &num_active);
 	alloc_size = skl_ddb_entry_size(alloc);
 	if (alloc_size == 0)
 		return 0;
@@ -5150,18 +5149,17 @@ skl_ddb_add_affected_planes(const struct intel_crtc_state *old_crtc_state,
 static int
 skl_compute_ddb(struct intel_atomic_state *state)
 {
-	const struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct skl_ddb_allocation *ddb = &state->wm_results.ddb;
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
 	int ret, i;
 
-	memcpy(ddb, &dev_priv->wm.skl_hw.ddb, sizeof(*ddb));
+	state->enabled_dbuf_slices_num = dev_priv->enabled_dbuf_slices_num;
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		ret = skl_allocate_pipe_ddb(new_crtc_state, ddb);
+		ret = skl_allocate_pipe_ddb(new_crtc_state);
 		if (ret)
 			return ret;
 
@@ -5589,11 +5587,10 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 
 void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
 {
-	struct skl_ddb_allocation *ddb = &dev_priv->wm.skl_hw.ddb;
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
 
-	skl_ddb_get_hw_state(dev_priv, ddb);
+	skl_ddb_get_hw_state(dev_priv);
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
 		crtc_state = to_intel_crtc_state(crtc->base.state);
 
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index c06c6a846d9a..22fd2daf608e 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -17,7 +17,6 @@ struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_plane;
-struct skl_ddb_allocation;
 struct skl_ddb_entry;
 struct skl_pipe_wm;
 struct skl_wm_level;
@@ -33,11 +32,11 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv);
 void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);
 void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv);
 void skl_wm_get_hw_state(struct drm_i915_private *dev_priv);
+u8 intel_enabled_dbuf_slices_num(struct drm_i915_private *dev_priv);
 void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 			       struct skl_ddb_entry *ddb_y,
 			       struct skl_ddb_entry *ddb_uv);
-void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv,
-			  struct skl_ddb_allocation *ddb /* out */);
+void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);
 void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 			      struct skl_pipe_wm *out);
 void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
