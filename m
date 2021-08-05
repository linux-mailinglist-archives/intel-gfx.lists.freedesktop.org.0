Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D93F93E1A53
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 19:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D45E66EB16;
	Thu,  5 Aug 2021 17:26:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C72EA6EB16
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 17:26:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="213940385"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="213940385"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 10:26:20 -0700
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="437865480"
Received: from kdjohns3-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.55.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 10:26:19 -0700
Date: Thu, 5 Aug 2021 10:26:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Stuart Summers <stuart.summers@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Steve Hampson <steven.t.hampson@intel.com>
Message-ID: <20210805172619.a6a3jjgr6srmpdla@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
 <20210805163647.801064-5-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210805163647.801064-5-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 4/9] drm/i915/xehpsdv: Add compute DSS
 type
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

On Thu, Aug 05, 2021 at 09:36:42AM -0700, Matt Roper wrote:
>From: Stuart Summers <stuart.summers@intel.com>
>
>Starting in XeHP, the concept of slice has been removed in favor of
>DSS (Dual-Subslice) masks for various workload types. These workloads have
>been divided into those enabled for geometry and those enabled for compute.
>
>i915 currently maintains a single set of S/SS/EU masks for the device.
>The goal of this patch set is to minimize the amount of impact to prior
>generations while still giving the user maximum flexibility.
>
>v2:
> - Generalize a comment about uapi access to geometry/compute masks; the
>   proposed uapi has changed since the comment was first written, and
>   will show up in a future series once the userspace code is published.
>   (Lucas)
>
>Bspec: 33117, 33118, 20376
>Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Stuart Summers <stuart.summers@intel.com>
>Signed-off-by: Steve Hampson <steven.t.hampson@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_sseu.c | 66 +++++++++++++++++++++-------
> drivers/gpu/drm/i915/gt/intel_sseu.h |  5 ++-
> drivers/gpu/drm/i915/i915_reg.h      |  3 +-
> include/uapi/drm/i915_drm.h          |  3 --
> 4 files changed, 55 insertions(+), 22 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
>index bbd272943c3f..9cf157a2454f 100644
>--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
>+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
>@@ -46,11 +46,11 @@ u32 intel_sseu_get_subslices(const struct sseu_dev_info *sseu, u8 slice)
> }
>
> void intel_sseu_set_subslices(struct sseu_dev_info *sseu, int slice,
>-			      u32 ss_mask)
>+			      u8 *subslice_mask, u32 ss_mask)
> {
> 	int offset = slice * sseu->ss_stride;
>
>-	memcpy(&sseu->subslice_mask[offset], &ss_mask, sseu->ss_stride);
>+	memcpy(&subslice_mask[offset], &ss_mask, sseu->ss_stride);
> }
>
> unsigned int
>@@ -100,14 +100,24 @@ static u16 compute_eu_total(const struct sseu_dev_info *sseu)
> 	return total;
> }
>
>-static void gen11_compute_sseu_info(struct sseu_dev_info *sseu,
>-				    u8 s_en, u32 ss_en, u16 eu_en)
>+static u32 get_ss_stride_mask(struct sseu_dev_info *sseu, u8 s, u32 ss_en)
>+{
>+	u32 ss_mask;
>+
>+	ss_mask = ss_en >> (s * sseu->max_subslices);
>+	ss_mask &= GENMASK(sseu->max_subslices - 1, 0);
>+
>+	return ss_mask;
>+}
>+
>+static void gen11_compute_sseu_info(struct sseu_dev_info *sseu, u8 s_en,
>+				    u32 g_ss_en, u32 c_ss_en, u16 eu_en)
> {
> 	int s, ss;
>
>-	/* ss_en represents entire subslice mask across all slices */
>+	/* g_ss_en/c_ss_en represent entire subslice mask across all slices */
> 	GEM_BUG_ON(sseu->max_slices * sseu->max_subslices >
>-		   sizeof(ss_en) * BITS_PER_BYTE);
>+		   sizeof(g_ss_en) * BITS_PER_BYTE);
>
> 	for (s = 0; s < sseu->max_slices; s++) {
> 		if ((s_en & BIT(s)) == 0)
>@@ -115,7 +125,22 @@ static void gen11_compute_sseu_info(struct sseu_dev_info *sseu,
>
> 		sseu->slice_mask |= BIT(s);
>
>-		intel_sseu_set_subslices(sseu, s, ss_en);
>+		/*
>+		 * XeHP introduces the concept of compute vs geometry DSS. To
>+		 * reduce variation between GENs around subslice usage, store a
>+		 * mask for both the geometry and compute enabled masks since
>+		 * userspace will need to be able to query these masks
>+		 * independently.  Also compute a total enabled subslice count
>+		 * for the purposes of selecting subslices to use in a
>+		 * particular GEM context.
>+		 */
>+		intel_sseu_set_subslices(sseu, s, sseu->compute_subslice_mask,
>+					 get_ss_stride_mask(sseu, s, c_ss_en));
>+		intel_sseu_set_subslices(sseu, s, sseu->geometry_subslice_mask,
>+					 get_ss_stride_mask(sseu, s, g_ss_en));
>+		intel_sseu_set_subslices(sseu, s, sseu->subslice_mask,
>+					 get_ss_stride_mask(sseu, s,
>+							    g_ss_en | c_ss_en));
>
> 		for (ss = 0; ss < sseu->max_subslices; ss++)
> 			if (intel_sseu_has_subslice(sseu, s, ss))
>@@ -129,7 +154,7 @@ static void gen12_sseu_info_init(struct intel_gt *gt)
> {
> 	struct sseu_dev_info *sseu = &gt->info.sseu;
> 	struct intel_uncore *uncore = gt->uncore;
>-	u32 dss_en;
>+	u32 g_dss_en, c_dss_en = 0;
> 	u16 eu_en = 0;
> 	u8 eu_en_fuse;
> 	u8 s_en;
>@@ -145,10 +170,12 @@ static void gen12_sseu_info_init(struct intel_gt *gt)
> 	 * across the entire device. Then calculate out the DSS for each
> 	 * workload type within that software slice.
> 	 */
>-	if (IS_DG2(gt->i915) || IS_XEHPSDV(gt->i915))
>+	if (IS_DG2(gt->i915) || IS_XEHPSDV(gt->i915)) {
> 		intel_sseu_set_info(sseu, 1, 32, 16);
>-	else
>+		sseu->has_compute_dss = 1;
>+	} else {
> 		intel_sseu_set_info(sseu, 1, 6, 16);
>+	}

sseu->has_compute_dss doesn't make much sense. It will only be used
locally.

Even after the UAPI change to add a query, it still doesn't make sense
as the query could just be checking the compute mask != 0 to decide if
it has compute dss or not.

So, I'd ditch this sseu->has_compute_dss and replace it with a local
variable.

>
> 	/*
> 	 * As mentioned above, Xe_HP does not have the concept of a slice.
>@@ -160,7 +187,9 @@ static void gen12_sseu_info_init(struct intel_gt *gt)
> 		s_en = intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE) &
> 		       GEN11_GT_S_ENA_MASK;
>
>-	dss_en = intel_uncore_read(uncore, GEN12_GT_DSS_ENABLE);
>+	g_dss_en = intel_uncore_read(uncore, GEN12_GT_GEOMETRY_DSS_ENABLE);
>+	if (sseu->has_compute_dss)
>+		c_dss_en = intel_uncore_read(uncore, GEN12_GT_COMPUTE_DSS_ENABLE);
>
> 	/* one bit per pair of EUs */
> 	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50))
>@@ -173,7 +202,7 @@ static void gen12_sseu_info_init(struct intel_gt *gt)
> 		if (eu_en_fuse & BIT(eu))
> 			eu_en |= BIT(eu * 2) | BIT(eu * 2 + 1);
>
>-	gen11_compute_sseu_info(sseu, s_en, dss_en, eu_en);
>+	gen11_compute_sseu_info(sseu, s_en, g_dss_en, c_dss_en, eu_en);
>
> 	/* TGL only supports slice-level power gating */
> 	sseu->has_slice_pg = 1;
>@@ -199,7 +228,7 @@ static void gen11_sseu_info_init(struct intel_gt *gt)
> 	eu_en = ~(intel_uncore_read(uncore, GEN11_EU_DISABLE) &
> 		  GEN11_EU_DIS_MASK);
>
>-	gen11_compute_sseu_info(sseu, s_en, ss_en, eu_en);
>+	gen11_compute_sseu_info(sseu, s_en, ss_en, 0, eu_en);
>
> 	/* ICL has no power gating restrictions. */
> 	sseu->has_slice_pg = 1;
>@@ -240,7 +269,7 @@ static void cherryview_sseu_info_init(struct intel_gt *gt)
> 		sseu_set_eus(sseu, 0, 1, ~disabled_mask);
> 	}
>
>-	intel_sseu_set_subslices(sseu, 0, subslice_mask);
>+	intel_sseu_set_subslices(sseu, 0, sseu->subslice_mask, subslice_mask);
>
> 	sseu->eu_total = compute_eu_total(sseu);
>
>@@ -296,7 +325,8 @@ static void gen9_sseu_info_init(struct intel_gt *gt)
> 			/* skip disabled slice */
> 			continue;
>
>-		intel_sseu_set_subslices(sseu, s, subslice_mask);
>+		intel_sseu_set_subslices(sseu, s, sseu->subslice_mask,
>+					 subslice_mask);
>
> 		eu_disable = intel_uncore_read(uncore, GEN9_EU_DISABLE(s));
> 		for (ss = 0; ss < sseu->max_subslices; ss++) {
>@@ -408,7 +438,8 @@ static void bdw_sseu_info_init(struct intel_gt *gt)
> 			/* skip disabled slice */
> 			continue;
>
>-		intel_sseu_set_subslices(sseu, s, subslice_mask);
>+		intel_sseu_set_subslices(sseu, s, sseu->subslice_mask,
>+					 subslice_mask);
>
> 		for (ss = 0; ss < sseu->max_subslices; ss++) {
> 			u8 eu_disabled_mask;
>@@ -506,7 +537,8 @@ static void hsw_sseu_info_init(struct intel_gt *gt)
> 			    sseu->eu_per_subslice);
>
> 	for (s = 0; s < sseu->max_slices; s++) {
>-		intel_sseu_set_subslices(sseu, s, subslice_mask);
>+		intel_sseu_set_subslices(sseu, s, sseu->subslice_mask,
>+					 subslice_mask);
>
> 		for (ss = 0; ss < sseu->max_subslices; ss++) {
> 			sseu_set_eus(sseu, s, ss,
>diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
>index 0270acdcc157..61944829d069 100644
>--- a/drivers/gpu/drm/i915/gt/intel_sseu.h
>+++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
>@@ -32,6 +32,8 @@ struct drm_printer;
> struct sseu_dev_info {
> 	u8 slice_mask;
> 	u8 subslice_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICE_STRIDE];
>+	u8 geometry_subslice_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICE_STRIDE];
>+	u8 compute_subslice_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICE_STRIDE];
> 	u8 eu_mask[GEN_MAX_SLICES * GEN_MAX_SUBSLICES * GEN_MAX_EU_STRIDE];
> 	u16 eu_total;
> 	u8 eu_per_subslice;
>@@ -41,6 +43,7 @@ struct sseu_dev_info {
> 	u8 has_slice_pg:1;
> 	u8 has_subslice_pg:1;
> 	u8 has_eu_pg:1;
>+	u8 has_compute_dss:1;

as mentioned above, this should be gone

>
> 	/* Topology fields */
> 	u8 max_slices;
>@@ -104,7 +107,7 @@ intel_sseu_subslices_per_slice(const struct sseu_dev_info *sseu, u8 slice);
> u32  intel_sseu_get_subslices(const struct sseu_dev_info *sseu, u8 slice);
>
> void intel_sseu_set_subslices(struct sseu_dev_info *sseu, int slice,
>-			      u32 ss_mask);
>+			      u8 *subslice_mask, u32 ss_mask);
>
> void intel_sseu_info_init(struct intel_gt *gt);
>
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>index 8bfd646fc403..f8d3cd11eced 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -3151,7 +3151,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>
> #define GEN11_GT_SUBSLICE_DISABLE _MMIO(0x913C)
>
>-#define GEN12_GT_DSS_ENABLE _MMIO(0x913C)
>+#define GEN12_GT_GEOMETRY_DSS_ENABLE _MMIO(0x913C)
>+#define GEN12_GT_COMPUTE_DSS_ENABLE _MMIO(0x9144)
>
> #define XEHP_EU_ENABLE			_MMIO(0x9134)
> #define XEHP_EU_ENA_MASK		0xFF
>diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>index bde5860b3686..fb36e897cc86 100644
>--- a/include/uapi/drm/i915_drm.h
>+++ b/include/uapi/drm/i915_drm.h
>@@ -2609,9 +2609,6 @@ struct drm_i915_query {
>  *                 Z / 8] >> (Z % 8)) & 1
>  */
> struct drm_i915_query_topology_info {
>-	/*
>-	 * Unused for now. Must be cleared to zero.
>-	 */

without uapi changes we shouldn't change the uapi headers.

thanks
Lucas De Marchi

> 	__u16 flags;
>
> 	__u16 max_slices;
>-- 
>2.25.4
>
