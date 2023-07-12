Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA450750A06
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 15:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD7710E534;
	Wed, 12 Jul 2023 13:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AE4810E534
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 13:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689169918; x=1720705918;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=X0e73T3WSJTl5VYCF86DySihJh0z5nUWeYsJnIQPpFs=;
 b=IozbQDYacSUQouStV2RCciyWLOSCZFINII6tXtT6tNfCzxsgBBv74xDV
 1tohxywfZRY39PTVVZLnmBhktiud8twYVxsxW5q55EmUEOkqlI7Ph/HeV
 JYdILJVMGsJhs3M3hMtg7cqmYDerN585f+VG0qa1dZq02U/LasR4JJq//
 1VZu43Ke1X9IBkOr3rsI6gkmU84zxYa5Q+9FfkepXGSsiWOYZnHOCCm2N
 u/pWs0kVc2Y9fwi2sb3e3wTAKOegv1XGOfASII4K88CwkcpT9ewIU/g4c
 +GHC3ywPK7XAk/CF7GGtPl2uPhTuOVVeuIO7MSfAgANJh6NSkhWxLn2ZC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="431025585"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="431025585"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 06:51:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="787045718"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="787045718"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.49.252])
 ([10.252.49.252])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 06:51:55 -0700
Message-ID: <813b9b77-864a-b506-aff6-a37831be1ab6@linux.intel.com>
Date: Wed, 12 Jul 2023 15:51:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>
References: <20230627094327.134775-1-andi.shyti@linux.intel.com>
 <20230627094327.134775-2-andi.shyti@linux.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230627094327.134775-2-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/gt: Cleanup aux
 invalidation registers
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 6/27/2023 11:43 AM, Andi Shyti wrote:
> Fix the 'NV' definition postfix that is supposed to be INV.
>
> Take the chance to also order properly the registers based on
> their address and call the GEN12_GFX_CCS_AUX_INV address as
> GEN12_CCS_AUX_INV like all the other similar registers.
>
> Remove also VD1, VD3 and VE1 registers that don't exist.
>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> Cc: <stable@vger.kernel.org> # v5.8+
> ---
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c |  8 ++++----
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h  | 14 ++++++--------
>   drivers/gpu/drm/i915/gt/intel_lrc.c      |  6 +++---
>   3 files changed, 13 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 23857cc08eca1..563efee055602 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -287,8 +287,8 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   
>   		if (!HAS_FLAT_CCS(rq->engine->i915)) {
>   			/* hsdes: 1809175790 */
> -			cs = gen12_emit_aux_table_inv(rq->engine->gt,
> -						      cs, GEN12_GFX_CCS_AUX_NV);
> +			cs = gen12_emit_aux_table_inv(rq->engine->gt, cs,
> +						      GEN12_CCS_AUX_INV);
>   		}
>   
>   		*cs++ = preparser_disable(false);
> @@ -348,10 +348,10 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
>   	if (aux_inv) { /* hsdes: 1809175790 */
>   		if (rq->engine->class == VIDEO_DECODE_CLASS)
>   			cs = gen12_emit_aux_table_inv(rq->engine->gt,
> -						      cs, GEN12_VD0_AUX_NV);
> +						      cs, GEN12_VD0_AUX_INV);
>   		else
>   			cs = gen12_emit_aux_table_inv(rq->engine->gt,
> -						      cs, GEN12_VE0_AUX_NV);
> +						      cs, GEN12_VE0_AUX_INV);
>   	}
>   
>   	if (mode & EMIT_INVALIDATE)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 718cb2c80f79e..78b67a5336afc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -332,9 +332,10 @@
>   #define GEN8_PRIVATE_PAT_HI			_MMIO(0x40e0 + 4)
>   #define GEN10_PAT_INDEX(index)			_MMIO(0x40e0 + (index) * 4)
>   #define BSD_HWS_PGA_GEN7			_MMIO(0x4180)
> -#define GEN12_GFX_CCS_AUX_NV			_MMIO(0x4208)
> -#define GEN12_VD0_AUX_NV			_MMIO(0x4218)
> -#define GEN12_VD1_AUX_NV			_MMIO(0x4228)
> +
> +#define GEN12_CCS_AUX_INV			_MMIO(0x4208)
> +#define GEN12_VD0_AUX_INV			_MMIO(0x4218)
> +#define GEN12_VE0_AUX_INV			_MMIO(0x4238)
>   
>   #define GEN8_RTCR				_MMIO(0x4260)
>   #define GEN8_M1TCR				_MMIO(0x4264)
> @@ -342,14 +343,11 @@
>   #define GEN8_BTCR				_MMIO(0x426c)
>   #define GEN8_VTCR				_MMIO(0x4270)
>   
> -#define GEN12_VD2_AUX_NV			_MMIO(0x4298)
> -#define GEN12_VD3_AUX_NV			_MMIO(0x42a8)
> -#define GEN12_VE0_AUX_NV			_MMIO(0x4238)
> -
>   #define BLT_HWS_PGA_GEN7			_MMIO(0x4280)
>   
> -#define GEN12_VE1_AUX_NV			_MMIO(0x42b8)
> +#define GEN12_VD2_AUX_INV			_MMIO(0x4298)
>   #define   AUX_INV				REG_BIT(0)
> +
>   #define VEBOX_HWS_PGA_GEN7			_MMIO(0x4380)
>   
>   #define GEN12_AUX_ERR_DBG			_MMIO(0x43f4)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index a4ec20aaafe28..325f3dbfb90e6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1367,7 +1367,7 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>   	/* hsdes: 1809175790 */
>   	if (!HAS_FLAT_CCS(ce->engine->i915))
>   		cs = gen12_emit_aux_table_inv(ce->engine->gt,
> -					      cs, GEN12_GFX_CCS_AUX_NV);
> +					      cs, GEN12_CCS_AUX_INV);
>   
>   	/* Wa_16014892111 */
>   	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> @@ -1396,10 +1396,10 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
>   	if (!HAS_FLAT_CCS(ce->engine->i915)) {
>   		if (ce->engine->class == VIDEO_DECODE_CLASS)
>   			cs = gen12_emit_aux_table_inv(ce->engine->gt,
> -						      cs, GEN12_VD0_AUX_NV);
> +						      cs, GEN12_VD0_AUX_INV);
>   		else if (ce->engine->class == VIDEO_ENHANCEMENT_CLASS)
>   			cs = gen12_emit_aux_table_inv(ce->engine->gt,
> -						      cs, GEN12_VE0_AUX_NV);
> +						      cs, GEN12_VE0_AUX_INV);
>   	}
>   
>   	return cs;
