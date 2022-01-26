Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E44A149C7D4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 11:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2139110E863;
	Wed, 26 Jan 2022 10:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FE9910E794
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 10:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643193983; x=1674729983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eicmfpyCiIqIPAf2EL+ZbNd7M5FRgeHz6LGhGBzqhN4=;
 b=MHWcY5E3+a5cKT06Niadq8WITTwq8o2QLZm9Gw99M8JkS3PuASqPaS+4
 9ppuH74ZTH66N1OFdqPHWf+1XipHRPdK66yng3XzRLZvNSeCwkVbA8VlC
 WVM7yNRPlKC+6FakWW9lW606a+yr0nOiRczHutPi7+0gaERAeFTwtwMBA
 xEpLwSQufxS07NV9R5tZ6GKERqnlkquBP7eRGq7/tNARKZDYl9LLTj/M8
 9ofBOz7BsPBI/Hts59I9hWg1zjZaf+5NOYDv31lsKqhDqSHcT351PnZV9
 FsSKe0N4fHS78T/4s4u9FX1e6GuuClzwB2r6eDo1q90OuzJw9Au0Qba4K Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246301875"
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="246301875"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 02:46:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,317,1635231600"; d="scan'208";a="477445969"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 26 Jan 2022 02:46:22 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 02:48:15 -0800
Message-Id: <20220126104822.3653079-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 03/10] drm/i915/guc: Add DG2 registers for
 GuC error state capture.
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

Add additional DG2 registers for GuC error state capture.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 64 ++++++++++++++-----
 1 file changed, 49 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index b6882074fc8d..19719daffed4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -179,19 +179,23 @@ static struct __ext_steer_reg xelpd_extregs[] = {
 	{"GEN7_ROW_INSTDONE", GEN7_ROW_INSTDONE}
 };
 
+static struct __ext_steer_reg xehpg_extregs[] = {
+	{"XEHPG_INSTDONE_GEOM_SVG", XEHPG_INSTDONE_GEOM_SVG}
+};
+
 static void
-guc_capture_alloc_steered_list_xelpd(struct intel_guc *guc,
-				     struct __guc_mmio_reg_descr_group *lists)
+guc_capture_alloc_steered_list_xe_lpd_hpg(struct intel_guc *guc,
+					  struct __guc_mmio_reg_descr_group *lists,
+					  u32 ipver)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	struct sseu_dev_info *sseu;
-	int slice, subslice, i, num_tot_regs = 0;
+	int slice, subslice, i, iter, num_steer_regs, num_tot_regs = 0;
 	struct __guc_mmio_reg_descr_group *list;
 	struct __guc_mmio_reg_descr *extarray;
-	int num_steer_regs = ARRAY_SIZE(xelpd_extregs);
 
-	/* In XE_LP we only care about render-class steering registers during error-capture */
+	/* In XE_LP / HPG we only have render-class steering registers during error-capture */
 	list = guc_capture_get_one_list(lists, GUC_CAPTURE_LIST_INDEX_PF,
 					GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS, GUC_RENDER_CLASS);
 	if (!list)
@@ -200,10 +204,21 @@ guc_capture_alloc_steered_list_xelpd(struct intel_guc *guc,
 	if (list->ext)
 		return; /* already populated */
 
+	num_steer_regs = ARRAY_SIZE(xelpd_extregs);
+	if (ipver >= IP_VER(12, 55))
+		num_steer_regs += ARRAY_SIZE(xehpg_extregs);
+
 	sseu = &gt->info.sseu;
-	for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
-		num_tot_regs += num_steer_regs;
+	if (ipver >= IP_VER(12, 50)) {
+		for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice) {
+			num_tot_regs += num_steer_regs;
+		}
+	} else {
+		for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
+			num_tot_regs += num_steer_regs;
+		}
 	}
+
 	if (!num_tot_regs)
 		return;
 
@@ -212,15 +227,31 @@ guc_capture_alloc_steered_list_xelpd(struct intel_guc *guc,
 		return;
 
 	extarray = list->ext;
-	for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
-		for (i = 0; i < num_steer_regs; i++) {
-			extarray->reg = xelpd_extregs[i].reg;
-			extarray->flags = FIELD_PREP(GUC_REGSET_STEERING_GROUP, slice);
-			extarray->flags |= FIELD_PREP(GUC_REGSET_STEERING_INSTANCE, subslice);
-			extarray->regname = xelpd_extregs[i].name;
-			++extarray;
+
+#define POPULATE_NEXT_EXTREG(ext, list, idx, slicenum, subslicenum) \
+	{ \
+		(ext)->reg = list[idx].reg; \
+		(ext)->flags = FIELD_PREP(GUC_REGSET_STEERING_GROUP, slicenum); \
+		(ext)->flags |= FIELD_PREP(GUC_REGSET_STEERING_INSTANCE, subslicenum); \
+		(ext)->regname = xelpd_extregs[i].name; \
+		++(ext); \
+	}
+	if (ipver >= IP_VER(12, 50)) {
+		for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice) {
+			for (i = 0; i < ARRAY_SIZE(xelpd_extregs); i++)
+				POPULATE_NEXT_EXTREG(extarray, xelpd_extregs, i, slice, subslice)
+			for (i = 0; i < ARRAY_SIZE(xehpg_extregs) && ipver >= IP_VER(12, 55);
+			     i++)
+				POPULATE_NEXT_EXTREG(extarray, xehpg_extregs, i, slice, subslice)
+		}
+	} else {
+		for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
+			for (i = 0; i < num_steer_regs; i++)
+				POPULATE_NEXT_EXTREG(extarray, xelpd_extregs, i, slice, subslice)
 		}
 	}
+#undef POPULATE_NEXT_EXTREG
+
 	list->num_ext = num_tot_regs;
 }
 
@@ -237,7 +268,10 @@ guc_capture_get_device_reglist(struct intel_guc *guc)
 		 * these at init time based on hw config add it as an extension
 		 * list at the end of the pre-populated render list.
 		 */
-		guc_capture_alloc_steered_list_xelpd(guc, xe_lpd_lists);
+		guc_capture_alloc_steered_list_xe_lpd_hpg(guc, xe_lpd_lists, IP_VER(12, 0));
+		return xe_lpd_lists;
+	} else if (IS_DG2(i915)) {
+		guc_capture_alloc_steered_list_xe_lpd_hpg(guc, xe_lpd_lists, IP_VER(12, 55));
 		return xe_lpd_lists;
 	}
 
-- 
2.25.1

