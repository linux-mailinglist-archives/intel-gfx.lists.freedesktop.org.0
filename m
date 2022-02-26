Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5170E4C53FF
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 06:53:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A7610ECFC;
	Sat, 26 Feb 2022 05:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8190110ECFC
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Feb 2022 05:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645854795; x=1677390795;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BtM4/G7yv6IjsdhG19LpMjRc6FnhA6l3waYTKiO1WNQ=;
 b=GHAKCIU0BIue8m2tklMa3ej4fKcTME8Vkk1WtaGz1So9GzaLPR4GnmbR
 Le18J0/uoWT74QRE2ZVgK4Ftc13HJutlTPLhNEnwY4RvYTCsyH2C9b+cg
 wM0e2tQKVmdwTm7+X+1IWUDaWhcPlTQVukAbiw676gs/cOHCfzzUMlVQc
 9RU3GaGjIIse25wdgCzO3lVNcjFh4efFPFT6E1ugaIrt+c9pQAINygR1g
 a790y2Jpm9jWO1ANZteaty1jUsSvdsOe+lapGgkfaBS1LKHU2H1AN/YP/
 VQVj5LfkBH8yuFKqCB+8UKl7eG7VvrTlrBVkt6xOXEa/7pGJuEo4c4Y65 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="277274584"
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="277274584"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 21:53:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="574817069"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 25 Feb 2022 21:53:14 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 21:55:16 -0800
Message-Id: <20220226055526.665514-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226055526.665514-1-alan.previn.teres.alexis@intel.com>
References: <20220226055526.665514-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 03/13] drm/i915/guc: Add XE_LP steered
 register lists support
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the ability for runtime allocation and freeing of
steered register list extentions that depend on the
detected HW config fuses.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |   9 +
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 175 ++++++++++++++++--
 2 files changed, 173 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
index f3e305bc05bb..8478e416dead 100644
--- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
@@ -50,6 +50,7 @@ struct __guc_mmio_reg_descr_group {
 	u32 owner; /* see enum guc_capture_owner */
 	u32 type; /* see enum guc_capture_type */
 	u32 engine; /* as per MAX_ENGINE_CLASS */
+	struct __guc_mmio_reg_descr *extlist; /* only used for steered registers */
 };
 
 /**
@@ -77,6 +78,14 @@ struct __guc_state_capture_priv {
 	 */
 	const struct __guc_mmio_reg_descr_group *reglists;
 
+	/**
+	 * @extlists: allocated table of steered register lists used for error-capture state.
+	 *
+	 * NOTE: steered registers have multiple instances depending on the HW configuration
+	 * (slices or dual-sub-slices) and thus depends on HW fuses discovered at startup
+	 */
+	struct __guc_mmio_reg_descr_group *extlists;
+
 	/**
 	 * @ads_cache: cached register lists that is ADS format ready
 	 */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 40c715aa5b6b..01c0c5faaadb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -132,6 +132,7 @@ static const struct __guc_mmio_reg_descr empty_regs_list[] = {
 		TO_GCAP_DEF_OWNER(regsowner), \
 		TO_GCAP_DEF_TYPE(regstype), \
 		class, \
+		NULL, \
 	}
 
 /* List of lists */
@@ -149,28 +150,33 @@ static const struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
 };
 
 static const struct __guc_mmio_reg_descr_group *
-guc_capture_get_device_reglist(struct intel_guc *guc)
+guc_capture_get_one_list(const struct __guc_mmio_reg_descr_group *reglists,
+			 u32 owner, u32 type, u32 id)
 {
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	int i;
 
-	if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915) ||
-	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) {
-		return xe_lpd_lists;
+	if (!reglists)
+		return NULL;
+
+	for (i = 0; reglists[i].list; ++i) {
+		if (reglists[i].owner == owner && reglists[i].type == type &&
+		    (reglists[i].engine == id || reglists[i].type == GUC_CAPTURE_LIST_TYPE_GLOBAL))
+		return &reglists[i];
 	}
 
 	return NULL;
 }
 
-static const struct __guc_mmio_reg_descr_group *
-guc_capture_get_one_list(const struct __guc_mmio_reg_descr_group *reglists,
-			 u32 owner, u32 type, u32 id)
+static struct __guc_mmio_reg_descr_group *
+guc_capture_get_one_ext_list(struct __guc_mmio_reg_descr_group *reglists,
+			     u32 owner, u32 type, u32 id)
 {
 	int i;
 
 	if (!reglists)
 		return NULL;
 
-	for (i = 0; reglists[i].list; ++i) {
+	for (i = 0; reglists[i].extlist; ++i) {
 		if (reglists[i].owner == owner && reglists[i].type == type &&
 		    (reglists[i].engine == id || reglists[i].type == GUC_CAPTURE_LIST_TYPE_GLOBAL))
 		return &reglists[i];
@@ -179,6 +185,127 @@ guc_capture_get_one_list(const struct __guc_mmio_reg_descr_group *reglists,
 	return NULL;
 }
 
+static void guc_capture_free_extlists(struct __guc_mmio_reg_descr_group *reglists)
+{
+	int i = 0;
+
+	if (!reglists)
+		return;
+
+	while (reglists[i].extlist)
+		kfree(reglists[i++].extlist);
+}
+
+struct __ext_steer_reg {
+	const char *name;
+	i915_reg_t reg;
+};
+
+static const struct __ext_steer_reg xe_extregs[] = {
+	{"GEN7_SAMPLER_INSTDONE", GEN7_SAMPLER_INSTDONE},
+	{"GEN7_ROW_INSTDONE", GEN7_ROW_INSTDONE}
+};
+
+static void __fill_ext_reg(struct __guc_mmio_reg_descr *ext,
+			   const struct __ext_steer_reg *extlist,
+			   int slice_id, int subslice_id)
+{
+	ext->reg = extlist->reg;
+	ext->flags = FIELD_PREP(GUC_REGSET_STEERING_GROUP, slice_id);
+	ext->flags |= FIELD_PREP(GUC_REGSET_STEERING_INSTANCE, subslice_id);
+	ext->regname = extlist->name;
+}
+
+static int
+__alloc_ext_regs(struct __guc_mmio_reg_descr_group *newlist,
+		 const struct __guc_mmio_reg_descr_group *rootlist, int num_regs)
+{
+	struct __guc_mmio_reg_descr *list;
+
+	list = kcalloc(num_regs, sizeof(struct __guc_mmio_reg_descr), GFP_KERNEL);
+	if (!list)
+		return -ENOMEM;
+
+	newlist->extlist = list;
+	newlist->num_regs = num_regs;
+	newlist->owner = rootlist->owner;
+	newlist->engine = rootlist->engine;
+	newlist->type = rootlist->type;
+
+	return 0;
+}
+
+static void
+guc_capture_alloc_steered_lists_xe_lpd(struct intel_guc *guc,
+				       const struct __guc_mmio_reg_descr_group *lists)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	int slice, subslice, i, num_steer_regs, num_tot_regs = 0;
+	const struct __guc_mmio_reg_descr_group *list;
+	struct __guc_mmio_reg_descr_group *extlists;
+	struct __guc_mmio_reg_descr *extarray;
+	struct sseu_dev_info *sseu;
+
+	/* In XE_LPD we only have steered registers for the render-class */
+	list = guc_capture_get_one_list(lists, GUC_CAPTURE_LIST_INDEX_PF,
+					GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS, GUC_RENDER_CLASS);
+	/* skip if extlists was previously allocated */
+	if (!list || guc->capture.priv->extlists)
+		return;
+
+	num_steer_regs = ARRAY_SIZE(xe_extregs);
+
+	sseu = &gt->info.sseu;
+	for_each_instdone_slice_subslice(i915, sseu, slice, subslice)
+		num_tot_regs += num_steer_regs;
+
+	if (!num_tot_regs)
+		return;
+
+	/* allocate an extra for an end marker */
+	extlists = kcalloc(2, sizeof(struct __guc_mmio_reg_descr_group), GFP_KERNEL);
+	if (!extlists)
+		return;
+
+	if (__alloc_ext_regs(&extlists[0], list, num_tot_regs)) {
+		kfree(extlists);
+		return;
+	}
+
+	extarray = extlists[0].extlist;
+	for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
+		for (i = 0; i < num_steer_regs; ++i) {
+			__fill_ext_reg(extarray, &xe_extregs[i], slice, subslice);
+			++extarray;
+		}
+	}
+
+	guc->capture.priv->extlists = extlists;
+}
+
+static const struct __guc_mmio_reg_descr_group *
+guc_capture_get_device_reglist(struct intel_guc *guc)
+{
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+
+	if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915) ||
+	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) {
+		/*
+		 * For certain engine classes, there are slice and subslice
+		 * level registers requiring steering. We allocate and populate
+		 * these at init time based on hw config add it as an extension
+		 * list at the end of the pre-populated render list.
+		 */
+		guc_capture_alloc_steered_lists_xe_lpd(guc, xe_lpd_lists);
+		return xe_lpd_lists;
+	}
+
+	drm_warn(&i915->drm, "No GuC-capture register lists\n");
+
+	return NULL;
+}
+
 static const char *
 __stringify_owner(u32 owner)
 {
@@ -249,10 +376,12 @@ static int
 guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 		      struct guc_mmio_reg *ptr, u16 num_entries)
 {
-	u32 i = 0;
+	u32 i = 0, j = 0;
 	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	const struct __guc_mmio_reg_descr_group *reglists = guc->capture.priv->reglists;
+	struct __guc_mmio_reg_descr_group *extlists = guc->capture.priv->extlists;
 	const struct __guc_mmio_reg_descr_group *match;
+	struct __guc_mmio_reg_descr_group *matchext;
 
 	if (!reglists)
 		return -ENODEV;
@@ -271,6 +400,17 @@ guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
 		ptr[i].mask = match->list[i].mask;
 	}
 
+	matchext = guc_capture_get_one_ext_list(extlists, owner, type, classid);
+	if (matchext) {
+		for (i = match->num_regs, j = 0; i < num_entries &&
+		     i < (match->num_regs + matchext->num_regs) &&
+			j < matchext->num_regs; ++i, ++j) {
+			ptr[i].offset = matchext->extlist[j].reg.reg;
+			ptr[i].value = 0xDEADF00D;
+			ptr[i].flags = matchext->extlist[j].flags;
+			ptr[i].mask = matchext->extlist[j].mask;
+		}
+	}
 	if (i < num_entries)
 		drm_dbg(&i915->drm, "GuC-capture: Init reglist short %d out %d.\n",
 			(int)i, (int)num_entries);
@@ -282,12 +422,20 @@ static int
 guc_cap_list_num_regs(struct __guc_state_capture_priv *gc, u32 owner, u32 type, u32 classid)
 {
 	const struct __guc_mmio_reg_descr_group *match;
+	struct __guc_mmio_reg_descr_group *matchext;
+	int num_regs;
 
 	match = guc_capture_get_one_list(gc->reglists, owner, type, classid);
 	if (!match)
 		return 0;
 
-	return match->num_regs;
+	num_regs = match->num_regs;
+
+	matchext = guc_capture_get_one_ext_list(gc->extlists, owner, type, classid);
+	if (matchext)
+		num_regs += matchext->num_regs;
+
+	return num_regs;
 }
 
 int
@@ -397,6 +545,11 @@ void intel_guc_capture_destroy(struct intel_guc *guc)
 
 	guc_capture_free_ads_cache(guc->capture.priv);
 
+	if (guc->capture.priv->extlists) {
+		guc_capture_free_extlists(guc->capture.priv->extlists);
+		kfree(guc->capture.priv->extlists);
+	}
+
 	kfree(guc->capture.priv);
 	guc->capture.priv = NULL;
 }
-- 
2.25.1

