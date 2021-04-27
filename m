Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 520C736BFFE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 09:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35CC894B7;
	Tue, 27 Apr 2021 07:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB97894B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 07:18:29 +0000 (UTC)
IronPort-SDR: rBEcEEAZ9ipEQcT+FaN1SW19HrIvAjlyB9fNDHUGPNmCqk2hJOZE00lf47q5hWuXSBeIdsXSUQ
 TujcmC9m6pRQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9966"; a="196523835"
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; d="scan'208";a="196523835"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 00:18:27 -0700
IronPort-SDR: +h8qJgO7p25ZP+LtIqHkHzEx7PcIowitI/7nhWHHRBhIeK+8Y//VY3yzlR+4wy72+tHX7FtB2L
 Jj7XqJtUqEEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; d="scan'208";a="422953595"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.91])
 by fmsmga008.fm.intel.com with ESMTP; 27 Apr 2021 00:18:24 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Apr 2021 10:21:31 +0300
Message-Id: <20210427072131.21044-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Implement PSF GV point support
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

PSF GV points are an additional factor that can limit the
bandwidth available to display, separate from the traditional
QGV points.  Whereas traditional QGV points represent possible
memory clock frequencies, PSF GV points reflect possible
frequencies of the memory fabric.

Switching between PSF GV points has the advantage of incurring
almost no memory access block time and thus does not need to be
accounted for in watermark calculations.

This patch adds support for those on top of regular QGV points.
Those are supposed to be used simultaneously, i.e we are always
at some QGV and some PSF GV point, based on the current video
mode requirements.
Bspec: 64631, 53998

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 100 +++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_drv.h         |   7 ++
 drivers/gpu/drm/i915/i915_reg.h         |   3 +
 drivers/gpu/drm/i915/intel_dram.c       |   1 +
 4 files changed, 108 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index d96b9bf6c197..fdee6dcff70c 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -17,9 +17,15 @@ struct intel_qgv_point {
 	u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;
 };
 
+struct intel_psf_gv_point {
+	u8 clk; /* clock in multiples of 16.6666 MHz */
+};
+
 struct intel_qgv_info {
 	struct intel_qgv_point points[I915_NUM_QGV_POINTS];
+	struct intel_psf_gv_point psf_points[I915_NUM_PSF_GV_POINTS];
 	u8 num_points;
+	u8 num_psf_points;
 	u8 t_bl;
 };
 
@@ -49,6 +55,28 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
+static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
+					    struct intel_psf_gv_point *points)
+{
+	u32 val = 0, val2 = 0;
+	int ret;
+	int i;
+
+	ret = sandybridge_pcode_read(dev_priv,
+				     ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
+				     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO,
+				     &val, &val2);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < I915_NUM_PSF_GV_POINTS; i++) {
+		points[i].clk = val & 0xff;
+		val >>= 8;
+	}
+
+	return 0;
+}
+
 int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
 				  u32 points_mask)
 {
@@ -76,6 +104,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 	int i, ret;
 
 	qi->num_points = dram_info->num_qgv_points;
+	qi->num_psf_points = dram_info->num_psf_gv_points;
 
 	if (IS_DISPLAY_VER(dev_priv, 12))
 		switch (dram_info->type) {
@@ -109,6 +138,19 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			    sp->t_rcd, sp->t_rc);
 	}
 
+	if (qi->num_psf_points > 0) {
+		ret = adls_pcode_read_psf_gv_point_info(dev_priv, qi->psf_points);
+		if (ret) {
+			drm_err(&dev_priv->drm, "Failed to read PSF point data; PSF points will not be considered in bandwidth calculations.\n");
+			qi->num_psf_points = 0;
+		}
+
+		for (i = 0; i < qi->num_psf_points; i++)
+			drm_dbg_kms(&dev_priv->drm,
+				    "PSF GV %d: CLK=%d \n",
+				    i, qi->psf_points[i].clk);
+	}
+
 	return 0;
 }
 
@@ -118,6 +160,16 @@ static int icl_calc_bw(int dclk, int num, int den)
 	return DIV_ROUND_CLOSEST(num * dclk * 100, den * 6);
 }
 
+static int adl_calc_psf_bw(int clk)
+{
+	/*
+	 * clk is multiples of 16.666MHz (100/6)
+	 * According to BSpec PSF GV bandwidth is
+	 * calculated as BW = 64 * clk * 16.666Mhz
+	 */
+	return DIV_ROUND_CLOSEST(64 * clk * 100, 6);
+}
+
 static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
 {
 	u16 dclk = 0;
@@ -188,6 +240,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 		bi->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
 
 		bi->num_qgv_points = qi.num_points;
+		bi->num_psf_gv_points = qi.num_psf_points;
 
 		for (j = 0; j < qi.num_points; j++) {
 			const struct intel_qgv_point *sp = &qi.points[j];
@@ -211,6 +264,16 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 				    i, j, bi->num_planes, bi->deratedbw[j]);
 		}
 
+		for (j = 0; j < qi.num_psf_points; j++) {
+			const struct intel_psf_gv_point *sp = &qi.psf_points[j];
+
+			bi->psf_bw[j] = adl_calc_psf_bw(sp->clk);
+
+			drm_dbg_kms(&dev_priv->drm,
+				    "BW%d / PSF GV %d: num_planes=%d bw=%u\n",
+				    i, j, bi->num_planes, bi->psf_bw[j]);
+		}
+
 		if (bi->num_planes == 1)
 			break;
 	}
@@ -256,6 +319,15 @@ static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
 	return 0;
 }
 
+static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
+			       int psf_gv_point)
+{
+	const struct intel_bw_info *bi =
+			&dev_priv->max_bw[0];
+
+	return bi->psf_bw[psf_gv_point];
+}
+
 void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 {
 	if (!HAS_DISPLAY(dev_priv))
@@ -525,7 +597,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	u32 allowed_points = 0;
 	unsigned int max_bw_point = 0, max_bw = 0;
 	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
-	u32 mask = (1 << num_qgv_points) - 1;
+	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
+	u32 mask = ADLS_QGV_PT_MASK | ADLS_PSF_PT_MASK;
 
 	/* FIXME earlier gens need some checks too */
 	if (DISPLAY_VER(dev_priv) < 11)
@@ -593,23 +666,44 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 			max_bw = max_data_rate;
 		}
 		if (max_data_rate >= data_rate)
-			allowed_points |= BIT(i);
+			allowed_points |= REG_FIELD_PREP(ADLS_QGV_PT_MASK, BIT(i));
+
 		drm_dbg_kms(&dev_priv->drm, "QGV point %d: max bw %d required %d\n",
 			    i, max_data_rate, data_rate);
 	}
 
+	for (i = 0; i < num_psf_gv_points; i++) {
+		unsigned int max_data_rate = adl_psf_bw(dev_priv, i);
+
+		if (max_data_rate >= data_rate)
+			allowed_points |= REG_FIELD_PREP(ADLS_PSF_PT_MASK, BIT(i));
+
+		drm_dbg_kms(&dev_priv->drm, "PSF GV point %d: max bw %d"
+			    " required %d\n",
+			    i, max_data_rate, data_rate);
+	}
+
 	/*
 	 * BSpec states that we always should have at least one allowed point
 	 * left, so if we couldn't - simply reject the configuration for obvious
 	 * reasons.
 	 */
-	if (allowed_points == 0) {
+	if ((allowed_points & ADLS_QGV_PT_MASK) == 0) {
 		drm_dbg_kms(&dev_priv->drm, "No QGV points provide sufficient memory"
 			    " bandwidth %d for display configuration(%d active planes).\n",
 			    data_rate, num_active_planes);
 		return -EINVAL;
 	}
 
+	if (num_psf_gv_points > 0) {
+		if ((allowed_points & ADLS_PSF_PT_MASK) == 0) {
+			drm_dbg_kms(&dev_priv->drm, "No PSF GV points provide sufficient memory"
+				    " bandwidth %d for display configuration(%d active planes).\n",
+				    data_rate, num_active_planes);
+			return -EINVAL;
+		}
+	}
+
 	/*
 	 * Leave only single point with highest bandwidth, if
 	 * we can't enable SAGV due to the increased memory latency it may
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 186cca52ea48..71739fcd6c76 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -569,6 +569,9 @@ i915_fence_timeout(const struct drm_i915_private *i915)
 /* Amount of SAGV/QGV points, BSpec precisely defines this */
 #define I915_NUM_QGV_POINTS 8
 
+/* Amount of PSF GV points, BSpec precisely defines this */
+#define I915_NUM_PSF_GV_POINTS 3
+
 struct ddi_vbt_port_info {
 	/* Non-NULL if port present. */
 	struct intel_bios_encoder_data *devdata;
@@ -1083,12 +1086,16 @@ struct drm_i915_private {
 			INTEL_DRAM_LPDDR5,
 		} type;
 		u8 num_qgv_points;
+		u8 num_psf_gv_points;
 	} dram_info;
 
 	struct intel_bw_info {
 		/* for each QGV point */
 		unsigned int deratedbw[I915_NUM_QGV_POINTS];
+		/* for each PSF GV point */
+		unsigned int psf_bw[I915_NUM_PSF_GV_POINTS];
 		u8 num_qgv_points;
+		u8 num_psf_gv_points;
 		u8 num_planes;
 	} max_bw[6];
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index dcc5176abb6a..c12512f5b6c8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9296,9 +9296,12 @@ enum {
 #define   ICL_PCODE_MEM_SUBSYSYSTEM_INFO	0xd
 #define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
 #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
+#define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
 #define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
 #define     ICL_PCODE_POINTS_RESTRICTED		0x0
 #define     ICL_PCODE_POINTS_RESTRICTED_MASK	0x1
+#define   ADLS_QGV_PT_MASK			REG_GENMASK(7, 0)
+#define   ADLS_PSF_PT_MASK			REG_GENMASK(10, 8)
 #define   GEN6_PCODE_READ_D_COMP		0x10
 #define   GEN6_PCODE_WRITE_D_COMP		0x11
 #define   ICL_PCODE_EXIT_TCCOLD			0x12
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 1e53c017c30d..53ccd106785f 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -468,6 +468,7 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
 
 	dram_info->num_channels = (val & 0xf0) >> 4;
 	dram_info->num_qgv_points = (val & 0xf00) >> 8;
+	dram_info->num_psf_gv_points = (val & 0x3000) >> 12;
 
 	return 0;
 }
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
