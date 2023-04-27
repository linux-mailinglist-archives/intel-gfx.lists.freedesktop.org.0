Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE1B6F07CF
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 17:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79A3D10EB72;
	Thu, 27 Apr 2023 15:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 087D610EB72
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 15:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682607715; x=1714143715;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UDwm3z68FKPhUJB0nQF8dzBOQ86+So9SR9lQwOeqYR8=;
 b=eoGQAFD8CaT1i1B+80ceL8VaTQx8i8BKIt3yHZ7MikID/X69Naca8d8b
 LdNDC8Y7Nu5aw1hxAWAHigYwfTLE1p9Sj9KjVBxVNT4DrYQ4DmOfmhdWi
 PbsIZGKCdKoBAn/Xn+I1MzusXydJ/hKsYEH5hgGoaB2IipZNaSMzaBD08
 pUHnvRRFPvx35ExpgQaAS/oDXeVyhlJKOHlbekXE6iRRFzP7Y9KC9rvj1
 GgKNt8CBdPLOd/O7lmRh9d/tJFZgIpxH6XQtLYAVd6gepU7YJ+XjqHn3h
 iNoKSRChBOS3QY+8PuiS58wSuDW+0V+B8zfZXnmhSw5jtMpr3zcI1g/Gs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="410521090"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; 
 d="scan'208,223";a="410521090"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 08:01:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="838420219"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; 
 d="scan'208,223";a="838420219"
Received: from jfedorov-mobl2.ccr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.216.111])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 08:01:13 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 18:00:14 +0300
Message-Id: <20230427150016.1566833-7-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
References: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/8] drm/i915/mtl: find best QGV point and
 configure sagv
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From MTL onwards, we need to find the best QGV point based on
the required data rate and pass the peak BW of that point to
the punit to lock the corresponding QGV point.

Bspec: 64636

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 87 ++++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h |  6 ++
 2 files changed, 91 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index a7f501131bb6..70fa469c3c20 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -802,6 +802,85 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	return to_intel_bw_state(bw_state);
 }
 
+static int mtl_find_qgv_points(struct drm_i915_private *i915,
+			       unsigned int data_rate,
+			       unsigned int num_active_planes,
+			       const struct intel_bw_state *old_bw_state,
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
+		new_bw_state->qgv_point_peakbw = UINT_MAX;
+		drm_dbg_kms(&i915->drm, "No SAGV, use UINT_MAX as peak bw.");
+		goto out;
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
+		if (bw_index > ARRAY_SIZE(i915->display.bw.max))
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
+	 * satisfying the require data rate is found
+	 */
+	if (qgv_peak_bw == 0) {
+		drm_dbg_kms(&i915->drm, "No QGV points for bw %d for display configuration(%d active planes).\n",
+			    data_rate, num_active_planes);
+		return -EINVAL;
+	}
+
+	/* MTL PM DEMAND expects QGV BW parameter in multiples of 100 mbps */
+	new_bw_state->qgv_point_peakbw = qgv_peak_bw / 100;
+
+out:
+	if (new_bw_state->qgv_point_peakbw != old_bw_state->qgv_point_peakbw)  {
+		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static int icl_find_qgv_points(struct drm_i915_private *i915,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
@@ -927,8 +1006,12 @@ static int intel_bw_check_qgv_points(struct drm_i915_private *i915,
 
 	data_rate = DIV_ROUND_UP(data_rate, 1000);
 
-	return icl_find_qgv_points(i915, data_rate, num_active_planes,
-				   old_bw_state, new_bw_state);
+	if (DISPLAY_VER(i915) >= 14)
+		return mtl_find_qgv_points(i915, data_rate, num_active_planes,
+					   old_bw_state, new_bw_state);
+	else
+		return icl_find_qgv_points(i915, data_rate, num_active_planes,
+					   old_bw_state, new_bw_state);
 }
 
 static bool intel_bw_state_changed(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index f20292143745..fc32f1eace85 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -34,6 +34,12 @@ struct intel_bw_state {
 	/* bitmask of active pipes */
 	u8 active_pipes;
 
+	/*
+	 * From MTL onwards, to lock a QGV point, punit expects the peak BW of
+	 * the selected QGV point as the parameter
+	 */
+	unsigned int qgv_point_peakbw;
+
 	/*
 	 * Current QGV points mask, which restricts
 	 * some particular SAGV states, not to confuse
-- 
2.34.1

