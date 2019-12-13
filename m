Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 255D611E20A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 11:35:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21F916E429;
	Fri, 13 Dec 2019 10:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A70BF6E40A
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 10:34:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 02:34:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="220896315"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2019 02:34:56 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 12:31:58 +0200
Message-Id: <20191213103158.29520-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191213103158.29520-1-stanislav.lisovskiy@intel.com>
References: <20191213103158.29520-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] [PATCH v8 4/4] drm/i915: Correctly map DBUF slices to
 pipes
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Added proper DBuf slice mapping to correspondent
pipes, depending on pipe configuration as stated
in BSpec.

v2:
    - Remove unneeded braces
    - Stop using macro for DBuf assignments as
      it seems to reduce readability.

v3: Start using enabled slices mask in dev_priv

v4: Renamed "enabled_slices" used in dev_priv
    to "enabled_dbuf_slices_mask"

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 226 ++++++++++++++++++++++++++++++--
 1 file changed, 216 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 5881752286a1..5de4e5f7ed18 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3815,13 +3815,30 @@ bool intel_can_enable_sagv(struct intel_atomic_state *state)
 	return true;
 }
 
+/*
+ * Calculate initial DBuf slice offset, based on slice size
+ * and mask(i.e if slice size is 1024 and second slice is enabled
+ * offset would be 1024)
+ */
+static u32 icl_get_first_dbuf_slice_offset(u32 dbuf_slice_mask,
+					   u32 slice_size, u32 ddb_size)
+{
+	u32 offset = 0;
+
+	if (!dbuf_slice_mask)
+		return 0;
+
+	offset = (ffs(dbuf_slice_mask) - 1) * slice_size;
+
+	WARN_ON(offset >= ddb_size);
+	return offset;
+}
+
 static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv,
 			      const struct intel_crtc_state *crtc_state,
 			      const u64 total_data_rate,
 			      const int num_active)
 {
-	struct drm_atomic_state *state = crtc_state->uapi.state;
-	struct intel_atomic_state *intel_state = to_intel_atomic_state(state);
 	u16 ddb_size = INTEL_INFO(dev_priv)->ddb_size;
 
 	WARN_ON(ddb_size == 0);
@@ -3829,12 +3846,13 @@ static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv,
 	if (INTEL_GEN(dev_priv) < 11)
 		return ddb_size - 4; /* 4 blocks for bypass path allocation */
 
-	intel_state->enabled_dbuf_slices_mask = DBUF_S1_BIT;
-	ddb_size /= 2;
-
 	return ddb_size;
 }
 
+u32 i915_possible_dbuf_slices(struct drm_i915_private *dev_priv,
+			      int pipe, u32 active_pipes,
+			      const struct intel_crtc_state *crtc_state);
+
 static void
 skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
 				   const struct intel_crtc_state *crtc_state,
@@ -3849,7 +3867,14 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
 	u32 pipe_width = 0, total_width = 0, width_before_pipe = 0;
 	enum pipe for_pipe = to_intel_crtc(for_crtc)->pipe;
 	u16 ddb_size;
+	u32 ddb_range_size;
 	u32 i;
+	u32 dbuf_slice_mask;
+	u32 active_pipes;
+	u32 offset;
+	u32 slice_size;
+	u32 total_slice_mask;
+	u32 start, end;
 
 	if (WARN_ON(!state) || !crtc_state->hw.active) {
 		alloc->start = 0;
@@ -3858,14 +3883,19 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (intel_state->active_pipe_changes)
+	if (intel_state->active_pipe_changes) {
 		*num_active = hweight8(intel_state->active_pipes);
-	else
+		active_pipes = intel_state->active_pipes;
+	} else {
 		*num_active = hweight8(dev_priv->active_pipes);
+		active_pipes = dev_priv->active_pipes;
+	}
 
 	ddb_size = intel_get_ddb_size(dev_priv, crtc_state, total_data_rate,
 				      *num_active);
 
+	slice_size = ddb_size / INTEL_INFO(dev_priv)->num_supported_dbuf_slices;
+
 	/*
 	 * If the state doesn't change the active CRTC's or there is no
 	 * modeset request, then there's no need to recalculate;
@@ -3883,18 +3913,68 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
 		return;
 	}
 
+	/*
+	 * Get allowed DBuf slices for correspondent pipe and platform.
+	 */
+	dbuf_slice_mask = i915_possible_dbuf_slices(dev_priv, for_pipe,
+						    active_pipes, crtc_state);
+
+	DRM_DEBUG_KMS("DBuf slice mask %x pipe %d active pipes %x\n",
+		      dbuf_slice_mask,
+		      for_pipe, active_pipes);
+
+	/*
+	 * Figure out at which DBuf slice we start, i.e if we start at Dbuf S2
+	 * and slice size is 1024, the offset would be 1024
+	 */
+	offset = icl_get_first_dbuf_slice_offset(dbuf_slice_mask,
+						 slice_size, ddb_size);
+
+	/*
+	 * Figure out total size of allowed DBuf slices, which is basically
+	 * a number of allowed slices for that pipe multiplied by slice size.
+	 * Inside of this
+	 * range ddb entries are still allocated in proportion to display width.
+	 */
+	ddb_range_size = hweight8(dbuf_slice_mask) * slice_size;
+
 	/*
 	 * Watermark/ddb requirement highly depends upon width of the
 	 * framebuffer, So instead of allocating DDB equally among pipes
 	 * distribute DDB based on resolution/width of the display.
 	 */
+	total_slice_mask = dbuf_slice_mask;
 	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
 		const struct drm_display_mode *adjusted_mode =
 			&crtc_state->hw.adjusted_mode;
 		enum pipe pipe = crtc->pipe;
 		int hdisplay, vdisplay;
+		u32 pipe_dbuf_slice_mask =
+					i915_possible_dbuf_slices(dev_priv,
+								  pipe,
+								  active_pipes,
+								  crtc_state);
+
+		if (!crtc_state->hw.active)
+			continue;
+
+		/*
+		 * According to BSpec pipe can share one dbuf slice with another
+		 * pipes or pipe can use multiple dbufs, in both cases we
+		 * account for other pipes only if they have exactly same mask.
+		 * However we need to account how many slices we should enable
+		 * in total.
+		 */
+		total_slice_mask |= pipe_dbuf_slice_mask;
 
-		if (!crtc_state->hw.enable)
+		/*
+		 * Do not account pipes using other slice sets
+		 * luckily as of current BSpec slice sets do not partially
+		 * intersect(pipes share either same one slice or same slice set
+		 * i.e no partial intersection), so it is enough to check for
+		 * equality for now.
+		 */
+		if (dbuf_slice_mask != pipe_dbuf_slice_mask)
 			continue;
 
 		drm_mode_get_hv_timing(adjusted_mode, &hdisplay, &vdisplay);
@@ -3906,8 +3986,19 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
 			pipe_width = hdisplay;
 	}
 
-	alloc->start = ddb_size * width_before_pipe / total_width;
-	alloc->end = ddb_size * (width_before_pipe + pipe_width) / total_width;
+	intel_state->enabled_dbuf_slices_mask = total_slice_mask;
+
+	start = ddb_range_size * width_before_pipe / total_width;
+	end = ddb_range_size * (width_before_pipe + pipe_width) / total_width;
+
+	alloc->start = offset + start;
+	alloc->end = offset + end;
+
+	DRM_DEBUG_KMS("Pipe %d ddb %d-%d\n", for_pipe,
+		      alloc->start, alloc->end);
+	DRM_DEBUG_KMS("Enabled ddb slices mask %x num supported %d\n",
+		      intel_state->enabled_dbuf_slices_mask,
+		      INTEL_INFO(dev_priv)->num_supported_dbuf_slices);
 }
 
 static int skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
@@ -4077,6 +4168,121 @@ skl_plane_downscale_amount(const struct intel_crtc_state *crtc_state,
 	return mul_fixed16(downscale_w, downscale_h);
 }
 
+struct dbuf_slice_conf_entry {
+	u32 active_pipes;
+	u32 dbuf_mask[I915_MAX_PIPES];
+};
+
+/*
+ * Table taken from Bspec 12716
+ * Pipes do have some preferred DBuf slice affinity,
+ * plus there are some hardcoded requirements on how
+ * those should be distributed for multipipe scenarios.
+ * For more DBuf slices algorithm can get even more messy
+ * and less readable, so decided to use a table almost
+ * as is from BSpec itself - that way it is at least easier
+ * to compare, change and check.
+ */
+static struct dbuf_slice_conf_entry icl_allowed_dbufs[] = {
+	{ BIT(PIPE_A), { DBUF_S1_BIT, 0, 0, 0 } },
+	{ BIT(PIPE_B), { 0, DBUF_S1_BIT, 0, 0 } },
+	{ BIT(PIPE_C), { 0, 0, DBUF_S2_BIT, 0 } },
+	{ BIT(PIPE_A) | BIT(PIPE_B), { DBUF_S1_BIT, DBUF_S2_BIT, 0, 0 } },
+	{ BIT(PIPE_A) | BIT(PIPE_C), { DBUF_S1_BIT, 0, DBUF_S2_BIT, 0 } },
+	{ BIT(PIPE_B) | BIT(PIPE_C), { 0, DBUF_S1_BIT, DBUF_S2_BIT, 0 } },
+	{ BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+		{ DBUF_S1_BIT, DBUF_S1_BIT, DBUF_S2_BIT, 0 } }
+};
+
+/*
+ * Table taken from Bspec 49255
+ * Pipes do have some preferred DBuf slice affinity,
+ * plus there are some hardcoded requirements on how
+ * those should be distributed for multipipe scenarios.
+ * For more DBuf slices algorithm can get even more messy
+ * and less readable, so decided to use a table almost
+ * as is from BSpec itself - that way it is at least easier
+ * to compare, change and check.
+ */
+static struct dbuf_slice_conf_entry tgl_allowed_dbufs[] = {
+	{ BIT(PIPE_A), { DBUF_S1_BIT | DBUF_S2_BIT, 0, 0, 0 } },
+	{ BIT(PIPE_B), { 0, DBUF_S1_BIT | DBUF_S2_BIT, 0, 0 } },
+	{ BIT(PIPE_C), { 0, 0, DBUF_S1_BIT | DBUF_S2_BIT, 0 } },
+	{ BIT(PIPE_D), { 0, 0, 0, DBUF_S1_BIT | DBUF_S2_BIT } },
+	{ BIT(PIPE_A) | BIT(PIPE_B), { DBUF_S2_BIT, DBUF_S1_BIT, 0, 0 } },
+	{ BIT(PIPE_A) | BIT(PIPE_C), { DBUF_S1_BIT, 0, DBUF_S2_BIT, 0 } },
+	{ BIT(PIPE_A) | BIT(PIPE_D), { DBUF_S1_BIT, 0, 0, DBUF_S2_BIT } },
+	{ BIT(PIPE_B) | BIT(PIPE_C), { 0, DBUF_S1_BIT, DBUF_S2_BIT, 0 } },
+	{ BIT(PIPE_B) | BIT(PIPE_D), { 0, DBUF_S1_BIT, 0, DBUF_S2_BIT } },
+	{ BIT(PIPE_C) | BIT(PIPE_D), { 0, 0, DBUF_S2_BIT, DBUF_S2_BIT } },
+	{ BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+		{ DBUF_S1_BIT, DBUF_S1_BIT, DBUF_S2_BIT, 0 } },
+	{ BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
+		{ DBUF_S1_BIT, DBUF_S1_BIT, 0, DBUF_S2_BIT } },
+	{ BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
+		{ DBUF_S1_BIT, 0, DBUF_S2_BIT, DBUF_S2_BIT } },
+	{ BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+		{ 0, DBUF_S1_BIT, DBUF_S2_BIT, DBUF_S2_BIT } },
+	{ BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+		{ DBUF_S1_BIT, DBUF_S1_BIT, DBUF_S2_BIT, DBUF_S2_BIT } },
+};
+
+static u32 i915_find_pipe_conf(int pipe,
+			       u32 active_pipes,
+			       const struct dbuf_slice_conf_entry *dbuf_slices,
+			       int size)
+{
+	int i;
+
+	for (i = 0; i < size; i++) {
+		if (dbuf_slices[i].active_pipes == active_pipes)
+			return dbuf_slices[i].dbuf_mask[pipe];
+	}
+	return 0;
+}
+
+/*
+ * This function finds an entry with same enabled pipe configuration and
+ * returns correspondent DBuf slice mask as stated in BSpec for particular
+ * platform.
+ */
+static u32 icl_possible_dbuf_slices(int pipe,
+				    u32 active_pipes,
+				    const struct intel_crtc_state *crtc_state)
+{
+	return i915_find_pipe_conf(pipe, active_pipes,
+				   icl_allowed_dbufs,
+				   ARRAY_SIZE(icl_allowed_dbufs));
+}
+
+static u32 tgl_possible_dbuf_slices(int pipe,
+				    u32 active_pipes,
+				    const struct intel_crtc_state *crtc_state)
+{
+	return i915_find_pipe_conf(pipe, active_pipes,
+				   tgl_allowed_dbufs,
+				   ARRAY_SIZE(tgl_allowed_dbufs));
+}
+
+u32 i915_possible_dbuf_slices(struct drm_i915_private *dev_priv,
+			      int pipe, u32 active_pipes,
+			      const struct intel_crtc_state *crtc_state)
+{
+	if (IS_GEN(dev_priv, 11))
+		return icl_possible_dbuf_slices(pipe,
+						active_pipes,
+						crtc_state);
+	else if (IS_GEN(dev_priv, 12))
+		return tgl_possible_dbuf_slices(pipe,
+						active_pipes,
+						crtc_state);
+	/*
+	 * For anything else just return one slice yet.
+	 * Should be extended for other platforms.
+	 */
+	return DBUF_S1_BIT;
+}
+
 static u64
 skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 			     const struct intel_plane_state *plane_state,
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
