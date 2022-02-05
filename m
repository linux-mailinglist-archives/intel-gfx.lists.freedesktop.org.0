Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 442214AA54E
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Feb 2022 02:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6362410E198;
	Sat,  5 Feb 2022 01:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D9B10E198
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Feb 2022 01:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644024498; x=1675560498;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Xss/Fm0T2yudQM8DxhPJKlfEyClwYzvS33lsWnOmhQc=;
 b=d2SOtTS11qminr2+HCTkeiDCw6uih0jWQzDybUiIflEktCx4Obw2MUFD
 xPIpDJAgpNtCiDMv2mt9VjTYBFWZP3x1586zKO8RoE2/y6ow9N8gjUl1/
 1F8smDcgrXdVlsWQ0354CamXS8ujmBMtM9BQSHdOA1aTc+x7ymogKLWIu
 uGt8Hr0FebCplca/RavY7TiXTwkF3DQxPf8EjRAfPHYTHZH0n443oPSss
 evQjoE3QkQD8gT8RtdAPECSWLQCf21GDmd4uqxvwfoNxSeUnLgJIByLB3
 ggY4vvw1YsdLpLk5Xn6Dtk3RduQS/qDfGMydxpWjuHKvRdA5Vl3Oh5aiB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="232039533"
X-IronPort-AV: E=Sophos;i="5.88,344,1635231600"; d="scan'208";a="232039533"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 17:28:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,344,1635231600"; d="scan'208";a="699859038"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 17:28:17 -0800
Date: Fri, 4 Feb 2022 17:28:17 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220205012817.GB10302@unerlige-ril-10.165.21.154>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-4-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220126104822.3653079-4-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v5 03/10] drm/i915/guc: Add DG2 registers
 for GuC error state capture.
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 26, 2022 at 02:48:15AM -0800, Alan Previn wrote:
>Add additional DG2 registers for GuC error state capture.
>
>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>---
> .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 64 ++++++++++++++-----
> 1 file changed, 49 insertions(+), 15 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>index b6882074fc8d..19719daffed4 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>@@ -179,19 +179,23 @@ static struct __ext_steer_reg xelpd_extregs[] = {
> 	{"GEN7_ROW_INSTDONE", GEN7_ROW_INSTDONE}
> };
>
>+static struct __ext_steer_reg xehpg_extregs[] = {
>+	{"XEHPG_INSTDONE_GEOM_SVG", XEHPG_INSTDONE_GEOM_SVG}
>+};
>+
> static void
>-guc_capture_alloc_steered_list_xelpd(struct intel_guc *guc,
>-				     struct __guc_mmio_reg_descr_group *lists)
>+guc_capture_alloc_steered_list_xe_lpd_hpg(struct intel_guc *guc,
>+					  struct __guc_mmio_reg_descr_group *lists,
>+					  u32 ipver)

IMO having 2 separate functions would be easier to read and maintain. No 
ipver logic inside here.

> {
> 	struct intel_gt *gt = guc_to_gt(guc);
> 	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
> 	struct sseu_dev_info *sseu;
>-	int slice, subslice, i, num_tot_regs = 0;
>+	int slice, subslice, i, iter, num_steer_regs, num_tot_regs = 0;
> 	struct __guc_mmio_reg_descr_group *list;
> 	struct __guc_mmio_reg_descr *extarray;
>-	int num_steer_regs = ARRAY_SIZE(xelpd_extregs);
>
>-	/* In XE_LP we only care about render-class steering registers during error-capture */
>+	/* In XE_LP / HPG we only have render-class steering registers during error-capture */
> 	list = guc_capture_get_one_list(lists, GUC_CAPTURE_LIST_INDEX_PF,
> 					GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS, GUC_RENDER_CLASS);
> 	if (!list)
>@@ -200,10 +204,21 @@ guc_capture_alloc_steered_list_xelpd(struct intel_guc *guc,
> 	if (list->ext)
> 		return; /* already populated */

nit:
if (!list || list->ext)
	return;
>
>+	num_steer_regs = ARRAY_SIZE(xelpd_extregs);
>+	if (ipver >= IP_VER(12, 55))

What does this actually mean? 12 55 has both lpd and hpg regs?

You could (if possible) use has_lpd_regs/has_hpg_regs in i915_pci.c to 
simplify the platform specific logic.

>+		num_steer_regs += ARRAY_SIZE(xehpg_extregs);
>+
> 	sseu = &gt->info.sseu;
>-	for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
>-		num_tot_regs += num_steer_regs;
>+	if (ipver >= IP_VER(12, 50)) {
>+		for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice) {
>+			num_tot_regs += num_steer_regs;
>+		}
>+	} else {
>+		for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
>+			num_tot_regs += num_steer_regs;
>+		}
> 	}
>+
> 	if (!num_tot_regs)
> 		return;
>
>@@ -212,15 +227,31 @@ guc_capture_alloc_steered_list_xelpd(struct intel_guc *guc,
> 		return;
>
> 	extarray = list->ext;

nit: I would mostly use extarray everywhere and assign it to list->ext 
at the end of the function.

>-	for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
>-		for (i = 0; i < num_steer_regs; i++) {
>-			extarray->reg = xelpd_extregs[i].reg;
>-			extarray->flags = FIELD_PREP(GUC_REGSET_STEERING_GROUP, slice);
>-			extarray->flags |= FIELD_PREP(GUC_REGSET_STEERING_INSTANCE, subslice);

could use helpers

extarray->flags |= __steering_flags(slice, subslice);


>-			extarray->regname = xelpd_extregs[i].name;
>-			++extarray;
>+
>+#define POPULATE_NEXT_EXTREG(ext, list, idx, slicenum, subslicenum) \
>+	{ \
>+		(ext)->reg = list[idx].reg; \
>+		(ext)->flags = FIELD_PREP(GUC_REGSET_STEERING_GROUP, slicenum); \
>+		(ext)->flags |= FIELD_PREP(GUC_REGSET_STEERING_INSTANCE, subslicenum); \
>+		(ext)->regname = xelpd_extregs[i].name; \
>+		++(ext); \
>+	}

I prefer having an inline for the above assignments and move the ++(ext_ 
into the for loop itself.

>+	if (ipver >= IP_VER(12, 50)) {
>+		for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice) {
>+			for (i = 0; i < ARRAY_SIZE(xelpd_extregs); i++)
>+				POPULATE_NEXT_EXTREG(extarray, xelpd_extregs, i, slice, subslice)
>+			for (i = 0; i < ARRAY_SIZE(xehpg_extregs) && ipver >= IP_VER(12, 55);
>+			     i++)
>+				POPULATE_NEXT_EXTREG(extarray, xehpg_extregs, i, slice, subslice)
>+		}
>+	} else {
>+		for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
>+			for (i = 0; i < num_steer_regs; i++)
>+				POPULATE_NEXT_EXTREG(extarray, xelpd_extregs, i, slice, subslice)
> 		}
> 	}
>+#undef POPULATE_NEXT_EXTREG
>+
> 	list->num_ext = num_tot_regs;
> }
>
>@@ -237,7 +268,10 @@ guc_capture_get_device_reglist(struct intel_guc *guc)
> 		 * these at init time based on hw config add it as an extension
> 		 * list at the end of the pre-populated render list.
> 		 */
>-		guc_capture_alloc_steered_list_xelpd(guc, xe_lpd_lists);
>+		guc_capture_alloc_steered_list_xe_lpd_hpg(guc, xe_lpd_lists, IP_VER(12, 0));

Ideally, I would just think about having seperate 

guc_capture_alloc_steered_list_xe_lpd and
guc_capture_alloc_steered_list_xe_hpg

Maybe there could just be one check for say IP_VER(12, 50) at the top 
level and you can call the respective function.


>+		return xe_lpd_lists;
>+	} else if (IS_DG2(i915)) {
>+		guc_capture_alloc_steered_list_xe_lpd_hpg(guc, xe_lpd_lists, IP_VER(12, 55));
> 		return xe_lpd_lists;

xe_lpd_lists is returned in both if/else, so can be moved out of the 
conditions. Also now you could just rename it to xe_lists.

Regards,
Umesh

> 	}
>
>-- 
>2.25.1
>
