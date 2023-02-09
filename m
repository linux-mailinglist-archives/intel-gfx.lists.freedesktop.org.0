Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 486BD69133C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 23:25:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A26E810EBCB;
	Thu,  9 Feb 2023 22:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CDE10EBCB
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Feb 2023 22:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675981513; x=1707517513;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NUPYoV0pVeci6YzYKyrOIF58k2YccsMJtZcDnV9He60=;
 b=HxNvFCB1tV4QGo/H+VrXm80Nl8w2A0MyW4T/QWDq6Ba2dQWTzaCosDKc
 /fkuc9yIoUs7naXn6rx1MyBKBRNwk2h19/JaAQYFBlBVgX05R5LBRygsS
 k9AtKal0KiDX+cXCznY4zGw7mMynJwEYJUckZE/X2RkqmeWuM3KzVKS8M
 UR++za2UDJTHwMoy5ptpe6NuFzDLDjaGXfR82SHzuwTVSY9LJFPGHXkA5
 AtgJts5/vLrbQy1ug3gUlGVzB7TVXmzZp1JzkMFZCkAG56YdguCKgiB6s
 4B8brrJx4Fc0VLcGhz773oSYWr8FGWze0vx4Hiqo/A3lofbJ9n9uFIpIf A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="394863301"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="394863301"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 14:25:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="661181760"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="661181760"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 09 Feb 2023 14:25:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Feb 2023 00:25:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Feb 2023 00:25:04 +0200
Message-Id: <20230209222504.31478-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230209003251.32021-2-ville.syrjala@linux.intel.com>
References: <20230209003251.32021-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: Replace wm.max_levels with
 wm.num_levels and use it everywhere
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

Replaces wm.max_level with wm.num_levels, since that generally
results in nicer looking code (for-loops can be in standard
form etc.).

Also get rid of the two different wrappers we have for this
(ilk_wm_max_level() and intel_wm_num_levels()). They don't
really do anything for us other than potentially slow things
down if the compiler actually emits the function calls every
time (num_planes*num_wm_levels*higher_level_wm_function_calls
could be a big number). The watermark code already shows up
far too prominently in cpu profiles. Though I must admit that
I didn't look at the generated code this time.

v2: Fix the ilk_wm_merge() off-by-one (Jani)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  2 +-
 .../drm/i915/display/intel_display_debugfs.c  | 12 +--
 drivers/gpu/drm/i915/display/skl_watermark.c  | 62 +++++++------
 drivers/gpu/drm/i915/intel_pm.c               | 86 ++++++++-----------
 drivers/gpu/drm/i915/intel_pm.h               |  1 -
 5 files changed, 70 insertions(+), 93 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index fb8670aa2932..25d778fb7d15 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -243,7 +243,7 @@ struct intel_wm {
 		struct g4x_wm_values g4x;
 	};
 
-	u8 max_level;
+	u8 num_levels;
 
 	/*
 	 * Should be held around atomic WM register writing; also
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index b5a2f1a27870..49a7c00c0664 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1286,13 +1286,10 @@ static void wm_latency_show(struct seq_file *m, const u16 wm[8])
 {
 	struct drm_i915_private *dev_priv = m->private;
 	int level;
-	int num_levels;
-
-	num_levels = ilk_wm_max_level(dev_priv) + 1;
 
 	drm_modeset_lock_all(&dev_priv->drm);
 
-	for (level = 0; level < num_levels; level++) {
+	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
 		unsigned int latency = wm[level];
 
 		/*
@@ -1395,13 +1392,10 @@ static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
 	struct seq_file *m = file->private_data;
 	struct drm_i915_private *dev_priv = m->private;
 	u16 new[8] = { 0 };
-	int num_levels;
 	int level;
 	int ret;
 	char tmp[32];
 
-	num_levels = ilk_wm_max_level(dev_priv) + 1;
-
 	if (len >= sizeof(tmp))
 		return -EINVAL;
 
@@ -1413,12 +1407,12 @@ static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
 	ret = sscanf(tmp, "%hu %hu %hu %hu %hu %hu %hu %hu",
 		     &new[0], &new[1], &new[2], &new[3],
 		     &new[4], &new[5], &new[6], &new[7]);
-	if (ret != num_levels)
+	if (ret != dev_priv->display.wm.num_levels)
 		return -EINVAL;
 
 	drm_modeset_lock_all(&dev_priv->drm);
 
-	for (level = 0; level < num_levels; level++)
+	for (level = 0; level < dev_priv->display.wm.num_levels; level++)
 		wm[level] = new[level];
 
 	drm_modeset_unlock_all(&dev_priv->drm);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 97dc66012bdc..962666e74333 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -359,7 +359,7 @@ static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 			continue;
 
 		/* Find the highest enabled wm level for this plane */
-		for (level = ilk_wm_max_level(i915);
+		for (level = i915->display.wm.num_levels - 1;
 		     !wm->wm[level].enable; --level)
 		     { }
 
@@ -710,10 +710,10 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_plane *plane = to_intel_plane(crtc_state->uapi.crtc->cursor);
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	int level, max_level = ilk_wm_max_level(i915);
 	struct skl_wm_level wm = {};
 	int ret, min_ddb_alloc = 0;
 	struct skl_wm_params wp;
+	int level;
 
 	ret = skl_compute_wm_params(crtc_state, 256,
 				    drm_format_info(DRM_FORMAT_ARGB8888),
@@ -722,7 +722,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 				    crtc_state->pixel_rate, &wp, 0);
 	drm_WARN_ON(&i915->drm, ret);
 
-	for (level = 0; level <= max_level; level++) {
+	for (level = 0; level < i915->display.wm.num_levels; level++) {
 		unsigned int latency = i915->display.wm.skl_latency[level];
 
 		skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm, &wm);
@@ -1492,7 +1492,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	 * Find the highest watermark level for which we can satisfy the block
 	 * requirement of active planes.
 	 */
-	for (level = ilk_wm_max_level(i915); level >= 0; level--) {
+	for (level = i915->display.wm.num_levels - 1; level >= 0; level--) {
 		blocks = 0;
 		for_each_plane_id_on_crtc(crtc, plane_id) {
 			const struct skl_plane_wm *wm =
@@ -1568,7 +1568,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	 * all levels as "enabled."  Go back now and disable the ones
 	 * that aren't actually possible.
 	 */
-	for (level++; level <= ilk_wm_max_level(i915); level++) {
+	for (level++; level < i915->display.wm.num_levels; level++) {
 		for_each_plane_id_on_crtc(crtc, plane_id) {
 			const struct skl_ddb_entry *ddb =
 				&crtc_state->wm.skl.plane_ddb[plane_id];
@@ -1967,10 +1967,10 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 		      struct skl_wm_level *levels)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	int level, max_level = ilk_wm_max_level(i915);
 	struct skl_wm_level *result_prev = &levels[0];
+	int level;
 
-	for (level = 0; level <= max_level; level++) {
+	for (level = 0; level < i915->display.wm.num_levels; level++) {
 		struct skl_wm_level *result = &levels[level];
 		unsigned int latency = i915->display.wm.skl_latency[level];
 
@@ -2248,7 +2248,6 @@ void skl_write_plane_wm(struct intel_plane *plane,
 			const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-	int level, max_level = ilk_wm_max_level(i915);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
@@ -2256,8 +2255,9 @@ void skl_write_plane_wm(struct intel_plane *plane,
 		&crtc_state->wm.skl.plane_ddb[plane_id];
 	const struct skl_ddb_entry *ddb_y =
 		&crtc_state->wm.skl.plane_ddb_y[plane_id];
+	int level;
 
-	for (level = 0; level <= max_level; level++)
+	for (level = 0; level < i915->display.wm.num_levels; level++)
 		skl_write_wm_level(i915, PLANE_WM(pipe, plane_id, level),
 				   skl_plane_wm_level(pipe_wm, plane_id, level));
 
@@ -2285,14 +2285,14 @@ void skl_write_cursor_wm(struct intel_plane *plane,
 			 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-	int level, max_level = ilk_wm_max_level(i915);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
 	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
 	const struct skl_ddb_entry *ddb =
 		&crtc_state->wm.skl.plane_ddb[plane_id];
+	int level;
 
-	for (level = 0; level <= max_level; level++)
+	for (level = 0; level < i915->display.wm.num_levels; level++)
 		skl_write_wm_level(i915, CUR_WM(pipe, level),
 				   skl_plane_wm_level(pipe_wm, plane_id, level));
 
@@ -2324,9 +2324,9 @@ static bool skl_plane_wm_equals(struct drm_i915_private *i915,
 				const struct skl_plane_wm *wm1,
 				const struct skl_plane_wm *wm2)
 {
-	int level, max_level = ilk_wm_max_level(i915);
+	int level;
 
-	for (level = 0; level <= max_level; level++) {
+	for (level = 0; level < i915->display.wm.num_levels; level++) {
 		/*
 		 * We don't check uv_wm as the hardware doesn't actually
 		 * use it. It only gets used for calculating the required
@@ -2676,9 +2676,9 @@ static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
 					 const struct skl_pipe_wm *new_pipe_wm)
 {
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-	int level, max_level = ilk_wm_max_level(i915);
+	int level;
 
-	for (level = 0; level <= max_level; level++) {
+	for (level = 0; level < i915->display.wm.num_levels; level++) {
 		/*
 		 * We don't check uv_wm as the hardware doesn't actually
 		 * use it. It only gets used for calculating the required
@@ -2814,16 +2814,14 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	int level, max_level;
 	enum plane_id plane_id;
+	int level;
 	u32 val;
 
-	max_level = ilk_wm_max_level(i915);
-
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		struct skl_plane_wm *wm = &out->planes[plane_id];
 
-		for (level = 0; level <= max_level; level++) {
+		for (level = 0; level < i915->display.wm.num_levels; level++) {
 			if (plane_id != PLANE_CURSOR)
 				val = intel_de_read(i915, PLANE_WM(pipe, plane_id, level));
 			else
@@ -3006,9 +3004,9 @@ void intel_wm_state_verify(struct intel_crtc *crtc,
 		struct skl_pipe_wm wm;
 	} *hw;
 	const struct skl_pipe_wm *sw_wm = &new_crtc_state->wm.skl.optimal;
-	int level, max_level = ilk_wm_max_level(i915);
 	struct intel_plane *plane;
 	u8 hw_enabled_slices;
+	int level;
 
 	if (DISPLAY_VER(i915) < 9 || !new_crtc_state->hw.active)
 		return;
@@ -3035,7 +3033,7 @@ void intel_wm_state_verify(struct intel_crtc *crtc,
 		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
 
 		/* Watermarks */
-		for (level = 0; level <= max_level; level++) {
+		for (level = 0; level < i915->display.wm.num_levels; level++) {
 			hw_wm_level = &hw->wm.planes[plane->id].wm[level];
 			sw_wm_level = skl_plane_wm_level(sw_wm, plane->id, level);
 
@@ -3157,7 +3155,7 @@ void skl_watermark_ipc_init(struct drm_i915_private *i915)
 
 static void
 adjust_wm_latency(struct drm_i915_private *i915,
-		  u16 wm[], int max_level, int read_latency)
+		  u16 wm[], int num_levels, int read_latency)
 {
 	bool wm_lv_0_adjust_needed = i915->dram_info.wm_lv_0_adjust_needed;
 	int i, level;
@@ -3167,12 +3165,12 @@ adjust_wm_latency(struct drm_i915_private *i915,
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
@@ -3185,7 +3183,7 @@ adjust_wm_latency(struct drm_i915_private *i915,
 	 * from the punit when level 0 response data is 0us.
 	 */
 	if (wm[0] == 0) {
-		for (level = 0; level <= max_level; level++)
+		for (level = 0; level < num_levels; level++)
 			wm[level] += read_latency;
 	}
 
@@ -3201,7 +3199,7 @@ adjust_wm_latency(struct drm_i915_private *i915,
 
 static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
-	int max_level = ilk_wm_max_level(i915);
+	int num_levels = i915->display.wm.num_levels;
 	u32 val;
 
 	val = intel_de_read(i915, MTL_LATENCY_LP0_LP1);
@@ -3216,12 +3214,12 @@ static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 	wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
 	wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
 
-	adjust_wm_latency(i915, wm, max_level, 6);
+	adjust_wm_latency(i915, wm, num_levels, 6);
 }
 
 static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
-	int max_level = ilk_wm_max_level(i915);
+	int num_levels = i915->display.wm.num_levels;
 	int read_latency = DISPLAY_VER(i915) >= 12 ? 3 : 2;
 	int mult = IS_DG2(i915) ? 2 : 1;
 	u32 val;
@@ -3253,15 +3251,15 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 	wm[6] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
 	wm[7] = REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
 
-	adjust_wm_latency(i915, wm, max_level, read_latency);
+	adjust_wm_latency(i915, wm, num_levels, read_latency);
 }
 
 static void skl_setup_wm_latency(struct drm_i915_private *i915)
 {
 	if (HAS_HW_SAGV_WM(i915))
-		i915->display.wm.max_level = 5;
+		i915->display.wm.num_levels = 6;
 	else
-		i915->display.wm.max_level = 7;
+		i915->display.wm.num_levels = 8;
 
 	if (DISPLAY_VER(i915) >= 14)
 		mtl_read_wm_latency(i915, i915->display.wm.skl_latency);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 62f85850e931..7b24ef5b4b47 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -787,11 +787,6 @@ static bool is_enabling(int old, int new, int threshold)
 	return old < threshold && new >= threshold;
 }
 
-static int intel_wm_num_levels(struct drm_i915_private *dev_priv)
-{
-	return dev_priv->display.wm.max_level + 1;
-}
-
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state)
 {
@@ -1047,7 +1042,7 @@ static void g4x_setup_wm_latency(struct drm_i915_private *dev_priv)
 	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_SR] = 12;
 	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_HPLL] = 35;
 
-	dev_priv->display.wm.max_level = G4X_WM_LEVEL_HPLL;
+	dev_priv->display.wm.num_levels = G4X_WM_LEVEL_HPLL + 1;
 }
 
 static int g4x_plane_fifo_size(enum plane_id plane_id, int level)
@@ -1154,7 +1149,7 @@ static bool g4x_raw_plane_wm_set(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	bool dirty = false;
 
-	for (; level < intel_wm_num_levels(dev_priv); level++) {
+	for (; level < dev_priv->display.wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
 
 		dirty |= raw->plane[plane_id] != value;
@@ -1173,7 +1168,7 @@ static bool g4x_raw_fbc_wm_set(struct intel_crtc_state *crtc_state,
 	/* NORMAL level doesn't have an FBC watermark */
 	level = max(level, G4X_WM_LEVEL_SR);
 
-	for (; level < intel_wm_num_levels(dev_priv); level++) {
+	for (; level < dev_priv->display.wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
 
 		dirty |= raw->fbc != value;
@@ -1192,7 +1187,6 @@ static bool g4x_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
-	int num_levels = intel_wm_num_levels(to_i915(plane->base.dev));
 	enum plane_id plane_id = plane->id;
 	bool dirty = false;
 	int level;
@@ -1204,7 +1198,7 @@ static bool g4x_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 		goto out;
 	}
 
-	for (level = 0; level < num_levels; level++) {
+	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
 		int wm, max_wm;
 
@@ -1274,7 +1268,7 @@ static bool g4x_raw_crtc_wm_is_valid(const struct intel_crtc_state *crtc_state,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (level > dev_priv->display.wm.max_level)
+	if (level >= dev_priv->display.wm.num_levels)
 		return false;
 
 	return g4x_raw_plane_wm_is_valid(crtc_state, PLANE_PRIMARY, level) &&
@@ -1610,13 +1604,13 @@ static void vlv_setup_wm_latency(struct drm_i915_private *dev_priv)
 	/* all latencies in usec */
 	dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_PM2] = 3;
 
-	dev_priv->display.wm.max_level = VLV_WM_LEVEL_PM2;
+	dev_priv->display.wm.num_levels = VLV_WM_LEVEL_PM2 + 1;
 
 	if (IS_CHERRYVIEW(dev_priv)) {
 		dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_PM5] = 12;
 		dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_DDR_DVFS] = 33;
 
-		dev_priv->display.wm.max_level = VLV_WM_LEVEL_DDR_DVFS;
+		dev_priv->display.wm.num_levels = VLV_WM_LEVEL_DDR_DVFS + 1;
 	}
 }
 
@@ -1752,7 +1746,7 @@ static void vlv_invalidate_wms(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	for (; level < intel_wm_num_levels(dev_priv); level++) {
+	for (; level < dev_priv->display.wm.num_levels; level++) {
 		enum plane_id plane_id;
 
 		for_each_plane_id_on_crtc(crtc, plane_id)
@@ -1779,10 +1773,9 @@ static bool vlv_raw_plane_wm_set(struct intel_crtc_state *crtc_state,
 				 int level, enum plane_id plane_id, u16 value)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
-	int num_levels = intel_wm_num_levels(dev_priv);
 	bool dirty = false;
 
-	for (; level < num_levels; level++) {
+	for (; level < dev_priv->display.wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.vlv.raw[level];
 
 		dirty |= raw->plane[plane_id] != value;
@@ -1798,7 +1791,6 @@ static bool vlv_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum plane_id plane_id = plane->id;
-	int num_levels = intel_wm_num_levels(to_i915(plane->base.dev));
 	int level;
 	bool dirty = false;
 
@@ -1807,7 +1799,7 @@ static bool vlv_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 		goto out;
 	}
 
-	for (level = 0; level < num_levels; level++) {
+	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.vlv.raw[level];
 		int wm = vlv_compute_wm_level(crtc_state, plane_state, level);
 		int max_wm = plane_id == PLANE_CURSOR ? 63 : 511;
@@ -1866,7 +1858,7 @@ static int _vlv_compute_pipe_wm(struct intel_crtc_state *crtc_state)
 	int level;
 
 	/* initially allow all levels */
-	wm_state->num_levels = intel_wm_num_levels(dev_priv);
+	wm_state->num_levels = dev_priv->display.wm.num_levels;
 	/*
 	 * Note that enabling cxsr with no primary/sprite planes
 	 * enabled can wedge the pipe. Hence we only allow cxsr
@@ -2129,7 +2121,7 @@ static void vlv_merge_wm(struct drm_i915_private *dev_priv,
 	struct intel_crtc *crtc;
 	int num_active_pipes = 0;
 
-	wm->level = dev_priv->display.wm.max_level;
+	wm->level = dev_priv->display.wm.num_levels - 1;
 	wm->cxsr = true;
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
@@ -2836,7 +2828,7 @@ static void hsw_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
 	u64 sskpd;
 
-	i915->display.wm.max_level = 4;
+	i915->display.wm.num_levels = 5;
 
 	sskpd = intel_uncore_read64(&i915->uncore, MCH_SSKPD);
 
@@ -2853,7 +2845,7 @@ static void snb_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
 	u32 sskpd;
 
-	i915->display.wm.max_level = 3;
+	i915->display.wm.num_levels = 4;
 
 	sskpd = intel_uncore_read(&i915->uncore, MCH_SSKPD);
 
@@ -2867,7 +2859,7 @@ static void ilk_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
 	u32 mltr;
 
-	i915->display.wm.max_level = 2;
+	i915->display.wm.num_levels = 3;
 
 	mltr = intel_uncore_read(&i915->uncore, MLTR_ILK);
 
@@ -2893,17 +2885,12 @@ static void intel_fixup_cur_wm_latency(struct drm_i915_private *dev_priv,
 		wm[0] = 13;
 }
 
-int ilk_wm_max_level(const struct drm_i915_private *dev_priv)
-{
-	return dev_priv->display.wm.max_level;
-}
-
 void intel_print_wm_latency(struct drm_i915_private *dev_priv,
 			    const char *name, const u16 wm[])
 {
-	int level, max_level = ilk_wm_max_level(dev_priv);
+	int level;
 
-	for (level = 0; level <= max_level; level++) {
+	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
 		unsigned int latency = wm[level];
 
 		if (latency == 0) {
@@ -2931,13 +2918,13 @@ void intel_print_wm_latency(struct drm_i915_private *dev_priv,
 static bool ilk_increase_wm_latency(struct drm_i915_private *dev_priv,
 				    u16 wm[5], u16 min)
 {
-	int level, max_level = ilk_wm_max_level(dev_priv);
+	int level;
 
 	if (wm[0] >= min)
 		return false;
 
 	wm[0] = max(wm[0], min);
-	for (level = 1; level <= max_level; level++)
+	for (level = 1; level < dev_priv->display.wm.num_levels; level++)
 		wm[level] = max_t(u16, wm[level], DIV_ROUND_UP(min, 5));
 
 	return true;
@@ -3057,8 +3044,8 @@ static int ilk_compute_pipe_wm(struct intel_atomic_state *state,
 	const struct intel_plane_state *pristate = NULL;
 	const struct intel_plane_state *sprstate = NULL;
 	const struct intel_plane_state *curstate = NULL;
-	int level, max_level = ilk_wm_max_level(dev_priv), usable_level;
 	struct ilk_wm_maximums max;
+	int level, usable_level;
 
 	pipe_wm = &crtc_state->wm.ilk.optimal;
 
@@ -3075,7 +3062,7 @@ static int ilk_compute_pipe_wm(struct intel_atomic_state *state,
 	pipe_wm->sprites_enabled = crtc_state->active_planes & BIT(PLANE_SPRITE0);
 	pipe_wm->sprites_scaled = crtc_state->scaled_planes & BIT(PLANE_SPRITE0);
 
-	usable_level = max_level;
+	usable_level = dev_priv->display.wm.num_levels - 1;
 
 	/* ILK/SNB: LP2+ watermarks only w/o sprites */
 	if (DISPLAY_VER(dev_priv) <= 6 && pipe_wm->sprites_enabled)
@@ -3129,7 +3116,7 @@ static int ilk_compute_intermediate_wm(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_pipe_wm *a = &new_crtc_state->wm.ilk.intermediate;
 	const struct intel_pipe_wm *b = &old_crtc_state->wm.ilk.optimal;
-	int level, max_level = ilk_wm_max_level(dev_priv);
+	int level;
 
 	/*
 	 * Start with the final, target watermarks, then combine with the
@@ -3146,7 +3133,7 @@ static int ilk_compute_intermediate_wm(struct intel_atomic_state *state,
 	a->sprites_enabled |= b->sprites_enabled;
 	a->sprites_scaled |= b->sprites_scaled;
 
-	for (level = 0; level <= max_level; level++) {
+	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
 		struct intel_wm_level *a_wm = &a->wm[level];
 		const struct intel_wm_level *b_wm = &b->wm[level];
 
@@ -3217,8 +3204,8 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
 			 const struct ilk_wm_maximums *max,
 			 struct intel_pipe_wm *merged)
 {
-	int level, max_level = ilk_wm_max_level(dev_priv);
-	int last_enabled_level = max_level;
+	int level, num_levels = dev_priv->display.wm.num_levels;
+	int last_enabled_level = num_levels - 1;
 
 	/* ILK/SNB/IVB: LP1+ watermarks only w/ single pipe */
 	if ((DISPLAY_VER(dev_priv) <= 6 || IS_IVYBRIDGE(dev_priv)) &&
@@ -3229,7 +3216,7 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
 	merged->fbc_wm_enabled = DISPLAY_VER(dev_priv) >= 6;
 
 	/* merge each WM1+ level */
-	for (level = 1; level <= max_level; level++) {
+	for (level = 1; level < num_levels; level++) {
 		struct intel_wm_level *wm = &merged->wm[level];
 
 		ilk_merge_wm_level(dev_priv, level, wm);
@@ -3254,7 +3241,7 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
 	/* ILK: LP2+ must be disabled when FBC WM is disabled but FBC enabled */
 	if (DISPLAY_VER(dev_priv) == 5 && HAS_FBC(dev_priv) &&
 	    dev_priv->params.enable_fbc && !merged->fbc_wm_enabled) {
-		for (level = 2; level <= max_level; level++) {
+		for (level = 2; level < num_levels; level++) {
 			struct intel_wm_level *wm = &merged->wm[level];
 
 			wm->enable = false;
@@ -3349,10 +3336,9 @@ ilk_find_best_result(struct drm_i915_private *dev_priv,
 		     struct intel_pipe_wm *r1,
 		     struct intel_pipe_wm *r2)
 {
-	int level, max_level = ilk_wm_max_level(dev_priv);
-	int level1 = 0, level2 = 0;
+	int level, level1 = 0, level2 = 0;
 
-	for (level = 1; level <= max_level; level++) {
+	for (level = 1; level < dev_priv->display.wm.num_levels; level++) {
 		if (r1->wm[level].enable)
 			level1 = level;
 		if (r2->wm[level].enable)
@@ -3626,14 +3612,14 @@ static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
 		active->wm[0].spr_val = REG_FIELD_GET(WM0_PIPE_SPRITE_MASK, tmp);
 		active->wm[0].cur_val = REG_FIELD_GET(WM0_PIPE_CURSOR_MASK, tmp);
 	} else {
-		int level, max_level = ilk_wm_max_level(dev_priv);
+		int level;
 
 		/*
 		 * For inactive pipes, all watermark levels
 		 * should be marked as enabled but zeroed,
 		 * which is what we'd compute them to.
 		 */
-		for (level = 0; level <= max_level; level++)
+		for (level = 0; level < dev_priv->display.wm.num_levels; level++)
 			active->wm[level].enable = true;
 	}
 
@@ -3855,12 +3841,12 @@ void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 		struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
 		enum plane_id plane_id = plane->id;
-		int level, num_levels = intel_wm_num_levels(dev_priv);
+		int level;
 
 		if (plane_state->uapi.visible)
 			continue;
 
-		for (level = 0; level < num_levels; level++) {
+		for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
 			struct g4x_pipe_wm *raw =
 				&crtc_state->wm.g4x.raw[level];
 
@@ -3925,7 +3911,7 @@ void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 			drm_dbg_kms(&dev_priv->drm,
 				    "Punit not acking DDR DVFS request, "
 				    "assuming DDR DVFS is disabled\n");
-			dev_priv->display.wm.max_level = VLV_WM_LEVEL_PM5;
+			dev_priv->display.wm.num_levels = VLV_WM_LEVEL_PM5 + 1;
 		} else {
 			val = vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2);
 			if ((val & FORCE_DDR_HIGH_FREQ) == 0)
@@ -4004,12 +3990,12 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 		struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
 		enum plane_id plane_id = plane->id;
-		int level, num_levels = intel_wm_num_levels(dev_priv);
+		int level;
 
 		if (plane_state->uapi.visible)
 			continue;
 
-		for (level = 0; level < num_levels; level++) {
+		for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
 			struct g4x_pipe_wm *raw =
 				&crtc_state->wm.vlv.raw[level];
 
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index c09b872d65c8..55c2061d4d07 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -14,7 +14,6 @@ struct intel_plane_state;
 
 void intel_init_clock_gating(struct drm_i915_private *dev_priv);
 void intel_suspend_hw(struct drm_i915_private *dev_priv);
-int ilk_wm_max_level(const struct drm_i915_private *dev_priv);
 void intel_init_pm(struct drm_i915_private *dev_priv);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
 void intel_pm_setup(struct drm_i915_private *dev_priv);
-- 
2.39.1

