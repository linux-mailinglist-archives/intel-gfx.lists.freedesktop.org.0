Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DB941CCBF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 21:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 061116E20E;
	Wed, 29 Sep 2021 19:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AE5E6EAD9
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 19:41:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="204510801"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="204510801"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 12:41:00 -0700
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="487040670"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 12:41:00 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Sep 2021 12:40:52 -0700
Message-Id: <20210929194052.469-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: Update memory bandwidth formulae
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
v3: Fix div by zero on Gen11 and Correct indent for fallthrough(Jani)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 69 ++++++++++++++++++++-----
 1 file changed, 56 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 4b94256d7319..d9de2a812b27 100644
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
@@ -137,6 +140,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 {
 	const struct dram_info *dram_info = &dev_priv->dram_info;
 	int i, ret;
+	bool is_y_tile = true; /* assume y tile may be used */
 
 	qi->num_points = dram_info->num_qgv_points;
 	qi->num_psf_points = dram_info->num_psf_gv_points;
@@ -144,13 +148,35 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
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
 	else if (DISPLAY_VER(dev_priv) == 11)
@@ -263,12 +289,13 @@ static const struct intel_sa_info adlp_sa_info = {
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
 {
 	struct intel_qgv_info qi = {};
-	bool is_y_tile = true; /* assume y tile may be used */
+	const struct dram_info *dram_info = &dev_priv->dram_info;
 	int num_channels = max_t(u8, 1, dev_priv->dram_info.num_channels);
-	int deinterleave;
 	int ipqdepth, ipqdepthpch;
 	int dclk_max;
-	int maxdebw;
+	int maxdebw, peakbw;
+	int clperchgroup;
+	int num_groups = ARRAY_SIZE(dev_priv->max_bw);
 	int i, ret;
 
 	ret = icl_get_qgv_points(dev_priv, &qi);
@@ -278,22 +305,38 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 		return ret;
 	}
 
-	deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
-	dclk_max = icl_sagv_max_dclk(&qi);
+	if (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5)
+		num_channels *= 2;
+
+	if (num_channels < qi.max_numchannels && DISPLAY_VER(dev_priv) >= 12)
+		qi.deinterleave = DIV_ROUND_UP(qi.deinterleave, 2);
+
+	num_channels = min_t(u8, num_channels, qi.max_numchannels);
+	dclk_max = icl_calc_bw(icl_sagv_max_dclk(&qi), 16, 1);
 
 	ipqdepthpch = 16;
 
-	maxdebw = min(sa->deprogbwlimit * 1000,
-		      icl_calc_bw(dclk_max, 16, 1) * 6 / 10); /* 60% */
+	peakbw = num_channels * DIV_ROUND_UP(qi.deinterleave, 8) * dclk_max;
+	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * 6 / 10); /* 60% */
 	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
+	/*
+	 * clperchgroup = 4kpagespermempage * clperchperblock,
+	 * clperchperblock = 8 /num_channels * interleave
+	 */
+	clperchgroup = 4 * DIV_ROUND_UP(8, num_channels) * qi.deinterleave;
 
-	for (i = 0; i < ARRAY_SIZE(dev_priv->max_bw); i++) {
+	for (i = 0; i < num_groups; i++) {
 		struct intel_bw_info *bi = &dev_priv->max_bw[i];
 		int clpchgroup;
 		int j;
 
-		clpchgroup = (sa->deburst * deinterleave / num_channels) << i;
-		bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
+		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
+
+		if ((i < num_groups - 1 && clpchgroup < clperchgroup) ||
+		    DISPLAY_VER(dev_priv) == 11)
+			bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
+		else
+			bi->num_planes = 0;
 
 		bi->num_qgv_points = qi.num_points;
 		bi->num_psf_gv_points = qi.num_psf_points;
@@ -339,7 +382,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	 * SAGV point, but we can't send PCode commands to restrict it
 	 * as it will fail and pointless anyway.
 	 */
-	if (qi.num_points == 1)
+	if (qi.num_points >= 1)
 		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
 	else
 		dev_priv->sagv_status = I915_SAGV_ENABLED;
-- 
2.20.1

