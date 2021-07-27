Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 240563D7046
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 09:19:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29EB733DE;
	Tue, 27 Jul 2021 07:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A64F56E94C
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 07:19:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="191982351"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="191982351"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="505378934"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:04 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jul 2021 00:18:38 -0700
Message-Id: <20210727071845.841554-21-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210727071845.841554-1-lucas.demarchi@intel.com>
References: <20210727071845.841554-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 21/28] drm/i915/gt: remove explicit CNL handling
 from intel_sseu.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CNL is the only platform with GRAPHICS_VER == 10. With its removal we
don't need to handle that version anymore.

Also we can now reduce the max number of slices: the call to
intel_sseu_set_info() with the highest number of slices comes from SKL
and BDW with 3 slices. Recent platforms actually increase the
number of subslices so the number of slices remain 1.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_sseu.c | 79 ----------------------------
 drivers/gpu/drm/i915/gt/intel_sseu.h |  2 +-
 2 files changed, 1 insertion(+), 80 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 367fd44b81c8..9542c3f3822a 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -188,83 +188,6 @@ static void gen11_sseu_info_init(struct intel_gt *gt)
 	sseu->has_eu_pg = 1;
 }
 
-static void gen10_sseu_info_init(struct intel_gt *gt)
-{
-	struct intel_uncore *uncore = gt->uncore;
-	struct sseu_dev_info *sseu = &gt->info.sseu;
-	const u32 fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
-	const int eu_mask = 0xff;
-	u32 subslice_mask, eu_en;
-	int s, ss;
-
-	intel_sseu_set_info(sseu, 6, 4, 8);
-
-	sseu->slice_mask = (fuse2 & GEN10_F2_S_ENA_MASK) >>
-		GEN10_F2_S_ENA_SHIFT;
-
-	/* Slice0 */
-	eu_en = ~intel_uncore_read(uncore, GEN8_EU_DISABLE0);
-	for (ss = 0; ss < sseu->max_subslices; ss++)
-		sseu_set_eus(sseu, 0, ss, (eu_en >> (8 * ss)) & eu_mask);
-	/* Slice1 */
-	sseu_set_eus(sseu, 1, 0, (eu_en >> 24) & eu_mask);
-	eu_en = ~intel_uncore_read(uncore, GEN8_EU_DISABLE1);
-	sseu_set_eus(sseu, 1, 1, eu_en & eu_mask);
-	/* Slice2 */
-	sseu_set_eus(sseu, 2, 0, (eu_en >> 8) & eu_mask);
-	sseu_set_eus(sseu, 2, 1, (eu_en >> 16) & eu_mask);
-	/* Slice3 */
-	sseu_set_eus(sseu, 3, 0, (eu_en >> 24) & eu_mask);
-	eu_en = ~intel_uncore_read(uncore, GEN8_EU_DISABLE2);
-	sseu_set_eus(sseu, 3, 1, eu_en & eu_mask);
-	/* Slice4 */
-	sseu_set_eus(sseu, 4, 0, (eu_en >> 8) & eu_mask);
-	sseu_set_eus(sseu, 4, 1, (eu_en >> 16) & eu_mask);
-	/* Slice5 */
-	sseu_set_eus(sseu, 5, 0, (eu_en >> 24) & eu_mask);
-	eu_en = ~intel_uncore_read(uncore, GEN10_EU_DISABLE3);
-	sseu_set_eus(sseu, 5, 1, eu_en & eu_mask);
-
-	subslice_mask = (1 << 4) - 1;
-	subslice_mask &= ~((fuse2 & GEN10_F2_SS_DIS_MASK) >>
-			   GEN10_F2_SS_DIS_SHIFT);
-
-	for (s = 0; s < sseu->max_slices; s++) {
-		u32 subslice_mask_with_eus = subslice_mask;
-
-		for (ss = 0; ss < sseu->max_subslices; ss++) {
-			if (sseu_get_eus(sseu, s, ss) == 0)
-				subslice_mask_with_eus &= ~BIT(ss);
-		}
-
-		/*
-		 * Slice0 can have up to 3 subslices, but there are only 2 in
-		 * slice1/2.
-		 */
-		intel_sseu_set_subslices(sseu, s, s == 0 ?
-					 subslice_mask_with_eus :
-					 subslice_mask_with_eus & 0x3);
-	}
-
-	sseu->eu_total = compute_eu_total(sseu);
-
-	/*
-	 * CNL is expected to always have a uniform distribution
-	 * of EU across subslices with the exception that any one
-	 * EU in any one subslice may be fused off for die
-	 * recovery.
-	 */
-	sseu->eu_per_subslice =
-		intel_sseu_subslice_total(sseu) ?
-		DIV_ROUND_UP(sseu->eu_total, intel_sseu_subslice_total(sseu)) :
-		0;
-
-	/* No restrictions on Power Gating */
-	sseu->has_slice_pg = 1;
-	sseu->has_subslice_pg = 1;
-	sseu->has_eu_pg = 1;
-}
-
 static void cherryview_sseu_info_init(struct intel_gt *gt)
 {
 	struct sseu_dev_info *sseu = &gt->info.sseu;
@@ -592,8 +515,6 @@ void intel_sseu_info_init(struct intel_gt *gt)
 		bdw_sseu_info_init(gt);
 	else if (GRAPHICS_VER(i915) == 9)
 		gen9_sseu_info_init(gt);
-	else if (GRAPHICS_VER(i915) == 10)
-		gen10_sseu_info_init(gt);
 	else if (GRAPHICS_VER(i915) == 11)
 		gen11_sseu_info_init(gt);
 	else if (GRAPHICS_VER(i915) >= 12)
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
index 4cd1a8a7298a..8d85ec05f610 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.h
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
@@ -15,7 +15,7 @@ struct drm_i915_private;
 struct intel_gt;
 struct drm_printer;
 
-#define GEN_MAX_SLICES		(6) /* CNL upper bound */
+#define GEN_MAX_SLICES		(3) /* SKL upper bound */
 #define GEN_MAX_SUBSLICES	(8) /* ICL upper bound */
 #define GEN_SSEU_STRIDE(max_entries) DIV_ROUND_UP(max_entries, BITS_PER_BYTE)
 #define GEN_MAX_SUBSLICE_STRIDE GEN_SSEU_STRIDE(GEN_MAX_SUBSLICES)
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
