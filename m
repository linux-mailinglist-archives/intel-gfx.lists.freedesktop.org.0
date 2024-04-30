Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F8E8B7E8B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CDC4112D7F;
	Tue, 30 Apr 2024 17:30:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RC6S2uYK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF83C112D73;
 Tue, 30 Apr 2024 17:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498221; x=1746034221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T5ClS7VLsbLjMGyZQI1wehlRMuYavXYLDONl9hlEgdo=;
 b=RC6S2uYK5yjVfCsiCMdKO5NSknLHEmOACD3hqaASTz6YiUzTkkBEJSzQ
 CdeYfsKpzab7PEGfgSz1/pJHyQVzGVV1vsT2l7QZaUPfO9mF/I0Wo6EV5
 xJ/aI8wGV9MuaLoW1HXO7BlUu3ZzUOR0BbvW+3NYXYTj3/VvqhOxYKq+5
 Qyv1QZmZMja6+xFjwMOyS5wC99Q+gQFLJ3t5+QM9raWCI4NrrxNlrR26d
 9DnBCtaiwCYVfBm7yAqD4sXxRXSHI5OaIOl/+YilyjtyxPu5WCxib42a7
 anbfGn0AKZUZtNEI6NN9/YJSJvaOuo+cQuimGNSlqTqWoLXg/2swKPr1V g==;
X-CSE-ConnectionGUID: mHAvjTD7R7mqlsDaUsuyLg==
X-CSE-MsgGUID: mHzPfdWrSoiJbR4VAhqrTQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741996"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741996"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:20 -0700
X-CSE-ConnectionGUID: eNOOmZ65T86DInrkUidF5A==
X-CSE-MsgGUID: 3pMonEWqTfKV4rTP1vqz4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617843"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:20 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 11/19] drm/i915/xe2hpd: Add max memory bandwidth algorithm
Date: Tue, 30 Apr 2024 10:28:42 -0700
Message-Id: <20240430172850.1881525-12-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

From: Matt Roper <matthew.d.roper@intel.com>

Unlike DG2, Xe2_HPD does support multiple GV points with different
maximum memory bandwidths, but uses a much simpler algorithm than igpu
platforms use.

Bspec: 64631
CC: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 65 ++++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_drv.h         |  1 +
 drivers/gpu/drm/i915/soc/intel_dram.c   |  4 ++
 drivers/gpu/drm/xe/xe_device_types.h    |  1 +
 4 files changed, 69 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 972ea887e232..47036d4abb33 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -22,6 +22,8 @@ struct intel_qgv_point {
 	u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;
 };
 
+#define DEPROGBWPCLIMIT		60
+
 struct intel_psf_gv_point {
 	u8 clk; /* clock in multiples of 16.6666 MHz */
 };
@@ -241,6 +243,9 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			qi->channel_width = 16;
 			qi->deinterleave = 4;
 			break;
+		case INTEL_DRAM_GDDR:
+			qi->channel_width = 32;
+			break;
 		default:
 			MISSING_CASE(dram_info->type);
 			return -EINVAL;
@@ -387,6 +392,12 @@ static const struct intel_sa_info mtl_sa_info = {
 	.derating = 10,
 };
 
+static const struct intel_sa_info xe2_hpd_sa_info = {
+	.derating = 30,
+	.deprogbwlimit = 53,
+	/* Other values not used by simplified algorithm */
+};
+
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
 {
 	struct intel_qgv_info qi = {};
@@ -493,7 +504,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	dclk_max = icl_sagv_max_dclk(&qi);
 
 	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
-	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * 6 / 10); /* 60% */
+	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
 
 	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
 	/*
@@ -598,6 +609,54 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
 	i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
 }
 
+static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
+			       const struct intel_sa_info *sa)
+{
+	struct intel_qgv_info qi = {};
+	int num_channels = i915->dram_info.num_channels;
+	int peakbw, maxdebw;
+	int ret, i;
+
+	ret = icl_get_qgv_points(i915, &qi, true);
+	if (ret) {
+		drm_dbg_kms(&i915->drm,
+			    "Failed to get memory subsystem information, ignoring bandwidth limits");
+		return ret;
+	}
+
+	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
+	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
+
+	for (i = 0; i < qi.num_points; i++) {
+		const struct intel_qgv_point *point = &qi.points[i];
+		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
+
+		i915->display.bw.max[0].deratedbw[i] =
+			min(maxdebw, (100 - sa->derating) * bw / 100);
+		i915->display.bw.max[0].peakbw[i] = bw;
+
+		drm_dbg_kms(&i915->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
+			    i, i915->display.bw.max[0].deratedbw[i],
+			    i915->display.bw.max[0].peakbw[i]);
+	}
+
+	/* Bandwidth does not depend on # of planes; set all groups the same */
+	i915->display.bw.max[0].num_planes = 1;
+	i915->display.bw.max[0].num_qgv_points = qi.num_points;
+	for (i = 1; i < ARRAY_SIZE(i915->display.bw.max); i++)
+		memcpy(&i915->display.bw.max[i], &i915->display.bw.max[0],
+		       sizeof(i915->display.bw.max[0]));
+
+	/*
+	 * Xe2_HPD should always have exactly two QGV points representing
+	 * battery and plugged-in operation.
+	 */
+	drm_WARN_ON(&i915->drm, qi.num_points != 2);
+	i915->display.sagv.status = I915_SAGV_ENABLED;
+
+	return 0;
+}
+
 static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
 				     int num_planes, int qgv_point)
 {
@@ -684,7 +743,9 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER_FULL(dev_priv) >= IP_VER(14, 1) && IS_DGFX(dev_priv))
+		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
+	else if (DISPLAY_VER(dev_priv) >= 14)
 		tgl_get_bw_info(dev_priv, &mtl_sa_info);
 	else if (IS_DG2(dev_priv))
 		dg2_get_bw_info(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 481ddce038b2..d1d21d433766 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -305,6 +305,7 @@ struct drm_i915_private {
 			INTEL_DRAM_LPDDR4,
 			INTEL_DRAM_DDR5,
 			INTEL_DRAM_LPDDR5,
+			INTEL_DRAM_GDDR,
 		} type;
 		u8 num_qgv_points;
 		u8 num_psf_gv_points;
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index e3287f1de774..18a879e98f03 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -640,6 +640,10 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915)
 	case 5:
 		dram_info->type = INTEL_DRAM_LPDDR3;
 		break;
+	case 8:
+		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
+		dram_info->type = INTEL_DRAM_GDDR;
+		break;
 	default:
 		MISSING_CASE(val);
 		return -EINVAL;
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 0f68c55ea405..842e897a04c7 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -492,6 +492,7 @@ struct xe_device {
 			INTEL_DRAM_LPDDR4,
 			INTEL_DRAM_DDR5,
 			INTEL_DRAM_LPDDR5,
+			INTEL_DRAM_GDDR,
 		} type;
 		u8 num_qgv_points;
 		u8 num_psf_gv_points;
-- 
2.34.1

