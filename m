Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A4F4DA77A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 02:48:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 533D210E4AA;
	Wed, 16 Mar 2022 01:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2455210E4AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 01:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647395279; x=1678931279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KgWcYsYlGQk6YvhFJHcH25nJ14LjPS32Fp84DEu6XGw=;
 b=W3BoHjQc6X/GaKkSHDaZtSUlghgR6rG6xdq31S9Lcu1/Uqhajqp6YB5A
 8PWyM/DFu4ywJK4b/S11jKNYVSHms/lg1Oh8ISBHRlA6EgRPbfgqY/8bm
 Hfuo1zyONAReZGw+p2tVB2I8RSwbKwJf33Mbv17up05OyxyAdXBFKlFrV
 JBf8rnUJ2Y0rI3xX5YVLCG/od6601hRSA95fL06TnBzoHiBkUO2dJfxCt
 ZEKSDO8d/TKmRjELErNM/dRBiGapzwB0a8Q8ysgiadPWANbjl+nhcskzV
 9gIF64M1av10xZVV3fIXd2RvWTEe3yz/moRQW94IewZdwapeMVwcSNacT Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255294145"
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="255294145"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 18:47:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="634804808"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Mar 2022 18:47:58 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 18:50:16 -0700
Message-Id: <20220316015025.1664860-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220316015025.1664860-1-alan.previn.teres.alexis@intel.com>
References: <20220316015025.1664860-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 04/13] drm/i915/guc: Add DG2 registers for
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
index 0f2b47139140..15fc36203463 100644
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

