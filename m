Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C06CF583651
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE82610E0B7;
	Thu, 28 Jul 2022 01:34:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2E5910E448
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972082; x=1690508082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GwicDgkIAXMDIKzsa+XtwOZZr8jfFldSiWjTmDwgsrU=;
 b=LSP+p2g6Bvh23oZ9AGgAJwYOXXuvhUOAQ5xHlltKQmRwF5WzDMMTa4eQ
 DrdwpPp8rQGlww2EDB+nKL6gidtQ/fbw1x4lStfZhpq1hawnkroWPv+tk
 cTVvq1PodbUKlInEID5gIxJ7zeXqmFzX/lOZ1bw0MSU0jGwtpH6vVJK0Q
 j1cgxGu5L+pFlRyM6LVJWddQzv6XLL9p+ugVESqIRG/2dkfsirvHgF3Cj
 As2/L849C/wZOQ/eK2zzMSsUUqdeeGQy+z0szcR/rTsWeiNT4/xFU5dS5
 FNxK+C7ex2wtnkdcI711jB6Ek8JVPeV48qmOIHyzSlMy/3qyCtXXOARJn w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271431759"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; 
 d="scan'208,223";a="271431759"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; 
 d="scan'208,223";a="659457022"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:40 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:12 -0700
Message-Id: <20220728013420.3750388-16-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/23] drm/i915/mtl: Obtain SAGV values from
 MMIO instead of GT pcode mailbox
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

From Meteorlake, Latency Level, SAGV bloack time are read from
LATENCY_SAGV register instead of the GT driver pcode mailbox. DDR type
and QGV information are also tob read from Mem SS registers.

Bspec: 49324, 64636

Cc: Matt Roper <matthew.d.roper@intel.com>
Original Author: Caz Yokoyama
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 49 +++++++++++++++++++------
 drivers/gpu/drm/i915/display/intel_bw.h |  9 +++++
 drivers/gpu/drm/i915/i915_reg.h         | 16 ++++++++
 drivers/gpu/drm/i915/intel_dram.c       | 41 ++++++++++++++++++++-
 drivers/gpu/drm/i915/intel_pm.c         |  8 +++-
 5 files changed, 110 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 79269d2c476b..8bbf47da1716 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -15,11 +15,6 @@
 #include "intel_pcode.h"
 #include "intel_pm.h"
 
-/* Parameters for Qclk Geyserville (QGV) */
-struct intel_qgv_point {
-	u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;
-};
-
 struct intel_psf_gv_point {
 	u8 clk; /* clock in multiples of 16.6666 MHz */
 };
@@ -137,6 +132,42 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
+static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
+				   struct intel_qgv_point *sp, int point)
+{
+	u32 val, val2;
+	u16 dclk;
+
+	val = intel_uncore_read(&dev_priv->uncore,
+				MTL_MEM_SS_INFO_QGV_POINT(point, 0));
+	val2 = intel_uncore_read(&dev_priv->uncore,
+				 MTL_MEM_SS_INFO_QGV_POINT(point, 1));
+	dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
+	sp->dclk = DIV_ROUND_UP((16667 * dclk) +  500, 1000);
+	sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
+	sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);
+
+	sp->t_rdpre = REG_FIELD_GET(MTL_TRDPRE_MASK, val2);
+	sp->t_ras = REG_FIELD_GET(MTL_TRAS_MASK, val2);
+
+	sp->t_rc = sp->t_rp + sp->t_ras;
+
+	return 0;
+}
+
+int
+intel_read_qgv_point_info(struct drm_i915_private *dev_priv,
+			  struct intel_qgv_point *sp,
+			  int point)
+{
+	if (DISPLAY_VER(dev_priv) >= 14)
+		return mtl_read_qgv_point_info(dev_priv, sp, point);
+	else if (IS_DG1(dev_priv))
+		return dg1_mchbar_read_qgv_point_info(dev_priv, sp, point);
+	else
+		return icl_pcode_read_qgv_point_info(dev_priv, sp, point);
+}
+
 static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			      struct intel_qgv_info *qi,
 			      bool is_y_tile)
@@ -193,11 +224,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 	for (i = 0; i < qi->num_points; i++) {
 		struct intel_qgv_point *sp = &qi->points[i];
 
-		if (IS_DG1(dev_priv))
-			ret = dg1_mchbar_read_qgv_point_info(dev_priv, sp, i);
-		else
-			ret = icl_pcode_read_qgv_point_info(dev_priv, sp, i);
-
+		ret = intel_read_qgv_point_info(dev_priv, sp, i);
 		if (ret)
 			return ret;
 
@@ -560,7 +587,7 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 
 	if (IS_DG2(dev_priv))
 		dg2_get_bw_info(dev_priv);
-	else if (IS_ALDERLAKE_P(dev_priv))
+	else if (DISPLAY_VER(dev_priv) >= 13 || IS_ALDERLAKE_P(dev_priv))
 		tgl_get_bw_info(dev_priv, &adlp_sa_info);
 	else if (IS_ALDERLAKE_S(dev_priv))
 		tgl_get_bw_info(dev_priv, &adls_sa_info);
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index cb7ee3a24a58..b4c6665b0cf0 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -46,6 +46,11 @@ struct intel_bw_state {
 	u8 num_active_planes[I915_MAX_PIPES];
 };
 
+/* Parameters for Qclk Geyserville (QGV) */
+struct intel_qgv_point {
+	u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;
+};
+
 #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, base)
 
 struct intel_bw_state *
@@ -69,4 +74,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 int intel_bw_min_cdclk(struct drm_i915_private *i915,
 		       const struct intel_bw_state *bw_state);
 
+int intel_read_qgv_point_info(struct drm_i915_private *dev_priv,
+			      struct intel_qgv_point *sp,
+			      int point);
+
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 23b50d671550..d37607109398 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8761,4 +8761,20 @@ enum skl_power_gate {
 #define  MTL_LATENCY_LEVEL0_2_4_MASK	REG_GENMASK(12, 0)
 #define  MTL_LATENCY_LEVEL1_3_5_MASK	REG_GENMASK(28, 16)
 
+#define MTL_LATENCY_SAGV		_MMIO(0x4578c)
+#define  MTL_LATENCY_QCLK_SAGV		REG_GENMASK(12, 0)
+
+#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
+#define  MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
+#define  MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
+#define  MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
+
+#define MTL_MEM_SS_INFO_QGV_POINT(point, bitgroup) \
+	 _MMIO(0x45710 + ((point) * 2 + (bitgroup)) * sizeof(u32))
+#define  MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
+#define  MTL_TRAS_MASK			REG_GENMASK(16, 8)
+#define  MTL_DCLK_MASK			REG_GENMASK(15, 0)
+#define  MTL_TRP_MASK			REG_GENMASK(23, 16)
+#define  MTL_TRCD_MASK			REG_GENMASK(31, 24)
+
 #endif /* _I915_REG_H_ */
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 437447119770..2403ccd52c74 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -466,6 +466,43 @@ static int gen12_get_dram_info(struct drm_i915_private *i915)
 	return icl_pcode_read_mem_global_info(i915);
 }
 
+static int xelpdp_get_dram_info(struct drm_i915_private *i915)
+{
+	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
+	struct dram_info *dram_info = &i915->dram_info;
+
+	val = REG_FIELD_GET(MTL_DDR_TYPE_MASK, val);
+	switch (val) {
+	case 0:
+		dram_info->type = INTEL_DRAM_DDR4;
+		break;
+	case 1:
+		dram_info->type = INTEL_DRAM_DDR5;
+		break;
+	case 2:
+		dram_info->type = INTEL_DRAM_LPDDR5;
+		break;
+	case 3:
+		dram_info->type = INTEL_DRAM_LPDDR4;
+		break;
+	case 4:
+		dram_info->type = INTEL_DRAM_DDR3;
+		break;
+	case 5:
+		dram_info->type = INTEL_DRAM_LPDDR3;
+		break;
+	default:
+		MISSING_CASE(val);
+		return -EINVAL;
+	}
+
+	dram_info->num_channels = REG_FIELD_GET(MTL_N_OF_POPULATED_CH_MASK, val);
+	dram_info->num_qgv_points = REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
+	/* PSF GV points not supported in D14+ */
+
+	return 0;
+}
+
 void intel_dram_detect(struct drm_i915_private *i915)
 {
 	struct dram_info *dram_info = &i915->dram_info;
@@ -480,7 +517,9 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	 */
 	dram_info->wm_lv_0_adjust_needed = !IS_GEN9_LP(i915);
 
-	if (GRAPHICS_VER(i915) >= 12)
+	if (DISPLAY_VER(i915) >= 14)
+		ret = xelpdp_get_dram_info(i915);
+	else if (GRAPHICS_VER(i915) >= 12)
 		ret = gen12_get_dram_info(i915);
 	else if (GRAPHICS_VER(i915) >= 11)
 		ret = gen11_get_dram_info(i915);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index fac565d23d57..f71b3b8b590c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3698,7 +3698,13 @@ intel_has_sagv(struct drm_i915_private *dev_priv)
 static u32
 intel_sagv_block_time(struct drm_i915_private *dev_priv)
 {
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		u32 val;
+
+		val = intel_uncore_read(&dev_priv->uncore, MTL_LATENCY_SAGV);
+
+		return REG_FIELD_GET(MTL_LATENCY_QCLK_SAGV, val);
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		u32 val = 0;
 		int ret;
 
-- 
2.25.1

