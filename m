Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 305F549F8B4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:49:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B4A510E507;
	Fri, 28 Jan 2022 11:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FA4A10E7DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370574; x=1674906574;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=H0kuZmjq52xUSusiK/tg71MFvy/T+xX8ElbXVWOtXa8=;
 b=SlwBwgqW4upI21EmtHnx8AWuHyopq5vhshvr73v1Q5EwjIs0MAbmcB7C
 E4djmfYt9+SGUAlHB5JnU94u4RcK2uQ1yA/k3MVKABM3pDKAH20NiuMFk
 gojRGlRIKw+ni96QVigtCfCsA0Rq330oKa/V7WYkVkgZFbF5gSpGmLTkP
 6WhbkraZb3de+qLUgCgbR9zHtLm1ZghYvuqufoJ4JGQV0CaNeHq3PUBmH
 ro3Du8GvN7VkzT+vz6ppey0PAmwCZIp0uNEs0bLA+u+mvsZDKWnIZLJ43
 eULyBprgpDNWku9DsXpnfHhcMMqbPUC/gpWVKq3rh244HWDog5oJruglC Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420948"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420948"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712867"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:33 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:49:08 +0200
Message-Id: <20220128114914.2339526-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/19] drm/i915: Simplify the DG1 power well
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
index 1ddac0e15605e..164eeed3ee75c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1172,7 +1172,11 @@ static const struct i915_power_well_desc rkl_power_wells_main[] = {
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
@@ -1195,6 +1199,7 @@ static const struct i915_power_well_desc_list rkl_power_wells[] = {
 	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(rkl_power_wells_main),
+	I915_PW_DESCRIPTORS(rkl_power_wells_ddi_aux),
 };
 
 /*
@@ -1254,22 +1259,6 @@ static const struct i915_power_well_desc dg1_power_wells_main[] = {
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
@@ -1293,6 +1282,7 @@ static const struct i915_power_well_desc_list dg1_power_wells[] = {
 	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(dg1_power_wells_main),
+	I915_PW_DESCRIPTORS(rkl_power_wells_ddi_aux),
 };
 
 /*
-- 
2.27.0

