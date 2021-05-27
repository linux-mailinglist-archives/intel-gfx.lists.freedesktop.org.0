Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 524CC392461
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 03:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDB0D6EC62;
	Thu, 27 May 2021 01:34:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D9F6E8B0;
 Thu, 27 May 2021 01:34:51 +0000 (UTC)
IronPort-SDR: Ylfb2cFsEN0MSTQDDT/VllFMyLd5V9TLT2p2dVS56Ozp2FdZhje5rspMVSnB0qWgqmBowebq7p
 8aMCLi9RaXrA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="266516625"
X-IronPort-AV: E=Sophos;i="5.82,333,1613462400"; d="scan'208";a="266516625"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 18:34:48 -0700
IronPort-SDR: 9C0WMVWptSOmDPa2oXtNoD1gWPS1fSHLjZCxEj5NGluAT3osxSyho1DApMuL80HMjSh5kbh7Oo
 6tfj/QBb5mzQ==
X-IronPort-AV: E=Sophos;i="5.82,333,1613462400"; d="scan'208";a="398026811"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.89.65])
 ([10.212.89.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 18:34:47 -0700
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210526191116.44017-1-matthew.brost@intel.com>
 <20210526191116.44017-2-matthew.brost@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <a60bfe95-2a96-540e-7d59-0653886a380a@intel.com>
Date: Wed, 26 May 2021 18:34:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210526191116.44017-2-matthew.brost@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Engine relative MMIO
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



On 5/26/2021 12:11 PM, Matthew Brost wrote:
> With virtual engines, it is no longer possible to know which specific
> physical engine a given request will be executed on at the time that
> request is generated. This means that the request itself must be engine
> agnostic - any direct register writes must be relative to the engine
> and not absolute addresses.
>
> The LRI command has support for engine relative addressing. However,
> the mechanism is not transparent to the driver. The scheme for Gen11
> (MI_LRI_ADD_CS_MMIO_START) requires the LRI address to have no
> absolute engine base component in the ring and BBs. The hardware then
> adds on the correct engine offset at execution time. This differs
> slightly for LRC where the upper bits of the base component are just
> ignored.
>
> Due to the non-trivial and differing schemes on different hardware, it
> is not possible to simply update the code that creates the LRI
> commands to set a remap flag and let the hardware get on with it.
> Instead, this patch adds function wrappers for generating the LRI
> command itself and then for constructing the correct address to use
> with the LRI.
>
> Bspec: 45606
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
> CC: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> CC: Chris P Wilson <chris.p.wilson@intel.com>
> CC: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c  |  7 ++++---
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 22 ++++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 +++
>   drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  6 ++++++
>   drivers/gpu/drm/i915/gt/intel_lrc.c          |  4 +---
>   5 files changed, 36 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 188dee13e017..a8a195bfcb57 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1211,7 +1211,7 @@ static int emit_ppgtt_update(struct i915_request *rq, void *data)
>   {
>   	struct i915_address_space *vm = rq->context->vm;
>   	struct intel_engine_cs *engine = rq->engine;
> -	u32 base = engine->mmio_base;
> +	u32 base = engine->lri_mmio_base;
>   	u32 *cs;
>   	int i;
>   
> @@ -1223,7 +1223,7 @@ static int emit_ppgtt_update(struct i915_request *rq, void *data)
>   		if (IS_ERR(cs))
>   			return PTR_ERR(cs);
>   
> -		*cs++ = MI_LOAD_REGISTER_IMM(2);
> +		*cs++ = MI_LOAD_REGISTER_IMM_REL(engine, 2);

This is the only place where you changed the behavior and I think it is 
going away 
(https://lists.freedesktop.org/archives/dri-devel/2021-May/305328.html), 
so the new macro is potentially not needed.

>   
>   		*cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_UDW(base, 0));
>   		*cs++ = upper_32_bits(pd_daddr);
> @@ -1245,7 +1245,8 @@ static int emit_ppgtt_update(struct i915_request *rq, void *data)
>   		if (IS_ERR(cs))
>   			return PTR_ERR(cs);
>   
> -		*cs++ = MI_LOAD_REGISTER_IMM(2 * GEN8_3LVL_PDPES) | MI_LRI_FORCE_POSTED;
> +		*cs++ = MI_LOAD_REGISTER_IMM_REL(engine, 2 * GEN8_3LVL_PDPES) |
> +			MI_LRI_FORCE_POSTED;
>   		for (i = GEN8_3LVL_PDPES; i--; ) {
>   			const dma_addr_t pd_daddr = i915_page_dir_dma_addr(ppgtt, i);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 3f9a811eb02b..0de6bc533776 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -15,6 +15,7 @@
>   #include "intel_engine_pm.h"
>   #include "intel_engine_user.h"
>   #include "intel_execlists_submission.h"
> +#include "intel_gpu_commands.h"
>   #include "intel_gt.h"
>   #include "intel_gt_requests.h"
>   #include "intel_gt_pm.h"
> @@ -222,6 +223,25 @@ static u32 __engine_mmio_base(struct drm_i915_private *i915,
>   	return bases[i].base;
>   }
>   
> +static bool i915_engine_has_relative_lri(const struct intel_engine_cs *engine)
> +{
> +	if (INTEL_GEN(engine->i915) < 11)
> +		return false;
> +
> +	return true;

We already have intel_engine_has_relative_mmio(), can just re-use that. 
Note that I915_ENGINE_HAS_RELATIVE_MMIO is only set for gen12+ at the 
moment; this was because CI failed on ICL and since we urgently needed 
the change for gen12 we just excluded gen11 and pushed (see Mika's 
comment @ 
https://lists.freedesktop.org/archives/intel-gfx/2019-September/211812.html). 
It should be ok to extend that to gen11 if we get a green CI.

> +}
> +
> +static void lri_init(struct intel_engine_cs *engine)
> +{
> +	if (i915_engine_has_relative_lri(engine)) {
> +		engine->lri_cmd_mode = MI_LRI_LRM_CS_MMIO;
> +		engine->lri_mmio_base = 0;
> +	} else {
> +		engine->lri_cmd_mode = 0;
> +		engine->lri_mmio_base = engine->mmio_base;
> +	}
> +}
> +
>   static void __sprint_engine_name(struct intel_engine_cs *engine)
>   {
>   	/*
> @@ -329,6 +349,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
>   	/* Nothing to do here, execute in order of dependencies */
>   	engine->schedule = NULL;
>   
> +	lri_init(engine);
> +
>   	ewma__engine_latency_init(&engine->latency);
>   	seqcount_init(&engine->stats.lock);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 9ef349cd5cea..e48da23c9b0f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -310,6 +310,9 @@ struct intel_engine_cs {
>   	u32 context_size;
>   	u32 mmio_base;
>   
> +	u32 lri_mmio_base;
> +	u32 lri_cmd_mode;
> +
>   	/*
>   	 * Some w/a require forcewake to be held (which prevents RC6) while
>   	 * a particular engine is active. If so, we set fw_domain to which
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 2694dbb9967e..f0f101134fd8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -134,8 +134,14 @@
>    *   simply ignores the register load under certain conditions.
>    * - One can actually load arbitrary many arbitrary registers: Simply issue x
>    *   address/value pairs. Don't overdue it, though, x <= 2^4 must hold!
> + * - Newer hardware supports engine relative addressing but older hardware does
> + *   not. This is required for hw engine load balancing. The
> + *   MI_LOAD_REGISTER_IMM_REL macro can be used on both newer and older
> + *   hardware.
>    */
>   #define MI_LOAD_REGISTER_IMM(x)	MI_INSTR(0x22, 2*(x)-1)
> +#define MI_LOAD_REGISTER_IMM_REL(egine, x)	\
> +	(MI_LOAD_REGISTER_IMM(x) | engine->lri_cmd_mode)

This naming is a bit confusing, because MI_LOAD_REGISTER_IMM_REL is not 
actually always relative so we also need to be careful of how we provide 
the register values (i.e. with or without the mmio base). Also a bit 
worrying for future proofing, since we'd need to make sure that any new 
CS register access goes explicitly relative. Just my 2 cents, I know 
there was contention on this patch in the past so I'm not going to jump 
in on the fight :)

I have not checked if any of the other numerous instances of 
MI_LOAD_REGISTER_IMM would benefit from going relative. I assume none is 
strictly required, since otherwise virtual engines wouldn't work.

Daniele

>   /* Gen11+. addr = base + (ctx_restore ? offset & GENMASK(12,2) : offset) */
>   #define   MI_LRI_LRM_CS_MMIO		REG_BIT(19)
>   #define   MI_LRI_FORCE_POSTED		(1<<12)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index aafe2a4df496..390628666564 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -44,11 +44,9 @@ static void set_offsets(u32 *regs,
>   		flags = *data >> 6;
>   		data++;
>   
> -		*regs = MI_LOAD_REGISTER_IMM(count);
> +		*regs = MI_LOAD_REGISTER_IMM_REL(engine, count);
>   		if (flags & POSTED)
>   			*regs |= MI_LRI_FORCE_POSTED;
> -		if (INTEL_GEN(engine->i915) >= 11)
> -			*regs |= MI_LRI_LRM_CS_MMIO;
>   		regs++;
>   
>   		GEM_BUG_ON(!count);

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
