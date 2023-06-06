Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D37C7237F7
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 08:44:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC11C10E29D;
	Tue,  6 Jun 2023 06:44:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C3510E29D
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 06:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686033840; x=1717569840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xZahi0RMhzPjBO+bag+cy9qojaFdpqVmkXDGBJs0LtU=;
 b=XsTh+ln9lQNXVnWC8aDAZz0YXGjkDAXd1g8iNUOCpK9iQWQdC1JqOBOm
 muj9yQEoHZYxs2wuwkXWk+zbgKLED91ORPy7R4ocHqDs7Kk5D6tAUPjuC
 qjhWgDsdsOt4G/sEaC3BcS87sYISymboWYLURfmBQ0ugYByYkEnKHDsfJ
 RDdH3Qc9FAqyVsOS/yg2AKjHvW3gBgR6dppIYCDjxgRauHlmuFhPrAJAY
 mI2g36YVD5Fp4UD6pBkWzN3kXJTNVYTLm9nMfXxStLKsXLD8bqTxGTUTJ
 kprizCdEskdxfUcm3UfUp+ZIjz+JruWPpA2g2u4oaMN8X2OAyMS9TyvA/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336940614"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; 
 d="scan'208,223";a="336940614"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 23:44:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="778865645"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; 
 d="scan'208,223";a="778865645"
Received: from mgmohiud-mobl2.gar.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.42.181])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 23:43:58 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 09:43:26 +0300
Message-Id: <20230606064327.188226-7-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230606064327.188226-1-vinod.govindapillai@intel.com>
References: <20230606064327.188226-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v13 6/7] drm/i915/mtl: find the best QGV point
 for the SAGV configuration
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

From MTL onwards, we need to find the best QGV point based on
the required data rate and pass the peak BW of that point to
the punit to lock the corresponding QGV point.

v1: Fix for warning from kernel test robot

v2: No need to serialize for the peakbw change as pmdemand code
    will do that (Imre)

Bspec: 64636

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/r/202305280253.Ab8bRV2w-lkp@intel.com/
Reported-by: Dan Carpenter <error27@gmail.com>
Closes: https://lore.kernel.org/r/202305280253.Ab8bRV2w-lkp@intel.com/
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 79 ++++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h |  6 ++
 2 files changed, 83 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index b1cbeda0b2e3..bef96db62c80 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -803,6 +803,77 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	return to_intel_bw_state(bw_state);
 }
 
+static int mtl_find_qgv_points(struct drm_i915_private *i915,
+			       unsigned int data_rate,
+			       unsigned int num_active_planes,
+			       struct intel_bw_state *new_bw_state)
+{
+	unsigned int best_rate = UINT_MAX;
+	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	unsigned int qgv_peak_bw  = 0;
+	int i;
+	int ret;
+
+	ret = intel_atomic_lock_global_state(&new_bw_state->base);
+	if (ret)
+		return ret;
+
+	/*
+	 * If SAGV cannot be enabled, disable the pcode SAGV by passing all 1's
+	 * for qgv peak bw in PM Demand request. So assign UINT_MAX if SAGV is
+	 * not enabled. PM Demand code will clamp the value for the register
+	 */
+	if (!intel_can_enable_sagv(i915, new_bw_state)) {
+		new_bw_state->qgv_point_peakbw = U16_MAX;
+		drm_dbg_kms(&i915->drm, "No SAGV, use UINT_MAX as peak bw.");
+		return 0;
+	}
+
+	/*
+	 * Find the best QGV point by comparing the data_rate with max data rate
+	 * offered per plane group
+	 */
+	for (i = 0; i < num_qgv_points; i++) {
+		unsigned int bw_index =
+			tgl_max_bw_index(i915, num_active_planes, i);
+		unsigned int max_data_rate;
+
+		if (bw_index >= ARRAY_SIZE(i915->display.bw.max))
+			continue;
+
+		max_data_rate = i915->display.bw.max[bw_index].deratedbw[i];
+
+		if (max_data_rate < data_rate)
+			continue;
+
+		if (max_data_rate - data_rate < best_rate) {
+			best_rate = max_data_rate - data_rate;
+			qgv_peak_bw = i915->display.bw.max[bw_index].peakbw[i];
+		}
+
+		drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d required %d qgv_peak_bw: %d\n",
+			    i, max_data_rate, data_rate, qgv_peak_bw);
+	}
+
+	drm_dbg_kms(&i915->drm, "Matching peaks QGV bw: %d for required data rate: %d\n",
+		    qgv_peak_bw, data_rate);
+
+	/*
+	 * The display configuration cannot be supported if no QGV point
+	 * satisfying the required data rate is found
+	 */
+	if (qgv_peak_bw == 0) {
+		drm_dbg_kms(&i915->drm, "No QGV points for bw %d for display configuration(%d active planes).\n",
+			    data_rate, num_active_planes);
+		return -EINVAL;
+	}
+
+	/* MTL PM DEMAND expects QGV BW parameter in multiples of 100 mbps */
+	new_bw_state->qgv_point_peakbw = DIV_ROUND_CLOSEST(qgv_peak_bw, 100);
+
+	return 0;
+}
+
 static int icl_find_qgv_points(struct drm_i915_private *i915,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
@@ -928,8 +999,12 @@ static int intel_bw_check_qgv_points(struct drm_i915_private *i915,
 
 	data_rate = DIV_ROUND_UP(data_rate, 1000);
 
-	return icl_find_qgv_points(i915, data_rate, num_active_planes,
-				   old_bw_state, new_bw_state);
+	if (DISPLAY_VER(i915) >= 14)
+		return mtl_find_qgv_points(i915, data_rate, num_active_planes,
+					   new_bw_state);
+	else
+		return icl_find_qgv_points(i915, data_rate, num_active_planes,
+					   old_bw_state, new_bw_state);
 }
 
 static bool intel_bw_state_changed(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index f20292143745..59cb4fc5db76 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -34,6 +34,12 @@ struct intel_bw_state {
 	/* bitmask of active pipes */
 	u8 active_pipes;
 
+	/*
+	 * From MTL onwards, to lock a QGV point, punit expects the peak BW of
+	 * the selected QGV point as the parameter in multiples of 100MB/s
+	 */
+	u16 qgv_point_peakbw;
+
 	/*
 	 * Current QGV points mask, which restricts
 	 * some particular SAGV states, not to confuse
-- 
2.34.1

