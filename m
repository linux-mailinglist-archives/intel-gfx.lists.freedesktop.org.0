Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 624184AD788
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78DC610E661;
	Tue,  8 Feb 2022 11:37:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB4910E639
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320245; x=1675856245;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=k9pUEAtT2BXwPdMiKsjdhjn/t2iCH3rKmUyBa65ImuQ=;
 b=WinijO/i5Kiz3KVAlxO8rzewQmBOUxC6CFuyqhPjrjAHwNtBHLxYcELL
 LZRqvcUmVzo1TGiu63XDsK9t7zQYStaw6wC/TGCVHzg5PMYhPsxrwwm7/
 iUGDcn+mCKLt/dfXTOoCgbNekXEHg3a1baNxY3fA8BaorEN+cnCTsohOx
 KL0axSHiuXnlURMSF7lOSdh3QJr8xWadtTerwWb7tVyLvuFlUL2WR8y3h
 7dCm2vi6tzfdodUoDgEekMTiC2aJGaKGD+tRBrOPM5yc35ewntHBNyMfN
 hcIJVjAm50d6dJ36BK3fsp7GIk/Q67ohbhNCKl1701866DLjWlSNE3pOP w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232496003"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232496003"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915358"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:24 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:50 +0200
Message-Id: <20220208113656.179823-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 20/26] drm/i915: Simplify the DG1 power well
 descriptors
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

Simplify the definition of DG1 power wells by reusing the identical
RKL DDI/AUX descriptors.

This reorders the DG1 DDI/AUX vs. PW4/5 power wells, but this shouldn't
make a difference (it is the order on RKL and the DDI/AUX power wells
don't have a dependency on PW4/5).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 24 ++++++-------------
 1 file changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 1d5d60ec00135..42fbea02770fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1035,7 +1035,11 @@ static const struct i915_power_well_desc rkl_power_wells_main[] = {
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
 		.irq_pipe_mask = BIT(PIPE_C),
-	}, {
+	},
+};
+
+static const struct i915_power_well_desc rkl_power_wells_ddi_aux[] = {
+	{
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("DDI_IO_A", &icl_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
 			I915_PW("DDI_IO_B", &icl_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
@@ -1058,6 +1062,7 @@ static const struct i915_power_well_desc_list rkl_power_wells[] = {
 	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(rkl_power_wells_main),
+	I915_PW_DESCRIPTORS(rkl_power_wells_ddi_aux),
 };
 
 /*
@@ -1117,22 +1122,6 @@ static const struct i915_power_well_desc dg1_power_wells_main[] = {
 		.irq_pipe_mask = BIT(PIPE_B),
 		.has_vga = true,
 		.has_fuses = true,
-	}, {
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("DDI_IO_A", &icl_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
-			I915_PW("DDI_IO_B", &icl_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
-			I915_PW("DDI_IO_TC1", &tgl_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),
-			I915_PW("DDI_IO_TC2", &tgl_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),
-		),
-		.ops = &icl_ddi_power_well_ops,
-	}, {
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("AUX_A", &tgl_pwdoms_aux_a, .hsw.idx = ICL_PW_CTL_IDX_AUX_A),
-			I915_PW("AUX_B", &tgl_pwdoms_aux_b, .hsw.idx = ICL_PW_CTL_IDX_AUX_B),
-			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
-			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
-		),
-		.ops = &icl_aux_power_well_ops,
 	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("PW_4", &tgl_pwdoms_pw_4,
@@ -1156,6 +1145,7 @@ static const struct i915_power_well_desc_list dg1_power_wells[] = {
 	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(dg1_power_wells_main),
+	I915_PW_DESCRIPTORS(rkl_power_wells_ddi_aux),
 };
 
 /*
-- 
2.27.0

