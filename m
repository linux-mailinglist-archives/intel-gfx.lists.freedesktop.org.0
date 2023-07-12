Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67258750AF8
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 16:28:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD76B10E54C;
	Wed, 12 Jul 2023 14:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23C1310E54C
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 14:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689172126; x=1720708126;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=NffUZfTJcIcaqZpiMN3W32P62cELnqTtaydfzvAXSww=;
 b=leL7L04QpWVtb4eY+8Nl0786vhPOHY3KtD8VDgjU/ngZZRuzR2WJfkCr
 VHs/Vh2G3LvMOH89EUBW57BUfR6FFw5TaK+KJvbtsYi8P24C4AncY2C9Y
 diEAMAIJt7n8VraHUeoqT37uZz3sRSe3jQxxGF2u2oAQQ5X1aNoijCFXN
 1U4nn6WrrCCpXnBmDF1DBcSl01idNy8ni3b46zXfXW09udmg+5ylfgJ1K
 IA+e63W9NF5RQg8tO9TIUFuCN702Arbg4RLeTbXynjKn2dmuoUQ62ZZdy
 hwgGH+JYaZDoC2Vu4UdyJ0OSm329KX4Rsu0YaHaEcwp8zXLZglsIq9Qkn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="362368089"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="362368089"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 07:26:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="895648371"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="895648371"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.49.252])
 ([10.252.49.252])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 07:26:55 -0700
Message-ID: <6693d0f0-d9fe-464e-0d2e-7d19804e23b8@linux.intel.com>
Date: Wed, 12 Jul 2023 16:26:53 +0200
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
 <20230627094327.134775-5-andi.shyti@linux.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230627094327.134775-5-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/gt: Support aux
 invalidation on all engines
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
> Perform some refactoring with the purpose of keeping in one
> single place all the operations around the aux table
> invalidation.
>
> With this refactoring add more engines where the invalidation
> should be performed.
>
> Fixes: 972282c4cf24 ("drm/i915/gen12: Add aux table invalidate for all engines")
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.8+
> ---
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 63 +++++++++++++++---------
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.h |  3 +-
>   drivers/gpu/drm/i915/gt/intel_lrc.c      | 17 +------
>   3 files changed, 44 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 83cddd9cb8b56..9645135ad2703 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -165,7 +165,8 @@ static u32 preparser_disable(bool state)
>   	return MI_ARB_CHECK | 1 << 8 | state;
>   }
>   
> -u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv_reg)
> +static u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs,
> +				     const i915_reg_t inv_reg)
>   {
>   	u32 gsi_offset = gt->uncore->gsi_offset;
>   
> @@ -187,6 +188,40 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
>   	return cs;
>   }
>   
> +static i915_reg_t intel_get_aux_inv_reg(struct intel_engine_cs *engine)
> +{
> +	if (HAS_FLAT_CCS(engine->i915))
> +		return _MMIO(0);
> +
> +	switch (engine->id) {
> +	case RCS0:
> +		return GEN12_CCS_AUX_INV;
> +	case VCS0:
> +		return GEN12_VD0_AUX_INV;
> +	case VCS2:
> +		return GEN12_VD2_AUX_INV;
> +	case VECS0:
> +		return GEN12_VE0_AUX_INV;
> +	default:
> +		return _MMIO(0);
> +	}
> +}
> +
> +static bool intel_engine_has_aux_inv(struct intel_engine_cs *engine)
> +{
> +	i915_reg_t reg = intel_get_aux_inv_reg(engine);
> +
> +	return !!reg.reg;
> +}
> +
> +u32 *intel_emit_aux_table_inv(struct intel_engine_cs *engine, u32 *cs)
> +{
> +	i915_reg_t reg = intel_get_aux_inv_reg(engine);
> +	struct intel_gt *gt = engine->gt;
> +
> +	return reg.reg ? gen12_emit_aux_table_inv(gt, cs, reg) : cs;
> +}
> +
>   static int mtl_dummy_pipe_control(struct i915_request *rq)
>   {
>   	/* Wa_14016712196 */
> @@ -301,11 +336,7 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   
>   		cs = gen8_emit_pipe_control(cs, flags, LRC_PPHWSP_SCRATCH_ADDR);
>   
> -		if (!HAS_FLAT_CCS(rq->engine->i915)) {
> -			/* hsdes: 1809175790 */

We should keep this reference which is getting removed by this patch.


Regards,

Nirmoy


> -			cs = gen12_emit_aux_table_inv(rq->engine->gt, cs,
> -						      GEN12_CCS_AUX_INV);
> -		}
> +		cs = intel_emit_aux_table_inv(engine, cs);
>   
>   		*cs++ = preparser_disable(false);
>   		intel_ring_advance(rq, cs);
> @@ -316,21 +347,14 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   
>   int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
>   {
> -	intel_engine_mask_t aux_inv = 0;
>   	u32 cmd, *cs;
>   
>   	cmd = 4;
>   	if (mode & EMIT_INVALIDATE) {
>   		cmd += 2;
>   
> -		if (!HAS_FLAT_CCS(rq->engine->i915) &&
> -		    (rq->engine->class == VIDEO_DECODE_CLASS ||
> -		     rq->engine->class == VIDEO_ENHANCEMENT_CLASS)) {
> -			aux_inv = rq->engine->mask &
> -				~GENMASK(_BCS(I915_MAX_BCS - 1), BCS0);
> -			if (aux_inv)
> -				cmd += 10;
> -		}
> +		if (intel_engine_has_aux_inv(rq->engine))
> +			cmd += 10;
>   	}
>   
>   	cs = intel_ring_begin(rq, cmd);
> @@ -361,14 +385,7 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
>   	*cs++ = 0; /* upper addr */
>   	*cs++ = 0; /* value */
>   
> -	if (aux_inv) { /* hsdes: 1809175790 */
> -		if (rq->engine->class == VIDEO_DECODE_CLASS)
> -			cs = gen12_emit_aux_table_inv(rq->engine->gt,
> -						      cs, GEN12_VD0_AUX_INV);
> -		else
> -			cs = gen12_emit_aux_table_inv(rq->engine->gt,
> -						      cs, GEN12_VE0_AUX_INV);
> -	}
> +	cs = intel_emit_aux_table_inv(rq->engine, cs);
>   
>   	if (mode & EMIT_INVALIDATE)
>   		*cs++ = preparser_disable(false);
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.h b/drivers/gpu/drm/i915/gt/gen8_engine_cs.h
> index 655e5c00ddc27..d938c94524510 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.h
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.h
> @@ -13,6 +13,7 @@
>   #include "intel_gt_regs.h"
>   #include "intel_gpu_commands.h"
>   
> +struct intel_engine_cs;
>   struct intel_gt;
>   struct i915_request;
>   
> @@ -46,7 +47,7 @@ u32 *gen8_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs);
>   u32 *gen11_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs);
>   u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs);
>   
> -u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv_reg);
> +u32 *intel_emit_aux_table_inv(struct intel_engine_cs *engine, u32 *cs);
>   
>   static inline u32 *
>   __gen8_emit_pipe_control(u32 *batch, u32 flags0, u32 flags1, u32 offset)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 325f3dbfb90e6..b61f822cbacb8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1364,10 +1364,7 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>   	    IS_DG2_G11(ce->engine->i915))
>   		cs = gen8_emit_pipe_control(cs, PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE, 0);
>   
> -	/* hsdes: 1809175790 */
> -	if (!HAS_FLAT_CCS(ce->engine->i915))
> -		cs = gen12_emit_aux_table_inv(ce->engine->gt,
> -					      cs, GEN12_CCS_AUX_INV);
> +	cs = intel_emit_aux_table_inv(ce->engine, cs);
>   
>   	/* Wa_16014892111 */
>   	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> @@ -1392,17 +1389,7 @@ gen12_emit_indirect_ctx_xcs(const struct intel_context *ce, u32 *cs)
>   						    PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE,
>   						    0);
>   
> -	/* hsdes: 1809175790 */
> -	if (!HAS_FLAT_CCS(ce->engine->i915)) {
> -		if (ce->engine->class == VIDEO_DECODE_CLASS)
> -			cs = gen12_emit_aux_table_inv(ce->engine->gt,
> -						      cs, GEN12_VD0_AUX_INV);
> -		else if (ce->engine->class == VIDEO_ENHANCEMENT_CLASS)
> -			cs = gen12_emit_aux_table_inv(ce->engine->gt,
> -						      cs, GEN12_VE0_AUX_INV);
> -	}
> -
> -	return cs;
> +	return intel_emit_aux_table_inv(ce->engine, cs);
>   }
>   
>   static void
