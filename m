Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2176B4B7950
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 22:34:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF97A88EB4;
	Tue, 15 Feb 2022 21:33:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A551910E546
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 21:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644960836; x=1676496836;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=r7VWraZVZM5LGzi5uIDZqwRFjmKi5ch5Sc1YrAa1b7Y=;
 b=gS6Gv3rgftTimE2xPmJ2g7m526ozWwH3ota4KWhicxYd31kJmlPA+rP3
 alEQFo2PRzR0+X49TxGzaNcDLNo+VRbjKYWJr2onVnZOOQQPFn7MXfzNS
 noiAKEhiN8X3CEHY/XkSSX02t/rbkc7hn0AYzL5D5O/Vb89rlXutf4oio
 P76BX8IhAd4puyKev55hObIIUAzmTS7+ui2LuXfcDnqd8gsw98sIox7OA
 k5X/mf3yHVYwRpnOislRc5SDbeeGlLZHuYfk/UQ1L67T0LQ6EUHmaVnWz
 NtoMxkUknjgYG1XPGU3viQ/8UOqT3z95Kva+PlPflmChpV/nPgqo5hZLY A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250661560"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250661560"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 13:33:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="544513310"
Received: from dbhandar-mobl1.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.212.183.40])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 13:33:55 -0800
Date: Tue, 15 Feb 2022 13:33:37 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>;,
	intel-gfx@lists.freedesktop.org
Message-ID: <20220215213337.GA13300@msatwood-mobl>
References: <20220209051140.1599643-1-matthew.d.roper@intel.com>
 <20220209051140.1599643-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220209051140.1599643-4-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/gt: Use parameterized
 RING_MI_MODE
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

On Tue, Feb 08, 2022 at 09:11:37PM -0800, Matt Roper wrote:
> We have both a parameterized RING_MI_MODE() macro and an RCS-specific
> MI_MODE; drop the latter and use the former everywhere.
> 
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h | 6 ++++++
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 8 --------
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++---
>  drivers/gpu/drm/i915/intel_uncore.c         | 2 +-
>  4 files changed, 10 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> index cafb078cdb05..0bf8b45c9319 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -70,6 +70,12 @@
>  #define RING_NOPID(base)			_MMIO((base) + 0x94)
>  #define RING_HWSTAM(base)			_MMIO((base) + 0x98)
>  #define RING_MI_MODE(base)			_MMIO((base) + 0x9c)
> +#define   ASYNC_FLIP_PERF_DISABLE		REG_BIT(14)
> +#define   MI_FLUSH_ENABLE			REG_BIT(12)
> +#define   TGL_NESTED_BB_EN			REG_BIT(12)
> +#define   MODE_IDLE				REG_BIT(9)
> +#define   STOP_RING				REG_BIT(8)
> +#define   VS_TIMER_DISPATCH			REG_BIT(6)
>  #define RING_IMR(base)				_MMIO((base) + 0xa8)
>  #define RING_EIR(base)				_MMIO((base) + 0xb0)
>  #define RING_EMR(base)				_MMIO((base) + 0xb4)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 4cdb2cca2122..987e0e1e9c08 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -389,14 +389,6 @@
>  #define  _3D_CHICKEN_SDE_LIMIT_FIFO_POLY_DEPTH(x)	((x) << 1) /* gen8+ */
>  #define  _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH	(1 << 1) /* gen6 */
>  
> -#define MI_MODE		_MMIO(0x209c)
> -# define VS_TIMER_DISPATCH				(1 << 6)
> -# define MI_FLUSH_ENABLE				(1 << 12)
> -# define TGL_NESTED_BB_EN				(1 << 12)
> -# define ASYNC_FLIP_PERF_DISABLE			(1 << 14)
> -# define MODE_IDLE					(1 << 9)
> -# define STOP_RING					(1 << 8)
> -
>  #define GEN6_GT_MODE	_MMIO(0x20d0)
>  #define GEN7_GT_MODE	_MMIO(0x7008)
>  #define   GEN6_WIZ_HASHING(hi, lo)			(((hi) << 9) | ((lo) << 7))
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b146a393cd79..26038066e90b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -237,7 +237,7 @@ static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	wa_masked_en(wal, INSTPM, INSTPM_FORCE_ORDERING);
>  
>  	/* WaDisableAsyncFlipPerfMode:bdw,chv */
> -	wa_masked_en(wal, MI_MODE, ASYNC_FLIP_PERF_DISABLE);
> +	wa_masked_en(wal, RING_MI_MODE(RENDER_RING_BASE), ASYNC_FLIP_PERF_DISABLE);
>  
>  	/* WaDisablePartialInstShootdown:bdw,chv */
>  	wa_masked_en(wal, GEN8_ROW_CHICKEN,
> @@ -2474,7 +2474,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		 * WaDisableAsyncFlipPerfMode:snb,ivb,hsw,vlv
>  		 */
>  		wa_masked_en(wal,
> -			     MI_MODE,
> +			     RING_MI_MODE(RENDER_RING_BASE),
>  			     ASYNC_FLIP_PERF_DISABLE);
>  
>  	if (GRAPHICS_VER(i915) == 6) {
> @@ -2533,7 +2533,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  
>  	if (IS_GRAPHICS_VER(i915, 4, 6))
>  		/* WaTimedSingleVertexDispatch:cl,bw,ctg,elk,ilk,snb */
> -		wa_add(wal, MI_MODE,
> +		wa_add(wal, RING_MI_MODE(RENDER_RING_BASE),
>  		       0, _MASKED_BIT_ENABLE(VS_TIMER_DISPATCH),
>  		       /* XXX bit doesn't stick on Broadwater */
>  		       IS_I965G(i915) ? 0 : VS_TIMER_DISPATCH, true);
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 850ebfae31af..dd8fdd5863de 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1496,7 +1496,7 @@ ilk_dummy_write(struct intel_uncore *uncore)
>  	/* WaIssueDummyWriteToWakeupFromRC6:ilk Issue a dummy write to wake up
>  	 * the chip from rc6 before touching it for real. MI_MODE is masked,
>  	 * hence harmless to write 0 into. */
> -	__raw_uncore_write32(uncore, MI_MODE, 0);
> +	__raw_uncore_write32(uncore, RING_MI_MODE(RENDER_RING_BASE), 0);
>  }
>  
>  static void
> -- 
> 2.34.1
> 
