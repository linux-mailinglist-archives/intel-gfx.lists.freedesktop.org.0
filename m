Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E92B429D86
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 08:12:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C1389DED;
	Tue, 12 Oct 2021 06:12:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62EDA89DED
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 06:12:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="227339020"
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="227339020"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 23:12:15 -0700
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="591611163"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 23:12:15 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Oct 2021 23:12:05 -0700
Message-Id: <20211012061205.9012-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6] drm/i915: Update memory bandwidth formulae
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

The formulae has been updated to include more variables. Make
sure the code carries the same.

Bspec: 64631

v2: Make GEN11 follow the default route and fix calculation of
    maxdebw(RK)
v3: Fix div by zero on default case
    Correct indent for fallthrough(Jani)
v4: Fix div by zero on gen11.
v5: Fix 0 max_numchannels case
v6:
    - Split gen11/gen12 algorithms
    - Fix RKL deburst value
    - Fix difference b/ween ICL and TGL algorithms
    - Protect deinterleave from being 0
    - Warn when numchannels exceeds max_numchannels
    - Fix scaling of clk_max from different units
    - s/deinterleave/channelwidth/ in calculating peakbw
    - Fix off by one for num_planes TGL+
    - Fix SAGV check

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 211 ++++++++++++++++++++----
 1 file changed, 179 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 4b94256d7319..548850a8ebd1 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -27,6 +27,9 @@ struct intel_qgv_info {
 	u8 num_points;
 	u8 num_psf_points;
 	u8 t_bl;
+	u8 max_numchannels;
+	u8 channel_width;
+	u8 deinterleave;
 };
 
 static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_priv,
@@ -69,6 +72,7 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
 					 int point)
 {
 	u32 val = 0, val2 = 0;
+	u16 dclk;
 	int ret;
 
 	ret = sandybridge_pcode_read(dev_priv,
@@ -78,7 +82,8 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
 	if (ret)
 		return ret;
 
-	sp->dclk = val & 0xffff;
+	dclk = val & 0xffff;
+	sp->dclk = DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_priv) > 11 ? 500 : 0), 1000);
 	sp->t_rp = (val & 0xff0000) >> 16;
 	sp->t_rcd = (val & 0xff000000) >> 24;
 
@@ -133,7 +138,8 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 }
 
 static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
-			      struct intel_qgv_info *qi)
+			      struct intel_qgv_info *qi,
+			      bool is_y_tile)
 {
 	const struct dram_info *dram_info = &dev_priv->dram_info;
 	int i, ret;
@@ -144,17 +150,41 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) == 12)
 		switch (dram_info->type) {
 		case INTEL_DRAM_DDR4:
-			qi->t_bl = 4;
+			qi->t_bl = is_y_tile ? 8 : 4;
+			qi->max_numchannels = 2;
+			qi->channel_width = 64;
+			qi->deinterleave = is_y_tile ? 1 : 2;
 			break;
 		case INTEL_DRAM_DDR5:
-			qi->t_bl = 8;
+			qi->t_bl = is_y_tile ? 16 : 8;
+			qi->max_numchannels = 4;
+			qi->channel_width = 32;
+			qi->deinterleave = is_y_tile ? 1 : 2;
+			break;
+		case INTEL_DRAM_LPDDR4:
+			if (IS_ROCKETLAKE(dev_priv)) {
+				qi->t_bl = 8;
+				qi->max_numchannels = 4;
+				qi->channel_width = 32;
+				qi->deinterleave = 2;
+				break;
+			}
+			fallthrough;
+		case INTEL_DRAM_LPDDR5:
+			qi->t_bl = 16;
+			qi->max_numchannels = 8;
+			qi->channel_width = 16;
+			qi->deinterleave = is_y_tile ? 2 : 4;
 			break;
 		default:
 			qi->t_bl = 16;
+			qi->max_numchannels = 1;
 			break;
 		}
-	else if (DISPLAY_VER(dev_priv) == 11)
+	else if (DISPLAY_VER(dev_priv) == 11) {
 		qi->t_bl = dev_priv->dram_info.type == INTEL_DRAM_DDR4 ? 4 : 8;
+		qi->max_numchannels = 1;
+	}
 
 	if (drm_WARN_ON(&dev_priv->drm,
 			qi->num_points > ARRAY_SIZE(qi->points)))
@@ -193,12 +223,6 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
-static int icl_calc_bw(int dclk, int num, int den)
-{
-	/* multiples of 16.666MHz (100/6) */
-	return DIV_ROUND_CLOSEST(num * dclk * 100, den * 6);
-}
-
 static int adl_calc_psf_bw(int clk)
 {
 	/*
@@ -240,7 +264,7 @@ static const struct intel_sa_info tgl_sa_info = {
 };
 
 static const struct intel_sa_info rkl_sa_info = {
-	.deburst = 16,
+	.deburst = 8,
 	.deprogbwlimit = 20, /* GB/s */
 	.displayrtids = 128,
 	.derating = 10,
@@ -263,36 +287,32 @@ static const struct intel_sa_info adlp_sa_info = {
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
 {
 	struct intel_qgv_info qi = {};
-	bool is_y_tile = true; /* assume y tile may be used */
 	int num_channels = max_t(u8, 1, dev_priv->dram_info.num_channels);
-	int deinterleave;
-	int ipqdepth, ipqdepthpch;
+	int ipqdepth, ipqdepthpch = 16;
 	int dclk_max;
 	int maxdebw;
+	int num_groups = ARRAY_SIZE(dev_priv->max_bw);
 	int i, ret;
 
-	ret = icl_get_qgv_points(dev_priv, &qi);
+	ret = icl_get_qgv_points(dev_priv, &qi, true);
 	if (ret) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Failed to get memory subsystem information, ignoring bandwidth limits");
 		return ret;
 	}
 
-	deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
 	dclk_max = icl_sagv_max_dclk(&qi);
 
-	ipqdepthpch = 16;
+	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
 
-	maxdebw = min(sa->deprogbwlimit * 1000,
-		      icl_calc_bw(dclk_max, 16, 1) * 6 / 10); /* 60% */
 	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
 
-	for (i = 0; i < ARRAY_SIZE(dev_priv->max_bw); i++) {
+	for (i = 0; i < num_groups; i++) {
 		struct intel_bw_info *bi = &dev_priv->max_bw[i];
 		int clpchgroup;
 		int j;
 
-		clpchgroup = (sa->deburst * deinterleave / num_channels) << i;
+		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
 		bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
 
 		bi->num_qgv_points = qi.num_points;
@@ -310,7 +330,106 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 			 */
 			ct = max_t(int, sp->t_rc, sp->t_rp + sp->t_rcd +
 				   (clpchgroup - 1) * qi.t_bl + sp->t_rdpre);
-			bw = icl_calc_bw(sp->dclk, clpchgroup * 32 * num_channels, ct);
+			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
+
+			bi->deratedbw[j] = min(maxdebw,
+					       bw * (100 - sa->derating) / 100);
+
+			drm_dbg_kms(&dev_priv->drm,
+				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
+				    i, j, bi->num_planes, bi->deratedbw[j]);
+		}
+	}
+	/*
+	 * In case if SAGV is disabled in BIOS, we always get 1
+	 * SAGV point, but we can't send PCode commands to restrict it
+	 * as it will fail and pointless anyway.
+	 */
+	if (qi.num_points == 1)
+		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
+	else
+		dev_priv->sagv_status = I915_SAGV_ENABLED;
+
+	return 0;
+}
+
+static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
+{
+	struct intel_qgv_info qi = {};
+	const struct dram_info *dram_info = &dev_priv->dram_info;
+	bool is_y_tile = true; /* assume y tile may be used */
+	int num_channels = max_t(u8, 1, dev_priv->dram_info.num_channels);
+	int ipqdepth, ipqdepthpch = 16;
+	int dclk_max;
+	int maxdebw, peakbw;
+	int clperchgroup;
+	int num_groups = ARRAY_SIZE(dev_priv->max_bw);
+	int i, ret;
+
+	ret = icl_get_qgv_points(dev_priv, &qi, is_y_tile);
+	if (ret) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Failed to get memory subsystem information, ignoring bandwidth limits");
+		return ret;
+	}
+
+	if (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5)
+		num_channels *= 2;
+
+	qi.deinterleave = qi.deinterleave ? : DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
+
+	if (num_channels < qi.max_numchannels && DISPLAY_VER(dev_priv) >= 12)
+		qi.deinterleave = max(DIV_ROUND_UP(qi.deinterleave, 2), 1);
+
+	if (DISPLAY_VER(dev_priv) > 11 && num_channels > qi.max_numchannels)
+		drm_warn(&dev_priv->drm, "Number of channels exceeds max number of channels.");
+	if (qi.max_numchannels != 0)
+		num_channels = min_t(u8, num_channels, qi.max_numchannels);
+
+	dclk_max = icl_sagv_max_dclk(&qi);
+
+	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
+	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * 6 / 10); /* 60% */
+
+	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
+	/*
+	 * clperchgroup = 4kpagespermempage * clperchperblock,
+	 * clperchperblock = 8 / num_channels * interleave
+	 */
+	clperchgroup = 4 * DIV_ROUND_UP(8, num_channels) * qi.deinterleave;
+
+	for (i = 0; i < num_groups; i++) {
+		struct intel_bw_info *bi = &dev_priv->max_bw[i];
+		struct intel_bw_info *bi_next;
+		int clpchgroup;
+		int j;
+
+		if (i < num_groups - 1)
+			bi_next = &dev_priv->max_bw[i + 1];
+
+		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
+
+		if (i < num_groups - 1 && clpchgroup < clperchgroup)
+			bi_next->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
+		else
+			bi_next->num_planes = 0;
+
+		bi->num_qgv_points = qi.num_points;
+		bi->num_psf_gv_points = qi.num_psf_points;
+
+		for (j = 0; j < qi.num_points; j++) {
+			const struct intel_qgv_point *sp = &qi.points[j];
+			int ct, bw;
+
+			/*
+			 * Max row cycle time
+			 *
+			 * FIXME what is the logic behind the
+			 * assumed burst length?
+			 */
+			ct = max_t(int, sp->t_rc, sp->t_rp + sp->t_rcd +
+				   (clpchgroup - 1) * qi.t_bl + sp->t_rdpre);
+			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
 
 			bi->deratedbw[j] = min(maxdebw,
 					       bw * (100 - sa->derating) / 100);
@@ -329,9 +448,6 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 				    "BW%d / PSF GV %d: num_planes=%d bw=%u\n",
 				    i, j, bi->num_planes, bi->psf_bw[j]);
 		}
-
-		if (bi->num_planes == 1)
-			break;
 	}
 
 	/*
@@ -388,13 +504,41 @@ static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
 		if (qgv_point >= bi->num_qgv_points)
 			return UINT_MAX;
 
-		if (num_planes >= bi->num_planes)
+		if (num_planes > bi->num_planes)
 			return bi->deratedbw[qgv_point];
 	}
 
 	return 0;
 }
 
+static unsigned int tgl_max_bw(struct drm_i915_private *dev_priv,
+			       int num_planes, int qgv_point)
+{
+	int i;
+
+	/*
+	 * Let's return max bw for 0 planes
+	 */
+	num_planes = max(1, num_planes);
+
+	for (i = ARRAY_SIZE(dev_priv->max_bw) - 1; i >= 0; i--) {
+		const struct intel_bw_info *bi =
+			&dev_priv->max_bw[i];
+
+		/*
+		 * Pcode will not expose all QGV points when
+		 * SAGV is forced to off/min/med/max.
+		 */
+		if (qgv_point >= bi->num_qgv_points)
+			return UINT_MAX;
+
+		if (num_planes <= bi->num_planes)
+			return bi->deratedbw[qgv_point];
+	}
+
+	return dev_priv->max_bw[0].deratedbw[qgv_point];
+}
+
 static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
 			       int psf_gv_point)
 {
@@ -412,13 +556,13 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 	if (IS_DG2(dev_priv))
 		dg2_get_bw_info(dev_priv);
 	else if (IS_ALDERLAKE_P(dev_priv))
-		icl_get_bw_info(dev_priv, &adlp_sa_info);
+		tgl_get_bw_info(dev_priv, &adlp_sa_info);
 	else if (IS_ALDERLAKE_S(dev_priv))
-		icl_get_bw_info(dev_priv, &adls_sa_info);
+		tgl_get_bw_info(dev_priv, &adls_sa_info);
 	else if (IS_ROCKETLAKE(dev_priv))
-		icl_get_bw_info(dev_priv, &rkl_sa_info);
+		tgl_get_bw_info(dev_priv, &rkl_sa_info);
 	else if (DISPLAY_VER(dev_priv) == 12)
-		icl_get_bw_info(dev_priv, &tgl_sa_info);
+		tgl_get_bw_info(dev_priv, &tgl_sa_info);
 	else if (DISPLAY_VER(dev_priv) == 11)
 		icl_get_bw_info(dev_priv, &icl_sa_info);
 }
@@ -746,7 +890,10 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	for (i = 0; i < num_qgv_points; i++) {
 		unsigned int max_data_rate;
 
-		max_data_rate = icl_max_bw(dev_priv, num_active_planes, i);
+		if (DISPLAY_VER(dev_priv) > 11)
+			max_data_rate = tgl_max_bw(dev_priv, num_active_planes, i);
+		else
+			max_data_rate = icl_max_bw(dev_priv, num_active_planes, i);
 		/*
 		 * We need to know which qgv point gives us
 		 * maximum bandwidth in order to disable SAGV
-- 
2.20.1

