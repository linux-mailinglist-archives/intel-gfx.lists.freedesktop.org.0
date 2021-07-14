Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDA53C7CB4
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD0FB6E1A4;
	Wed, 14 Jul 2021 03:16:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CF236E167
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="232085877"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="232085877"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:59 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031583"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:30 -0700
Message-Id: <20210714031540.3539704-41-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 40/50] drm/i915/dg2: DG2 has fixed memory
 bandwidth
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

DG2 doesn't have a SAGV or QGV points that determine memory bandwidth.
Instead it has a constant amount of memory bandwidth available to
display that does not need to be reduced based on the number of active
planes.

For simplicity, we'll just modify driver initialization to create a
single dummy QGV point with the proper amount of memory bandwidth,
rather than trying to query the pcode for this information.

Bspec: 64631
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 0d5d52548925..f554c1974072 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -273,6 +273,26 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	return 0;
 }
 
+static void dg2_get_bw_info(struct drm_i915_private *i915)
+{
+	struct intel_bw_info *bi = &i915->max_bw[0];
+
+	/*
+	 * DG2 doesn't have SAGV or QGV points, just a constant max bandwidth
+	 * that doesn't depend on the number of planes enabled.  Create a
+	 * single dummy QGV point to reflect that.  DG2-G10 platforms have a
+	 * constant 50 GB/s bandwidth, whereas DG2-G11 platforms have 38 GB/s.
+	 */
+	bi->num_planes = 1;
+	bi->num_qgv_points = 1;
+	if (IS_DG2_G11(i915))
+		bi->deratedbw[0] = 38000;
+	else
+		bi->deratedbw[0] = 50000;
+
+	i915->sagv_status = I915_SAGV_NOT_CONTROLLED;
+}
+
 static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
 			       int num_planes, int qgv_point)
 {
@@ -306,7 +326,9 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
+	if (IS_DG2(dev_priv))
+		dg2_get_bw_info(dev_priv);
+	else if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
 		icl_get_bw_info(dev_priv, &adls_sa_info);
 	else if (IS_ROCKETLAKE(dev_priv))
 		icl_get_bw_info(dev_priv, &rkl_sa_info);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
