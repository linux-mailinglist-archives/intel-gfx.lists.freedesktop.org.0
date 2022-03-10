Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C9E4D3EFD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 02:53:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D58C10E7AB;
	Thu, 10 Mar 2022 01:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 664A710E7AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 01:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646877230; x=1678413230;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=plIkq4LQLrk0vD86uAH231IxmmVKFbfXDmB34uvgrPE=;
 b=n3D7cDX8rB7QrJ9O3SAt9Z49UUf3xSnauZbC1oH3wCbQ63O3DfoqTXSH
 zz5pAsW6om6Cjy3wl0HmddUA8XcQyjqgpgCqvcbDMEU5eG/umfiA142vR
 LLhnh6dDLQI1bjVBexcxiwcx/MJ8UgE/jQE+BYm4kfgR2R2H92uoGk25b
 Hr6+n/ajobi66hSVRtskUc3kwVfY+xXs/lFlyicx7hpGrkTR9j0X+q2G1
 qOajdgkPqD3vjIp9pQBCUH0QMwX0yEqO7s1fB2aSfpzo7+KAnUQW/NUD+
 zzBfmaBXGgCv+miNUcecbEav1oLf+vccVVtOayBPUtJxY0L6NMouJA4KW g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="252706195"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="252706195"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 17:53:50 -0800
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="642376759"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 17:53:49 -0800
Date: Wed, 9 Mar 2022 17:53:49 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220310015349.GD23794@unerlige-ril-10.165.21.154>
References: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
 <20220226095541.1010534-5-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220226095541.1010534-5-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v7 04/13] drm/i915/guc: Add DG2 registers
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

On Sat, Feb 26, 2022 at 01:55:32AM -0800, Alan Previn wrote:
>Add additional DG2 registers for GuC error state capture.
>
>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>---
> .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 80 ++++++++++++++++++-
> 1 file changed, 78 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>index 6370943ea300..c8441ca1566b 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>@@ -285,20 +285,96 @@ guc_capture_alloc_steered_lists_xe_lpd(struct intel_guc *guc,
> 	guc->capture.priv->extlists = extlists;
> }
>
>+static const struct __ext_steer_reg xehpg_extregs[] = {
>+	{"XEHPG_INSTDONE_GEOM_SVG", XEHPG_INSTDONE_GEOM_SVG}
>+};
>+
>+static bool __has_xehpg_extregs(u32 ipver)

What I meant was to make has_xehpg_extregs part of platform feature, but 
this is fine too.

>+{
>+	return (ipver >= IP_VER(12, 55));
>+}
>+
>+static void
>+guc_capture_alloc_steered_lists_xe_hpg(struct intel_guc *guc,
>+				       const struct __guc_mmio_reg_descr_group *lists,
>+				       u32 ipver)
>+{
>+	struct intel_gt *gt = guc_to_gt(guc);
>+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>+	struct sseu_dev_info *sseu;
>+	int slice, subslice, i, iter, num_steer_regs, num_tot_regs = 0;
>+	const struct __guc_mmio_reg_descr_group *list;
>+	struct __guc_mmio_reg_descr_group *extlists;
>+	struct __guc_mmio_reg_descr *extarray;
>+
>+	/* In XE_LP / HPG we only have render-class steering registers during error-capture */
>+	list = guc_capture_get_one_list(lists, GUC_CAPTURE_LIST_INDEX_PF,
>+					GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS, GUC_RENDER_CLASS);
>+	/* skip if extlists was previously allocated */
>+	if (!list || guc->capture.priv->extlists)
>+		return;
>+
>+	num_steer_regs = ARRAY_SIZE(xe_extregs);
>+	if (__has_xehpg_extregs(ipver))
>+		num_steer_regs += ARRAY_SIZE(xehpg_extregs);
>+
>+	sseu = &gt->info.sseu;
>+	for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice) {
>+		num_tot_regs += num_steer_regs;
>+	}
>+
>+	if (!num_tot_regs)
>+		return;
>+
>+	/* allocate an extra for an end marker */
>+	extlists = kcalloc(2, sizeof(struct __guc_mmio_reg_descr_group), GFP_KERNEL);
>+	if (!extlists)
>+		return;
>+
>+	if (__alloc_ext_regs(&extlists[0], list, num_tot_regs)) {
>+		kfree(extlists);
>+		return;
>+	}
>+
>+	extarray = extlists[0].extlist;
>+	for_each_instdone_gslice_dss_xehp(i915, sseu, iter, slice, subslice) {
>+		for (i = 0; i < ARRAY_SIZE(xe_extregs); ++i) {
>+			__fill_ext_reg(extarray, &xe_extregs[i], slice, subslice);
>+			++extarray;
>+		}
>+		if (__has_xehpg_extregs(ipver)) {
>+			for (i = 0; i < ARRAY_SIZE(xehpg_extregs); ++i) {
>+				__fill_ext_reg(extarray, &xehpg_extregs[i], slice, subslice);
>+				++extarray;
>+			}
>+		}
>+	}
>+
>+	drm_dbg(&i915->drm, "GuC-capture found %d-ext-regs.\n", num_tot_regs);
>+	guc->capture.priv->extlists = extlists;
>+}
>+
> static const struct __guc_mmio_reg_descr_group *
> guc_capture_get_device_reglist(struct intel_guc *guc)
> {
> 	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>
> 	if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915) ||
>-	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) {
>+	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915) ||
>+	    IS_DG2(i915) || IS_XEHPSDV(i915)) {
> 		/*
> 		 * For certain engine classes, there are slice and subslice
> 		 * level registers requiring steering. We allocate and populate
> 		 * these at init time based on hw config add it as an extension
> 		 * list at the end of the pre-populated render list.
> 		 */
>-		guc_capture_alloc_steered_lists_xe_lpd(guc, xe_lpd_lists);
>+		if (IS_DG2(i915))
>+			guc_capture_alloc_steered_lists_xe_hpg(guc, xe_lpd_lists, IP_VER(12, 55));
>+		else if (IS_XEHPSDV(i915))
>+			guc_capture_alloc_steered_lists_xe_hpg(guc, xe_lpd_lists, IP_VER(12, 50));
>+		else
>+			guc_capture_alloc_steered_lists_xe_lpd(guc, xe_lpd_lists);
>+
> 		return xe_lpd_lists;
> 	}

If you know that this applies to gen12 platforms, then you could do away with 
the ORed platform checks. I think it is cumbersome to maintain an OR of 
platforms that need this. The other pattern I see in the driver is like this:

i.e, If you return xe_lpd_lists back from 
guc_capture_alloc_steered_lists_xe_hpg, then this functions simplifies to 

struct __guc_mmio_reg_descr_group *ret;

if (IS_DG2(i915))
	ret = guc_capture_alloc_steered_lists_xe_hpg(guc, xe_lpd_lists, IP_VER(12, 55));
else if (IS_XEHPSDV(i915))
	ret = guc_capture_alloc_steered_lists_xe_hpg(guc, xe_lpd_lists, IP_VER(12, 50));
else if (GRAPHICS_VER(i915) > 11) /* OR maybe == 12 */
	ret = guc_capture_alloc_steered_lists_xe_lpd(guc, xe_lpd_lists);
else
	ret = NULL;

if !(ret)
	drm_...

return ret;

Irrespective of that:

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh


>
>-- 
>2.25.1
>
