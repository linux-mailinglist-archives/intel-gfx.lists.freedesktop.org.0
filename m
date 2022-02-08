Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 926624AD790
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CC2610E662;
	Tue,  8 Feb 2022 11:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F74A10E64C
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320246; x=1675856246;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EXSQc1GnwvSmsVi4Z8AloluTpIg4sYMIqRqrJY5WUSI=;
 b=KiNfrjbIGazQeP08klQHw0solGNl9ZEPye9rUY1bY+LtCFT+A8+0+9QC
 bR+ybla20gfvRvyVEypSHyXIfCo7TnpFt1F2sTD1RxXcWdCGAAaM47KUq
 VbMwXrT9KiOEpZdJbxIokb2wY+UFUU1tQm2udENlhXIk6Q8cfdqyIhg6n
 d/0jUPWsMOTY7KB+yov0hcteLDzYBX18L+xdM2qy8vfrApmUf0IIP4i+6
 mdWGliC0RNw14lIuP2SPtDppDEsytkZARoNY++Tp/4OdYvHXPxVunVaS+
 iEZ56rJsQ4kO5AgJYIcFUDI8quWzZRZ0NX9prQg9ONaUhzcbZj2fVLMqz g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232496008"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232496008"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915362"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:25 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:51 +0200
Message-Id: <20220208113656.179823-22-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 21/26] drm/i915: Sanitize the ADL-S power
 well definition
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

Instead of the skip_mask special casing of the ADL-S power well
descriptors, add a power well descriptor list for ADL-S as well reusing
the TGL descriptors, w/o the TC-cold power well. ADL-S doesn't have
TypeC PHYs, so a better way would be having ADL-S specific AUX
descriptors, but I left changing this for a follow-up.

This changes the ordering of the AUX and TC-cold vs. PW_4/5 power wells
on TGL and ADL-S, but this shouldn't make a difference (PW_4/5 don't
depend on the AUX/TC-cold power wells).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 69 +++++++++++--------
 1 file changed, 39 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 42fbea02770fe..c4f7ff3bcc3dc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -902,12 +902,36 @@ static const struct i915_power_well_desc tgl_power_wells_main[] = {
 		),
 		.ops = &icl_ddi_power_well_ops,
 	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_4", &tgl_pwdoms_pw_4,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_4),
+		),
+		.ops = &hsw_power_well_ops,
+		.has_fuses = true,
+		.irq_pipe_mask = BIT(PIPE_C),
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_5", &tgl_pwdoms_pw_5,
+				.hsw.idx = TGL_PW_CTL_IDX_PW_5),
+		),
+		.ops = &hsw_power_well_ops,
+		.has_fuses = true,
+		.irq_pipe_mask = BIT(PIPE_D),
+	},
+};
+
+static const struct i915_power_well_desc tgl_power_wells_tc_cold_off[] = {
+	{
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("TC_cold_off", &tgl_pwdoms_tc_cold_off,
 				.id = TGL_DISP_PW_TC_COLD_OFF),
 		),
 		.ops = &tgl_tc_cold_off_ops,
-	}, {
+	},
+};
+
+static const struct i915_power_well_desc tgl_power_wells_aux[] = {
+	{
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("AUX_A", &tgl_pwdoms_aux_a, .hsw.idx = ICL_PW_CTL_IDX_AUX_A),
 			I915_PW("AUX_B", &tgl_pwdoms_aux_b, .hsw.idx = ICL_PW_CTL_IDX_AUX_B),
@@ -931,22 +955,6 @@ static const struct i915_power_well_desc tgl_power_wells_main[] = {
 		),
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
-	}, {
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("PW_4", &tgl_pwdoms_pw_4,
-				.hsw.idx = ICL_PW_CTL_IDX_PW_4),
-		),
-		.ops = &hsw_power_well_ops,
-		.has_fuses = true,
-		.irq_pipe_mask = BIT(PIPE_C),
-	}, {
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("PW_5", &tgl_pwdoms_pw_5,
-				.hsw.idx = TGL_PW_CTL_IDX_PW_5),
-		),
-		.ops = &hsw_power_well_ops,
-		.has_fuses = true,
-		.irq_pipe_mask = BIT(PIPE_D),
 	},
 };
 
@@ -954,6 +962,15 @@ static const struct i915_power_well_desc_list tgl_power_wells[] = {
 	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
 	I915_PW_DESCRIPTORS(tgl_power_wells_main),
+	I915_PW_DESCRIPTORS(tgl_power_wells_tc_cold_off),
+	I915_PW_DESCRIPTORS(tgl_power_wells_aux),
+};
+
+static const struct i915_power_well_desc_list adls_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(tgl_power_wells_main),
+	I915_PW_DESCRIPTORS(tgl_power_wells_aux),
 };
 
 #define RKL_PW_4_POWER_DOMAINS \
@@ -1400,7 +1417,7 @@ static void init_power_well_domains(const struct i915_power_well_instance *inst,
 static int
 __set_power_wells(struct i915_power_domains *power_domains,
 		  const struct i915_power_well_desc_list *power_well_descs,
-		  int power_well_descs_sz, u64 skip_mask)
+		  int power_well_descs_sz)
 {
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
@@ -1413,8 +1430,7 @@ __set_power_wells(struct i915_power_domains *power_domains,
 	int plt_idx = 0;
 
 	for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst)
-		if (!(BIT_ULL(inst->id) & skip_mask))
-			power_well_count++;
+		power_well_count++;
 
 	power_domains->power_well_count = power_well_count;
 	power_domains->power_wells =
@@ -1428,9 +1444,6 @@ __set_power_wells(struct i915_power_domains *power_domains,
 		struct i915_power_well *pw = &power_domains->power_wells[plt_idx];
 		enum i915_power_well_id id = inst->id;
 
-		if (BIT_ULL(id) & skip_mask)
-			continue;
-
 		pw->desc = desc;
 		drm_WARN_ON(&i915->drm,
 			    overflows_type(inst - desc->instances->list, pw->instance_idx));
@@ -1451,12 +1464,9 @@ __set_power_wells(struct i915_power_domains *power_domains,
 	return 0;
 }
 
-#define set_power_wells_mask(power_domains, __power_well_descs, skip_mask) \
-	__set_power_wells(power_domains, __power_well_descs, \
-			  ARRAY_SIZE(__power_well_descs), skip_mask)
-
 #define set_power_wells(power_domains, __power_well_descs) \
-	set_power_wells_mask(power_domains, __power_well_descs, 0)
+	__set_power_wells(power_domains, __power_well_descs, \
+			  ARRAY_SIZE(__power_well_descs))
 
 int intel_init_power_wells(struct i915_power_domains *power_domains)
 {
@@ -1477,8 +1487,7 @@ int intel_init_power_wells(struct i915_power_domains *power_domains)
 	else if (IS_DG1(i915))
 		return set_power_wells(power_domains, dg1_power_wells);
 	else if (IS_ALDERLAKE_S(i915))
-		return set_power_wells_mask(power_domains, tgl_power_wells,
-					   BIT_ULL(TGL_DISP_PW_TC_COLD_OFF));
+		return set_power_wells(power_domains, adls_power_wells);
 	else if (IS_ROCKETLAKE(i915))
 		return set_power_wells(power_domains, rkl_power_wells);
 	else if (DISPLAY_VER(i915) == 12)
-- 
2.27.0

