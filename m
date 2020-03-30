Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72598197BD3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 14:27:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B07206E28E;
	Mon, 30 Mar 2020 12:27:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C916E293
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 12:27:46 +0000 (UTC)
IronPort-SDR: Y6yjRbi+QUISPEPI6JXIJr8M3jwslXqIKifJJWAJ8xmCegHCraNh6hkgbHZ0J47y1o4lYjZiSF
 zDPzTZ45/WAw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 05:27:46 -0700
IronPort-SDR: wzJJd/W8rw4wANzx9//qS7uK9IinAUfrJO2N9fdFg2hzgUiIzSUxz/LqOVBmNYp8zh/LvG8z8k
 NXDDVF98pBSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="248684193"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2020 05:27:43 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 15:23:53 +0300
Message-Id: <20200330122354.24752-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
References: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/5] drm/i915: Adjust CDCLK accordingly to
 our DBuf bw needs
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

According to BSpec max BW per slice is calculated using formula
Max BW = CDCLK * 64. Currently when calculating min CDCLK we
account only per plane requirements, however in order to avoid
FIFO underruns we need to estimate accumulated BW consumed by
all planes(ddb entries basically) residing on that particular
DBuf slice. This will allow us to put CDCLK lower and save power
when we don't need that much bandwidth or gain additional
performance once plane consumption grows.

v2: - Fix long line warning
    - Limited new DBuf bw checks to only gens >= 11

v3: - Lets track used Dbuf bw per slice and per crtc in bw state
      (or may be in DBuf state in future), that way we don't need
      to have all crtcs in state and those only if we detect if
      are actually going to change cdclk, just same way as we
      do with other stuff, i.e intel_atomic_serialize_global_state
      and co. Just as per Ville's paradigm.
    - Made dbuf bw calculation procedure look nicer by introducing
      for_each_dbuf_slice_in_mask - we often will now need to iterate
      slices using mask.
    - According to experimental results CDCLK * 64 accounts for
      overall bandwidth across all dbufs, not per dbuf.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 61 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h       |  8 +++
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 25 ++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  8 +++
 .../drm/i915/display/intel_display_power.h    |  2 +
 drivers/gpu/drm/i915/intel_pm.c               | 34 ++++++++++-
 drivers/gpu/drm/i915/intel_pm.h               |  3 +
 7 files changed, 138 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 573a1c206b60..e9d65820fb76 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -6,6 +6,7 @@
 #include <drm/drm_atomic_state_helper.h>
 
 #include "intel_bw.h"
+#include "intel_pm.h"
 #include "intel_display_types.h"
 #include "intel_sideband.h"
 #include "intel_atomic.h"
@@ -338,7 +339,6 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 
 	return data_rate;
 }
-
 void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state)
 {
@@ -419,6 +419,65 @@ intel_atomic_bw_get_state(struct intel_atomic_state *state)
 	return to_intel_bw_state(bw_state);
 }
 
+int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	int i = 0;
+	enum plane_id plane_id;
+	struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int max_bw = 0;
+	int min_cdclk;
+	enum pipe pipe;
+	struct intel_bw_state *bw_state;
+	int slice_id = 0;
+
+	bw_state = intel_atomic_bw_get_state(state);
+
+	if (IS_ERR(bw_state))
+		return PTR_ERR(bw_state);
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		struct intel_crtc_bw *crtc_bw = &bw_state->dbuf_bw_used[crtc->pipe];
+
+		memset(&crtc_bw->dbuf_bw, 0, sizeof(crtc_bw->dbuf_bw));
+
+		for_each_plane_id_on_crtc(crtc, plane_id) {
+			struct skl_ddb_entry *plane_alloc =
+				&crtc_state->wm.skl.plane_ddb_y[plane_id];
+			struct skl_ddb_entry *uv_plane_alloc =
+				&crtc_state->wm.skl.plane_ddb_uv[plane_id];
+			unsigned int data_rate = crtc_state->data_rate[plane_id];
+
+			unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(dev_priv, plane_alloc);
+
+			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);
+
+			DRM_DEBUG_KMS("Got dbuf mask %x for pipe %c ddb %d-%d plane %d data rate %d\n",
+				      dbuf_mask, pipe_name(crtc->pipe), plane_alloc->start,
+				      plane_alloc->end, plane_id, data_rate);
+
+			for_each_dbuf_slice_in_mask(slice_id, dbuf_mask)
+				crtc_bw->dbuf_bw[slice_id] += data_rate;
+		}
+	}
+
+	for_each_dbuf_slice(slice_id) {
+		int total_bw_per_slice = 0;
+
+		for_each_pipe(dev_priv, pipe) {
+			struct intel_crtc_bw *crtc_bw = &bw_state->dbuf_bw_used[pipe];
+
+			total_bw_per_slice += crtc_bw->dbuf_bw[slice_id];
+		}
+		max_bw += total_bw_per_slice;
+	}
+
+	min_cdclk = max_bw / 64;
+
+	return min_cdclk;
+}
+
 int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 9a5627be6876..d2b5f32b0791 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -10,11 +10,16 @@
 
 #include "intel_display.h"
 #include "intel_global_state.h"
+#include "intel_display_power.h"
 
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc_state;
 
+struct intel_crtc_bw {
+	int dbuf_bw[I915_MAX_DBUF_SLICES];
+};
+
 struct intel_bw_state {
 	struct intel_global_state base;
 
@@ -31,6 +36,8 @@ struct intel_bw_state {
 	 */
 	u8 qgv_points_mask;
 
+	struct intel_crtc_bw dbuf_bw_used[I915_MAX_PIPES];
+
 	unsigned int data_rate[I915_MAX_PIPES];
 	u8 num_active_planes[I915_MAX_PIPES];
 };
@@ -53,5 +60,6 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state);
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask);
+int intel_bw_calc_min_cdclk(struct intel_atomic_state *state);
 
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 979a0241fdcb..036774e7f3ec 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -25,6 +25,7 @@
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
 #include "intel_sideband.h"
+#include "intel_bw.h"
 
 /**
  * DOC: CDCLK / RAWCLK
@@ -2001,11 +2002,19 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv =
 		to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_atomic_state *state = NULL;
 	int min_cdclk;
 
 	if (!crtc_state->hw.enable)
 		return 0;
 
+	/*
+	 * FIXME: Unfortunately when this gets called from intel_modeset_setup_hw_state
+	 * there is no intel_atomic_state at all. So lets not then use it.
+	 */
+	if (crtc_state->uapi.state)
+		state = to_intel_atomic_state(crtc_state->uapi.state);
+
 	min_cdclk = intel_pixel_rate_to_cdclk(crtc_state);
 
 	/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
@@ -2080,6 +2089,22 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	if (IS_TIGERLAKE(dev_priv))
 		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
 
+	/*
+	 * Similar story as with skl_write_plane_wm and intel_enable_sagv
+	 * - in some certain driver parts, we don't have any guarantee that
+	 * parent exists. So we might be having a crtc_state without
+	 * parent state.
+	 */
+	if (INTEL_GEN(dev_priv) >= 11) {
+		if (state) {
+			int dbuf_bw_cdclk = intel_bw_calc_min_cdclk(state);
+
+			DRM_DEBUG_KMS("DBuf bw min cdclk %d current min_cdclk %d\n",
+				      dbuf_bw_cdclk, min_cdclk);
+			min_cdclk = max(min_cdclk, dbuf_bw_cdclk);
+		}
+	}
+
 	if (min_cdclk > dev_priv->max_cdclk_freq) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9fd32d61ebfe..fa2870c0d7fd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14678,6 +14678,14 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state,
 		if (old_active_planes == new_active_planes)
 			continue;
 
+		/*
+		 * active_planes bitmask has been updated, whenever amount
+		 * of active planes had changed we need to recalculate CDCLK
+		 * as it depends on total bandwidth now, not only min_cdclk
+		 * per plane.
+		 */
+		*need_cdclk_calc = true;
+
 		ret = intel_crtc_add_planes_to_state(state, crtc, new_active_planes);
 		if (ret)
 			return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 468e8fb0203a..9e33fb90422f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -308,6 +308,8 @@ intel_display_power_put_async(struct drm_i915_private *i915,
 }
 #endif
 
+#define I915_MAX_DBUF_SLICES 2
+
 enum dbuf_slice {
 	DBUF_S1,
 	DBUF_S2,
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 551933e3f7da..5dcd1cd09ad7 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4055,10 +4055,9 @@ icl_get_first_dbuf_slice_offset(u32 dbuf_slice_mask,
 	return offset;
 }
 
-static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
+u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
 {
 	u16 ddb_size = INTEL_INFO(dev_priv)->ddb_size;
-
 	drm_WARN_ON(&dev_priv->drm, ddb_size == 0);
 
 	if (INTEL_GEN(dev_priv) < 11)
@@ -4067,6 +4066,37 @@ static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
 	return ddb_size;
 }
 
+u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
+			    const struct skl_ddb_entry *entry)
+{
+	u32 slice_mask = 0;
+	u16 ddb_size = intel_get_ddb_size(dev_priv);
+	u16 num_supported_slices = INTEL_INFO(dev_priv)->num_supported_dbuf_slices;
+	u16 slice_size = ddb_size / num_supported_slices;
+	u16 start_slice;
+	u16 end_slice;
+
+	if (!skl_ddb_entry_size(entry))
+		return 0;
+
+	start_slice = entry->start / slice_size;
+	end_slice = (entry->end - 1) / slice_size;
+
+	DRM_DEBUG_KMS("ddb size %d slices %d slice size %d start slice %d end slice %d\n",
+		      ddb_size, num_supported_slices, slice_size, start_slice, end_slice);
+
+	/*
+	 * Per plane DDB entry can in a really worst case be on multiple slices
+	 * but single entry is anyway contigious.
+	 */
+	while (start_slice <= end_slice) {
+		slice_mask |= 1 << start_slice;
+		start_slice++;
+	}
+
+	return slice_mask;
+}
+
 static u8 skl_compute_dbuf_slices(const struct intel_crtc_state *crtc_state,
 				  u8 active_pipes);
 
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index 069515f04170..41c61ad71ce6 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -37,6 +37,9 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 			       struct skl_ddb_entry *ddb_y,
 			       struct skl_ddb_entry *ddb_uv);
 void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);
+u16 intel_get_ddb_size(struct drm_i915_private *dev_priv);
+u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
+			    const struct skl_ddb_entry *entry);
 void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 			      struct skl_pipe_wm *out);
 void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
