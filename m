Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFD1186A3C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 12:41:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 967576E416;
	Mon, 16 Mar 2020 11:41:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94F1F6E413
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 11:41:45 +0000 (UTC)
IronPort-SDR: jPFhcowJ3uVoxtmqG0hzf5TPyLP9kHlUFukG6NqrKdgeX8CJKR0TiSkI83P4mhW4yDVO+CCzdX
 Ikpd1styF/Ew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 04:41:45 -0700
IronPort-SDR: qEw5VBiWPYKgNlwzEalbAjAT3iMo2f8pDGoVDItBd1ROhJgATonxSKsZmlxRv9uTi2YRdAbQbm
 twgGl1OugaKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="279003134"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga002.fm.intel.com with ESMTP; 16 Mar 2020 04:41:43 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 13:37:43 +0200
Message-Id: <20200316113744.31203-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
References: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1 2/3] drm/i915: Adjust CDCLK accordingly to
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
perfomance once plane consumption grows.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 46 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bw.h       |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 22 +++++++++
 drivers/gpu/drm/i915/display/intel_display.c  | 10 +++-
 .../drm/i915/display/intel_display_power.h    |  1 +
 drivers/gpu/drm/i915/intel_pm.c               | 34 +++++++++++++-
 drivers/gpu/drm/i915/intel_pm.h               |  3 ++
 7 files changed, 114 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 58b264bc318d..a85125110d7e 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -6,6 +6,7 @@
 #include <drm/drm_atomic_state_helper.h>
 
 #include "intel_bw.h"
+#include "intel_pm.h"
 #include "intel_display_types.h"
 #include "intel_sideband.h"
 
@@ -334,6 +335,51 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 	return data_rate;
 }
 
+int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	int max_bw_per_dbuf[DBUF_SLICE_MAX];
+	int i = 0;
+	enum plane_id plane_id;
+	struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int max_bw = 0;
+	int min_cdclk;
+
+	memset(max_bw_per_dbuf, 0, sizeof(max_bw_per_dbuf[0]) * DBUF_SLICE_MAX);
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		for_each_plane_id_on_crtc(crtc, plane_id) {
+			struct skl_ddb_entry *plane_alloc =
+				&crtc_state->wm.skl.plane_ddb_y[plane_id];
+			struct skl_ddb_entry *uv_plane_alloc =
+				&crtc_state->wm.skl.plane_ddb_uv[plane_id];
+			unsigned int data_rate = crtc_state->data_rate[plane_id];
+			int slice_id = 0;
+			u32 dbuf_mask = skl_ddb_dbuf_slice_mask(dev_priv, plane_alloc);
+
+			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);
+
+			DRM_DEBUG_KMS("Got dbuf mask %x for pipe %c ddb %d-%d plane %d data rate %d\n",
+				      dbuf_mask, pipe_name(crtc->pipe), plane_alloc->start,
+				      plane_alloc->end, plane_id, data_rate);
+
+			while (dbuf_mask != 0) {
+				if (dbuf_mask & 1) {
+					max_bw_per_dbuf[slice_id] += data_rate;
+					max_bw = max(max_bw, max_bw_per_dbuf[slice_id]);
+				}
+				slice_id++;
+				dbuf_mask >>= 1;
+			}
+		}
+	}
+
+	min_cdclk = max_bw / 64;
+
+	return min_cdclk;
+}
+
 void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index a8aa7624c5aa..8a522b571c51 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -29,5 +29,6 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
 void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 			  const struct intel_crtc_state *crtc_state);
+int intel_bw_calc_min_cdclk(struct intel_atomic_state *state);
 
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0741d643455b..f0dcea4d6357 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -25,6 +25,7 @@
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
 #include "intel_sideband.h"
+#include "intel_bw.h"
 
 /**
  * DOC: CDCLK / RAWCLK
@@ -1979,11 +1980,19 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
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
@@ -2058,6 +2067,19 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	if (IS_TIGERLAKE(dev_priv))
 		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
 
+	/*
+	 * Similar story as with skl_write_plane_wm and intel_enable_sagv
+	 * - in some certain driver parts, we don't have any guarantee that
+	 * parent exists. So we might be having a crtc_state without
+	 * parent state.
+	 */
+	if (state) {
+		int dbuf_bw_cdclk = intel_bw_calc_min_cdclk(state);
+
+		DRM_DEBUG_KMS("DBuf bw min cdclk %d current min_cdclk %d\n", dbuf_bw_cdclk, min_cdclk);
+		min_cdclk = max(min_cdclk, dbuf_bw_cdclk);
+	}
+
 	if (min_cdclk > dev_priv->max_cdclk_freq) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cdff3054b344..aae5521424c6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14632,7 +14632,7 @@ static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
 	/* See {hsw,vlv,ivb}_plane_ratio() */
 	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
 		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
-		IS_IVYBRIDGE(dev_priv);
+		IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) >= 11);
 }
 
 static int intel_atomic_check_planes(struct intel_atomic_state *state,
@@ -14681,6 +14681,14 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state,
 		if (hweight8(old_active_planes) == hweight8(new_active_planes))
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
index da64a5edae7a..3446c3ce6a4f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -311,6 +311,7 @@ intel_display_power_put_async(struct drm_i915_private *i915,
 enum dbuf_slice {
 	DBUF_S1,
 	DBUF_S2,
+	DBUF_SLICE_MAX
 };
 
 #define with_intel_display_power(i915, domain, wf) \
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8375054ba27d..15300c44d9dc 100644
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
@@ -3856,6 +3855,37 @@ static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
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
