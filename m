Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0A6718E78
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 00:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A83A10E0C3;
	Wed, 31 May 2023 22:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0067B10E1EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 22:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685572068; x=1717108068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XPDwWIaXS7gitexGHnVtMNj92widGCCHY6N2HeSBtrA=;
 b=jLdogA8x+QhXn7MJnUWPwmrltxHg+LvT+21AkE66mTafFVNXAHpzDbnC
 dCYQr74uso472kHJRRgvefEn/2vXZl1OkaAKRrLdt4Hs9Dti7ZoKkCav6
 mx2+ncd27s4q2a2CXmCzu5DYaJbiR982eSFK7lf7rnHsGoQMcgqd9p1HG
 +R9ZBiwS66fdgrlv2r5qwYKmgs6ooq9aREOWRup6mu+HXsk7ODVkY9Xv3
 8JTmOrbKyKkToNwIWrTZ6Gjzczrix3UhqLYryPkwr7PiUPhy2y9QOATtN
 xuFWpyy/1S4FzVWpMcOO7G1RHchgl7mjgU2QuzbzweaY/+Ra1iS3W4eFg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="383651613"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="383651613"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 15:27:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="1037222126"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="1037222126"
Received: from gliakhov-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.47.114])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 15:27:44 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 01:27:11 +0300
Message-Id: <20230531222714.439313-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531222714.439313-1-vinod.govindapillai@intel.com>
References: <20230531222714.439313-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 4/7] drm/i915: extract
 intel_bw_check_qgv_points()
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

Extract intel_bw_check_qgv_points() from intel_bw_atomic_check
to facilitate future platform variations in handling SAGV
configurations.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 235 +++++++++++++-----------
 1 file changed, 130 insertions(+), 105 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index b792d307e9d5..56b3975f3ccb 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -803,6 +803,128 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	return to_intel_bw_state(bw_state);
 }
 
+static int icl_find_qgv_points(struct drm_i915_private *i915,
+			       unsigned int data_rate,
+			       unsigned int num_active_planes,
+			       const struct intel_bw_state *old_bw_state,
+			       struct intel_bw_state *new_bw_state)
+{
+	unsigned int max_bw_point = 0;
+	unsigned int max_bw = 0;
+	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
+	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
+	u16 psf_points = 0;
+	u16 qgv_points = 0;
+	int i;
+	int ret;
+
+	ret = intel_atomic_lock_global_state(&new_bw_state->base);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < num_qgv_points; i++) {
+		unsigned int max_data_rate;
+
+		if (DISPLAY_VER(i915) > 11)
+			max_data_rate = tgl_max_bw(i915, num_active_planes, i);
+		else
+			max_data_rate = icl_max_bw(i915, num_active_planes, i);
+		/*
+		 * We need to know which qgv point gives us
+		 * maximum bandwidth in order to disable SAGV
+		 * if we find that we exceed SAGV block time
+		 * with watermarks. By that moment we already
+		 * have those, as it is calculated earlier in
+		 * intel_atomic_check,
+		 */
+		if (max_data_rate > max_bw) {
+			max_bw_point = i;
+			max_bw = max_data_rate;
+		}
+		if (max_data_rate >= data_rate)
+			qgv_points |= BIT(i);
+
+		drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d required %d\n",
+			    i, max_data_rate, data_rate);
+	}
+
+	for (i = 0; i < num_psf_gv_points; i++) {
+		unsigned int max_data_rate = adl_psf_bw(i915, i);
+
+		if (max_data_rate >= data_rate)
+			psf_points |= BIT(i);
+
+		drm_dbg_kms(&i915->drm, "PSF GV point %d: max bw %d"
+			    " required %d\n",
+			    i, max_data_rate, data_rate);
+	}
+
+	/*
+	 * BSpec states that we always should have at least one allowed point
+	 * left, so if we couldn't - simply reject the configuration for obvious
+	 * reasons.
+	 */
+	if (qgv_points == 0) {
+		drm_dbg_kms(&i915->drm, "No QGV points provide sufficient memory"
+			    " bandwidth %d for display configuration(%d active planes).\n",
+			    data_rate, num_active_planes);
+		return -EINVAL;
+	}
+
+	if (num_psf_gv_points > 0 && psf_points == 0) {
+		drm_dbg_kms(&i915->drm, "No PSF GV points provide sufficient memory"
+			    " bandwidth %d for display configuration(%d active planes).\n",
+			    data_rate, num_active_planes);
+		return -EINVAL;
+	}
+
+	/*
+	 * Leave only single point with highest bandwidth, if
+	 * we can't enable SAGV due to the increased memory latency it may
+	 * cause.
+	 */
+	if (!intel_can_enable_sagv(i915, new_bw_state)) {
+		qgv_points = BIT(max_bw_point);
+		drm_dbg_kms(&i915->drm, "No SAGV, using single QGV point %d\n",
+			    max_bw_point);
+	}
+
+	/*
+	 * We store the ones which need to be masked as that is what PCode
+	 * actually accepts as a parameter.
+	 */
+	new_bw_state->qgv_points_mask =
+		~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
+		  ADLS_PCODE_REQ_PSF_PT(psf_points)) &
+		icl_qgv_points_mask(i915);
+
+	/*
+	 * If the actual mask had changed we need to make sure that
+	 * the commits are serialized(in case this is a nomodeset, nonblocking)
+	 */
+	if (new_bw_state->qgv_points_mask != old_bw_state->qgv_points_mask) {
+		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int intel_bw_check_qgv_points(struct drm_i915_private *i915,
+				     const struct intel_bw_state *old_bw_state,
+				     struct intel_bw_state *new_bw_state)
+{
+	unsigned int data_rate = intel_bw_data_rate(i915, new_bw_state);
+	unsigned int num_active_planes =
+			intel_bw_num_active_planes(i915, new_bw_state);
+
+	data_rate = DIV_ROUND_UP(data_rate, 1000);
+
+	return icl_find_qgv_points(i915, data_rate, num_active_planes,
+				   old_bw_state, new_bw_state);
+}
+
 static bool intel_bw_state_changed(struct drm_i915_private *i915,
 				   const struct intel_bw_state *old_bw_state,
 				   const struct intel_bw_state *new_bw_state)
@@ -1049,20 +1171,14 @@ static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *chan
 
 int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	const struct intel_bw_state *old_bw_state;
-	struct intel_bw_state *new_bw_state;
-	unsigned int data_rate;
-	unsigned int num_active_planes;
-	int i, ret;
-	u16 qgv_points = 0, psf_points = 0;
-	unsigned int max_bw_point = 0, max_bw = 0;
-	unsigned int num_qgv_points = dev_priv->display.bw.max[0].num_qgv_points;
-	unsigned int num_psf_gv_points = dev_priv->display.bw.max[0].num_psf_gv_points;
 	bool changed = false;
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_bw_state *new_bw_state;
+	const struct intel_bw_state *old_bw_state;
+	int ret;
 
 	/* FIXME earlier gens need some checks too */
-	if (DISPLAY_VER(dev_priv) < 11)
+	if (DISPLAY_VER(i915) < 11)
 		return 0;
 
 	ret = intel_bw_check_data_rate(state, &changed);
@@ -1073,8 +1189,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	new_bw_state = intel_atomic_get_new_bw_state(state);
 
 	if (new_bw_state &&
-	    intel_can_enable_sagv(dev_priv, old_bw_state) !=
-	    intel_can_enable_sagv(dev_priv, new_bw_state))
+	    intel_can_enable_sagv(i915, old_bw_state) !=
+	    intel_can_enable_sagv(i915, new_bw_state))
 		changed = true;
 
 	/*
@@ -1084,101 +1200,10 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	if (!changed)
 		return 0;
 
-	ret = intel_atomic_lock_global_state(&new_bw_state->base);
+	ret = intel_bw_check_qgv_points(i915, old_bw_state, new_bw_state);
 	if (ret)
 		return ret;
 
-	data_rate = intel_bw_data_rate(dev_priv, new_bw_state);
-	data_rate = DIV_ROUND_UP(data_rate, 1000);
-
-	num_active_planes = intel_bw_num_active_planes(dev_priv, new_bw_state);
-
-	for (i = 0; i < num_qgv_points; i++) {
-		unsigned int max_data_rate;
-
-		if (DISPLAY_VER(dev_priv) > 11)
-			max_data_rate = tgl_max_bw(dev_priv, num_active_planes, i);
-		else
-			max_data_rate = icl_max_bw(dev_priv, num_active_planes, i);
-		/*
-		 * We need to know which qgv point gives us
-		 * maximum bandwidth in order to disable SAGV
-		 * if we find that we exceed SAGV block time
-		 * with watermarks. By that moment we already
-		 * have those, as it is calculated earlier in
-		 * intel_atomic_check,
-		 */
-		if (max_data_rate > max_bw) {
-			max_bw_point = i;
-			max_bw = max_data_rate;
-		}
-		if (max_data_rate >= data_rate)
-			qgv_points |= BIT(i);
-
-		drm_dbg_kms(&dev_priv->drm, "QGV point %d: max bw %d required %d\n",
-			    i, max_data_rate, data_rate);
-	}
-
-	for (i = 0; i < num_psf_gv_points; i++) {
-		unsigned int max_data_rate = adl_psf_bw(dev_priv, i);
-
-		if (max_data_rate >= data_rate)
-			psf_points |= BIT(i);
-
-		drm_dbg_kms(&dev_priv->drm, "PSF GV point %d: max bw %d"
-			    " required %d\n",
-			    i, max_data_rate, data_rate);
-	}
-
-	/*
-	 * BSpec states that we always should have at least one allowed point
-	 * left, so if we couldn't - simply reject the configuration for obvious
-	 * reasons.
-	 */
-	if (qgv_points == 0) {
-		drm_dbg_kms(&dev_priv->drm, "No QGV points provide sufficient memory"
-			    " bandwidth %d for display configuration(%d active planes).\n",
-			    data_rate, num_active_planes);
-		return -EINVAL;
-	}
-
-	if (num_psf_gv_points > 0 && psf_points == 0) {
-		drm_dbg_kms(&dev_priv->drm, "No PSF GV points provide sufficient memory"
-			    " bandwidth %d for display configuration(%d active planes).\n",
-			    data_rate, num_active_planes);
-		return -EINVAL;
-	}
-
-	/*
-	 * Leave only single point with highest bandwidth, if
-	 * we can't enable SAGV due to the increased memory latency it may
-	 * cause.
-	 */
-	if (!intel_can_enable_sagv(dev_priv, new_bw_state)) {
-		qgv_points = BIT(max_bw_point);
-		drm_dbg_kms(&dev_priv->drm, "No SAGV, using single QGV point %d\n",
-			    max_bw_point);
-	}
-
-	/*
-	 * We store the ones which need to be masked as that is what PCode
-	 * actually accepts as a parameter.
-	 */
-	new_bw_state->qgv_points_mask =
-		~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
-		  ADLS_PCODE_REQ_PSF_PT(psf_points)) &
-		icl_qgv_points_mask(dev_priv);
-
-	/*
-	 * If the actual mask had changed we need to make sure that
-	 * the commits are serialized(in case this is a nomodeset, nonblocking)
-	 */
-	if (new_bw_state->qgv_points_mask != old_bw_state->qgv_points_mask) {
-		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
-		if (ret)
-			return ret;
-	}
-
 	return 0;
 }
 
-- 
2.34.1

