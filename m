Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D09834EA357
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 01:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C4C810E148;
	Mon, 28 Mar 2022 23:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 342E810E148
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 23:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648508417; x=1680044417;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RcT8fVtGqvyDDxQX/F3oLvAXQAmCpGRwd5saQZyWngg=;
 b=ikZ8WB26JR0Twj/GKq35giGSKZJ/5xYWdMTou6scayaBvavRdqzb3sZh
 1mRFPk3RsO2GoUYm0fuTNsXptLpKqJ1p4UkNip52HXDOqtqIBxjfAb3C+
 E1RBeQVHkfl1RbZgOel3taO8tynX+gaf/otWoeX1GRI/tt/doVZ9O15R8
 9GmxumQ0bGQg7JROUnmWeniCGLgbtYZ58jxiNASvcPeeEElvBGodog4uu
 Qat5iNW3ISuUfLfPP0Rz2/DYQZ0f5YsqVLEk6fjbXKFasIHGvW4/EqKEY
 1HvBZjZibB1gCnVMflE34/x317XI/ASuwgTol/IuYvk8cnQ6Pk6f4xw07 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="259305319"
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="259305319"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 16:00:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="564080358"
Received: from gkongara-mobl2.ccr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.37.203])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 16:00:13 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 02:00:00 +0300
Message-Id: <20220328230000.215094-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: Handle the DG2 max bw properly
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

Update DG2 init bw info similar to other platforms even though
DG2 has constant bandwidh. This will avoid branching out DG2
specific max bw calls.

V3: Fix dg2_get_bw_info() and avoid handle special cases
    for DG2 (Ville Syrjälä)

cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index ac11ff19e47d..3a39600a75a9 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -464,20 +464,25 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 
 static void dg2_get_bw_info(struct drm_i915_private *i915)
 {
-	struct intel_bw_info *bi = &i915->max_bw[0];
+	unsigned int deratedbw = IS_DG2_G11(i915) ? 38000 : 50000;
+	int num_groups = ARRAY_SIZE(i915->max_bw);
+	int i;
 
 	/*
 	 * DG2 doesn't have SAGV or QGV points, just a constant max bandwidth
-	 * that doesn't depend on the number of planes enabled.  Create a
-	 * single dummy QGV point to reflect that.  DG2-G10 platforms have a
-	 * constant 50 GB/s bandwidth, whereas DG2-G11 platforms have 38 GB/s.
+	 * that doesn't depend on the number of planes enabled. So fill all the
+	 * plane group with constant bw information for uniformity with other
+	 * platforms. DG2-G10 platforms have a constant 50 GB/s bandwidth,
+	 * whereas DG2-G11 platforms have 38 GB/s.
 	 */
-	bi->num_planes = 1;
-	bi->num_qgv_points = 1;
-	if (IS_DG2_G11(i915))
-		bi->deratedbw[0] = 38000;
-	else
-		bi->deratedbw[0] = 50000;
+	for (i = 0; i < num_groups; i++) {
+		struct intel_bw_info *bi = &i915->max_bw[i];
+
+		bi->num_planes = 1;
+		/* Need only one dummy QGV point per group */
+		bi->num_qgv_points = 1;
+		bi->deratedbw[0] = deratedbw;
+	}
 
 	i915->sagv_status = I915_SAGV_NOT_CONTROLLED;
 }
-- 
2.25.1

