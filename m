Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E2723425C
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 11:21:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CDB56EA46;
	Fri, 31 Jul 2020 09:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF8676EA46
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 09:21:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21990739-1500050 for multiple; Fri, 31 Jul 2020 10:21:23 +0100
MIME-Version: 1.0
In-Reply-To: <20200731060723.3911-2-umesh.nerlige.ramappa@intel.com>
References: <20200731060723.3911-1-umesh.nerlige.ramappa@intel.com>
 <20200731060723.3911-2-umesh.nerlige.ramappa@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 10:21:22 +0100
Message-ID: <159618728227.9621.5465800347924580622@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/perf: Ensure observation logic
 is not clock gated
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Umesh Nerlige Ramappa (2020-07-31 07:07:20)
> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
> 
> A clock gating switch can control if the performance monitoring and
> observation logic is enaled or not. Ensure that we enable the clocks.
> 
> v2: Separate code from other patches (Lionel)
> v3: Reset PMON enable when disabling perf to save power (Lionel)
> 
> Fixes: 00a7f0d7155c ("drm/i915/tgl: Add perf support on TGL")
> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_perf.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h  |  2 ++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index c6f6370283cf..fe408c327d3c 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2493,6 +2493,14 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
>                             (period_exponent << GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT))
>                             : 0);
>  
> +       /*
> +        * Initialize Super Queue Internal Cnt Register
> +        * Set PMON Enable in order to collect valid metrics.
> +        */
> +       intel_uncore_write(uncore, GEN12_SQCNT1,
> +                          intel_uncore_read(uncore, GEN12_SQCNT1) |
> +                          GEN12_SQCNT1_PMON_ENABLE);

intel_uncore_rmw(uncore, GEN12_SQCNT, 0 GEN12_SQCNT1_PMON_ENABLE);

> +
>         /*
>          * Update all contexts prior writing the mux configurations as we need
>          * to make sure all slices/subslices are ON before writing to NOA
> @@ -2552,6 +2560,11 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
>  
>         /* Make sure we disable noa to save power. */
>         intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
> +
> +       /* Reset PMON Enable to save power. */
> +       intel_uncore_write(uncore, GEN12_SQCNT1,
> +                          intel_uncore_read(uncore, GEN12_SQCNT1) &
> +                          ~GEN12_SQCNT1_PMON_ENABLE);

intel_uncore_rmw(uncore, GEN12_SQCNT, GEN12_SQCNT1_PMON_ENABLE, 0);

Tempting to suggest we add intel_uncore_set_bit/clr_bit helpers around
the rmw helper.

>  }
>  
>  static void gen7_oa_enable(struct i915_perf_stream *stream)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5eae593ee784..377339399458 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -696,6 +696,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define OABUFFER_SIZE_16M   (7 << 3)
>  
>  #define GEN12_OA_TLB_INV_CR _MMIO(0xceec)
> +#define GEN12_SQCNT1 _MMIO(0x8718)
> +#define  GEN12_SQCNT1_PMON_ENABLE (1 << 30)

REG_BIT(30)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
