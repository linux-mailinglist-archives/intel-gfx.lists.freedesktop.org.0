Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1E24EB213
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 18:46:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EADA410F166;
	Tue, 29 Mar 2022 16:46:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8331710F129
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 16:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648572390; x=1680108390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C//ZH40YYzPDBy2NKhiL5xJ8mald7UcmQvyrlbCxm/w=;
 b=IReJPNuZoSL+ZmozC/mTzhWy5JMZWIysrsVdisiCg+vvXFv4ylZfNOoy
 UX2NddGQmHqlscNf93YwPUYE80rrTPNP+orYNnS3UW1BaStjr6Ddl/6yv
 lWCGxk+kXFrk3/0WCRe++ThLuKmcQBYghgh5doobDRRoAofx3n6rV/jes
 Z3VOPQ3el2FhmylZctxdsu0s/YXu2Xgx/bCi0laq+cAIzbtmKon5B9TFb
 WQoFD86RqnwUyPEs9D8NWF8a7TAosMbp6zAj15NqYkMXoul/cH6Ks09K/
 obMVbII6I6ocICxqQHt8Bs/mV/VoKkDwWxhTBtzngQ+Cf3dDPhXkJGQdY g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259278029"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="259278029"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:44:04 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="521513965"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:43:58 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 19:43:30 +0300
Message-Id: <20220329164336.1199359-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220329164336.1199359-1-imre.deak@intel.com>
References: <20220329164336.1199359-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 12/18] drm/i915: Simplify the DG1 power well
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 24 ++++++-------------
 1 file changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 7babe3f1a3624..4443cf0015d1e 100644
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
2.30.2

