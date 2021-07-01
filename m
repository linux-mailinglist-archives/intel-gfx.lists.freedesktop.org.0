Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 989593B9783
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 22:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 272B56EC48;
	Thu,  1 Jul 2021 20:25:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB8C6EC04;
 Thu,  1 Jul 2021 20:25:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="188998668"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="188998668"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:25:21 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="644564525"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:25:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 13:24:15 -0700
Message-Id: <20210701202427.1547543-42-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210701202427.1547543-1-matthew.d.roper@intel.com>
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 41/53] drm/i915/dg2: DG2 has fixed memory
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
Cc: dri-devel@lists.freedesktop.org
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
index bfb398f0432e..4ca83874d0aa 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -234,6 +234,26 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
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
@@ -267,7 +287,9 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
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
