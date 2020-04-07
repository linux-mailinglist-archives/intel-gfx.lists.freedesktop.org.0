Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2731A0888
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 09:43:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 278DD6E56D;
	Tue,  7 Apr 2020 07:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E91886E56D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 07:43:32 +0000 (UTC)
IronPort-SDR: ysNW5qTwbYZWd6RqWa8vMa4cMfE/ny5a54HfgkouDOxNcLlnqHOS71WfHAX0OWfBCSIkW+/Dvw
 btX+M2xIDQeA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 00:43:32 -0700
IronPort-SDR: +qa95qoyg0Aw7+T/J6VMQvtDMUsojHgftqW5hhbenhPFcqGHZe2Idil6EhW9fnANACHUBkYIcF
 8VVEH6yAeJOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="424660842"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 07 Apr 2020 00:43:30 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 10:39:59 +0300
Message-Id: <20200407073959.4179-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200330122354.24752-5-stanislav.lisovskiy@intel.com>
References: <20200330122354.24752-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 4/5] drm/i915: Adjust CDCLK accordingly to
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

v4: - Fixed missing const(Ville)
    - Removed spurious whitespaces(Ville)
    - Fixed local variable init(reduced scope where not needed)
    - Added some comments about data rate for planar formats
    - Changed struct intel_crtc_bw to intel_dbuf_bw
    - Moved dbuf bw calculation to intel_compute_min_cdclk(Ville)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 73 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h       |  7 ++
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 27 +++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  8 ++
 .../drm/i915/display/intel_display_power.h    |  2 +
 drivers/gpu/drm/i915/intel_pm.c               | 31 +++++++-
 drivers/gpu/drm/i915/intel_pm.h               |  3 +
 7 files changed, 148 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 58b264bc318d..43f7177d98dd 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -6,6 +6,7 @@
 #include <drm/drm_atomic_state_helper.h>
 
 #include "intel_bw.h"
+#include "intel_pm.h"
 #include "intel_display_types.h"
 #include "intel_sideband.h"
 
@@ -333,7 +334,6 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 
 	return data_rate;
 }
-
 void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state)
 {
@@ -387,6 +387,77 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	return to_intel_bw_state(bw_state);
 }
 
+int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	int i;
+	const struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int max_bw = 0;
+	int min_cdclk;
+	struct intel_bw_state *bw_state;
+	int slice_id;
+
+	bw_state = intel_atomic_get_bw_state(state);
+	if (IS_ERR(bw_state))
+		return PTR_ERR(bw_state);
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		enum plane_id plane_id;
+		struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
+
+		memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
+
+		for_each_plane_id_on_crtc(crtc, plane_id) {
+			const struct skl_ddb_entry *plane_alloc =
+				&crtc_state->wm.skl.plane_ddb_y[plane_id];
+			const struct skl_ddb_entry *uv_plane_alloc =
+				&crtc_state->wm.skl.plane_ddb_uv[plane_id];
+			unsigned int data_rate = crtc_state->data_rate[plane_id];
+			unsigned int dbuf_mask = 0;
+
+			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, plane_alloc);
+			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);
+
+			/*
+			 * FIXME: To calculate that more properly we probably need to
+			 * to split per plane data_rate into data_rate_y and data_rate_uv
+			 * for multiplanar formats in order not to get accounted those twice
+			 * if they happen to reside on different slices.
+			 * However for pre-icl this would work anyway because we have only single
+			 * slice and for icl+ uv plane has non-zero data rate.
+			 * So in worst case those calculation are a bit pessimistic, which
+			 * shouldn't pose any significant problem anyway.
+			 */
+			for_each_dbuf_slice_in_mask(slice_id, dbuf_mask)
+				crtc_bw->used_bw[slice_id] += data_rate;
+		}
+	}
+
+	for_each_dbuf_slice(slice_id) {
+		int total_bw_per_slice = 0;
+		enum pipe pipe;
+
+		/*
+		 * Current experimental observations show that contrary to BSpec
+		 * we get underruns once we exceed 64 * CDCLK for slices in total.
+		 * As a temporary measure in order not to keep CDCLK bumped up all the
+		 * time we calculate CDCLK according to this formula for  overall bw
+		 * consumed by slices.
+		 */
+		for_each_pipe(dev_priv, pipe) {
+			struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[pipe];
+
+			total_bw_per_slice += crtc_bw->used_bw[slice_id];
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
index a8aa7624c5aa..e0ac43c38b3d 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -10,13 +10,19 @@
 
 #include "intel_display.h"
 #include "intel_global_state.h"
+#include "intel_display_power.h"
 
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc_state;
 
+struct intel_dbuf_bw {
+	int used_bw[I915_MAX_DBUF_SLICES];
+};
+
 struct intel_bw_state {
 	struct intel_global_state base;
+	struct intel_dbuf_bw dbuf_bw[I915_MAX_PIPES];
 
 	unsigned int data_rate[I915_MAX_PIPES];
 	u8 num_active_planes[I915_MAX_PIPES];
@@ -29,5 +35,6 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
 void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state);
+int intel_bw_calc_min_cdclk(struct intel_atomic_state *state);
 
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 979a0241fdcb..fbb8cbcee3d2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -25,6 +25,7 @@
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
 #include "intel_sideband.h"
+#include "intel_bw.h"
 
 /**
  * DOC: CDCLK / RAWCLK
@@ -2090,6 +2091,23 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	return min_cdclk;
 }
 
+static int intel_compute_dbuf_min_cdclk(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	int min_cdclk = intel_bw_calc_min_cdclk(state);
+
+	DRM_DEBUG_KMS("DBuf bw min cdclk %d\n", min_cdclk);
+
+	if (min_cdclk > dev_priv->max_cdclk_freq) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
+			    min_cdclk, dev_priv->max_cdclk_freq);
+		return -EINVAL;
+	}
+
+	return min_cdclk;
+}
+
 static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 {
 	struct intel_atomic_state *state = cdclk_state->base.state;
@@ -2098,6 +2116,13 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 	struct intel_crtc_state *crtc_state;
 	int min_cdclk, i;
 	enum pipe pipe;
+	int dbuf_bw_min_cdclk = 0;
+
+	if (INTEL_GEN(dev_priv) >= 11) {
+		dbuf_bw_min_cdclk = intel_compute_dbuf_min_cdclk(state);
+		if (dbuf_bw_min_cdclk < 0)
+			return dbuf_bw_min_cdclk;
+	}
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		int ret;
@@ -2106,6 +2131,8 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 		if (min_cdclk < 0)
 			return min_cdclk;
 
+		min_cdclk = max(min_cdclk, dbuf_bw_min_cdclk);
+
 		if (cdclk_state->min_cdclk[i] == min_cdclk)
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 307636b23ac9..f9ca883a605e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14595,6 +14595,14 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state,
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
index 815d8fec7e4a..da3d9595ae49 100644
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
index 8375054ba27d..51716af263cb 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3844,10 +3844,9 @@ icl_get_first_dbuf_slice_offset(u32 dbuf_slice_mask,
 	return offset;
 }
 
-static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
+u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
 {
 	u16 ddb_size = INTEL_INFO(dev_priv)->ddb_size;
-
 	drm_WARN_ON(&dev_priv->drm, ddb_size == 0);
 
 	if (INTEL_GEN(dev_priv) < 11)
@@ -3856,6 +3855,34 @@ static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
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
+	/*
+	 * Per plane DDB entry can in a really worst case be on multiple slices
+	 * but single entry is anyway contigious.
+	 */
+	while (start_slice <= end_slice) {
+		slice_mask |= BIT(start_slice);
+		start_slice++;
+	}
+
+	return slice_mask;
+}
+
 static u8 skl_compute_dbuf_slices(const struct intel_crtc_state *crtc_state,
 				  u8 active_pipes);
 
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index d60a85421c5a..a9e3835927a8 100644
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
