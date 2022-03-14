Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD414D8A6E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 18:07:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32FCC10E346;
	Mon, 14 Mar 2022 17:07:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1338610E559
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 17:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647277649; x=1678813649;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EtX65HogXQXeTdoi1R19a1UJ5ANJuBbZ1qbBOdg5Cjw=;
 b=H4ZGCNDOjQwHWHwYcRI/gFBc0VG6Ap0QhrMOZJ8ooJtidV9i4FXKvTAm
 74/xzJzY7nqz1EUVvZRcwVNggBINfnPyWRbOsT7yyrgngNdIL53Qg/Yii
 LYO+sHPqACLxVPuUMu0UjO3bWjKxE4Cg6B8Txo5WZDX571wF1bbVqk+4h
 vOLdxtVgZoOaJ+WCAjB0eETB4d3Kr16flGKdLJkfdH25RMaoFh4nLlwb0
 vtvddL9xWfMITLXP7ycol6eH6XxUVLLVQlBd6pdIhhtz1DuTQ6RWrK4Mm
 qE5nX4BupITDN2uajC40to3FfdXgqeGHF5bj07ZUsQRBzfqjdiyVptet+ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="243536036"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="243536036"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 10:07:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="597977054"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga008.fm.intel.com with ESMTP; 14 Mar 2022 10:07:27 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Mar 2022 10:09:45 -0700
Message-Id: <20220314170954.1537154-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
References: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 04/13] drm/i915/guc: Add DG2 registers for
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
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 80 ++++++++++++++++++-
 1 file changed, 77 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index e7eb8870841e..e641f34f14c4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -285,20 +285,94 @@ guc_capture_alloc_steered_lists_xe_lpd(struct intel_guc *guc,
 	guc->capture->extlists = extlists;
 }
 
+static const struct __ext_steer_reg xehpg_extregs[] = {
+	{"XEHPG_INSTDONE_GEOM_SVG", XEHPG_INSTDONE_GEOM_SVG}
+};
+
+static bool __has_xehpg_extregs(u32 ipver)
+{
+	return (ipver >= IP_VER(12, 55));
+}
+
+static void
+guc_capture_alloc_steered_lists_xe_hpg(struct intel_guc *guc,
+				       const struct __guc_mmio_reg_descr_group *lists,
+				       u32 ipver)
+{
+	struct intel_gt *gt = guc_to_gt(guc);
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
+	struct sseu_dev_info *sseu;
+	int slice, subslice, i, iter, num_steer_regs, num_tot_regs = 0;
+	const struct __guc_mmio_reg_descr_group *list;
+	struct __guc_mmio_reg_descr_group *extlists;
+	struct __guc_mmio_reg_descr *extarray;
+
+	/* In XE_LP / HPG we only have render-class steering registers during error-capture */
+	list = guc_capture_get_one_list(lists, GUC_CAPTURE_LIST_INDEX_PF,
+					GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS, GUC_RENDER_CLASS);
+	/* skip if extlists was previously allocated */
+	if (!list || guc->capture->extlists)
+		return;
+
+	num_steer_regs = ARRAY_SIZE(xe_extregs);
+	if (__has_xehpg_extregs(ipver))
+		num_steer_regs += ARRAY_SIZE(xehpg_extregs);
+
+	sseu = &gt->info.sseu;
+	for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice) {
+		num_tot_regs += num_steer_regs;
+	}
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
+	for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice) {
+		for (i = 0; i < ARRAY_SIZE(xe_extregs); ++i) {
+			__fill_ext_reg(extarray, &xe_extregs[i], slice, subslice);
+			++extarray;
+		}
+		if (__has_xehpg_extregs(ipver)) {
+			for (i = 0; i < ARRAY_SIZE(xehpg_extregs); ++i) {
+				__fill_ext_reg(extarray, &xehpg_extregs[i], slice, subslice);
+				++extarray;
+			}
+		}
+	}
+
+	drm_dbg(&i915->drm, "GuC-capture found %d-ext-regs.\n", num_tot_regs);
+	guc->capture->extlists = extlists;
+}
+
 static const struct __guc_mmio_reg_descr_group *
 guc_capture_get_device_reglist(struct intel_guc *guc)
 {
 	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 
-	if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915) ||
-	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) {
+	if (GRAPHICS_VER(i915) > 11) {
 		/*
 		 * For certain engine classes, there are slice and subslice
 		 * level registers requiring steering. We allocate and populate
 		 * these at init time based on hw config add it as an extension
 		 * list at the end of the pre-populated render list.
 		 */
-		guc_capture_alloc_steered_lists_xe_lpd(guc, xe_lpd_lists);
+		if (IS_DG2(i915))
+			guc_capture_alloc_steered_lists_xe_hpg(guc, xe_lpd_lists, IP_VER(12, 55));
+		else if (IS_XEHPSDV(i915))
+			guc_capture_alloc_steered_lists_xe_hpg(guc, xe_lpd_lists, IP_VER(12, 50));
+		else
+			guc_capture_alloc_steered_lists_xe_lpd(guc, xe_lpd_lists);
+
 		return xe_lpd_lists;
 	}
 
-- 
2.25.1

