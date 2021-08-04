Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 131CA3E0931
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 22:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D751D6E444;
	Wed,  4 Aug 2021 20:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C84C76E444
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Aug 2021 20:13:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10066"; a="210891419"
X-IronPort-AV: E=Sophos;i="5.84,295,1620716400"; d="scan'208";a="210891419"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 13:13:47 -0700
X-IronPort-AV: E=Sophos;i="5.84,295,1620716400"; d="scan'208";a="441883312"
Received: from ssyedfar-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.201.224])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 13:13:47 -0700
Date: Wed, 4 Aug 2021 13:13:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210804201346.4mo7pqr5xwmjsa3l@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210729170008.2836648-1-matthew.d.roper@intel.com>
 <20210729170008.2836648-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210729170008.2836648-3-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 02/18] drm/i915/xehpsdv: Define steering
 tables
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

On Thu, Jul 29, 2021 at 09:59:52AM -0700, Matt Roper wrote:
>Define and initialize the MMIO ranges for which XeHP SDV requires MSLICE
>and LNCF steering.
>
>Bspec: 66534
>Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/gt/intel_gt.c          | 19 ++++++++++++++++++-
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++++--
> 2 files changed, 27 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
>index 39b224600f38..8e13bfc81634 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt.c
>+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>@@ -89,6 +89,20 @@ static const struct intel_mmio_range icl_l3bank_steering_table[] = {
> 	{},
> };
>
>+static const struct intel_mmio_range xehpsdv_mslice_steering_table[] = {
>+	{ 0x004000, 0x004AFF },
>+	{ 0x00C800, 0x00CFFF },
>+	{ 0x00DD00, 0x00DDFF },
>+	{ 0x00E900, 0x00FFFF }, /* 0xEA00 - OxEFFF is unused */
>+	{},
>+};
>+
>+static const struct intel_mmio_range xehpsdv_lncf_steering_table[] = {
>+	{ 0x00B000, 0x00B0FF },
>+	{ 0x00D800, 0x00D8FF },
>+	{},
>+};
>+
> static u16 slicemask(struct intel_gt *gt, int count)
> {
> 	u64 dss_mask = intel_sseu_get_subslices(&gt->info.sseu, 0);
>@@ -115,7 +129,10 @@ int intel_gt_init_mmio(struct intel_gt *gt)
> 			(intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
> 			 GEN12_MEML3_EN_MASK);
>
>-	if (GRAPHICS_VER(i915) >= 11 &&
>+	if (IS_XEHPSDV(i915)) {
>+		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;
>+		gt->steering_table[LNCF] = xehpsdv_lncf_steering_table;
>+	} else if (GRAPHICS_VER(i915) >= 11 &&
> 		   GRAPHICS_VER_FULL(i915) < IP_VER(12, 50)) {
> 		gt->steering_table[L3BANK] = icl_l3bank_steering_table;
> 		gt->info.l3bank_mask =
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>index f2ceabb0e2ea..8717337a6c81 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -934,7 +934,6 @@ icl_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
> 	__add_mcr_wa(i915, wal, slice, subslice);
> }
>
>-__maybe_unused
> static void
> xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
> {
>@@ -1136,10 +1135,18 @@ dg1_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
> 			    VSUNIT_CLKGATE_DIS_TGL);
> }
>
>+static void
>+xehpsdv_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>+{
>+	xehp_init_mcr(&i915->gt, wal);
>+}
>+
> static void
> gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
> {
>-	if (IS_DG1(i915))
>+	if (IS_XEHPSDV(i915))
>+		xehpsdv_gt_workarounds_init(i915, wal);
>+	else if (IS_DG1(i915))
> 		dg1_gt_workarounds_init(i915, wal);
> 	else if (IS_TIGERLAKE(i915))
> 		tgl_gt_workarounds_init(i915, wal);
>-- 
>2.25.4
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
