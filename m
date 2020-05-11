Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F32901CDE55
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 17:10:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BD856E4C7;
	Mon, 11 May 2020 15:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA1F66E4C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 15:10:03 +0000 (UTC)
IronPort-SDR: Cur69Lg/D2jEMPrbkdTzSguMIXCktxWTN3qxxwA5gralyL8KdHeeyGqZxkZLQtwOU/KWZDQyjo
 ssEzX/I63dOw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 08:10:03 -0700
IronPort-SDR: c3hVWyc/lBP9+pTPaBVv21dvckXUGOQ3Yasgxj2c6NTtB1S5m7VR9SbIokup+ceQlPpd2C/cVI
 oCyi2yAVJQ5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,380,1583222400"; d="scan'208";a="306202744"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by FMSMGA003.fm.intel.com with ESMTP; 11 May 2020 08:10:01 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 18:05:44 +0300
Message-Id: <20200511150545.15149-7-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200511150545.15149-1-stanislav.lisovskiy@intel.com>
References: <20200511150545.15149-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 6/7] drm/i915: Adjust CDCLK accordingly to
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

v5: - Removed unneeded macro

v6: - Prevent too frequent CDCLK switching back and forth:
      Always switch to higher CDCLK when needed to prevent bandwidth
      issues, however don't switch to lower CDCLK earlier than once
      in 30 minutes in order to prevent constant modeset blinking.
      We could of course not switch back at all, however this is
      bad from power consumption point of view.

v7: - Fixed to track cdclk using bw_state, modeset will be now
      triggered only when CDCLK change is really needed.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 74 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h      |  9 +++
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  9 +++
 drivers/gpu/drm/i915/display/intel_cdclk.h   |  1 -
 drivers/gpu/drm/i915/display/intel_display.c | 34 +++++++--
 drivers/gpu/drm/i915/intel_pm.c              | 31 +++++++-
 drivers/gpu/drm/i915/intel_pm.h              |  3 +
 7 files changed, 152 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 6e7cc3a4f1aa..30d1c62a6c36 100644
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
@@ -410,6 +410,78 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
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
+	bw_state->min_cdclk = min_cdclk;
+
+	return 0;
+}
+
 int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 898b4a85ccab..d8c92a59ba49 100644
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
 
 	/*
 	 * Contains a bit mask, used to determine, whether correspondent
@@ -29,6 +35,8 @@ struct intel_bw_state {
 
 	/* bitmask of active pipes */
 	u8 active_pipes;
+
+	int min_cdclk;
 };
 
 #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, base)
@@ -47,5 +55,6 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
 void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state);
+int intel_bw_calc_min_cdclk(struct intel_atomic_state *state);
 
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 979a0241fdcb..b644d0aaba1f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -21,10 +21,12 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
+#include <linux/time.h>
 #include "intel_atomic.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
 #include "intel_sideband.h"
+#include "intel_bw.h"
 
 /**
  * DOC: CDCLK / RAWCLK
@@ -2098,6 +2100,7 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 	struct intel_crtc_state *crtc_state;
 	int min_cdclk, i;
 	enum pipe pipe;
+	struct intel_bw_state *bw_state;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		int ret;
@@ -2120,6 +2123,12 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
 	for_each_pipe(dev_priv, pipe)
 		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
 
+	bw_state = intel_atomic_get_bw_state(state);
+	if (IS_ERR(bw_state))
+		return PTR_ERR(bw_state);
+
+	min_cdclk = max(bw_state->min_cdclk, min_cdclk);
+
 	return min_cdclk;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 5731806e4cee..d62e11d620c0 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -7,7 +7,6 @@
 #define __INTEL_CDCLK_H__
 
 #include <linux/types.h>
-
 #include "i915_drv.h"
 #include "intel_display.h"
 #include "intel_global_state.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 012c3ed64b02..1ab7a14fe322 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14634,15 +14634,15 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
 				    bool *need_cdclk_calc)
 {
-	struct intel_cdclk_state *new_cdclk_state;
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_cdclk_state *cdclk_state;
 	int i;
 	struct intel_plane_state *plane_state;
 	struct intel_plane *plane;
 	int ret;
-
-	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
-	if (new_cdclk_state && new_cdclk_state->force_min_cdclk_changed)
-		*need_cdclk_calc = true;
+	int min_cdclk;
+	enum pipe pipe;
+	struct intel_bw_state *bw_state;
 
 	/*
 	 * active_planes bitmask has been updated, and potentially
@@ -14655,6 +14655,30 @@ static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
 			return ret;
 	}
 
+	cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(cdclk_state))
+		return PTR_ERR(cdclk_state);
+
+	if (cdclk_state->force_min_cdclk_changed)
+		*need_cdclk_calc = true;
+
+	ret = intel_bw_calc_min_cdclk(state);
+	if (ret)
+		return ret;
+
+	for_each_pipe(dev_priv, pipe)
+		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
+
+	bw_state = intel_atomic_get_bw_state(state);
+	if (IS_ERR(bw_state))
+		return PTR_ERR(bw_state);
+
+	/*
+	 * Currently do this change only if we need to increase
+	 */
+	if (bw_state->min_cdclk > min_cdclk)
+		*need_cdclk_calc = true;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 416cb1a1e7cb..7c0ec0efef11 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3929,10 +3929,9 @@ icl_get_first_dbuf_slice_offset(u32 dbuf_slice_mask,
 	return offset;
 }
 
-static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
+u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
 {
 	u16 ddb_size = INTEL_INFO(dev_priv)->ddb_size;
-
 	drm_WARN_ON(&dev_priv->drm, ddb_size == 0);
 
 	if (INTEL_GEN(dev_priv) < 11)
@@ -3941,6 +3940,34 @@ static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
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
index fd1dc422e6c5..de7f6c4103ba 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -38,6 +38,9 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
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
