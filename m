Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7569168EC0D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 10:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6E3210E737;
	Wed,  8 Feb 2023 09:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FF0C10E730
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 09:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675849768; x=1707385768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fdH+UswR3RMb4yUgdLABGFNvO6vI3qIriSOR2Y7eUJo=;
 b=VWYD8ZMECL5Ci9Nar2dkcv6hGt7lEBpw7b5i4/CgGz5wwVlWF5P404rt
 pbWkq58Vs+0VYKD2KtTh1a4wlUYPNielt6y6kkWQNQMC/cLjTrOoz57g7
 iYrUlg45FFD0kDokEqb+zf7QC8IzsIWA81OCUn6dJObDmN5+OCLr2nUMZ
 TYyP6ksEiN+Gdw+8KuH7zYtqafe83Dp5lPZAV+gz2N2Ir/DzOIGapb/ze
 BQ7+8AGI4L3UVPrxonNHoATUdnvNVFWw5tvfiiecbsJFQbpX3Yc9a7WfY
 v3ePtGb40DIdccwRujlmUMwZSRndOh1JD56J7onLu9ZZg2355GwAD0ZIH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="394348225"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="394348225"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="697619057"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="697619057"
Received: from joergber-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.82])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 11:48:46 +0200
Message-Id: <4c68282ef1febbf9bf7a56ab7252e20bfa11e168.1675849634.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675849634.git.jani.nikula@intel.com>
References: <cover.1675849634.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/wm: convert from
 ilk_wm_max_level() to {intel, skl}_wm_num_levels()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Observe that most uses of ilk_wm_max_level() are more naturally
implemented using the number of levels, not the max level. Switch to the
*_wm_num_levels() functions. The SKL+ code can use skl_wm_num_levels()
directly, while others shall use the generic intel_wm_num_levels().

Make ilk_wm_max_level() static, and drop the SKL+ support from it. Add a
few sanity checks to ensure we got everything right.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c       | 10 ++--
 drivers/gpu/drm/i915/display/i9xx_wm.h       |  1 -
 drivers/gpu/drm/i915/display/intel_wm.c      |  4 +-
 drivers/gpu/drm/i915/display/skl_watermark.c | 60 ++++++++++----------
 4 files changed, 37 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index b5f75fe2f414..6b0c580c77a1 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -2669,14 +2669,12 @@ static void intel_fixup_cur_wm_latency(struct drm_i915_private *dev_priv,
 		wm[0] = 13;
 }
 
-int ilk_wm_max_level(const struct drm_i915_private *dev_priv)
+static int ilk_wm_max_level(const struct drm_i915_private *dev_priv)
 {
+	drm_WARN_ON_ONCE(&dev_priv->drm, DISPLAY_VER(dev_priv) >= 9);
+
 	/* how many WM levels are we expecting */
-	if (HAS_HW_SAGV_WM(dev_priv))
-		return 5;
-	else if (DISPLAY_VER(dev_priv) >= 9)
-		return 7;
-	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
+	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
 		return 4;
 	else if (DISPLAY_VER(dev_priv) >= 6)
 		return 3;
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.h b/drivers/gpu/drm/i915/display/i9xx_wm.h
index 62250e1f7931..6755f191e022 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.h
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.h
@@ -12,7 +12,6 @@ struct drm_i915_private;
 struct intel_crtc_state;
 struct intel_plane_state;
 
-int ilk_wm_max_level(const struct drm_i915_private *i915);
 int i9xx_wm_num_levels(const struct drm_i915_private *i915);
 bool ilk_disable_lp_wm(struct drm_i915_private *i915);
 bool intel_set_memory_cxsr(struct drm_i915_private *i915, bool enable);
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index 8f8ab7978208..632eeca32d7d 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -147,9 +147,9 @@ bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 void intel_print_wm_latency(struct drm_i915_private *dev_priv,
 			    const char *name, const u16 wm[])
 {
-	int level, max_level = ilk_wm_max_level(dev_priv);
+	int level, num_levels = intel_wm_num_levels(dev_priv);
 
-	for (level = 0; level <= max_level; level++) {
+	for (level = 0; level < num_levels; level++) {
 		unsigned int latency = wm[level];
 
 		if (latency == 0) {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9ff3f2000f37..d8769680c196 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -360,7 +360,7 @@ static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 			continue;
 
 		/* Find the highest enabled wm level for this plane */
-		for (level = ilk_wm_max_level(i915);
+		for (level = skl_wm_num_levels(i915) - 1;
 		     !wm->wm[level].enable; --level)
 		     { }
 
@@ -711,7 +711,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_plane *plane = to_intel_plane(crtc_state->uapi.crtc->cursor);
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	int level, max_level = ilk_wm_max_level(i915);
+	int level, num_levels = skl_wm_num_levels(i915);
 	struct skl_wm_level wm = {};
 	int ret, min_ddb_alloc = 0;
 	struct skl_wm_params wp;
@@ -723,7 +723,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 				    crtc_state->pixel_rate, &wp, 0);
 	drm_WARN_ON(&i915->drm, ret);
 
-	for (level = 0; level <= max_level; level++) {
+	for (level = 0; level < num_levels; level++) {
 		unsigned int latency = i915->display.wm.skl_latency[level];
 
 		skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm, &wm);
@@ -1493,7 +1493,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	 * Find the highest watermark level for which we can satisfy the block
 	 * requirement of active planes.
 	 */
-	for (level = ilk_wm_max_level(i915); level >= 0; level--) {
+	for (level = skl_wm_num_levels(i915) - 1; level >= 0; level--) {
 		blocks = 0;
 		for_each_plane_id_on_crtc(crtc, plane_id) {
 			const struct skl_plane_wm *wm =
@@ -1569,7 +1569,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	 * all levels as "enabled."  Go back now and disable the ones
 	 * that aren't actually possible.
 	 */
-	for (level++; level <= ilk_wm_max_level(i915); level++) {
+	for (level++; level < skl_wm_num_levels(i915); level++) {
 		for_each_plane_id_on_crtc(crtc, plane_id) {
 			const struct skl_ddb_entry *ddb =
 				&crtc_state->wm.skl.plane_ddb[plane_id];
@@ -1968,10 +1968,10 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 		      struct skl_wm_level *levels)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	int level, max_level = ilk_wm_max_level(i915);
+	int level, num_levels = skl_wm_num_levels(i915);
 	struct skl_wm_level *result_prev = &levels[0];
 
-	for (level = 0; level <= max_level; level++) {
+	for (level = 0; level < num_levels; level++) {
 		struct skl_wm_level *result = &levels[level];
 		unsigned int latency = i915->display.wm.skl_latency[level];
 
@@ -2249,7 +2249,7 @@ void skl_write_plane_wm(struct intel_plane *plane,
 			const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-	int level, max_level = ilk_wm_max_level(i915);
+	int level, num_levels = skl_wm_num_levels(i915);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
@@ -2258,7 +2258,7 @@ void skl_write_plane_wm(struct intel_plane *plane,
 	const struct skl_ddb_entry *ddb_y =
 		&crtc_state->wm.skl.plane_ddb_y[plane_id];
 
-	for (level = 0; level <= max_level; level++)
+	for (level = 0; level < num_levels; level++)
 		skl_write_wm_level(i915, PLANE_WM(pipe, plane_id, level),
 				   skl_plane_wm_level(pipe_wm, plane_id, level));
 
@@ -2286,14 +2286,14 @@ void skl_write_cursor_wm(struct intel_plane *plane,
 			 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-	int level, max_level = ilk_wm_max_level(i915);
+	int level, num_levels = skl_wm_num_levels(i915);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
 	const struct skl_ddb_entry *ddb =
 		&crtc_state->wm.skl.plane_ddb[plane_id];
 
-	for (level = 0; level <= max_level; level++)
+	for (level = 0; level < num_levels; level++)
 		skl_write_wm_level(i915, CUR_WM(pipe, level),
 				   skl_plane_wm_level(pipe_wm, plane_id, level));
 
@@ -2325,9 +2325,9 @@ static bool skl_plane_wm_equals(struct drm_i915_private *i915,
 				const struct skl_plane_wm *wm1,
 				const struct skl_plane_wm *wm2)
 {
-	int level, max_level = ilk_wm_max_level(i915);
+	int level, num_levels = skl_wm_num_levels(i915);
 
-	for (level = 0; level <= max_level; level++) {
+	for (level = 0; level < num_levels; level++) {
 		/*
 		 * We don't check uv_wm as the hardware doesn't actually
 		 * use it. It only gets used for calculating the required
@@ -2677,9 +2677,9 @@ static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
 					 const struct skl_pipe_wm *new_pipe_wm)
 {
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-	int level, max_level = ilk_wm_max_level(i915);
+	int level, num_levels = skl_wm_num_levels(i915);
 
-	for (level = 0; level <= max_level; level++) {
+	for (level = 0; level < num_levels; level++) {
 		/*
 		 * We don't check uv_wm as the hardware doesn't actually
 		 * use it. It only gets used for calculating the required
@@ -2815,16 +2815,16 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	int level, max_level;
+	int level, num_levels;
 	enum plane_id plane_id;
 	u32 val;
 
-	max_level = ilk_wm_max_level(i915);
+	num_levels = skl_wm_num_levels(i915);
 
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		struct skl_plane_wm *wm = &out->planes[plane_id];
 
-		for (level = 0; level <= max_level; level++) {
+		for (level = 0; level < num_levels; level++) {
 			if (plane_id != PLANE_CURSOR)
 				val = intel_de_read(i915, PLANE_WM(pipe, plane_id, level));
 			else
@@ -3013,7 +3013,7 @@ void intel_wm_state_verify(struct intel_crtc *crtc,
 		struct skl_pipe_wm wm;
 	} *hw;
 	const struct skl_pipe_wm *sw_wm = &new_crtc_state->wm.skl.optimal;
-	int level, max_level = ilk_wm_max_level(i915);
+	int level, num_levels = skl_wm_num_levels(i915);
 	struct intel_plane *plane;
 	u8 hw_enabled_slices;
 
@@ -3042,7 +3042,7 @@ void intel_wm_state_verify(struct intel_crtc *crtc,
 		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
 
 		/* Watermarks */
-		for (level = 0; level <= max_level; level++) {
+		for (level = 0; level < num_levels; level++) {
 			hw_wm_level = &hw->wm.planes[plane->id].wm[level];
 			sw_wm_level = skl_plane_wm_level(sw_wm, plane->id, level);
 
@@ -3164,7 +3164,7 @@ void skl_watermark_ipc_init(struct drm_i915_private *i915)
 
 static void
 adjust_wm_latency(struct drm_i915_private *i915,
-		  u16 wm[], int max_level, int read_latency)
+		  u16 wm[], int num_levels, int read_latency)
 {
 	bool wm_lv_0_adjust_needed = i915->dram_info.wm_lv_0_adjust_needed;
 	int i, level;
@@ -3174,12 +3174,12 @@ adjust_wm_latency(struct drm_i915_private *i915,
 	 * need to be disabled. We make sure to sanitize the values out
 	 * of the punit to satisfy this requirement.
 	 */
-	for (level = 1; level <= max_level; level++) {
+	for (level = 1; level < num_levels; level++) {
 		if (wm[level] == 0) {
-			for (i = level + 1; i <= max_level; i++)
+			for (i = level + 1; i < num_levels; i++)
 				wm[i] = 0;
 
-			max_level = level - 1;
+			num_levels = level;
 			break;
 		}
 	}
@@ -3192,7 +3192,7 @@ adjust_wm_latency(struct drm_i915_private *i915,
 	 * from the punit when level 0 response data is 0us.
 	 */
 	if (wm[0] == 0) {
-		for (level = 0; level <= max_level; level++)
+		for (level = 0; level < num_levels; level++)
 			wm[level] += read_latency;
 	}
 
@@ -3208,7 +3208,7 @@ adjust_wm_latency(struct drm_i915_private *i915,
 
 static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
-	int max_level = ilk_wm_max_level(i915);
+	int num_levels = skl_wm_num_levels(i915);
 	u32 val;
 
 	val = intel_de_read(i915, MTL_LATENCY_LP0_LP1);
@@ -3223,12 +3223,12 @@ static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 	wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
 	wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
 
-	adjust_wm_latency(i915, wm, max_level, 6);
+	adjust_wm_latency(i915, wm, num_levels, 6);
 }
 
 static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
-	int max_level = ilk_wm_max_level(i915);
+	int num_levels = skl_wm_num_levels(i915);
 	int read_latency = DISPLAY_VER(i915) >= 12 ? 3 : 2;
 	int mult = IS_DG2(i915) ? 2 : 1;
 	u32 val;
@@ -3260,7 +3260,7 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 	wm[6] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
 	wm[7] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
 
-	adjust_wm_latency(i915, wm, max_level, read_latency);
+	adjust_wm_latency(i915, wm, num_levels, read_latency);
 }
 
 static void skl_setup_wm_latency(struct drm_i915_private *i915)
@@ -3280,6 +3280,8 @@ static const struct intel_wm_funcs skl_wm_funcs = {
 
 int skl_wm_num_levels(const struct drm_i915_private *i915)
 {
+	drm_WARN_ON_ONCE(&i915->drm, DISPLAY_VER(i915) < 9);
+
 	if (HAS_HW_SAGV_WM(i915))
 		return 6;
 	else
-- 
2.34.1

