Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F994800D43
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 15:35:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375B310E108;
	Fri,  1 Dec 2023 14:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58FD610E108
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 14:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701441314; x=1732977314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MFtTgFlgk8tau/shiLawBdqKEVhHErWl9Ar8nUCevbA=;
 b=l/OJ8q9/OcBVSKqyDimk6w2TalrMVllxTfkXQMSj7qd7/AEdom2Z30sA
 7UWAC4GRX5C0FYuRLiPTc95X+Tr5a/lCHCRcsHAJb64pXu1rPas/QFml5
 Pstm444sl+J5Mi0MK/Ua7KqLRGGJYZQBPvpj2CEvoPWGz7ipTx2B6ZBEs
 ExHtUHWCvl61zD3CurBWhojTz9M/4s1UJUJXi+uaWprsp0+3EZ36fL0en
 EL7qzczvPWkmEIVtpywF2sQIBJuW0ctHvtHBTfHL6Pb19jHeJMuVdPun0
 oqoeA3B3rzDl3OZDjlWWBJ4jT9I4wRZIbABRNRaTYpzSGChWypiUHwp6a w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="358492"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; 
   d="scan'208";a="358492"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 06:35:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="913597283"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="913597283"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2023 06:35:12 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Dec 2023 16:35:11 +0200
Message-Id: <20231201143511.7219-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20231129092103.26435-1-stanislav.lisovskiy@intel.com>
References: <20231129092103.26435-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Disable SAGV on bw init,
 to force QGV point recalculation
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

Problem is that on some platforms, we do get QGV point mask in wrong
state on boot. However driver assumes it is set to 0
(i.e all points allowed), however in reality we might get them all restricted,
causing issues.
Lets disable SAGV initially to force proper QGV point state.
If more QGV points are available, driver will recalculate and update
those then after next commit.

v2: - Added trace to see which QGV/PSF GV point is used when SAGV is
      disabled.
v3: - Move force disable function to intel_bw_init in order to initialize
      bw state as well, so that hw/sw are immediately in sync after init.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 25 ++++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h |  2 ++
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index efd408e96e8a..7db28c6631fc 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -844,7 +844,7 @@ static unsigned int icl_max_bw_qgv_point(struct drm_i915_private *i915,
 	return max_bw_point;
 }
 
-unsigned int icl_max_bw_psf_gv_point(struct drm_i915_private *i915)
+static unsigned int icl_max_bw_psf_gv_point(struct drm_i915_private *i915)
 {
 	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
 	unsigned int max_bw = 0;
@@ -863,6 +863,26 @@ unsigned int icl_max_bw_psf_gv_point(struct drm_i915_private *i915)
 	return max_bw_point;
 }
 
+int icl_force_disable_sagv(struct drm_i915_private *i915, struct intel_bw_state *bw_state)
+{
+	unsigned int max_bw_qgv_point = icl_max_bw_qgv_point(i915, 0);
+	unsigned int max_bw_psf_gv_point = icl_max_bw_psf_gv_point(i915);
+	unsigned int qgv_points;
+	unsigned int psf_points;
+
+	qgv_points = BIT(max_bw_qgv_point);
+	psf_points = BIT(max_bw_psf_gv_point);
+
+	bw_state->qgv_points_mask = ~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
+				      ADLS_PCODE_REQ_PSF_PT(psf_points)) &
+				      icl_qgv_points_mask(i915);
+
+	drm_dbg_kms(&i915->drm, "Forcing SAGV disable: leaving QGV point %d, PSF GV %d\n",
+				max_bw_qgv_point, max_bw_psf_gv_point);
+
+	return icl_pcode_restrict_qgv_points(i915, bw_state->qgv_points_mask);
+}
+
 static int mtl_find_qgv_points(struct drm_i915_private *i915,
 			       unsigned int data_rate,
 			       unsigned int num_active_planes,
@@ -1373,5 +1393,8 @@ int intel_bw_init(struct drm_i915_private *dev_priv)
 	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.bw.obj,
 				     &state->base, &intel_bw_funcs);
 
+	if (DISPLAY_VER(dev_priv) < 14)
+		icl_force_disable_sagv(dev_priv, state);
+
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 59cb4fc5db76..d6eb771baea1 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -74,5 +74,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			    bool *need_cdclk_calc);
 int intel_bw_min_cdclk(struct drm_i915_private *i915,
 		       const struct intel_bw_state *bw_state);
+int icl_force_disable_sagv(struct drm_i915_private *dev_priv,
+			   struct intel_bw_state *bw_state);
 
 #endif /* __INTEL_BW_H__ */
-- 
2.37.3

