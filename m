Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67184A2B222
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 20:22:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB0310E30F;
	Thu,  6 Feb 2025 19:22:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g1CM0Hu8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEF4210E30C;
 Thu,  6 Feb 2025 19:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738869720; x=1770405720;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UyBwSQHG3jkosOtrJCPC6TWjMz3waTA4dE8/x8KMr9s=;
 b=g1CM0Hu8HsNIbuBtHCyaXh0MQpz3fds51zyk6ZtQ0aQK82iSNCjbEvne
 ItQJ6rZ0Z6jIZj2j3MH0TaszIjDAi5z9/x739DWPV7Xfq4mc82P72t97k
 rjHvaRnRp8qnKywby/H6W8FLX8J4s4E5DUhH360OxgEp9N9p71RWXK1mp
 z1EmoxYkLf/Iq6jSsPrDssZYHPgZwgCjKO+rAgowFj0v16eBOc6YF66sW
 Cb0it6d7fQyW17F+hH7j9Yy2dZrF4Z2lXWuDV+qONA6rNY8a9JBJ9NcQ4
 qiEN8TvgwXmNBZpxZEfV7o1CgGXWpcHqMA04EtYTntKwFEtuUtyEg3s4Y A==;
X-CSE-ConnectionGUID: UQRMPcBqSvmjoKoJSGAWRw==
X-CSE-MsgGUID: XOrEsx76TZuKDzn0ZhC2Rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39398819"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39398819"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 11:22:00 -0800
X-CSE-ConnectionGUID: 9yqtk1zEQFa12MDBvK6quQ==
X-CSE-MsgGUID: SqokDfKhSmaq2neOlEUdVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="111502515"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.1])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 11:21:59 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/display: Use display-specific platform checks in
 intel_bw.c
Date: Thu,  6 Feb 2025 16:21:29 -0300
Message-ID: <20250206192148.53610-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250206192148.53610-1-gustavo.sousa@intel.com>
References: <20250206192148.53610-1-gustavo.sousa@intel.com>
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

Add one step further into making intel_bw.c xe/i915 agnostic by using
display-specific platform checks.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 77 ++++++++++++++-----------
 1 file changed, 43 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 0fb41e6cd8ae..e52c66eca93d 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -78,6 +78,7 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
 					 struct intel_qgv_point *sp,
 					 int point)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 val = 0, val2 = 0;
 	u16 dclk;
 	int ret;
@@ -89,7 +90,7 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
 		return ret;
 
 	dclk = val & 0xffff;
-	sp->dclk = DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_priv) >= 12 ? 500 : 0),
+	sp->dclk = DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(display) >= 12 ? 500 : 0),
 				1000);
 	sp->t_rp = (val & 0xff0000) >> 16;
 	sp->t_rcd = (val & 0xff000000) >> 24;
@@ -155,7 +156,7 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 	struct intel_display *display = &dev_priv->display;
 	int ret;
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		return 0;
 
 	/* bspec says to keep retrying for at least 1 ms */
@@ -206,9 +207,11 @@ intel_read_qgv_point_info(struct drm_i915_private *dev_priv,
 			  struct intel_qgv_point *sp,
 			  int point)
 {
-	if (DISPLAY_VER(dev_priv) >= 14)
+	struct intel_display *display = &dev_priv->display;
+
+	if (DISPLAY_VER(display) >= 14)
 		return mtl_read_qgv_point_info(dev_priv, sp, point);
-	else if (IS_DG1(dev_priv))
+	else if (display->platform.dg2)
 		return dg1_mchbar_read_qgv_point_info(dev_priv, sp, point);
 	else
 		return icl_pcode_read_qgv_point_info(dev_priv, sp, point);
@@ -218,13 +221,14 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			      struct intel_qgv_info *qi,
 			      bool is_y_tile)
 {
+	struct intel_display *display = &dev_priv->display;
 	const struct dram_info *dram_info = &dev_priv->dram_info;
 	int i, ret;
 
 	qi->num_points = dram_info->num_qgv_points;
 	qi->num_psf_points = dram_info->num_psf_gv_points;
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
+	if (DISPLAY_VER(display) >= 14) {
 		switch (dram_info->type) {
 		case INTEL_DRAM_DDR4:
 			qi->t_bl = 4;
@@ -252,7 +256,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			MISSING_CASE(dram_info->type);
 			return -EINVAL;
 		}
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
+	} else if (DISPLAY_VER(display) >= 12) {
 		switch (dram_info->type) {
 		case INTEL_DRAM_DDR4:
 			qi->t_bl = is_y_tile ? 8 : 4;
@@ -267,7 +271,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			qi->deinterleave = is_y_tile ? 1 : 2;
 			break;
 		case INTEL_DRAM_LPDDR4:
-			if (IS_ROCKETLAKE(dev_priv)) {
+			if (display->platform.rocketlake) {
 				qi->t_bl = 8;
 				qi->max_numchannels = 4;
 				qi->channel_width = 32;
@@ -286,7 +290,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			qi->max_numchannels = 1;
 			break;
 		}
-	} else if (DISPLAY_VER(dev_priv) == 11) {
+	} else if (DISPLAY_VER(display) == 11) {
 		qi->t_bl = dev_priv->dram_info.type == INTEL_DRAM_DDR4 ? 4 : 8;
 		qi->max_numchannels = 1;
 	}
@@ -491,16 +495,16 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 		return ret;
 	}
 
-	if (DISPLAY_VER(dev_priv) < 14 &&
+	if (DISPLAY_VER(display) < 14 &&
 	    (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5))
 		num_channels *= 2;
 
 	qi.deinterleave = qi.deinterleave ? : DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
 
-	if (num_channels < qi.max_numchannels && DISPLAY_VER(dev_priv) >= 12)
+	if (num_channels < qi.max_numchannels && DISPLAY_VER(display) >= 12)
 		qi.deinterleave = max(DIV_ROUND_UP(qi.deinterleave, 2), 1);
 
-	if (DISPLAY_VER(dev_priv) >= 12 && num_channels > qi.max_numchannels)
+	if (DISPLAY_VER(display) >= 12 && num_channels > qi.max_numchannels)
 		drm_warn(&dev_priv->drm, "Number of channels exceeds max number of channels.");
 	if (qi.max_numchannels != 0)
 		num_channels = min_t(u8, num_channels, qi.max_numchannels);
@@ -591,7 +595,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 static void dg2_get_bw_info(struct drm_i915_private *i915)
 {
 	struct intel_display *display = &i915->display;
-	unsigned int deratedbw = IS_DG2_G11(i915) ? 38000 : 50000;
+	unsigned int deratedbw = display->platform.dg2_g11 ? 38000 : 50000;
 	int num_groups = ARRAY_SIZE(display->bw.max);
 	int i;
 
@@ -737,7 +741,7 @@ static unsigned int icl_qgv_bw(struct drm_i915_private *i915,
 	struct intel_display *display = &i915->display;
 	unsigned int idx;
 
-	if (DISPLAY_VER(i915) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		idx = tgl_max_bw_index(i915, num_active_planes, qgv_point);
 	else
 		idx = icl_max_bw_index(i915, num_active_planes, qgv_point);
@@ -750,24 +754,26 @@ static unsigned int icl_qgv_bw(struct drm_i915_private *i915,
 
 void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 {
-	if (!HAS_DISPLAY(dev_priv))
+	struct intel_display *display = &dev_priv->display;
+
+	if (!HAS_DISPLAY(display))
 		return;
 
-	if (DISPLAY_VERx100(dev_priv) >= 1401 && IS_DGFX(dev_priv))
+	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
 		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
-	else if (DISPLAY_VER(dev_priv) >= 14)
+	else if (DISPLAY_VER(display) >= 14)
 		tgl_get_bw_info(dev_priv, &mtl_sa_info);
-	else if (IS_DG2(dev_priv))
+	else if (display->platform.dg2)
 		dg2_get_bw_info(dev_priv);
-	else if (IS_ALDERLAKE_P(dev_priv))
+	else if (display->platform.alderlake_p)
 		tgl_get_bw_info(dev_priv, &adlp_sa_info);
-	else if (IS_ALDERLAKE_S(dev_priv))
+	else if (display->platform.alderlake_s)
 		tgl_get_bw_info(dev_priv, &adls_sa_info);
-	else if (IS_ROCKETLAKE(dev_priv))
+	else if (display->platform.rocketlake)
 		tgl_get_bw_info(dev_priv, &rkl_sa_info);
-	else if (DISPLAY_VER(dev_priv) == 12)
+	else if (DISPLAY_VER(display) == 12)
 		tgl_get_bw_info(dev_priv, &tgl_sa_info);
-	else if (DISPLAY_VER(dev_priv) == 11)
+	else if (DISPLAY_VER(display) == 11)
 		icl_get_bw_info(dev_priv, &icl_sa_info);
 }
 
@@ -782,8 +788,8 @@ static unsigned int intel_bw_crtc_num_active_planes(const struct intel_crtc_stat
 
 static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	unsigned int data_rate = 0;
 	enum plane_id plane_id;
 
@@ -797,7 +803,7 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 
 		data_rate += crtc_state->data_rate[plane_id];
 
-		if (DISPLAY_VER(i915) < 11)
+		if (DISPLAY_VER(display) < 11)
 			data_rate += crtc_state->data_rate_y[plane_id];
 	}
 
@@ -807,10 +813,9 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 /* "Maximum Pipe Read Bandwidth" */
 static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (DISPLAY_VER(i915) < 12)
+	if (DISPLAY_VER(display) < 12)
 		return 0;
 
 	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_state), 10), 512);
@@ -849,13 +854,14 @@ static unsigned int intel_bw_num_active_planes(struct drm_i915_private *dev_priv
 static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
 				       const struct intel_bw_state *bw_state)
 {
+	struct intel_display *display = &dev_priv->display;
 	unsigned int data_rate = 0;
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe)
 		data_rate += bw_state->data_rate[pipe];
 
-	if (DISPLAY_VER(dev_priv) >= 13 && i915_vtd_active(dev_priv))
+	if (DISPLAY_VER(display) >= 13 && i915_vtd_active(dev_priv))
 		data_rate = DIV_ROUND_UP(data_rate * 105, 100);
 
 	return data_rate;
@@ -1137,13 +1143,14 @@ static int intel_bw_check_qgv_points(struct drm_i915_private *i915,
 				     const struct intel_bw_state *old_bw_state,
 				     struct intel_bw_state *new_bw_state)
 {
+	struct intel_display *display = &i915->display;
 	unsigned int data_rate = intel_bw_data_rate(i915, new_bw_state);
 	unsigned int num_active_planes =
 			intel_bw_num_active_planes(i915, new_bw_state);
 
 	data_rate = DIV_ROUND_UP(data_rate, 1000);
 
-	if (DISPLAY_VER(i915) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		return mtl_find_qgv_points(i915, data_rate, num_active_planes,
 					   new_bw_state);
 	else
@@ -1201,8 +1208,8 @@ static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
 static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 				  const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
 	enum plane_id plane_id;
 
@@ -1223,7 +1230,7 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 				       &crtc_state->wm.skl.plane_ddb[plane_id],
 				       crtc_state->data_rate[plane_id]);
 
-		if (DISPLAY_VER(i915) < 11)
+		if (DISPLAY_VER(display) < 11)
 			skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
 					       &crtc_state->wm.skl.plane_ddb_y[plane_id],
 					       crtc_state->data_rate[plane_id]);
@@ -1278,6 +1285,7 @@ int intel_bw_min_cdclk(struct drm_i915_private *i915,
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			    bool *need_cdclk_calc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
@@ -1287,7 +1295,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	struct intel_crtc *crtc;
 	int i;
 
-	if (DISPLAY_VER(dev_priv) < 9)
+	if (DISPLAY_VER(display) < 9)
 		return 0;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
@@ -1397,6 +1405,7 @@ static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *chan
 
 int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	bool changed = false;
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_bw_state *new_bw_state;
@@ -1404,7 +1413,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	int ret;
 
 	/* FIXME earlier gens need some checks too */
-	if (DISPLAY_VER(i915) < 11)
+	if (DISPLAY_VER(display) < 11)
 		return 0;
 
 	ret = intel_bw_check_data_rate(state, &changed);
@@ -1475,7 +1484,7 @@ int intel_bw_init(struct drm_i915_private *i915)
 	 * Limit this only if we have SAGV. And for Display version 14 onwards
 	 * sagv is handled though pmdemand requests
 	 */
-	if (intel_has_sagv(i915) && IS_DISPLAY_VER(i915, 11, 13))
+	if (intel_has_sagv(i915) && IS_DISPLAY_VER(display, 11, 13))
 		icl_force_disable_sagv(i915, state);
 
 	return 0;
-- 
2.48.1

