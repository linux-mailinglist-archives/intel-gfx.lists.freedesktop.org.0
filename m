Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BF711BF0C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 22:21:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A8576EBEF;
	Wed, 11 Dec 2019 21:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 795C76EBEE
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 21:21:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19547311-1500050 for multiple; Wed, 11 Dec 2019 21:20:51 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191211211244.7831-2-daniele.ceraolospurio@intel.com>
References: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
 <20191211211244.7831-2-daniele.ceraolospurio@intel.com>
Message-ID: <157609925197.27099.7914911837320369934@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Dec 2019 21:20:52 +0000
Subject: Re: [Intel-gfx] [RFC 1/5] drm/i915: introduce logical_ring and
 lr_context naming
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

Quoting Daniele Ceraolo Spurio (2019-12-11 21:12:40)
> Ahead of splitting out the code specific to execlists submission to its
> own file, we can re-organize the code within the intel_lrc file to make
> that separation clearer. To achieve this, a number of functions have
> been split/renamed using the "logical_ring" and "lr_context" naming,
> respectively for engine-related setup and lrc management.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c    | 154 ++++++++++++++-----------
>  drivers/gpu/drm/i915/gt/selftest_lrc.c |  12 +-
>  2 files changed, 93 insertions(+), 73 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 929f6bae4eba..6d6148e11fd0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -228,17 +228,17 @@ static struct virtual_engine *to_virtual_engine(struct intel_engine_cs *engine)
>         return container_of(engine, struct virtual_engine, base);
>  }
>  
> -static int __execlists_context_alloc(struct intel_context *ce,
> -                                    struct intel_engine_cs *engine);
> -
> -static void execlists_init_reg_state(u32 *reg_state,
> -                                    const struct intel_context *ce,
> -                                    const struct intel_engine_cs *engine,
> -                                    const struct intel_ring *ring,
> -                                    bool close);
> +static int lr_context_alloc(struct intel_context *ce,
> +                           struct intel_engine_cs *engine);

Execlists.

> +
> +static void lr_context_init_reg_state(u32 *reg_state,
> +                                     const struct intel_context *ce,
> +                                     const struct intel_engine_cs *engine,
> +                                     const struct intel_ring *ring,
> +                                     bool close);

lrc. lrc should just be the register offsets and default context image.

>  static void
> -__execlists_update_reg_state(const struct intel_context *ce,
> -                            const struct intel_engine_cs *engine);
> +lr_context_update_reg_state(const struct intel_context *ce,
> +                           const struct intel_engine_cs *engine);

lrc.

>  
>  static void mark_eio(struct i915_request *rq)
>  {
> @@ -1035,8 +1035,8 @@ execlists_check_context(const struct intel_context *ce,
>         WARN_ONCE(!valid, "Invalid lrc state found before submission\n");
>  }
>  
> -static void restore_default_state(struct intel_context *ce,
> -                                 struct intel_engine_cs *engine)
> +static void lr_context_restore_default_state(struct intel_context *ce,
> +                                            struct intel_engine_cs *engine)
>  {
>         u32 *regs = ce->lrc_reg_state;
>  
> @@ -1045,7 +1045,7 @@ static void restore_default_state(struct intel_context *ce,
>                        engine->pinned_default_state + LRC_STATE_PN * PAGE_SIZE,
>                        engine->context_size - PAGE_SIZE);
>  
> -       execlists_init_reg_state(regs, ce, engine, ce->ring, false);
> +       lr_context_init_reg_state(regs, ce, engine, ce->ring, false);
>  }
>  
>  static void reset_active(struct i915_request *rq,
> @@ -1081,8 +1081,8 @@ static void reset_active(struct i915_request *rq,
>         intel_ring_update_space(ce->ring);
>  
>         /* Scrub the context image to prevent replaying the previous batch */
> -       restore_default_state(ce, engine);
> -       __execlists_update_reg_state(ce, engine);
> +       lr_context_restore_default_state(ce, engine);
> +       lr_context_update_reg_state(ce, engine);
>  
>         /* We've switched away, so this should be a no-op, but intent matters */
>         ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
> @@ -2378,7 +2378,7 @@ static void execlists_submit_request(struct i915_request *request)
>         spin_unlock_irqrestore(&engine->active.lock, flags);
>  }
>  
> -static void __execlists_context_fini(struct intel_context *ce)
> +static void lr_context_fini(struct intel_context *ce)

execlists.

>  {
>         intel_ring_put(ce->ring);
>         i915_vma_put(ce->state);
> @@ -2392,7 +2392,7 @@ static void execlists_context_destroy(struct kref *kref)
>         GEM_BUG_ON(intel_context_is_pinned(ce));
>  
>         if (ce->state)
> -               __execlists_context_fini(ce);
> +               lr_context_fini(ce);
>  
>         intel_context_fini(ce);
>         intel_context_free(ce);
> @@ -2423,7 +2423,7 @@ check_redzone(const void *vaddr, const struct intel_engine_cs *engine)
>                              engine->name);
>  }
>  
> -static void execlists_context_unpin(struct intel_context *ce)
> +static void intel_lr_context_unpin(struct intel_context *ce)

execlists.

>  {
>         check_redzone((void *)ce->lrc_reg_state - LRC_STATE_PN * PAGE_SIZE,
>                       ce->engine);
> @@ -2433,8 +2433,8 @@ static void execlists_context_unpin(struct intel_context *ce)
>  }
>  
>  static void
> -__execlists_update_reg_state(const struct intel_context *ce,
> -                            const struct intel_engine_cs *engine)
> +lr_context_update_reg_state(const struct intel_context *ce,
> +                           const struct intel_engine_cs *engine)

lrc.

>  {
>         struct intel_ring *ring = ce->ring;
>         u32 *regs = ce->lrc_reg_state;
> @@ -2456,8 +2456,7 @@ __execlists_update_reg_state(const struct intel_context *ce,
>  }
>  
>  static int
> -__execlists_context_pin(struct intel_context *ce,
> -                       struct intel_engine_cs *engine)
> +lr_context_pin(struct intel_context *ce, struct intel_engine_cs *engine)

execlists.

>  {
>         void *vaddr;
>         int ret;
> @@ -2479,7 +2478,7 @@ __execlists_context_pin(struct intel_context *ce,
>  
>         ce->lrc_desc = lrc_descriptor(ce, engine);
>         ce->lrc_reg_state = vaddr + LRC_STATE_PN * PAGE_SIZE;
> -       __execlists_update_reg_state(ce, engine);
> +       lr_context_update_reg_state(ce, engine);
>  
>         return 0;
>  
> @@ -2491,12 +2490,12 @@ __execlists_context_pin(struct intel_context *ce,
>  
>  static int execlists_context_pin(struct intel_context *ce)
>  {
> -       return __execlists_context_pin(ce, ce->engine);
> +       return lr_context_pin(ce, ce->engine);
>  }
>  
>  static int execlists_context_alloc(struct intel_context *ce)
>  {
> -       return __execlists_context_alloc(ce, ce->engine);
> +       return lr_context_alloc(ce, ce->engine);
>  }
>  
>  static void execlists_context_reset(struct intel_context *ce)
> @@ -2518,14 +2517,14 @@ static void execlists_context_reset(struct intel_context *ce)
>          * simplicity, we just zero everything out.
>          */
>         intel_ring_reset(ce->ring, 0);
> -       __execlists_update_reg_state(ce, ce->engine);
> +       lr_context_update_reg_state(ce, ce->engine);
>  }
>  
>  static const struct intel_context_ops execlists_context_ops = {
>         .alloc = execlists_context_alloc,
>  
>         .pin = execlists_context_pin,
> -       .unpin = execlists_context_unpin,
> +       .unpin = intel_lr_context_unpin,

execlists.

>  
>         .enter = intel_context_enter_engine,
>         .exit = intel_context_exit_engine,
> @@ -2912,7 +2911,33 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
>         return ret;
>  }
>  
> -static void enable_execlists(struct intel_engine_cs *engine)
> +static int logical_ring_init(struct intel_engine_cs *engine)
> +{
> +       int ret;
> +
> +       ret = intel_engine_init_common(engine);
> +       if (ret)
> +               return ret;
> +
> +       if (intel_init_workaround_bb(engine))
> +               /*
> +                * We continue even if we fail to initialize WA batch
> +                * because we only expect rare glitches but nothing
> +                * critical to prevent us from using GPU
> +                */
> +               DRM_ERROR("WA batch buffer initialization failed\n");
> +
> +       return 0;
> +}
> +
> +static void logical_ring_destroy(struct intel_engine_cs *engine)
> +{
> +       intel_engine_cleanup_common(engine);
> +       lrc_destroy_wa_ctx(engine);
> +       kfree(engine);

> +}
> +
> +static void logical_ring_enable(struct intel_engine_cs *engine)
>  {
>         u32 mode;
>  
> @@ -2946,7 +2971,7 @@ static bool unexpected_starting_state(struct intel_engine_cs *engine)
>         return unexpected;
>  }
>  
> -static int execlists_resume(struct intel_engine_cs *engine)
> +static int logical_ring_resume(struct intel_engine_cs *engine)

execlists.

>  {
>         intel_engine_apply_workarounds(engine);
>         intel_engine_apply_whitelist(engine);
> @@ -2961,7 +2986,7 @@ static int execlists_resume(struct intel_engine_cs *engine)
>                 intel_engine_dump(engine, &p, NULL);
>         }
>  
> -       enable_execlists(engine);
> +       logical_ring_enable(engine);
>  
>         return 0;
>  }
> @@ -3037,8 +3062,8 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
>                                &execlists->csb_status[reset_value]);
>  }
>  
> -static void __execlists_reset_reg_state(const struct intel_context *ce,
> -                                       const struct intel_engine_cs *engine)
> +static void lr_context_reset_reg_state(const struct intel_context *ce,
> +                                      const struct intel_engine_cs *engine)

lrc.

>  {
>         u32 *regs = ce->lrc_reg_state;
>         int x;
> @@ -3131,14 +3156,14 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
>          * to recreate its own state.
>          */
>         GEM_BUG_ON(!intel_context_is_pinned(ce));
> -       restore_default_state(ce, engine);
> +       lr_context_restore_default_state(ce, engine);
>  
>  out_replay:
>         GEM_TRACE("%s replay {head:%04x, tail:%04x}\n",
>                   engine->name, ce->ring->head, ce->ring->tail);
>         intel_ring_update_space(ce->ring);
> -       __execlists_reset_reg_state(ce, engine);
> -       __execlists_update_reg_state(ce, engine);
> +       lr_context_reset_reg_state(ce, engine);
> +       lr_context_update_reg_state(ce, engine);
>         ce->lrc_desc |= CTX_DESC_FORCE_RESTORE; /* paranoid: GPU was reset! */
>  
>  unwind:
> @@ -3788,9 +3813,7 @@ static void execlists_destroy(struct intel_engine_cs *engine)
>  {
>         execlists_shutdown(engine);
>  
> -       intel_engine_cleanup_common(engine);
> -       lrc_destroy_wa_ctx(engine);
> -       kfree(engine);
> +       logical_ring_destroy(engine);
>  }
>  
>  static void
> @@ -3799,7 +3822,7 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
>         /* Default vfuncs which can be overriden by each engine. */
>  
>         engine->destroy = execlists_destroy;
> -       engine->resume = execlists_resume;
> +       engine->resume = logical_ring_resume;
>  
>         engine->reset.prepare = execlists_reset_prepare;
>         engine->reset.reset = execlists_reset;
> @@ -3872,6 +3895,15 @@ static void rcs_submission_override(struct intel_engine_cs *engine)
>         }
>  }
>  
> +static void logical_ring_setup(struct intel_engine_cs *engine)
> +{
> +       logical_ring_default_vfuncs(engine);
> +       logical_ring_default_irqs(engine);
> +
> +       if (engine->class == RENDER_CLASS)
> +               rcs_submission_override(engine);
> +}
> +
>  int intel_execlists_submission_setup(struct intel_engine_cs *engine)
>  {
>         tasklet_init(&engine->execlists.tasklet,
> @@ -3879,11 +3911,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
>         timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
>         timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
>  
> -       logical_ring_default_vfuncs(engine);
> -       logical_ring_default_irqs(engine);
> -
> -       if (engine->class == RENDER_CLASS)
> -               rcs_submission_override(engine);
> +       logical_ring_setup(engine);
>  
>         return 0;
>  }
> @@ -3896,18 +3924,10 @@ int intel_execlists_submission_init(struct intel_engine_cs *engine)
>         u32 base = engine->mmio_base;
>         int ret;
>  
> -       ret = intel_engine_init_common(engine);
> +       ret = logical_ring_init(engine);
>         if (ret)
>                 return ret;
>  
> -       if (intel_init_workaround_bb(engine))
> -               /*
> -                * We continue even if we fail to initialize WA batch
> -                * because we only expect rare glitches but nothing
> -                * critical to prevent us from using GPU
> -                */
> -               DRM_ERROR("WA batch buffer initialization failed\n");
> -
>         if (HAS_LOGICAL_RING_ELSQ(i915)) {
>                 execlists->submit_reg = uncore->regs +
>                         i915_mmio_reg_offset(RING_EXECLIST_SQ_CONTENTS(base));
> @@ -4033,11 +4053,11 @@ static struct i915_ppgtt *vm_alias(struct i915_address_space *vm)
>                 return i915_vm_to_ppgtt(vm);
>  }
>  
> -static void execlists_init_reg_state(u32 *regs,
> -                                    const struct intel_context *ce,
> -                                    const struct intel_engine_cs *engine,
> -                                    const struct intel_ring *ring,
> -                                    bool close)
> +static void lr_context_init_reg_state(u32 *regs,
> +                                     const struct intel_context *ce,
> +                                     const struct intel_engine_cs *engine,
> +                                     const struct intel_ring *ring,
> +                                     bool close)
>  {
>         /*
>          * A context is actually a big batch buffer with several
> @@ -4105,7 +4125,7 @@ populate_lr_context(struct intel_context *ce,
>         /* The second page of the context object contains some fields which must
>          * be set up prior to the first execution. */
>         regs = vaddr + LRC_STATE_PN * PAGE_SIZE;
> -       execlists_init_reg_state(regs, ce, engine, ring, inhibit);
> +       lr_context_init_reg_state(regs, ce, engine, ring, inhibit);
>         if (inhibit)
>                 regs[CTX_CONTEXT_CONTROL] |=
>                         _MASKED_BIT_ENABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
