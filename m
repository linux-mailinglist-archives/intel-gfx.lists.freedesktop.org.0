Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE315BD8D1
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 02:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9DD10E22D;
	Tue, 20 Sep 2022 00:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCF9210E265
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 00:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663634107; x=1695170107;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=j33uw4KuEBTaIv8S/Lf/UNcyb+AVX3as7HuwU4Bz0nQ=;
 b=cTfFDEbKWnxIlZXA1ieTAY3TTQqOgXpVu89GVGm0i5ZXR5ZgVWnC9ZYs
 q+xx256jcNvyuLvaCbpXmc92aKpnmvjMGaHidEanPH2TexkgcoJVuULMg
 wMrCmxq0xMjaNjBQejyUvZCOjVrZ6v3VEbED4a8BilOHEH0dAZK4ff3CP
 EDTrQi//8c+EKK7AR/BiALmGKy36pSrH7Z5eGhrcXdkxZH+QddD+agpNq
 yxOi7wHNJzD3gbLS1yKND2baRMHZKxi4Z6FI8bzYkKeeJ8jYMti06vuLz
 0R6/HUVfx+5F82mOG6Ioj+oQJnjIgQGxLoYx/YUD/ANvAdOlcw6JN68RQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="279285100"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="279285100"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 17:35:07 -0700
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="651886228"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.251.10.194])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 17:35:06 -0700
Date: Mon, 19 Sep 2022 17:35:06 -0700
Message-ID: <87zgeudgsl.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220823204155.8178-4-umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>	<20220823204155.8178-4-umesh.nerlige.ramappa@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 03/19] drm/i915/perf: Fix noa wait
 predication for DG2
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

On Tue, 23 Aug 2022 13:41:39 -0700, Umesh Nerlige Ramappa wrote:
>
> Predication for batch buffer commands changed in XEHPSDV.
> MI_BATCH_BUFFER_START predicates based on MI_SET_PREDICATE_RESULT
> register. The MI_SET_PREDICATE_RESULT register can only be modified
> with MI_SET_PREDICATE command. When configured, the MI_SET_PREDICATE
> command sets MI_SET_PREDICATE_RESULT based on bit 0 of
> MI_PREDICATE_RESULT_2. Use this to configure predication in noa_wait.

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h |  1 +
>  drivers/gpu/drm/i915/i915_perf.c            | 24 +++++++++++++++++----
>  2 files changed, 21 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> index 889f0df3940b..25d23f3a4769 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -200,6 +200,7 @@
>  #define RING_CONTEXT_STATUS_PTR(base)		_MMIO((base) + 0x3a0)
>  #define RING_CTX_TIMESTAMP(base)		_MMIO((base) + 0x3a8) /* gen8+ */
>  #define RING_PREDICATE_RESULT(base)		_MMIO((base) + 0x3b8)
> +#define MI_PREDICATE_RESULT_2_ENGINE(base)	_MMIO((base) + 0x3bc)
>  #define RING_FORCE_TO_NONPRIV(base, i)		_MMIO(((base) + 0x4D0) + (i) * 4)
>  #define   RING_FORCE_TO_NONPRIV_DENY		REG_BIT(30)
>  #define   RING_FORCE_TO_NONPRIV_ADDRESS_MASK	REG_GENMASK(25, 2)
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index c8331b549d31..3526693d64fa 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -286,6 +286,7 @@ static u32 i915_perf_stream_paranoid = true;
>  #define OAREPORT_REASON_CTX_SWITCH     (1<<3)
>  #define OAREPORT_REASON_CLK_RATIO      (1<<5)
>
> +#define HAS_MI_SET_PREDICATE(i915) (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
>
>  /* For sysctl proc_dointvec_minmax of i915_oa_max_sample_rate
>   *
> @@ -1766,6 +1767,9 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
>		DELTA_TARGET,
>		N_CS_GPR
>	};
> +	i915_reg_t mi_predicate_result = HAS_MI_SET_PREDICATE(i915) ?
> +					  MI_PREDICATE_RESULT_2_ENGINE(base) :
> +					  MI_PREDICATE_RESULT_1(RENDER_RING_BASE);
>
>	bo = i915_gem_object_create_internal(i915, 4096);
>	if (IS_ERR(bo)) {
> @@ -1803,7 +1807,7 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
>			stream, cs, true /* save */, CS_GPR(i),
>			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
>	cs = save_restore_register(
> -		stream, cs, true /* save */, MI_PREDICATE_RESULT_1(RENDER_RING_BASE),
> +		stream, cs, true /* save */, mi_predicate_result,
>		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
>
>	/* First timestamp snapshot location. */
> @@ -1857,7 +1861,10 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
>	 */
>	*cs++ = MI_LOAD_REGISTER_REG | (3 - 2);
>	*cs++ = i915_mmio_reg_offset(CS_GPR(JUMP_PREDICATE));
> -	*cs++ = i915_mmio_reg_offset(MI_PREDICATE_RESULT_1(RENDER_RING_BASE));
> +	*cs++ = i915_mmio_reg_offset(mi_predicate_result);
> +
> +	if (HAS_MI_SET_PREDICATE(i915))
> +		*cs++ = MI_SET_PREDICATE | 1;
>
>	/* Restart from the beginning if we had timestamps roll over. */
>	*cs++ = (GRAPHICS_VER(i915) < 8 ?
> @@ -1867,6 +1874,9 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
>	*cs++ = i915_ggtt_offset(vma) + (ts0 - batch) * 4;
>	*cs++ = 0;
>
> +	if (HAS_MI_SET_PREDICATE(i915))
> +		*cs++ = MI_SET_PREDICATE;
> +
>	/*
>	 * Now add the diff between to previous timestamps and add it to :
>	 *      (((1 * << 64) - 1) - delay_ns)
> @@ -1894,7 +1904,10 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
>	 */
>	*cs++ = MI_LOAD_REGISTER_REG | (3 - 2);
>	*cs++ = i915_mmio_reg_offset(CS_GPR(JUMP_PREDICATE));
> -	*cs++ = i915_mmio_reg_offset(MI_PREDICATE_RESULT_1(RENDER_RING_BASE));
> +	*cs++ = i915_mmio_reg_offset(mi_predicate_result);
> +
> +	if (HAS_MI_SET_PREDICATE(i915))
> +		*cs++ = MI_SET_PREDICATE | 1;
>
>	/* Predicate the jump.  */
>	*cs++ = (GRAPHICS_VER(i915) < 8 ?
> @@ -1904,13 +1917,16 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
>	*cs++ = i915_ggtt_offset(vma) + (jump - batch) * 4;
>	*cs++ = 0;
>
> +	if (HAS_MI_SET_PREDICATE(i915))
> +		*cs++ = MI_SET_PREDICATE;
> +
>	/* Restore registers. */
>	for (i = 0; i < N_CS_GPR; i++)
>		cs = save_restore_register(
>			stream, cs, false /* restore */, CS_GPR(i),
>			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
>	cs = save_restore_register(
> -		stream, cs, false /* restore */, MI_PREDICATE_RESULT_1(RENDER_RING_BASE),
> +		stream, cs, false /* restore */, mi_predicate_result,
>		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
>
>	/* And return to the ring. */
> --
> 2.25.1
>
