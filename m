Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF334419A9
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 11:16:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF638984D;
	Mon,  1 Nov 2021 10:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EAA48984D
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 10:16:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="254593841"
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="254593841"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 03:15:23 -0700
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="499979945"
Received: from lellis-mobl.ger.corp.intel.com (HELO [10.213.243.87])
 ([10.213.243.87])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 03:15:20 -0700
To: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20211025042623.3876-1-cooper.chiou@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <42d4ab18-97b7-bb80-cef9-0d779007b9e2@linux.intel.com>
Date: Mon, 1 Nov 2021 10:15:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211025042623.3876-1-cooper.chiou@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v8] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: William Tseng <william.tseng@intel.com>,
 Pawel Wilma <pawel.wilma@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/10/2021 05:26, Cooper Chiou wrote:
> This implements WaProgramMgsrForCorrectSliceSpecificMmioReads which
> was omitted by mistake from Gen9 documentation, while it is actually
> applicable to fused off parts.
> 
> Workaround consists of making sure MCR packet control register is
> programmed to point to enabled slice/subslice pair before doing any
> MMIO reads from the affected registers.
> 
> Failure do to this can result in complete system hangs when running
> certain workloads. Two known cases which can cause system hangs are:
> 
> 1. "test_basic progvar_prog_scope_uninit" test which is part of
>      Khronos OpenCL conformance suite
>      (https://github.com/KhronosGroup/OpenCL-CTS) with the Intel
>      OpenCL driver (https://github.com/intel/compute-runtime).
> 
> 2. VP8 media hardware encoding using the full-feature build of the
>      Intel media-driver (https://github.com/intel/media-driver) and
>      ffmpeg.
> 
> For the former case patch was verified to fix the hard system hang
> when executing the OCL test on Intel Pentium CPU 6405U which contains
> fused off GT1 graphics.
> 
> Reference: HSD#1508045018,1405586840, BSID#0575
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Cc: Shawn C Lee <shawn.c.lee@intel.com>
> Cc: Pawel Wilma <pawel.wilma@intel.com>
> Signed-off-by: Cooper Chiou <cooper.chiou@intel.com>

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

P.S. You could have preserved my r-b from an earlier version since it is 
the same code, just different commit message.

> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 41 +++++++++++++++++++++
>   1 file changed, 41 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e1f362530889..8ae24da601b0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -877,11 +877,52 @@ hsw_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   	wa_write_clr(wal, GEN7_FF_THREAD_MODE, GEN7_FF_VS_REF_CNT_FFME);
>   }
>   
> +static void
> +gen9_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
> +{
> +	const struct sseu_dev_info *sseu = &i915->gt.info.sseu;
> +	unsigned int slice, subslice;
> +	u32 mcr, mcr_mask;
> +
> +	GEM_BUG_ON(GRAPHICS_VER(i915) != 9);
> +
> +	/*
> +	 * WaProgramMgsrForCorrectSliceSpecificMmioReads:gen9,glk,kbl,cml
> +	 * Before any MMIO read into slice/subslice specific registers, MCR
> +	 * packet control register needs to be programmed to point to any
> +	 * enabled s/ss pair. Otherwise, incorrect values will be returned.
> +	 * This means each subsequent MMIO read will be forwarded to an
> +	 * specific s/ss combination, but this is OK since these registers
> +	 * are consistent across s/ss in almost all cases. In the rare
> +	 * occasions, such as INSTDONE, where this value is dependent
> +	 * on s/ss combo, the read should be done with read_subslice_reg.
> +	 */
> +	slice = ffs(sseu->slice_mask) - 1;
> +	GEM_BUG_ON(slice >= ARRAY_SIZE(sseu->subslice_mask));
> +	subslice = ffs(intel_sseu_get_subslices(sseu, slice));
> +	GEM_BUG_ON(!subslice);
> +	subslice--;
> +
> +	/*
> +	 * We use GEN8_MCR..() macros to calculate the |mcr| value for
> +	 * Gen9 to address WaProgramMgsrForCorrectSliceSpecificMmioReads
> +	 */
> +	mcr = GEN8_MCR_SLICE(slice) | GEN8_MCR_SUBSLICE(subslice);
> +	mcr_mask = GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
> +
> +	drm_dbg(&i915->drm, "MCR slice:%d/subslice:%d = %x\n", slice, subslice, mcr);
> +
> +	wa_write_clr_set(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
> +}
> +
>   static void
>   gen9_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   {
>   	struct drm_i915_private *i915 = gt->i915;
>   
> +	/* WaProgramMgsrForCorrectSliceSpecificMmioReads:glk,kbl,cml,gen9 */
> +	gen9_wa_init_mcr(i915, wal);
> +
>   	/* WaDisableKillLogic:bxt,skl,kbl */
>   	if (!IS_COFFEELAKE(i915) && !IS_COMETLAKE(i915))
>   		wa_write_or(wal,
> 
