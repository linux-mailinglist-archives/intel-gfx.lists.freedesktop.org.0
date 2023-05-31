Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B83B717F13
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 13:52:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 948DF10E0BE;
	Wed, 31 May 2023 11:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCAB410E0BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 11:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685533939; x=1717069939;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=oCXuhC4z+ZREVqFCM4Y6TpzV31CGRUW/qzOYX8Eguek=;
 b=eEb1jUSkLR1zpHdXfbbZJ9TO87MW2f0aJwUEV2Hql0DfRoFR9uVCrStv
 MrBB9mih/b+NGc+TGSmz9qBA8syHBAkJGN+pjOllYxX/w45v16WjrPe/l
 Z9IGfcSTLimaaOLqJS9nAAooMqbUNxGtFBwGmj0uBoAUOCvrssslhrWzY
 oHv2xARZyX+9aeDU6silUxykCKB3WL9b91zkvl9MgTkz2yQ/UetoDq3J2
 udGPnaghrWNFjvt12JGxGJCNQwBZBPtfH7t22ZGBL9qlCNpuKyVmmpT/b
 FftKrz5YJdBqGVDnfgOIkbNf4TWVkpiMbLwCPnLl2W1PSLby/Y2tnEXHs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="420978879"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="420978879"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 04:52:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="776731175"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="776731175"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.7.108])
 ([10.213.7.108])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 04:52:04 -0700
Message-ID: <f03e077a-538b-5ff2-5932-f2d2c2ec0662@intel.com>
Date: Wed, 31 May 2023 13:52:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.2
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230517132230.1102553-1-tejas.upadhyay@intel.com>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230517132230.1102553-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Add workaround 14016712196
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

On 17.05.2023 15:22, Tejas Upadhyay wrote:
> Wa_14016712196 implementation for mtl
> 
> Bspec: 72197
> 
> V2:
>    - Fix  kernel test robot warnings
> 
> Reported-by: kernel test robot <lkp@intel.com>

I do not think robot reported lack of this wa :), putting lkp in 
changelog should be enough.


> Closes: https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.com/
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 41 ++++++++++++++++++++++++
>   1 file changed, 41 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index e1c76e5bfa82..737eb515544b 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -177,14 +177,38 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
>   	return cs;
>   }
>   
> +static int mtl_dummy_pipe_control(struct i915_request *rq, u32 *cs)
> +{
> +	if (IS_ERR(cs))
> +		return PTR_ERR(cs);
> +	cs = gen12_emit_pipe_control(cs,
> +				     0,
> +				     PIPE_CONTROL_DEPTH_CACHE_FLUSH,
> +				     LRC_PPHWSP_SCRATCH_ADDR);
> +	intel_ring_advance(rq, cs);
> +
> +	return 0;
> +}
> +
>   int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   {
>   	struct intel_engine_cs *engine = rq->engine;
> +	int err;
>   
>   	if (mode & EMIT_FLUSH) {
>   		u32 flags = 0;
>   		u32 *cs;
>   
> +		/* Wa_14016712196 */
> +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +		    IS_MTL_GRAPHICS_STEP(engine->i915, P, STEP_A0, STEP_B0)) {
> +			/* dummy PIPE_CONTROL + depth flush */
> +			cs = intel_ring_begin(rq, 6);
> +			err = mtl_dummy_pipe_control(rq, cs);
> +			if (err)
> +				return err;

Like Andi suggested, you can replace above sequence with:
	cs = mtl_dummy_pipe_control(rq);


> +		}
> +
>   		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
>   		flags |= PIPE_CONTROL_FLUSH_L3;
>   		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> @@ -218,6 +242,16 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   		u32 flags = 0;
>   		u32 *cs, count;
>   
> +		/* Wa_14016712196 */
> +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +		    IS_MTL_GRAPHICS_STEP(engine->i915, P, STEP_A0, STEP_B0)) {
> +			/* dummy PIPE_CONTROL + depth flush */
> +			cs = intel_ring_begin(rq, 6);
> +			err = mtl_dummy_pipe_control(rq, cs);
> +			if (err)
> +				return err;
> +		}
> +

In case gen12_emit_flush_rcs is called with EMIT_BARRIER = 
(EMIT_INVALIDATE | EMIT_FLUSH) dummy pipe will be inserted twice, is it OK?

>   		flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
>   		flags |= PIPE_CONTROL_TLB_INVALIDATE;
>   		flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
> @@ -733,6 +767,13 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>   		     PIPE_CONTROL_DC_FLUSH_ENABLE |
>   		     PIPE_CONTROL_FLUSH_ENABLE);
>   
> +	/* Wa_14016712196 */
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +		/* dummy PIPE_CONTROL + depth flush */
> +		cs = gen12_emit_pipe_control(cs, 0,
> +					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);

How do we know there is enough space for dummy pipe?

Regards
Andrzej

> +
>   	if (GRAPHICS_VER(i915) == 12 && GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
>   		/* Wa_1409600907 */
>   		flags |= PIPE_CONTROL_DEPTH_STALL;

