Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9242162AE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 01:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553896E4D0;
	Mon,  6 Jul 2020 23:58:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D8E66E4C7
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 23:58:02 +0000 (UTC)
IronPort-SDR: 3ztp3oQGeoIXVjAF6SnwJJTFJ2FSySkQlyMVuUnn4XvbhhpvARWA0KWZT7Mx0KJ7mnB3f/eua2
 LkAj4HheWiNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="147528459"
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="147528459"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 16:58:02 -0700
IronPort-SDR: 8p3zEB6lMrXtT9Q/cmffeM/i/8geeR9z6WVlwgtjNfTF4BLQHI1gLp6OCrMcyxDMj60DEtNHL4
 n8YRq1uLTeMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="357606890"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 06 Jul 2020 16:58:01 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 16:57:54 -0700
Message-Id: <20200706235757.1020-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200706235757.1020-1-daniele.ceraolospurio@intel.com>
References: <20200706235757.1020-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915/sseu: Move sseu detection and
 dump to intel_sseu
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

Keep all the SSEU code in the relevant file. The code has also been
updated to use intel_gt instead of dev_priv.

Based on an original patch by Sandeep.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c       |   1 +
 drivers/gpu/drm/i915/gt/intel_sseu.c     | 587 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_sseu.h     |   8 +
 drivers/gpu/drm/i915/i915_debugfs.c      |   2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c    |   2 +-
 drivers/gpu/drm/i915/intel_device_info.c | 584 +---------------------
 drivers/gpu/drm/i915/intel_device_info.h |   2 -
 7 files changed, 600 insertions(+), 586 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index d96c34802e2b..2c20fe693714 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -47,6 +47,7 @@ void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt)
 int intel_gt_init_mmio(struct intel_gt *gt)
 {
 	intel_uc_init_mmio(&gt->uc);
+	intel_sseu_info_init(gt);
 
 	return intel_engines_init_mmio(gt);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index d173271c7397..006f9118b319 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -60,6 +60,548 @@ intel_sseu_subslices_per_slice(const struct sseu_dev_info *sseu, u8 slice)
 	return hweight32(intel_sseu_get_subslices(sseu, slice));
 }
 
+static int sseu_eu_idx(const struct sseu_dev_info *sseu, int slice,
+		       int subslice)
+{
+	int slice_stride = sseu->max_subslices * sseu->eu_stride;
+
+	return slice * slice_stride + subslice * sseu->eu_stride;
+}
+
+static u16 sseu_get_eus(const struct sseu_dev_info *sseu, int slice,
+			int subslice)
+{
+	int i, offset = sseu_eu_idx(sseu, slice, subslice);
+	u16 eu_mask = 0;
+
+	for (i = 0; i < sseu->eu_stride; i++) {
+		eu_mask |= ((u16)sseu->eu_mask[offset + i]) <<
+			(i * BITS_PER_BYTE);
+	}
+
+	return eu_mask;
+}
+
+static void sseu_set_eus(struct sseu_dev_info *sseu, int slice, int subslice,
+			 u16 eu_mask)
+{
+	int i, offset = sseu_eu_idx(sseu, slice, subslice);
+
+	for (i = 0; i < sseu->eu_stride; i++) {
+		sseu->eu_mask[offset + i] =
+			(eu_mask >> (BITS_PER_BYTE * i)) & 0xff;
+	}
+}
+
+static u16 compute_eu_total(const struct sseu_dev_info *sseu)
+{
+	u16 i, total = 0;
+
+	for (i = 0; i < ARRAY_SIZE(sseu->eu_mask); i++)
+		total += hweight8(sseu->eu_mask[i]);
+
+	return total;
+}
+
+static void gen11_compute_sseu_info(struct sseu_dev_info *sseu,
+				    u8 s_en, u32 ss_en, u16 eu_en)
+{
+	int s, ss;
+
+	/* ss_en represents entire subslice mask across all slices */
+	GEM_BUG_ON(sseu->max_slices * sseu->max_subslices >
+		   sizeof(ss_en) * BITS_PER_BYTE);
+
+	for (s = 0; s < sseu->max_slices; s++) {
+		if ((s_en & BIT(s)) == 0)
+			continue;
+
+		sseu->slice_mask |= BIT(s);
+
+		intel_sseu_set_subslices(sseu, s, ss_en);
+
+		for (ss = 0; ss < sseu->max_subslices; ss++)
+			if (intel_sseu_has_subslice(sseu, s, ss))
+				sseu_set_eus(sseu, s, ss, eu_en);
+	}
+	sseu->eu_per_subslice = hweight16(eu_en);
+	sseu->eu_total = compute_eu_total(sseu);
+}
+
+static void gen12_sseu_info_init(struct intel_gt *gt)
+{
+	struct sseu_dev_info *sseu = &RUNTIME_INFO(gt->i915)->sseu;
+	struct intel_uncore *uncore = gt->uncore;
+	u8 s_en;
+	u32 dss_en;
+	u16 eu_en = 0;
+	u8 eu_en_fuse;
+	int eu;
+
+	/*
+	 * Gen12 has Dual-Subslices, which behave similarly to 2 gen11 SS.
+	 * Instead of splitting these, provide userspace with an array
+	 * of DSS to more closely represent the hardware resource.
+	 */
+	intel_sseu_set_info(sseu, 1, 6, 16);
+
+	s_en = intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE) &
+	       GEN11_GT_S_ENA_MASK;
+
+	dss_en = intel_uncore_read(uncore, GEN12_GT_DSS_ENABLE);
+
+	/* one bit per pair of EUs */
+	eu_en_fuse = ~(intel_uncore_read(uncore, GEN11_EU_DISABLE) &
+		       GEN11_EU_DIS_MASK);
+	for (eu = 0; eu < sseu->max_eus_per_subslice / 2; eu++)
+		if (eu_en_fuse & BIT(eu))
+			eu_en |= BIT(eu * 2) | BIT(eu * 2 + 1);
+
+	gen11_compute_sseu_info(sseu, s_en, dss_en, eu_en);
+
+	/* TGL only supports slice-level power gating */
+	sseu->has_slice_pg = 1;
+}
+
+static void gen11_sseu_info_init(struct intel_gt *gt)
+{
+	struct sseu_dev_info *sseu = &RUNTIME_INFO(gt->i915)->sseu;
+	struct intel_uncore *uncore = gt->uncore;
+	u8 s_en;
+	u32 ss_en;
+	u8 eu_en;
+
+	if (IS_ELKHARTLAKE(gt->i915))
+		intel_sseu_set_info(sseu, 1, 4, 8);
+	else
+		intel_sseu_set_info(sseu, 1, 8, 8);
+
+	s_en = intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE) &
+	       GEN11_GT_S_ENA_MASK;
+	ss_en = ~intel_uncore_read(uncore, GEN11_GT_SUBSLICE_DISABLE);
+
+	eu_en = ~(intel_uncore_read(uncore, GEN11_EU_DISABLE) &
+		  GEN11_EU_DIS_MASK);
+
+	gen11_compute_sseu_info(sseu, s_en, ss_en, eu_en);
+
+	/* ICL has no power gating restrictions. */
+	sseu->has_slice_pg = 1;
+	sseu->has_subslice_pg = 1;
+	sseu->has_eu_pg = 1;
+}
+
+static void gen10_sseu_info_init(struct intel_gt *gt)
+{
+	struct intel_uncore *uncore = gt->uncore;
+	struct sseu_dev_info *sseu = &RUNTIME_INFO(gt->i915)->sseu;
+	const u32 fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
+	int s, ss;
+	const int eu_mask = 0xff;
+	u32 subslice_mask, eu_en;
+
+	intel_sseu_set_info(sseu, 6, 4, 8);
+
+	sseu->slice_mask = (fuse2 & GEN10_F2_S_ENA_MASK) >>
+			    GEN10_F2_S_ENA_SHIFT;
+
+	/* Slice0 */
+	eu_en = ~intel_uncore_read(uncore, GEN8_EU_DISABLE0);
+	for (ss = 0; ss < sseu->max_subslices; ss++)
+		sseu_set_eus(sseu, 0, ss, (eu_en >> (8 * ss)) & eu_mask);
+	/* Slice1 */
+	sseu_set_eus(sseu, 1, 0, (eu_en >> 24) & eu_mask);
+	eu_en = ~intel_uncore_read(uncore, GEN8_EU_DISABLE1);
+	sseu_set_eus(sseu, 1, 1, eu_en & eu_mask);
+	/* Slice2 */
+	sseu_set_eus(sseu, 2, 0, (eu_en >> 8) & eu_mask);
+	sseu_set_eus(sseu, 2, 1, (eu_en >> 16) & eu_mask);
+	/* Slice3 */
+	sseu_set_eus(sseu, 3, 0, (eu_en >> 24) & eu_mask);
+	eu_en = ~intel_uncore_read(uncore, GEN8_EU_DISABLE2);
+	sseu_set_eus(sseu, 3, 1, eu_en & eu_mask);
+	/* Slice4 */
+	sseu_set_eus(sseu, 4, 0, (eu_en >> 8) & eu_mask);
+	sseu_set_eus(sseu, 4, 1, (eu_en >> 16) & eu_mask);
+	/* Slice5 */
+	sseu_set_eus(sseu, 5, 0, (eu_en >> 24) & eu_mask);
+	eu_en = ~intel_uncore_read(uncore, GEN10_EU_DISABLE3);
+	sseu_set_eus(sseu, 5, 1, eu_en & eu_mask);
+
+	subslice_mask = (1 << 4) - 1;
+	subslice_mask &= ~((fuse2 & GEN10_F2_SS_DIS_MASK) >>
+			   GEN10_F2_SS_DIS_SHIFT);
+
+	for (s = 0; s < sseu->max_slices; s++) {
+		u32 subslice_mask_with_eus = subslice_mask;
+
+		for (ss = 0; ss < sseu->max_subslices; ss++) {
+			if (sseu_get_eus(sseu, s, ss) == 0)
+				subslice_mask_with_eus &= ~BIT(ss);
+		}
+
+		/*
+		 * Slice0 can have up to 3 subslices, but there are only 2 in
+		 * slice1/2.
+		 */
+		intel_sseu_set_subslices(sseu, s, s == 0 ?
+						  subslice_mask_with_eus :
+						  subslice_mask_with_eus & 0x3);
+	}
+
+	sseu->eu_total = compute_eu_total(sseu);
+
+	/*
+	 * CNL is expected to always have a uniform distribution
+	 * of EU across subslices with the exception that any one
+	 * EU in any one subslice may be fused off for die
+	 * recovery.
+	 */
+	sseu->eu_per_subslice = intel_sseu_subslice_total(sseu) ?
+				DIV_ROUND_UP(sseu->eu_total,
+					     intel_sseu_subslice_total(sseu)) :
+				0;
+
+	/* No restrictions on Power Gating */
+	sseu->has_slice_pg = 1;
+	sseu->has_subslice_pg = 1;
+	sseu->has_eu_pg = 1;
+}
+
+static void cherryview_sseu_info_init(struct intel_gt *gt)
+{
+	struct sseu_dev_info *sseu = &RUNTIME_INFO(gt->i915)->sseu;
+	u32 fuse;
+	u8 subslice_mask = 0;
+
+	fuse = intel_uncore_read(gt->uncore, CHV_FUSE_GT);
+
+	sseu->slice_mask = BIT(0);
+	intel_sseu_set_info(sseu, 1, 2, 8);
+
+	if (!(fuse & CHV_FGT_DISABLE_SS0)) {
+		u8 disabled_mask =
+			((fuse & CHV_FGT_EU_DIS_SS0_R0_MASK) >>
+			 CHV_FGT_EU_DIS_SS0_R0_SHIFT) |
+			(((fuse & CHV_FGT_EU_DIS_SS0_R1_MASK) >>
+			  CHV_FGT_EU_DIS_SS0_R1_SHIFT) << 4);
+
+		subslice_mask |= BIT(0);
+		sseu_set_eus(sseu, 0, 0, ~disabled_mask);
+	}
+
+	if (!(fuse & CHV_FGT_DISABLE_SS1)) {
+		u8 disabled_mask =
+			((fuse & CHV_FGT_EU_DIS_SS1_R0_MASK) >>
+			 CHV_FGT_EU_DIS_SS1_R0_SHIFT) |
+			(((fuse & CHV_FGT_EU_DIS_SS1_R1_MASK) >>
+			  CHV_FGT_EU_DIS_SS1_R1_SHIFT) << 4);
+
+		subslice_mask |= BIT(1);
+		sseu_set_eus(sseu, 0, 1, ~disabled_mask);
+	}
+
+	intel_sseu_set_subslices(sseu, 0, subslice_mask);
+
+	sseu->eu_total = compute_eu_total(sseu);
+
+	/*
+	 * CHV expected to always have a uniform distribution of EU
+	 * across subslices.
+	*/
+	sseu->eu_per_subslice = intel_sseu_subslice_total(sseu) ?
+				sseu->eu_total /
+					intel_sseu_subslice_total(sseu) :
+				0;
+	/*
+	 * CHV supports subslice power gating on devices with more than
+	 * one subslice, and supports EU power gating on devices with
+	 * more than one EU pair per subslice.
+	*/
+	sseu->has_slice_pg = 0;
+	sseu->has_subslice_pg = intel_sseu_subslice_total(sseu) > 1;
+	sseu->has_eu_pg = (sseu->eu_per_subslice > 2);
+}
+
+static void gen9_sseu_info_init(struct intel_gt *gt)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	struct intel_device_info *info = mkwrite_device_info(i915);
+	struct sseu_dev_info *sseu = &RUNTIME_INFO(i915)->sseu;
+	struct intel_uncore *uncore = gt->uncore;
+	int s, ss;
+	u32 fuse2, eu_disable, subslice_mask;
+	const u8 eu_mask = 0xff;
+
+	fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
+	sseu->slice_mask = (fuse2 & GEN8_F2_S_ENA_MASK) >> GEN8_F2_S_ENA_SHIFT;
+
+	/* BXT has a single slice and at most 3 subslices. */
+	intel_sseu_set_info(sseu, IS_GEN9_LP(i915) ? 1 : 3,
+			    IS_GEN9_LP(i915) ? 3 : 4, 8);
+
+	/*
+	 * The subslice disable field is global, i.e. it applies
+	 * to each of the enabled slices.
+	*/
+	subslice_mask = (1 << sseu->max_subslices) - 1;
+	subslice_mask &= ~((fuse2 & GEN9_F2_SS_DIS_MASK) >>
+			   GEN9_F2_SS_DIS_SHIFT);
+
+	/*
+	 * Iterate through enabled slices and subslices to
+	 * count the total enabled EU.
+	*/
+	for (s = 0; s < sseu->max_slices; s++) {
+		if (!(sseu->slice_mask & BIT(s)))
+			/* skip disabled slice */
+			continue;
+
+		intel_sseu_set_subslices(sseu, s, subslice_mask);
+
+		eu_disable = intel_uncore_read(uncore, GEN9_EU_DISABLE(s));
+		for (ss = 0; ss < sseu->max_subslices; ss++) {
+			int eu_per_ss;
+			u8 eu_disabled_mask;
+
+			if (!intel_sseu_has_subslice(sseu, s, ss))
+				/* skip disabled subslice */
+				continue;
+
+			eu_disabled_mask = (eu_disable >> (ss * 8)) & eu_mask;
+
+			sseu_set_eus(sseu, s, ss, ~eu_disabled_mask);
+
+			eu_per_ss = sseu->max_eus_per_subslice -
+				hweight8(eu_disabled_mask);
+
+			/*
+			 * Record which subslice(s) has(have) 7 EUs. we
+			 * can tune the hash used to spread work among
+			 * subslices if they are unbalanced.
+			 */
+			if (eu_per_ss == 7)
+				sseu->subslice_7eu[s] |= BIT(ss);
+		}
+	}
+
+	sseu->eu_total = compute_eu_total(sseu);
+
+	/*
+	 * SKL is expected to always have a uniform distribution
+	 * of EU across subslices with the exception that any one
+	 * EU in any one subslice may be fused off for die
+	 * recovery. BXT is expected to be perfectly uniform in EU
+	 * distribution.
+	*/
+	sseu->eu_per_subslice = intel_sseu_subslice_total(sseu) ?
+				DIV_ROUND_UP(sseu->eu_total,
+					     intel_sseu_subslice_total(sseu)) :
+				0;
+	/*
+	 * SKL+ supports slice power gating on devices with more than
+	 * one slice, and supports EU power gating on devices with
+	 * more than one EU pair per subslice. BXT+ supports subslice
+	 * power gating on devices with more than one subslice, and
+	 * supports EU power gating on devices with more than one EU
+	 * pair per subslice.
+	*/
+	sseu->has_slice_pg =
+		!IS_GEN9_LP(i915) && hweight8(sseu->slice_mask) > 1;
+	sseu->has_subslice_pg =
+		IS_GEN9_LP(i915) && intel_sseu_subslice_total(sseu) > 1;
+	sseu->has_eu_pg = sseu->eu_per_subslice > 2;
+
+	if (IS_GEN9_LP(i915)) {
+#define IS_SS_DISABLED(ss)	(!(sseu->subslice_mask[0] & BIT(ss)))
+		info->has_pooled_eu = hweight8(sseu->subslice_mask[0]) == 3;
+
+		sseu->min_eu_in_pool = 0;
+		if (info->has_pooled_eu) {
+			if (IS_SS_DISABLED(2) || IS_SS_DISABLED(0))
+				sseu->min_eu_in_pool = 3;
+			else if (IS_SS_DISABLED(1))
+				sseu->min_eu_in_pool = 6;
+			else
+				sseu->min_eu_in_pool = 9;
+		}
+#undef IS_SS_DISABLED
+	}
+}
+
+static void bdw_sseu_info_init(struct intel_gt *gt)
+{
+	struct sseu_dev_info *sseu = &RUNTIME_INFO(gt->i915)->sseu;
+	struct intel_uncore *uncore = gt->uncore;
+	int s, ss;
+	u32 fuse2, subslice_mask, eu_disable[3]; /* s_max */
+	u32 eu_disable0, eu_disable1, eu_disable2;
+
+	fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
+	sseu->slice_mask = (fuse2 & GEN8_F2_S_ENA_MASK) >> GEN8_F2_S_ENA_SHIFT;
+	intel_sseu_set_info(sseu, 3, 3, 8);
+
+	/*
+	 * The subslice disable field is global, i.e. it applies
+	 * to each of the enabled slices.
+	 */
+	subslice_mask = GENMASK(sseu->max_subslices - 1, 0);
+	subslice_mask &= ~((fuse2 & GEN8_F2_SS_DIS_MASK) >>
+			   GEN8_F2_SS_DIS_SHIFT);
+	eu_disable0 = intel_uncore_read(uncore, GEN8_EU_DISABLE0);
+	eu_disable1 = intel_uncore_read(uncore, GEN8_EU_DISABLE1);
+	eu_disable2 = intel_uncore_read(uncore, GEN8_EU_DISABLE2);
+	eu_disable[0] = eu_disable0 & GEN8_EU_DIS0_S0_MASK;
+	eu_disable[1] = (eu_disable0 >> GEN8_EU_DIS0_S1_SHIFT) |
+			((eu_disable1 & GEN8_EU_DIS1_S1_MASK) <<
+			 (32 - GEN8_EU_DIS0_S1_SHIFT));
+	eu_disable[2] = (eu_disable1 >> GEN8_EU_DIS1_S2_SHIFT) |
+			((eu_disable2 & GEN8_EU_DIS2_S2_MASK) <<
+			 (32 - GEN8_EU_DIS1_S2_SHIFT));
+
+	/*
+	 * Iterate through enabled slices and subslices to
+	 * count the total enabled EU.
+	 */
+	for (s = 0; s < sseu->max_slices; s++) {
+		if (!(sseu->slice_mask & BIT(s)))
+			/* skip disabled slice */
+			continue;
+
+		intel_sseu_set_subslices(sseu, s, subslice_mask);
+
+		for (ss = 0; ss < sseu->max_subslices; ss++) {
+			u8 eu_disabled_mask;
+			u32 n_disabled;
+
+			if (!intel_sseu_has_subslice(sseu, s, ss))
+				/* skip disabled subslice */
+				continue;
+
+			eu_disabled_mask =
+				eu_disable[s] >> (ss * sseu->max_eus_per_subslice);
+
+			sseu_set_eus(sseu, s, ss, ~eu_disabled_mask);
+
+			n_disabled = hweight8(eu_disabled_mask);
+
+			/*
+			 * Record which subslices have 7 EUs.
+			 */
+			if (sseu->max_eus_per_subslice - n_disabled == 7)
+				sseu->subslice_7eu[s] |= 1 << ss;
+		}
+	}
+
+	sseu->eu_total = compute_eu_total(sseu);
+
+	/*
+	 * BDW is expected to always have a uniform distribution of EU across
+	 * subslices with the exception that any one EU in any one subslice may
+	 * be fused off for die recovery.
+	 */
+	sseu->eu_per_subslice = intel_sseu_subslice_total(sseu) ?
+				DIV_ROUND_UP(sseu->eu_total,
+					     intel_sseu_subslice_total(sseu)) :
+				0;
+
+	/*
+	 * BDW supports slice power gating on devices with more than
+	 * one slice.
+	 */
+	sseu->has_slice_pg = hweight8(sseu->slice_mask) > 1;
+	sseu->has_subslice_pg = 0;
+	sseu->has_eu_pg = 0;
+}
+
+static void hsw_sseu_info_init(struct intel_gt *gt)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	struct sseu_dev_info *sseu = &RUNTIME_INFO(gt->i915)->sseu;
+	u32 fuse1;
+	u8 subslice_mask = 0;
+	int s, ss;
+
+	/*
+	 * There isn't a register to tell us how many slices/subslices. We
+	 * work off the PCI-ids here.
+	 */
+	switch (INTEL_INFO(i915)->gt) {
+	default:
+		MISSING_CASE(INTEL_INFO(i915)->gt);
+		/* fall through */
+	case 1:
+		sseu->slice_mask = BIT(0);
+		subslice_mask = BIT(0);
+		break;
+	case 2:
+		sseu->slice_mask = BIT(0);
+		subslice_mask = BIT(0) | BIT(1);
+		break;
+	case 3:
+		sseu->slice_mask = BIT(0) | BIT(1);
+		subslice_mask = BIT(0) | BIT(1);
+		break;
+	}
+
+	fuse1 = intel_uncore_read(gt->uncore, HSW_PAVP_FUSE1);
+	switch ((fuse1 & HSW_F1_EU_DIS_MASK) >> HSW_F1_EU_DIS_SHIFT) {
+	default:
+		MISSING_CASE((fuse1 & HSW_F1_EU_DIS_MASK) >>
+			     HSW_F1_EU_DIS_SHIFT);
+		/* fall through */
+	case HSW_F1_EU_DIS_10EUS:
+		sseu->eu_per_subslice = 10;
+		break;
+	case HSW_F1_EU_DIS_8EUS:
+		sseu->eu_per_subslice = 8;
+		break;
+	case HSW_F1_EU_DIS_6EUS:
+		sseu->eu_per_subslice = 6;
+		break;
+	}
+
+	intel_sseu_set_info(sseu, hweight8(sseu->slice_mask),
+			    hweight8(subslice_mask),
+			    sseu->eu_per_subslice);
+
+	for (s = 0; s < sseu->max_slices; s++) {
+		intel_sseu_set_subslices(sseu, s, subslice_mask);
+
+		for (ss = 0; ss < sseu->max_subslices; ss++) {
+			sseu_set_eus(sseu, s, ss,
+				     (1UL << sseu->eu_per_subslice) - 1);
+		}
+	}
+
+	sseu->eu_total = compute_eu_total(sseu);
+
+	/* No powergating for you. */
+	sseu->has_slice_pg = 0;
+	sseu->has_subslice_pg = 0;
+	sseu->has_eu_pg = 0;
+}
+
+void intel_sseu_info_init(struct intel_gt *gt)
+{
+	struct drm_i915_private *i915 = gt->i915;
+
+	if (IS_HASWELL(i915))
+		hsw_sseu_info_init(gt);
+	else if (IS_CHERRYVIEW(i915))
+		cherryview_sseu_info_init(gt);
+	else if (IS_BROADWELL(i915))
+		bdw_sseu_info_init(gt);
+	else if (IS_GEN(i915, 9))
+		gen9_sseu_info_init(gt);
+	else if (IS_GEN(i915, 10))
+		gen10_sseu_info_init(gt);
+	else if (IS_GEN(i915, 11))
+		gen11_sseu_info_init(gt);
+	else if (INTEL_GEN(i915) >= 12)
+		gen12_sseu_info_init(gt);
+}
+
 u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
 			 const struct intel_sseu *req_sseu)
 {
@@ -173,3 +715,48 @@ u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
 
 	return rpcs;
 }
+
+void intel_sseu_dump(const struct sseu_dev_info *sseu, struct drm_printer *p)
+{
+	int s;
+
+	drm_printf(p, "slice total: %u, mask=%04x\n",
+		   hweight8(sseu->slice_mask), sseu->slice_mask);
+	drm_printf(p, "subslice total: %u\n", intel_sseu_subslice_total(sseu));
+	for (s = 0; s < sseu->max_slices; s++) {
+		drm_printf(p, "slice%d: %u subslices, mask=%08x\n",
+			   s, intel_sseu_subslices_per_slice(sseu, s),
+			   intel_sseu_get_subslices(sseu, s));
+	}
+	drm_printf(p, "EU total: %u\n", sseu->eu_total);
+	drm_printf(p, "EU per subslice: %u\n", sseu->eu_per_subslice);
+	drm_printf(p, "has slice power gating: %s\n",
+		   yesno(sseu->has_slice_pg));
+	drm_printf(p, "has subslice power gating: %s\n",
+		   yesno(sseu->has_subslice_pg));
+	drm_printf(p, "has EU power gating: %s\n", yesno(sseu->has_eu_pg));
+}
+
+void intel_sseu_print_topology(const struct sseu_dev_info *sseu,
+			       struct drm_printer *p)
+{
+	int s, ss;
+
+	if (sseu->max_slices == 0) {
+		drm_printf(p, "Unavailable\n");
+		return;
+	}
+
+	for (s = 0; s < sseu->max_slices; s++) {
+		drm_printf(p, "slice%d: %u subslice(s) (0x%08x):\n",
+			   s, intel_sseu_subslices_per_slice(sseu, s),
+			   intel_sseu_get_subslices(sseu, s));
+
+		for (ss = 0; ss < sseu->max_subslices; ss++) {
+			u16 enabled_eus = sseu_get_eus(sseu, s, ss);
+
+			drm_printf(p, "\tsubslice%d: %u EUs (0x%hx)\n",
+				   ss, hweight16(enabled_eus), enabled_eus);
+		}
+	}
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
index d1d225204f09..f9c007f001e7 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.h
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
@@ -13,6 +13,8 @@
 #include "i915_gem.h"
 
 struct drm_i915_private;
+struct intel_gt;
+struct drm_printer;
 
 #define GEN_MAX_SLICES		(6) /* CNL upper bound */
 #define GEN_MAX_SUBSLICES	(8) /* ICL upper bound */
@@ -94,7 +96,13 @@ u32  intel_sseu_get_subslices(const struct sseu_dev_info *sseu, u8 slice);
 void intel_sseu_set_subslices(struct sseu_dev_info *sseu, int slice,
 			      u32 ss_mask);
 
+void intel_sseu_info_init(struct intel_gt *gt);
+
 u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
 			 const struct intel_sseu *req_sseu);
 
+void intel_sseu_dump(const struct sseu_dev_info *sseu, struct drm_printer *p);
+void intel_sseu_print_topology(const struct sseu_dev_info *sseu,
+			       struct drm_printer *p);
+
 #endif /* __INTEL_SSEU_H__ */
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 41ca8ff2aa16..bfba0dff0b85 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1327,7 +1327,7 @@ static int i915_rcs_topology(struct seq_file *m, void *unused)
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 	struct drm_printer p = drm_seq_file_printer(m);
 
-	intel_device_info_print_topology(&RUNTIME_INFO(dev_priv)->sseu, &p);
+	intel_sseu_print_topology(&RUNTIME_INFO(dev_priv)->sseu, &p);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 9cb9aa39c33d..99b4a0261b13 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -626,7 +626,7 @@ static void err_print_capabilities(struct drm_i915_error_state_buf *m,
 
 	intel_device_info_print_static(&error->device_info, &p);
 	intel_device_info_print_runtime(&error->runtime_info, &p);
-	intel_device_info_print_topology(&error->runtime_info.sseu, &p);
+	intel_sseu_print_topology(&error->runtime_info.sseu, &p);
 	intel_gt_info_print(&error->gt->info, &p);
 	intel_driver_caps_print(&error->driver_caps, &p);
 }
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index a362a66fce11..d8daf224cbd3 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -29,6 +29,7 @@
 #include "display/intel_de.h"
 #include "intel_device_info.h"
 #include "i915_drv.h"
+#include "gt/intel_sseu.h"
 
 #define PLATFORM_NAME(x) [INTEL_##x] = #x
 static const char * const platform_names[] = {
@@ -111,581 +112,16 @@ void intel_device_info_print_static(const struct intel_device_info *info,
 #undef PRINT_FLAG
 }
 
-static void sseu_dump(const struct sseu_dev_info *sseu, struct drm_printer *p)
-{
-	int s;
-
-	drm_printf(p, "slice total: %u, mask=%04x\n",
-		   hweight8(sseu->slice_mask), sseu->slice_mask);
-	drm_printf(p, "subslice total: %u\n", intel_sseu_subslice_total(sseu));
-	for (s = 0; s < sseu->max_slices; s++) {
-		drm_printf(p, "slice%d: %u subslices, mask=%08x\n",
-			   s, intel_sseu_subslices_per_slice(sseu, s),
-			   intel_sseu_get_subslices(sseu, s));
-	}
-	drm_printf(p, "EU total: %u\n", sseu->eu_total);
-	drm_printf(p, "EU per subslice: %u\n", sseu->eu_per_subslice);
-	drm_printf(p, "has slice power gating: %s\n",
-		   yesno(sseu->has_slice_pg));
-	drm_printf(p, "has subslice power gating: %s\n",
-		   yesno(sseu->has_subslice_pg));
-	drm_printf(p, "has EU power gating: %s\n", yesno(sseu->has_eu_pg));
-}
-
 void intel_device_info_print_runtime(const struct intel_runtime_info *info,
 				     struct drm_printer *p)
 {
-	sseu_dump(&info->sseu, p);
+	intel_sseu_dump(&info->sseu, p);
 
 	drm_printf(p, "rawclk rate: %u kHz\n", info->rawclk_freq);
 	drm_printf(p, "CS timestamp frequency: %u Hz\n",
 		   info->cs_timestamp_frequency_hz);
 }
 
-static int sseu_eu_idx(const struct sseu_dev_info *sseu, int slice,
-		       int subslice)
-{
-	int slice_stride = sseu->max_subslices * sseu->eu_stride;
-
-	return slice * slice_stride + subslice * sseu->eu_stride;
-}
-
-static u16 sseu_get_eus(const struct sseu_dev_info *sseu, int slice,
-			int subslice)
-{
-	int i, offset = sseu_eu_idx(sseu, slice, subslice);
-	u16 eu_mask = 0;
-
-	for (i = 0; i < sseu->eu_stride; i++) {
-		eu_mask |= ((u16)sseu->eu_mask[offset + i]) <<
-			(i * BITS_PER_BYTE);
-	}
-
-	return eu_mask;
-}
-
-static void sseu_set_eus(struct sseu_dev_info *sseu, int slice, int subslice,
-			 u16 eu_mask)
-{
-	int i, offset = sseu_eu_idx(sseu, slice, subslice);
-
-	for (i = 0; i < sseu->eu_stride; i++) {
-		sseu->eu_mask[offset + i] =
-			(eu_mask >> (BITS_PER_BYTE * i)) & 0xff;
-	}
-}
-
-void intel_device_info_print_topology(const struct sseu_dev_info *sseu,
-				      struct drm_printer *p)
-{
-	int s, ss;
-
-	if (sseu->max_slices == 0) {
-		drm_printf(p, "Unavailable\n");
-		return;
-	}
-
-	for (s = 0; s < sseu->max_slices; s++) {
-		drm_printf(p, "slice%d: %u subslice(s) (0x%08x):\n",
-			   s, intel_sseu_subslices_per_slice(sseu, s),
-			   intel_sseu_get_subslices(sseu, s));
-
-		for (ss = 0; ss < sseu->max_subslices; ss++) {
-			u16 enabled_eus = sseu_get_eus(sseu, s, ss);
-
-			drm_printf(p, "\tsubslice%d: %u EUs (0x%hx)\n",
-				   ss, hweight16(enabled_eus), enabled_eus);
-		}
-	}
-}
-
-static u16 compute_eu_total(const struct sseu_dev_info *sseu)
-{
-	u16 i, total = 0;
-
-	for (i = 0; i < ARRAY_SIZE(sseu->eu_mask); i++)
-		total += hweight8(sseu->eu_mask[i]);
-
-	return total;
-}
-
-static void gen11_compute_sseu_info(struct sseu_dev_info *sseu,
-				    u8 s_en, u32 ss_en, u16 eu_en)
-{
-	int s, ss;
-
-	/* ss_en represents entire subslice mask across all slices */
-	GEM_BUG_ON(sseu->max_slices * sseu->max_subslices >
-		   sizeof(ss_en) * BITS_PER_BYTE);
-
-	for (s = 0; s < sseu->max_slices; s++) {
-		if ((s_en & BIT(s)) == 0)
-			continue;
-
-		sseu->slice_mask |= BIT(s);
-
-		intel_sseu_set_subslices(sseu, s, ss_en);
-
-		for (ss = 0; ss < sseu->max_subslices; ss++)
-			if (intel_sseu_has_subslice(sseu, s, ss))
-				sseu_set_eus(sseu, s, ss, eu_en);
-	}
-	sseu->eu_per_subslice = hweight16(eu_en);
-	sseu->eu_total = compute_eu_total(sseu);
-}
-
-static void gen12_sseu_info_init(struct drm_i915_private *dev_priv)
-{
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	u8 s_en;
-	u32 dss_en;
-	u16 eu_en = 0;
-	u8 eu_en_fuse;
-	int eu;
-
-	/*
-	 * Gen12 has Dual-Subslices, which behave similarly to 2 gen11 SS.
-	 * Instead of splitting these, provide userspace with an array
-	 * of DSS to more closely represent the hardware resource.
-	 */
-	intel_sseu_set_info(sseu, 1, 6, 16);
-
-	s_en = intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE) &
-	       GEN11_GT_S_ENA_MASK;
-
-	dss_en = intel_uncore_read(uncore, GEN12_GT_DSS_ENABLE);
-
-	/* one bit per pair of EUs */
-	eu_en_fuse = ~(intel_uncore_read(uncore, GEN11_EU_DISABLE) &
-		       GEN11_EU_DIS_MASK);
-	for (eu = 0; eu < sseu->max_eus_per_subslice / 2; eu++)
-		if (eu_en_fuse & BIT(eu))
-			eu_en |= BIT(eu * 2) | BIT(eu * 2 + 1);
-
-	gen11_compute_sseu_info(sseu, s_en, dss_en, eu_en);
-
-	/* TGL only supports slice-level power gating */
-	sseu->has_slice_pg = 1;
-}
-
-static void gen11_sseu_info_init(struct drm_i915_private *dev_priv)
-{
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	u8 s_en;
-	u32 ss_en;
-	u8 eu_en;
-
-	if (IS_ELKHARTLAKE(dev_priv))
-		intel_sseu_set_info(sseu, 1, 4, 8);
-	else
-		intel_sseu_set_info(sseu, 1, 8, 8);
-
-	s_en = intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE) &
-	       GEN11_GT_S_ENA_MASK;
-	ss_en = ~intel_uncore_read(uncore, GEN11_GT_SUBSLICE_DISABLE);
-
-	eu_en = ~(intel_uncore_read(uncore, GEN11_EU_DISABLE) &
-		  GEN11_EU_DIS_MASK);
-
-	gen11_compute_sseu_info(sseu, s_en, ss_en, eu_en);
-
-	/* ICL has no power gating restrictions. */
-	sseu->has_slice_pg = 1;
-	sseu->has_subslice_pg = 1;
-	sseu->has_eu_pg = 1;
-}
-
-static void gen10_sseu_info_init(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
-	const u32 fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
-	int s, ss;
-	const int eu_mask = 0xff;
-	u32 subslice_mask, eu_en;
-
-	intel_sseu_set_info(sseu, 6, 4, 8);
-
-	sseu->slice_mask = (fuse2 & GEN10_F2_S_ENA_MASK) >>
-			    GEN10_F2_S_ENA_SHIFT;
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
-						  subslice_mask_with_eus :
-						  subslice_mask_with_eus & 0x3);
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
-	sseu->eu_per_subslice = intel_sseu_subslice_total(sseu) ?
-				DIV_ROUND_UP(sseu->eu_total,
-					     intel_sseu_subslice_total(sseu)) :
-				0;
-
-	/* No restrictions on Power Gating */
-	sseu->has_slice_pg = 1;
-	sseu->has_subslice_pg = 1;
-	sseu->has_eu_pg = 1;
-}
-
-static void cherryview_sseu_info_init(struct drm_i915_private *dev_priv)
-{
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
-	u32 fuse;
-	u8 subslice_mask = 0;
-
-	fuse = intel_uncore_read(&dev_priv->uncore, CHV_FUSE_GT);
-
-	sseu->slice_mask = BIT(0);
-	intel_sseu_set_info(sseu, 1, 2, 8);
-
-	if (!(fuse & CHV_FGT_DISABLE_SS0)) {
-		u8 disabled_mask =
-			((fuse & CHV_FGT_EU_DIS_SS0_R0_MASK) >>
-			 CHV_FGT_EU_DIS_SS0_R0_SHIFT) |
-			(((fuse & CHV_FGT_EU_DIS_SS0_R1_MASK) >>
-			  CHV_FGT_EU_DIS_SS0_R1_SHIFT) << 4);
-
-		subslice_mask |= BIT(0);
-		sseu_set_eus(sseu, 0, 0, ~disabled_mask);
-	}
-
-	if (!(fuse & CHV_FGT_DISABLE_SS1)) {
-		u8 disabled_mask =
-			((fuse & CHV_FGT_EU_DIS_SS1_R0_MASK) >>
-			 CHV_FGT_EU_DIS_SS1_R0_SHIFT) |
-			(((fuse & CHV_FGT_EU_DIS_SS1_R1_MASK) >>
-			  CHV_FGT_EU_DIS_SS1_R1_SHIFT) << 4);
-
-		subslice_mask |= BIT(1);
-		sseu_set_eus(sseu, 0, 1, ~disabled_mask);
-	}
-
-	intel_sseu_set_subslices(sseu, 0, subslice_mask);
-
-	sseu->eu_total = compute_eu_total(sseu);
-
-	/*
-	 * CHV expected to always have a uniform distribution of EU
-	 * across subslices.
-	*/
-	sseu->eu_per_subslice = intel_sseu_subslice_total(sseu) ?
-				sseu->eu_total /
-					intel_sseu_subslice_total(sseu) :
-				0;
-	/*
-	 * CHV supports subslice power gating on devices with more than
-	 * one subslice, and supports EU power gating on devices with
-	 * more than one EU pair per subslice.
-	*/
-	sseu->has_slice_pg = 0;
-	sseu->has_subslice_pg = intel_sseu_subslice_total(sseu) > 1;
-	sseu->has_eu_pg = (sseu->eu_per_subslice > 2);
-}
-
-static void gen9_sseu_info_init(struct drm_i915_private *dev_priv)
-{
-	struct intel_device_info *info = mkwrite_device_info(dev_priv);
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	int s, ss;
-	u32 fuse2, eu_disable, subslice_mask;
-	const u8 eu_mask = 0xff;
-
-	fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
-	sseu->slice_mask = (fuse2 & GEN8_F2_S_ENA_MASK) >> GEN8_F2_S_ENA_SHIFT;
-
-	/* BXT has a single slice and at most 3 subslices. */
-	intel_sseu_set_info(sseu, IS_GEN9_LP(dev_priv) ? 1 : 3,
-			    IS_GEN9_LP(dev_priv) ? 3 : 4, 8);
-
-	/*
-	 * The subslice disable field is global, i.e. it applies
-	 * to each of the enabled slices.
-	*/
-	subslice_mask = (1 << sseu->max_subslices) - 1;
-	subslice_mask &= ~((fuse2 & GEN9_F2_SS_DIS_MASK) >>
-			   GEN9_F2_SS_DIS_SHIFT);
-
-	/*
-	 * Iterate through enabled slices and subslices to
-	 * count the total enabled EU.
-	*/
-	for (s = 0; s < sseu->max_slices; s++) {
-		if (!(sseu->slice_mask & BIT(s)))
-			/* skip disabled slice */
-			continue;
-
-		intel_sseu_set_subslices(sseu, s, subslice_mask);
-
-		eu_disable = intel_uncore_read(uncore, GEN9_EU_DISABLE(s));
-		for (ss = 0; ss < sseu->max_subslices; ss++) {
-			int eu_per_ss;
-			u8 eu_disabled_mask;
-
-			if (!intel_sseu_has_subslice(sseu, s, ss))
-				/* skip disabled subslice */
-				continue;
-
-			eu_disabled_mask = (eu_disable >> (ss * 8)) & eu_mask;
-
-			sseu_set_eus(sseu, s, ss, ~eu_disabled_mask);
-
-			eu_per_ss = sseu->max_eus_per_subslice -
-				hweight8(eu_disabled_mask);
-
-			/*
-			 * Record which subslice(s) has(have) 7 EUs. we
-			 * can tune the hash used to spread work among
-			 * subslices if they are unbalanced.
-			 */
-			if (eu_per_ss == 7)
-				sseu->subslice_7eu[s] |= BIT(ss);
-		}
-	}
-
-	sseu->eu_total = compute_eu_total(sseu);
-
-	/*
-	 * SKL is expected to always have a uniform distribution
-	 * of EU across subslices with the exception that any one
-	 * EU in any one subslice may be fused off for die
-	 * recovery. BXT is expected to be perfectly uniform in EU
-	 * distribution.
-	*/
-	sseu->eu_per_subslice = intel_sseu_subslice_total(sseu) ?
-				DIV_ROUND_UP(sseu->eu_total,
-					     intel_sseu_subslice_total(sseu)) :
-				0;
-	/*
-	 * SKL+ supports slice power gating on devices with more than
-	 * one slice, and supports EU power gating on devices with
-	 * more than one EU pair per subslice. BXT+ supports subslice
-	 * power gating on devices with more than one subslice, and
-	 * supports EU power gating on devices with more than one EU
-	 * pair per subslice.
-	*/
-	sseu->has_slice_pg =
-		!IS_GEN9_LP(dev_priv) && hweight8(sseu->slice_mask) > 1;
-	sseu->has_subslice_pg =
-		IS_GEN9_LP(dev_priv) && intel_sseu_subslice_total(sseu) > 1;
-	sseu->has_eu_pg = sseu->eu_per_subslice > 2;
-
-	if (IS_GEN9_LP(dev_priv)) {
-#define IS_SS_DISABLED(ss)	(!(sseu->subslice_mask[0] & BIT(ss)))
-		info->has_pooled_eu = hweight8(sseu->subslice_mask[0]) == 3;
-
-		sseu->min_eu_in_pool = 0;
-		if (info->has_pooled_eu) {
-			if (IS_SS_DISABLED(2) || IS_SS_DISABLED(0))
-				sseu->min_eu_in_pool = 3;
-			else if (IS_SS_DISABLED(1))
-				sseu->min_eu_in_pool = 6;
-			else
-				sseu->min_eu_in_pool = 9;
-		}
-#undef IS_SS_DISABLED
-	}
-}
-
-static void bdw_sseu_info_init(struct drm_i915_private *dev_priv)
-{
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	int s, ss;
-	u32 fuse2, subslice_mask, eu_disable[3]; /* s_max */
-	u32 eu_disable0, eu_disable1, eu_disable2;
-
-	fuse2 = intel_uncore_read(uncore, GEN8_FUSE2);
-	sseu->slice_mask = (fuse2 & GEN8_F2_S_ENA_MASK) >> GEN8_F2_S_ENA_SHIFT;
-	intel_sseu_set_info(sseu, 3, 3, 8);
-
-	/*
-	 * The subslice disable field is global, i.e. it applies
-	 * to each of the enabled slices.
-	 */
-	subslice_mask = GENMASK(sseu->max_subslices - 1, 0);
-	subslice_mask &= ~((fuse2 & GEN8_F2_SS_DIS_MASK) >>
-			   GEN8_F2_SS_DIS_SHIFT);
-	eu_disable0 = intel_uncore_read(uncore, GEN8_EU_DISABLE0);
-	eu_disable1 = intel_uncore_read(uncore, GEN8_EU_DISABLE1);
-	eu_disable2 = intel_uncore_read(uncore, GEN8_EU_DISABLE2);
-	eu_disable[0] = eu_disable0 & GEN8_EU_DIS0_S0_MASK;
-	eu_disable[1] = (eu_disable0 >> GEN8_EU_DIS0_S1_SHIFT) |
-			((eu_disable1 & GEN8_EU_DIS1_S1_MASK) <<
-			 (32 - GEN8_EU_DIS0_S1_SHIFT));
-	eu_disable[2] = (eu_disable1 >> GEN8_EU_DIS1_S2_SHIFT) |
-			((eu_disable2 & GEN8_EU_DIS2_S2_MASK) <<
-			 (32 - GEN8_EU_DIS1_S2_SHIFT));
-
-	/*
-	 * Iterate through enabled slices and subslices to
-	 * count the total enabled EU.
-	 */
-	for (s = 0; s < sseu->max_slices; s++) {
-		if (!(sseu->slice_mask & BIT(s)))
-			/* skip disabled slice */
-			continue;
-
-		intel_sseu_set_subslices(sseu, s, subslice_mask);
-
-		for (ss = 0; ss < sseu->max_subslices; ss++) {
-			u8 eu_disabled_mask;
-			u32 n_disabled;
-
-			if (!intel_sseu_has_subslice(sseu, s, ss))
-				/* skip disabled subslice */
-				continue;
-
-			eu_disabled_mask =
-				eu_disable[s] >> (ss * sseu->max_eus_per_subslice);
-
-			sseu_set_eus(sseu, s, ss, ~eu_disabled_mask);
-
-			n_disabled = hweight8(eu_disabled_mask);
-
-			/*
-			 * Record which subslices have 7 EUs.
-			 */
-			if (sseu->max_eus_per_subslice - n_disabled == 7)
-				sseu->subslice_7eu[s] |= 1 << ss;
-		}
-	}
-
-	sseu->eu_total = compute_eu_total(sseu);
-
-	/*
-	 * BDW is expected to always have a uniform distribution of EU across
-	 * subslices with the exception that any one EU in any one subslice may
-	 * be fused off for die recovery.
-	 */
-	sseu->eu_per_subslice = intel_sseu_subslice_total(sseu) ?
-				DIV_ROUND_UP(sseu->eu_total,
-					     intel_sseu_subslice_total(sseu)) :
-				0;
-
-	/*
-	 * BDW supports slice power gating on devices with more than
-	 * one slice.
-	 */
-	sseu->has_slice_pg = hweight8(sseu->slice_mask) > 1;
-	sseu->has_subslice_pg = 0;
-	sseu->has_eu_pg = 0;
-}
-
-static void hsw_sseu_info_init(struct drm_i915_private *dev_priv)
-{
-	struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
-	u32 fuse1;
-	u8 subslice_mask = 0;
-	int s, ss;
-
-	/*
-	 * There isn't a register to tell us how many slices/subslices. We
-	 * work off the PCI-ids here.
-	 */
-	switch (INTEL_INFO(dev_priv)->gt) {
-	default:
-		MISSING_CASE(INTEL_INFO(dev_priv)->gt);
-		/* fall through */
-	case 1:
-		sseu->slice_mask = BIT(0);
-		subslice_mask = BIT(0);
-		break;
-	case 2:
-		sseu->slice_mask = BIT(0);
-		subslice_mask = BIT(0) | BIT(1);
-		break;
-	case 3:
-		sseu->slice_mask = BIT(0) | BIT(1);
-		subslice_mask = BIT(0) | BIT(1);
-		break;
-	}
-
-	fuse1 = intel_uncore_read(&dev_priv->uncore, HSW_PAVP_FUSE1);
-	switch ((fuse1 & HSW_F1_EU_DIS_MASK) >> HSW_F1_EU_DIS_SHIFT) {
-	default:
-		MISSING_CASE((fuse1 & HSW_F1_EU_DIS_MASK) >>
-			     HSW_F1_EU_DIS_SHIFT);
-		/* fall through */
-	case HSW_F1_EU_DIS_10EUS:
-		sseu->eu_per_subslice = 10;
-		break;
-	case HSW_F1_EU_DIS_8EUS:
-		sseu->eu_per_subslice = 8;
-		break;
-	case HSW_F1_EU_DIS_6EUS:
-		sseu->eu_per_subslice = 6;
-		break;
-	}
-
-	intel_sseu_set_info(sseu, hweight8(sseu->slice_mask),
-			    hweight8(subslice_mask),
-			    sseu->eu_per_subslice);
-
-	for (s = 0; s < sseu->max_slices; s++) {
-		intel_sseu_set_subslices(sseu, s, subslice_mask);
-
-		for (ss = 0; ss < sseu->max_subslices; ss++) {
-			sseu_set_eus(sseu, s, ss,
-				     (1UL << sseu->eu_per_subslice) - 1);
-		}
-	}
-
-	sseu->eu_total = compute_eu_total(sseu);
-
-	/* No powergating for you. */
-	sseu->has_slice_pg = 0;
-	sseu->has_subslice_pg = 0;
-	sseu->has_eu_pg = 0;
-}
-
 static u32 read_reference_ts_freq(struct drm_i915_private *dev_priv)
 {
 	u32 ts_override = intel_uncore_read(&dev_priv->uncore,
@@ -1042,22 +478,6 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			info->display.has_dsc = 0;
 	}
 
-	/* Initialize slice/subslice/EU info */
-	if (IS_HASWELL(dev_priv))
-		hsw_sseu_info_init(dev_priv);
-	else if (IS_CHERRYVIEW(dev_priv))
-		cherryview_sseu_info_init(dev_priv);
-	else if (IS_BROADWELL(dev_priv))
-		bdw_sseu_info_init(dev_priv);
-	else if (IS_GEN(dev_priv, 9))
-		gen9_sseu_info_init(dev_priv);
-	else if (IS_GEN(dev_priv, 10))
-		gen10_sseu_info_init(dev_priv);
-	else if (IS_GEN(dev_priv, 11))
-		gen11_sseu_info_init(dev_priv);
-	else if (INTEL_GEN(dev_priv) >= 12)
-		gen12_sseu_info_init(dev_priv);
-
 	if (IS_GEN(dev_priv, 6) && intel_vtd_active()) {
 		drm_info(&dev_priv->drm,
 			 "Disabling ppGTT for VT-d support\n");
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index b010b6728432..40057abbb662 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -242,8 +242,6 @@ void intel_device_info_print_static(const struct intel_device_info *info,
 				    struct drm_printer *p);
 void intel_device_info_print_runtime(const struct intel_runtime_info *info,
 				     struct drm_printer *p);
-void intel_device_info_print_topology(const struct sseu_dev_info *sseu,
-				      struct drm_printer *p);
 
 void intel_driver_caps_print(const struct intel_driver_caps *caps,
 			     struct drm_printer *p);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
