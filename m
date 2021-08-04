Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1169C3E0937
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 22:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A06646E44E;
	Wed,  4 Aug 2021 20:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426276E44E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Aug 2021 20:16:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10066"; a="275056461"
X-IronPort-AV: E=Sophos;i="5.84,295,1620716400"; d="scan'208";a="275056461"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 13:16:33 -0700
X-IronPort-AV: E=Sophos;i="5.84,295,1620716400"; d="scan'208";a="441883839"
Received: from ssyedfar-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.201.224])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 13:16:33 -0700
Date: Wed, 4 Aug 2021 13:16:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210804201632.ldvuac6wg7ftvizl@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210729170008.2836648-1-matthew.d.roper@intel.com>
 <20210729170008.2836648-5-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210729170008.2836648-5-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 04/18] drm/i915/dg2: Update LNCF steering
 ranges
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

On Thu, Jul 29, 2021 at 09:59:54AM -0700, Matt Roper wrote:
>DG2's replicated register ranges are almost the same at XeHP SDV with
>the exception of one LNCF sub-range that switches to gslice steering.
>We can re-use the XeHP SDV mslice steering table and just provide a
>DG2-specific LNCF steering table.
>
>Bspec: 66534
>Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_gt.c | 11 ++++++++++-
> 1 file changed, 10 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
>index 8e13bfc81634..1971e34da254 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt.c
>+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>@@ -103,6 +103,12 @@ static const struct intel_mmio_range xehpsdv_lncf_steering_table[] = {
> 	{},
> };
>
>+static const struct intel_mmio_range dg2_lncf_steering_table[] = {
>+	{ 0x00B000, 0x00B0FF },
>+	{ 0x00D880, 0x00D8FF },
>+	{},
>+};
>+
> static u16 slicemask(struct intel_gt *gt, int count)
> {
> 	u64 dss_mask = intel_sseu_get_subslices(&gt->info.sseu, 0);
>@@ -129,7 +135,10 @@ int intel_gt_init_mmio(struct intel_gt *gt)
> 			(intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
> 			 GEN12_MEML3_EN_MASK);
>
>-	if (IS_XEHPSDV(i915)) {
>+	if (IS_DG2(i915)) {
>+		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;


a title "Update steering tables" would be more appropriate as this is
also setting the mslice table, even if just re-using from xehpsdv.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi

>+		gt->steering_table[LNCF] = dg2_lncf_steering_table;
>+	} else if (IS_XEHPSDV(i915)) {
> 		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;
> 		gt->steering_table[LNCF] = xehpsdv_lncf_steering_table;
> 	} else if (GRAPHICS_VER(i915) >= 11 &&
>-- 
>2.25.4
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
