Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C73DA14D48B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 01:16:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E272D6E513;
	Thu, 30 Jan 2020 00:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 915B96E513
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 00:16:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20053682-1500050 for multiple; Thu, 30 Jan 2020 00:16:23 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200129235900.7670-2-daniele.ceraolospurio@intel.com>
References: <20200129235900.7670-1-daniele.ceraolospurio@intel.com>
 <20200129235900.7670-2-daniele.ceraolospurio@intel.com>
Message-ID: <158034338240.14720.5916251012702202888@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 30 Jan 2020 00:16:22 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Move ringbuffer WAs to engine
 workaround list
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

Quoting Daniele Ceraolo Spurio (2020-01-29 23:59:00)
> Now that intel_engine_apply_workarounds is called on all gens, we can
> use the engine workaround lists for pre-gen8 workarounds as well to be
> consistent in the way we handle and dump the WAs.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>

If you go looking, you'll find plenty more gen2-7 w/a scattered about
the place.

> +static void
> +wa_masked_dis(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
> +{
> +       wa_write_masked_or(wal, reg, val, _MASKED_BIT_DISABLE(val));
> +}
> +
>  static void
>  wa_write(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
>  {
> @@ -1457,6 +1463,51 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>                             GEN8_L3SQCREG4,
>                             GEN8_LQSC_FLUSH_COHERENT_LINES);
>         }
> +
> +       if (IS_GEN(i915, 7))
> +               /* WaBCSVCSTlbInvalidationMode:ivb,vlv,hsw */
> +               wa_masked_en(wal,
> +                            GFX_MODE_GEN7,
> +                            GFX_TLB_INVALIDATE_EXPLICIT | GFX_REPLAY_MODE);
> +
> +       if (IS_GEN_RANGE(i915, 6, 7))
> +               /*
> +                * We need to disable the AsyncFlip performance optimisations in
> +                * order to use MI_WAIT_FOR_EVENT within the CS. It should
> +                * already be programmed to '1' on all products.
> +                *
> +                * WaDisableAsyncFlipPerfMode:snb,ivb,hsw,vlv
> +                */
> +               wa_masked_en(wal,
> +                            MI_MODE,
> +                            ASYNC_FLIP_PERF_DISABLE);
> +
> +       if (IS_GEN(i915, 6)) {
> +               /*
> +                * Required for the hardware to program scanline values for
> +                * waiting
> +                * WaEnableFlushTlbInvalidationMode:snb
> +                */
> +               wa_masked_en(wal,
> +                            GFX_MODE,
> +                            GFX_TLB_INVALIDATE_EXPLICIT);
> +
> +               /*
> +                * From the Sandybridge PRM, volume 1 part 3, page 24:
> +                * "If this bit is set, STCunit will have LRA as replacement
> +                *  policy. [...] This bit must be reset. LRA replacement
> +                *  policy is not supported."
> +                */
> +               wa_masked_dis(wal,
> +                             CACHE_MODE_0,
> +                             CM0_STC_EVICT_DISABLE_LRA_SNB);
> +       }
> +
> +       if (IS_GEN_RANGE(i915, 4, 6))
> +               /* WaTimedSingleVertexDispatch:cl,bw,ctg,elk,ilk,snb */
> +               wa_masked_en(wal,
> +                            MI_MODE,
> +                            VS_TIMER_DISPATCH);
>  }

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Let's hope this holds up in testing, now that we expose it to the tests!

>  static void
> @@ -1475,7 +1526,7 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  static void
>  engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  {
> -       if (I915_SELFTEST_ONLY(INTEL_GEN(engine->i915) < 8))
> +       if (I915_SELFTEST_ONLY(INTEL_GEN(engine->i915) < 4))
>                 return;
>  
>         if (engine->class == RENDER_CLASS)
> @@ -1488,7 +1539,7 @@ void intel_engine_init_workarounds(struct intel_engine_cs *engine)
>  {
>         struct i915_wa_list *wal = &engine->wa_list;
>  
> -       if (INTEL_GEN(engine->i915) < 8)
> +       if (INTEL_GEN(engine->i915) < 4)
>                 return;

Can we drop this yet? It's easy to overlook when extending the list of
w/a, so quite surprising.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
