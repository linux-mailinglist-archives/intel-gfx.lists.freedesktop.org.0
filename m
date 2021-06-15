Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A253A7B90
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 12:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5ABE88007;
	Tue, 15 Jun 2021 10:14:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9811688007
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 10:14:17 +0000 (UTC)
IronPort-SDR: VWvYuOenAGAYskvPAignEt9N8k39PsosxJd9FXg5ti7UZMeFXeCrxJ5bYXdwlkd4AUv7nbfb2d
 vqi5hU13rwPQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="186335727"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="186335727"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 03:14:17 -0700
IronPort-SDR: nO36+rN6jjn8Kg0CaODFCPxvQ7cd8Ico1vjTDcBvk+RhTh5zfP1e0X8Nf4/P8zaqqEqS2QaD18
 9OEwcEZBzLTg==
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="484418628"
Received: from jmelinn-mobl.ger.corp.intel.com (HELO [10.213.219.14])
 ([10.213.219.14])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 03:14:10 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210615033433.1574397-1-matthew.d.roper@intel.com>
 <20210615033433.1574397-4-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bf053f43-9321-5e44-ce25-0dd94c18f703@linux.intel.com>
Date: Tue, 15 Jun 2021 11:14:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210615033433.1574397-4-matthew.d.roper@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Add support for explicit
 L3BANK steering
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/06/2021 04:34, Matt Roper wrote:
> Because Render Power Gating restricts us to just a single subslice as a
> valid steering target for reads of multicast registers in a SUBSLICE
> range, the default steering we setup at init may not lead to a suitable
> target for L3BANK multicast register.  In cases where it does not, use
> explicit runtime steering whenever an L3BANK multicast register is read.
> 
> While we're at it, let's simplify the function a little bit and drop its
> support for gen10/CNL since no such platforms ever materialized for real
> use.  Multicast register steering is already an area that causes enough
> confusion; no need to complicate it with what's effectively dead code.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt.c          | 18 +++++
>   drivers/gpu/drm/i915/gt/intel_gt_types.h    |  4 +
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 84 ++++++---------------
>   3 files changed, 46 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index f2bea1c20d56..2c9cc34b0cbd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -83,6 +83,11 @@ void intel_gt_init_hw_early(struct intel_gt *gt, struct i915_ggtt *ggtt)
>   	gt->ggtt = ggtt;
>   }
>   
> +static const struct intel_mmio_range icl_l3bank_steering_table[] = {
> +       { 0x00B100, 0x00B3FF },
> +       { 0xFFFFFF, 0xFFFFFF }, /* terminating entry */
> +};
> +
>   int intel_gt_init_mmio(struct intel_gt *gt)
>   {
>   	intel_gt_init_clock_frequency(gt);
> @@ -90,6 +95,13 @@ int intel_gt_init_mmio(struct intel_gt *gt)
>   	intel_uc_init_mmio(&gt->uc);
>   	intel_sseu_info_init(gt);
>   
> +	if (GRAPHICS_VER(gt->i915) >= 11) {
> +		gt->steering_table[L3BANK] = icl_l3bank_steering_table;
> +		gt->info.l3bank_mask =
> +			intel_uncore_read(&gt->i915->uncore, GEN10_MIRROR_FUSE3) &

gt->uncore, unless there's a special reason not to.

Regards,

Tvrtko

> +			GEN10_L3BANK_MASK;
> +	}
> +
>   	return intel_engines_init_mmio(gt);
>   }
>   
> @@ -744,6 +756,12 @@ static void intel_gt_get_valid_steering(struct intel_gt *gt,
>   					u8 *sliceid, u8 *subsliceid)
>   {
>   	switch (type) {
> +	case L3BANK:
> +		GEM_DEBUG_WARN_ON(!gt->info.l3bank_mask); /* should be impossible! */
> +
> +		*sliceid = __ffs(gt->info.l3bank_mask);
> +		*subsliceid = 0;        /* unused */
> +		break;
>   	default:
>   		MISSING_CASE(type);
>   		*sliceid = 0;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 47957837c8c0..5ecad25de6ed 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -48,6 +48,8 @@ struct intel_mmio_range {
>    * need to explicitly re-steer reads of registers of the other type.
>    */
>   enum intel_steering_type {
> +	L3BANK,
> +
>   	NUM_STEERING_TYPES
>   };
>   
> @@ -174,6 +176,8 @@ struct intel_gt {
>   		/* Media engine access to SFC per instance */
>   		u8 vdbox_sfc_access;
>   
> +		u32 l3bank_mask;
> +
>   		/* Slice/subslice/EU info */
>   		struct sseu_dev_info sseu;
>   	} info;
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 689045d3752b..a0be3c09a7f9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -944,71 +944,37 @@ cfl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>   }
>   
>   static void
> -wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
> +icl_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
>   {
>   	const struct sseu_dev_info *sseu = &i915->gt.info.sseu;
>   	unsigned int slice, subslice;
> -	u32 l3_en, mcr, mcr_mask;
> +	u32 mcr, mcr_mask;
>   
> -	GEM_BUG_ON(GRAPHICS_VER(i915) < 10);
> +	GEM_BUG_ON(GRAPHICS_VER(i915) < 11);
> +	GEM_BUG_ON(hweight8(sseu->slice_mask) > 1);
> +	slice = 0;
>   
>   	/*
> -	 * WaProgramMgsrForL3BankSpecificMmioReads: cnl,icl
> -	 * L3Banks could be fused off in single slice scenario. If that is
> -	 * the case, we might need to program MCR select to a valid L3Bank
> -	 * by default, to make sure we correctly read certain registers
> -	 * later on (in the range 0xB100 - 0xB3FF).
> -	 *
> -	 * WaProgramMgsrForCorrectSliceSpecificMmioReads:cnl,icl
> -	 * Before any MMIO read into slice/subslice specific registers, MCR
> -	 * packet control register needs to be programmed to point to any
> -	 * enabled s/ss pair. Otherwise, incorrect values will be returned.
> -	 * This means each subsequent MMIO read will be forwarded to an
> -	 * specific s/ss combination, but this is OK since these registers
> -	 * are consistent across s/ss in almost all cases. In the rare
> -	 * occasions, such as INSTDONE, where this value is dependent
> -	 * on s/ss combo, the read should be done with read_subslice_reg.
> -	 *
> -	 * Since GEN8_MCR_SELECTOR contains dual-purpose bits which select both
> -	 * to which subslice, or to which L3 bank, the respective mmio reads
> -	 * will go, we have to find a common index which works for both
> -	 * accesses.
> -	 *
> -	 * Case where we cannot find a common index fortunately should not
> -	 * happen in production hardware, so we only emit a warning instead of
> -	 * implementing something more complex that requires checking the range
> -	 * of every MMIO read.
> +	 * Although a platform may have subslices, we need to always steer
> +	 * reads to the lowest instance that isn't fused off.  When Render
> +	 * Power Gating is enabled, grabbing forcewake will only power up a
> +	 * single subslice (the "minconfig") if there isn't a real workload
> +	 * that needs to be run; this means that if we steer register reads to
> +	 * one of the higher subslices, we run the risk of reading back 0's or
> +	 * random garbage.
>   	 */
> +	subslice = __ffs(intel_sseu_get_subslices(sseu, slice));
>   
> -	if (GRAPHICS_VER(i915) >= 10 && is_power_of_2(sseu->slice_mask)) {
> -		u32 l3_fuse =
> -			intel_uncore_read(&i915->uncore, GEN10_MIRROR_FUSE3) &
> -			GEN10_L3BANK_MASK;
> -
> -		drm_dbg(&i915->drm, "L3 fuse = %x\n", l3_fuse);
> -		l3_en = ~(l3_fuse << GEN10_L3BANK_PAIR_COUNT | l3_fuse);
> -	} else {
> -		l3_en = ~0;
> -	}
> +	/*
> +	 * If the subslice we picked above also steers us to a valid L3 bank,
> +	 * then we can just rely on the default steering and won't need to
> +	 * worry about explicitly re-steering L3BANK reads later.
> +	 */
> +	if (i915->gt.info.l3bank_mask & BIT(subslice))
> +		i915->gt.steering_table[L3BANK] = NULL;
>   
> -	slice = fls(sseu->slice_mask) - 1;
> -	subslice = fls(l3_en & intel_sseu_get_subslices(sseu, slice));
> -	if (!subslice) {
> -		drm_warn(&i915->drm,
> -			 "No common index found between subslice mask %x and L3 bank mask %x!\n",
> -			 intel_sseu_get_subslices(sseu, slice), l3_en);
> -		subslice = fls(l3_en);
> -		drm_WARN_ON(&i915->drm, !subslice);
> -	}
> -	subslice--;
> -
> -	if (GRAPHICS_VER(i915) >= 11) {
> -		mcr = GEN11_MCR_SLICE(slice) | GEN11_MCR_SUBSLICE(subslice);
> -		mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
> -	} else {
> -		mcr = GEN8_MCR_SLICE(slice) | GEN8_MCR_SUBSLICE(subslice);
> -		mcr_mask = GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
> -	}
> +	mcr = GEN11_MCR_SLICE(slice) | GEN11_MCR_SUBSLICE(subslice);
> +	mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
>   
>   	drm_dbg(&i915->drm, "MCR slice/subslice = %x\n", mcr);
>   
> @@ -1018,8 +984,6 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
>   static void
>   cnl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>   {
> -	wa_init_mcr(i915, wal);
> -
>   	/* WaInPlaceDecompressionHang:cnl */
>   	wa_write_or(wal,
>   		    GEN9_GAMT_ECO_REG_RW_IA,
> @@ -1029,7 +993,7 @@ cnl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>   static void
>   icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>   {
> -	wa_init_mcr(i915, wal);
> +	icl_wa_init_mcr(i915, wal);
>   
>   	/* WaInPlaceDecompressionHang:icl */
>   	wa_write_or(wal,
> @@ -1111,7 +1075,7 @@ static void
>   gen12_gt_workarounds_init(struct drm_i915_private *i915,
>   			  struct i915_wa_list *wal)
>   {
> -	wa_init_mcr(i915, wal);
> +	icl_wa_init_mcr(i915, wal);
>   
>   	/* Wa_14011060649:tgl,rkl,dg1,adls */
>   	wa_14011060649(i915, wal);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
