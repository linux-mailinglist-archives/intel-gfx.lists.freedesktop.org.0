Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5480F5ED0FE
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 01:24:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B43AA10E17B;
	Tue, 27 Sep 2022 23:24:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51FF10E17B
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 23:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664321042; x=1695857042;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=c7SEQINR44HCeFCgQ2v4hhh2IL1fgmoc/JV+LUyemHQ=;
 b=l+Sm45DFyMZXazwC9mPV7mbINf6bAuswbPGj2qru9d0wJW14/4QtLzWn
 Kf+0j/bZ6lOn7LLpEFbQfRVntx8TMXZGMXfGZKaX1/aIKCfBtE3x4o00b
 D3/oryafUnxbVr/IDUXlEVMLyAU0w9s5Git8gmdXIYfohstLqq2MDdDUM
 WPr6vZQMHfQ3nzKiu+H1QfGVJg0SFArsmN543P3CHigfV/EBzacpyp7hY
 1DTM3x/GBxrezEdoEG9CTn+K9etPkmGGoQr5cwLAY+pzzIIylxkS0Ast/
 PCxHkw7hwOkQ0i7rGtN5Q+sSpIiWzz8IDfrmV9IcsvN5E18n9+a9zbO0H Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="302366834"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="302366834"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 16:24:02 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="599355791"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="599355791"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.13.135])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 16:24:01 -0700
Date: Tue, 27 Sep 2022 16:24:01 -0700
Message-ID: <87y1u45rla.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220923201154.283784-5-umesh.nerlige.ramappa@intel.com>
References: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>	<20220923201154.283784-5-umesh.nerlige.ramappa@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v2 04/15] drm/i915/perf: Determine gen12 oa
 ctx offset at runtime
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

On Fri, 23 Sep 2022 13:11:43 -0700, Umesh Nerlige Ramappa wrote:
>

Hi Umesh,

> Some SKUs of same gen12 platform may have different oactxctrl
> offsets. For gen12, determine oactxctrl offsets at runtime.

So seems we are writing code to extract static information for products
just because it is not documented?

>
> v2: (Lionel)
> - Move MI definitions to intel_gpu_commands.h
> - Ensure __find_reg_in_lri does read past context image size
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |   4 +
>  drivers/gpu/drm/i915/i915_perf.c             | 146 +++++++++++++++----
>  drivers/gpu/drm/i915/i915_perf_oa_regs.h     |   2 +-
>  3 files changed, 121 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index d4e9702d3c8e..f50ea92910d9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -187,6 +187,10 @@
>  #define   MI_BATCH_RESOURCE_STREAMER REG_BIT(10)
>  #define   MI_BATCH_PREDICATE         REG_BIT(15) /* HSW+ on RCS only*/
>
> +#define MI_OPCODE(x)		(((x) >> 23) & 0x3f)
> +#define IS_MI_LRI_CMD(x)	(MI_OPCODE(x) == MI_OPCODE(MI_INSTR(0x22, 0)))
> +#define MI_LRI_LEN(x)		(((x) & 0xff) + 1)
> +
>  /*
>   * 3D instructions used by the kernel
>   */
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index cd57b5836386..fb705f24705b 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1358,6 +1358,64 @@ static int gen12_get_render_context_id(struct i915_perf_stream *stream)
>	return 0;
>  }
>
> +#define __valid_oactxctrl_offset(x) ((x) && (x) != U32_MAX)
> +static bool __find_reg_in_lri(u32 *state, u32 reg, u32 *offset, u32 end)
> +{
> +	u32 idx = *offset;
> +	u32 len = min(MI_LRI_LEN(state[idx]) + idx, end);

The code below works only if MI_LRI_LEN() is an even number (because of
'idx += 2', which I think should always be the case but not sure if we it
makes sense to add an assert etc.

> +
> +	idx++;
> +	for (; idx < len; idx += 2)
> +		if (state[idx] == reg)
> +			break;
> +
> +	*offset = idx;
> +	return state[idx] == reg;

I think this can be a bug if 'idx > len' but 'state[idx] == reg'. So we
need to do something like:

static bool __find_reg_in_lri(u32 *state, u32 reg, u32 *offset, u32 end)
{
	u32 idx = *offset;
	u32 len = min(MI_LRI_LEN(state[idx]) + idx, end);
	bool found = false;

	idx++;
	for (; idx < len; idx += 2)
		if (state[idx] == reg)
			found = true;

	*offset = idx;
	return found;

> +}
> +
> +static u32 __context_image_offset(struct intel_context *ce, u32 reg)
> +{
> +	u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
> +	u32 *state = ce->lrc_reg_state;
> +
> +	for (offset = 0; offset < len; ) {
> +		if (IS_MI_LRI_CMD(state[offset])) {
> +			if (__find_reg_in_lri(state, reg, &offset, len))
> +				break;
> +		} else {
> +			offset++;
> +		}
> +	}
> +
> +	return offset < len ? offset : U32_MAX;
> +}
> +
> +static int __set_oa_ctx_ctrl_offset(struct intel_context *ce)

I have seen people complain about unnecessary double underscores in front
of function names ;-)

> +{
> +	i915_reg_t reg = GEN12_OACTXCONTROL(ce->engine->mmio_base);
> +	struct i915_perf *perf = &ce->engine->i915->perf;
> +	u32 saved_offset = perf->ctx_oactxctrl_offset;
> +	u32 offset;
> +
> +	/* Do this only once. Failure is stored as offset of U32_MAX */
> +	if (saved_offset)
> +		return 0;

But if saved_offset is U32_MAX we should be returning -ENODEV?

> +
> +	offset = __context_image_offset(ce, i915_mmio_reg_offset(reg));
> +	perf->ctx_oactxctrl_offset = offset;
> +
> +	drm_dbg(&ce->engine->i915->drm,
> +		"%s oa ctx control at 0x%08x dword offset\n",
> +		ce->engine->name, offset);
> +
> +	return __valid_oactxctrl_offset(offset) ? 0 : -ENODEV;
> +}
> +
> +static bool engine_supports_mi_query(struct intel_engine_cs *engine)
> +{
> +	return engine->class == RENDER_CLASS;
> +}
> +
>  /**
>   * oa_get_render_ctx_id - determine and hold ctx hw id
>   * @stream: An i915-perf stream opened for OA metrics
> @@ -1377,6 +1435,17 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>	if (IS_ERR(ce))
>		return PTR_ERR(ce);
>
> +	if (engine_supports_mi_query(stream->engine)) {
> +		ret = __set_oa_ctx_ctrl_offset(ce);
> +		if (ret && !(stream->sample_flags & SAMPLE_OA_REPORT)) {

This is not a problem in SAMPLE_OA_REPORT case?

> +			intel_context_unpin(ce);
> +			drm_err(&stream->perf->i915->drm,
> +				"Enabling perf query failed for %s\n",
> +				stream->engine->name);
> +			return ret;
> +		}
> +	}
> +
>	switch (GRAPHICS_VER(ce->engine->i915)) {
>	case 7: {
>		/*
> @@ -2408,10 +2477,11 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
>	int err;
>	struct intel_context *ce = stream->pinned_ctx;
>	u32 format = stream->oa_buffer.format;
> +	u32 offset = stream->perf->ctx_oactxctrl_offset;
>	struct flex regs_context[] = {
>		{
>			GEN8_OACTXCONTROL,
> -			stream->perf->ctx_oactxctrl_offset + 1,
> +			offset + 1,
>			active ? GEN8_OA_COUNTER_RESUME : 0,
>		},
>	};
> @@ -2436,15 +2506,18 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
>		},
>	};
>
> -	/* Modify the context image of pinned context with regs_context*/
> -	err = intel_context_lock_pinned(ce);
> -	if (err)
> -		return err;
> +	/* Modify the context image of pinned context with regs_context */
> +	if (__valid_oactxctrl_offset(offset)) {

This check is not needed, if we didn't have valid a offset we should return
error from oa_get_render_ctx_id.

> +		err = intel_context_lock_pinned(ce);
> +		if (err)
> +			return err;
>
> -	err = gen8_modify_context(ce, regs_context, ARRAY_SIZE(regs_context));
> -	intel_context_unlock_pinned(ce);
> -	if (err)
> -		return err;
> +		err = gen8_modify_context(ce, regs_context,
> +					  ARRAY_SIZE(regs_context));
> +		intel_context_unlock_pinned(ce);
> +		if (err)
> +			return err;
> +	}

>
>	/* Apply regs_lri using LRI with pinned context */
>	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), active);
> @@ -2566,6 +2639,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
>			   const struct i915_oa_config *oa_config,
>			   struct i915_active *active)
>  {
> +	u32 ctx_oactxctrl = stream->perf->ctx_oactxctrl_offset;
>	/* The MMIO offsets for Flex EU registers aren't contiguous */
>	const u32 ctx_flexeu0 = stream->perf->ctx_flexeu0_offset;
>  #define ctx_flexeuN(N) (ctx_flexeu0 + 2 * (N) + 1)
> @@ -2576,7 +2650,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
>		},
>		{
>			GEN8_OACTXCONTROL,
> -			stream->perf->ctx_oactxctrl_offset + 1,
> +			ctx_oactxctrl + 1,
>		},
>		{ EU_PERF_CNTL0, ctx_flexeuN(0) },
>		{ EU_PERF_CNTL1, ctx_flexeuN(1) },
> @@ -4545,6 +4619,37 @@ static void oa_init_supported_formats(struct i915_perf *perf)
>	}
>  }
>
> +static void i915_perf_init_info(struct drm_i915_private *i915)
> +{
> +	struct i915_perf *perf = &i915->perf;
> +
> +	switch (GRAPHICS_VER(i915)) {
> +	case 8:
> +		perf->ctx_oactxctrl_offset = 0x120;
> +		perf->ctx_flexeu0_offset = 0x2ce;
> +		perf->gen8_valid_ctx_bit = BIT(25);
> +		break;
> +	case 9:
> +		perf->ctx_oactxctrl_offset = 0x128;
> +		perf->ctx_flexeu0_offset = 0x3de;
> +		perf->gen8_valid_ctx_bit = BIT(16);
> +		break;
> +	case 11:
> +		perf->ctx_oactxctrl_offset = 0x124;
> +		perf->ctx_flexeu0_offset = 0x78e;
> +		perf->gen8_valid_ctx_bit = BIT(16);
> +		break;
> +	case 12:
> +		/*
> +		 * Calculate offset at runtime in oa_pin_context for gen12 and
> +		 * cache the value in perf->ctx_oactxctrl_offset.
> +		 */

What about ctx_flexeu0_offset and gen8_valid_ctx_bit for Gen12+?

Thanks.
--
Ashutosh
