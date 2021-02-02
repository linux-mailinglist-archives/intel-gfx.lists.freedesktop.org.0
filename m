Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB5430C471
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 16:53:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 647736E930;
	Tue,  2 Feb 2021 15:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4672D6E937
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 15:53:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23774198-1500050 for multiple; Tue, 02 Feb 2021 15:53:41 +0000
MIME-Version: 1.0
In-Reply-To: <7be7da6a-745f-536f-7407-15a9b4f259e7@linux.intel.com>
References: <20210202151445.20002-1-chris@chris-wilson.co.uk>
 <20210202151445.20002-3-chris@chris-wilson.co.uk>
 <7be7da6a-745f-536f-7407-15a9b4f259e7@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 02 Feb 2021 15:53:41 +0000
Message-ID: <161228122183.1150.11345446372757847691@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [CI 03/14] drm/i915/gt: Move CS interrupt handler
 to the backend
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

Quoting Tvrtko Ursulin (2021-02-02 15:49:59)
> 
> On 02/02/2021 15:14, Chris Wilson wrote:
> > The different submission backends each have their own preferred
> > behaviour and interrupt setup. Let each handle their own interrupts.
> > 
> > This becomes more useful later as we to extract the use of auxiliary
> > state in the interrupt handler that is backend specific.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  7 ++
> >   drivers/gpu/drm/i915/gt/intel_engine_types.h  | 14 +---
> >   .../drm/i915/gt/intel_execlists_submission.c  | 40 +++++++++
> >   drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 82 ++++++-------------
> >   drivers/gpu/drm/i915/gt/intel_gt_irq.h        |  7 ++
> >   .../gpu/drm/i915/gt/intel_ring_submission.c   |  7 ++
> >   drivers/gpu/drm/i915/gt/intel_rps.c           |  2 +-
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 10 ++-
> >   drivers/gpu/drm/i915/i915_irq.c               |  8 +-
> >   9 files changed, 103 insertions(+), 74 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index dab8d734e272..2a453ba5f25a 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -255,6 +255,11 @@ static void intel_engine_sanitize_mmio(struct intel_engine_cs *engine)
> >       intel_engine_set_hwsp_writemask(engine, ~0u);
> >   }
> >   
> > +static void nop_irq_handler(struct intel_engine_cs *engine, u32 iir)
> > +{
> > +     GEM_DEBUG_WARN_ON(iir);
> > +}
> > +
> >   static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
> >   {
> >       const struct engine_info *info = &intel_engines[id];
> > @@ -292,6 +297,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
> >       engine->hw_id = info->hw_id;
> >       engine->guc_id = MAKE_GUC_ID(info->class, info->instance);
> >   
> > +     engine->irq_handler = nop_irq_handler;
> > +
> >       engine->class = info->class;
> >       engine->instance = info->instance;
> >       __sprint_engine_name(engine);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index 9d59de5c559a..7fd035d45263 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -402,6 +402,7 @@ struct intel_engine_cs {
> >       u32             irq_enable_mask; /* bitmask to enable ring interrupt */
> >       void            (*irq_enable)(struct intel_engine_cs *engine);
> >       void            (*irq_disable)(struct intel_engine_cs *engine);
> > +     void            (*irq_handler)(struct intel_engine_cs *engine, u32 iir);
> >   
> >       void            (*sanitize)(struct intel_engine_cs *engine);
> >       int             (*resume)(struct intel_engine_cs *engine);
> > @@ -481,10 +482,9 @@ struct intel_engine_cs {
> >   #define I915_ENGINE_HAS_PREEMPTION   BIT(2)
> >   #define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
> >   #define I915_ENGINE_HAS_TIMESLICES   BIT(4)
> > -#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(5)
> > -#define I915_ENGINE_IS_VIRTUAL       BIT(6)
> > -#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(7)
> > -#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(8)
> > +#define I915_ENGINE_IS_VIRTUAL       BIT(5)
> > +#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(6)
> > +#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(7)
> >       unsigned int flags;
> >   
> >       /*
> > @@ -588,12 +588,6 @@ intel_engine_has_timeslices(const struct intel_engine_cs *engine)
> >       return engine->flags & I915_ENGINE_HAS_TIMESLICES;
> >   }
> >   
> > -static inline bool
> > -intel_engine_needs_breadcrumb_tasklet(const struct intel_engine_cs *engine)
> > -{
> > -     return engine->flags & I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
> > -}
> > -
> >   static inline bool
> >   intel_engine_is_virtual(const struct intel_engine_cs *engine)
> >   {
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index 4ddd2099a931..ed62e4b549d2 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -2394,6 +2394,45 @@ static void execlists_submission_tasklet(struct tasklet_struct *t)
> >       rcu_read_unlock();
> >   }
> >   
> > +static void execlists_irq_handler(struct intel_engine_cs *engine, u32 iir)
> > +{
> > +     bool tasklet = false;
> > +
> > +     if (unlikely(iir & GT_CS_MASTER_ERROR_INTERRUPT)) {
> > +             u32 eir;
> > +
> > +             /* Upper 16b are the enabling mask, rsvd for internal errors */
> > +             eir = ENGINE_READ(engine, RING_EIR) & GENMASK(15, 0);
> > +             ENGINE_TRACE(engine, "CS error: %x\n", eir);
> > +
> > +             /* Disable the error interrupt until after the reset */
> > +             if (likely(eir)) {
> > +                     ENGINE_WRITE(engine, RING_EMR, ~0u);
> > +                     ENGINE_WRITE(engine, RING_EIR, eir);
> > +                     WRITE_ONCE(engine->execlists.error_interrupt, eir);
> > +                     tasklet = true;
> > +             }
> > +     }
> > +
> > +     if (iir & GT_WAIT_SEMAPHORE_INTERRUPT) {
> > +             WRITE_ONCE(engine->execlists.yield,
> > +                        ENGINE_READ_FW(engine, RING_EXECLIST_STATUS_HI));
> > +             ENGINE_TRACE(engine, "semaphore yield: %08x\n",
> > +                          engine->execlists.yield);
> > +             if (del_timer(&engine->execlists.timer))
> > +                     tasklet = true;
> > +     }
> > +
> > +     if (iir & GT_CONTEXT_SWITCH_INTERRUPT)
> > +             tasklet = true;
> > +
> > +     if (iir & GT_RENDER_USER_INTERRUPT)
> > +             intel_engine_signal_breadcrumbs(engine);
> > +
> > +     if (tasklet)
> > +             tasklet_hi_schedule(&engine->execlists.tasklet);
> > +}
> > +
> >   static void __execlists_kick(struct intel_engine_execlists *execlists)
> >   {
> >       /* Kick the tasklet for some interrupt coalescing and reset handling */
> > @@ -3146,6 +3185,7 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
> >                * until a more refined solution exists.
> >                */
> >       }
> > +     engine->irq_handler = execlists_irq_handler;
> >   
> >       engine->flags |= I915_ENGINE_SUPPORTS_STATS;
> >       if (!intel_vgpu_active(engine->i915)) {
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> > index 9fc6c912a4e5..f5aa31ae8f6c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> > @@ -20,48 +20,6 @@ static void guc_irq_handler(struct intel_guc *guc, u16 iir)
> >               intel_guc_to_host_event_handler(guc);
> >   }
> >   
> > -static void
> > -cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
> > -{
> > -     bool tasklet = false;
> > -
> > -     if (unlikely(iir & GT_CS_MASTER_ERROR_INTERRUPT)) {
> > -             u32 eir;
> > -
> > -             /* Upper 16b are the enabling mask, rsvd for internal errors */
> > -             eir = ENGINE_READ(engine, RING_EIR) & GENMASK(15, 0);
> > -             ENGINE_TRACE(engine, "CS error: %x\n", eir);
> > -
> > -             /* Disable the error interrupt until after the reset */
> > -             if (likely(eir)) {
> > -                     ENGINE_WRITE(engine, RING_EMR, ~0u);
> > -                     ENGINE_WRITE(engine, RING_EIR, eir);
> > -                     WRITE_ONCE(engine->execlists.error_interrupt, eir);
> > -                     tasklet = true;
> > -             }
> > -     }
> > -
> > -     if (iir & GT_WAIT_SEMAPHORE_INTERRUPT) {
> > -             WRITE_ONCE(engine->execlists.yield,
> > -                        ENGINE_READ_FW(engine, RING_EXECLIST_STATUS_HI));
> > -             ENGINE_TRACE(engine, "semaphore yield: %08x\n",
> > -                          engine->execlists.yield);
> > -             if (del_timer(&engine->execlists.timer))
> > -                     tasklet = true;
> > -     }
> > -
> > -     if (iir & GT_CONTEXT_SWITCH_INTERRUPT)
> > -             tasklet = true;
> > -
> > -     if (iir & GT_RENDER_USER_INTERRUPT) {
> > -             intel_engine_signal_breadcrumbs(engine);
> > -             tasklet |= intel_engine_needs_breadcrumb_tasklet(engine);
> > -     }
> > -
> > -     if (tasklet)
> > -             tasklet_hi_schedule(&engine->execlists.tasklet);
> > -}
> > -
> >   static u32
> >   gen11_gt_engine_identity(struct intel_gt *gt,
> >                        const unsigned int bank, const unsigned int bit)
> > @@ -122,7 +80,7 @@ gen11_engine_irq_handler(struct intel_gt *gt, const u8 class,
> >               engine = NULL;
> >   
> >       if (likely(engine))
> > -             return cs_irq_handler(engine, iir);
> > +             return intel_engine_cs_irq(engine, iir);
> >   
> >       WARN_ONCE(1, "unhandled engine interrupt class=0x%x, instance=0x%x\n",
> >                 class, instance);
> > @@ -275,9 +233,12 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
> >   void gen5_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
> >   {
> >       if (gt_iir & GT_RENDER_USER_INTERRUPT)
> > -             intel_engine_signal_breadcrumbs(gt->engine_class[RENDER_CLASS][0]);
> > +             intel_engine_cs_irq(gt->engine_class[RENDER_CLASS][0],
> > +                                 gt_iir);
> > +
> >       if (gt_iir & ILK_BSD_USER_INTERRUPT)
> > -             intel_engine_signal_breadcrumbs(gt->engine_class[VIDEO_DECODE_CLASS][0]);
> > +             intel_engine_cs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0],
> > +                                 gt_iir);
> >   }
> >   
> >   static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
> > @@ -301,11 +262,16 @@ static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
> >   void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
> >   {
> >       if (gt_iir & GT_RENDER_USER_INTERRUPT)
> > -             intel_engine_signal_breadcrumbs(gt->engine_class[RENDER_CLASS][0]);
> > +             intel_engine_cs_irq(gt->engine_class[RENDER_CLASS][0],
> > +                                 gt_iir);
> > +
> >       if (gt_iir & GT_BSD_USER_INTERRUPT)
> > -             intel_engine_signal_breadcrumbs(gt->engine_class[VIDEO_DECODE_CLASS][0]);
> > +             intel_engine_cs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0],
> > +                                 gt_iir);
> > +
> >       if (gt_iir & GT_BLT_USER_INTERRUPT)
> > -             intel_engine_signal_breadcrumbs(gt->engine_class[COPY_ENGINE_CLASS][0]);
> > +             intel_engine_cs_irq(gt->engine_class[COPY_ENGINE_CLASS][0],
> > +                                 gt_iir);
> >   
> >       if (gt_iir & (GT_BLT_CS_ERROR_INTERRUPT |
> >                     GT_BSD_CS_ERROR_INTERRUPT |
> > @@ -324,10 +290,10 @@ void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl)
> >       if (master_ctl & (GEN8_GT_RCS_IRQ | GEN8_GT_BCS_IRQ)) {
> >               iir = raw_reg_read(regs, GEN8_GT_IIR(0));
> >               if (likely(iir)) {
> > -                     cs_irq_handler(gt->engine_class[RENDER_CLASS][0],
> > -                                    iir >> GEN8_RCS_IRQ_SHIFT);
> > -                     cs_irq_handler(gt->engine_class[COPY_ENGINE_CLASS][0],
> > -                                    iir >> GEN8_BCS_IRQ_SHIFT);
> > +                     intel_engine_cs_irq(gt->engine_class[RENDER_CLASS][0],
> > +                                         iir >> GEN8_RCS_IRQ_SHIFT);
> > +                     intel_engine_cs_irq(gt->engine_class[COPY_ENGINE_CLASS][0],
> > +                                         iir >> GEN8_BCS_IRQ_SHIFT);
> >                       raw_reg_write(regs, GEN8_GT_IIR(0), iir);
> >               }
> >       }
> > @@ -335,10 +301,10 @@ void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl)
> >       if (master_ctl & (GEN8_GT_VCS0_IRQ | GEN8_GT_VCS1_IRQ)) {
> >               iir = raw_reg_read(regs, GEN8_GT_IIR(1));
> >               if (likely(iir)) {
> > -                     cs_irq_handler(gt->engine_class[VIDEO_DECODE_CLASS][0],
> > -                                    iir >> GEN8_VCS0_IRQ_SHIFT);
> > -                     cs_irq_handler(gt->engine_class[VIDEO_DECODE_CLASS][1],
> > -                                    iir >> GEN8_VCS1_IRQ_SHIFT);
> > +                     intel_engine_cs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0],
> > +                                         iir >> GEN8_VCS0_IRQ_SHIFT);
> > +                     intel_engine_cs_irq(gt->engine_class[VIDEO_DECODE_CLASS][1],
> > +                                         iir >> GEN8_VCS1_IRQ_SHIFT);
> >                       raw_reg_write(regs, GEN8_GT_IIR(1), iir);
> >               }
> >       }
> > @@ -346,8 +312,8 @@ void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl)
> >       if (master_ctl & GEN8_GT_VECS_IRQ) {
> >               iir = raw_reg_read(regs, GEN8_GT_IIR(3));
> >               if (likely(iir)) {
> > -                     cs_irq_handler(gt->engine_class[VIDEO_ENHANCEMENT_CLASS][0],
> > -                                    iir >> GEN8_VECS_IRQ_SHIFT);
> > +                     intel_engine_cs_irq(gt->engine_class[VIDEO_ENHANCEMENT_CLASS][0],
> > +                                         iir >> GEN8_VECS_IRQ_SHIFT);
> >                       raw_reg_write(regs, GEN8_GT_IIR(3), iir);
> >               }
> >       }
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.h b/drivers/gpu/drm/i915/gt/intel_gt_irq.h
> > index f667e976fb2b..601473fe9df9 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.h
> > @@ -8,6 +8,8 @@
> >   
> >   #include <linux/types.h>
> >   
> > +#include "intel_engine_types.h"
> > +
> >   struct intel_gt;
> >   
> >   #define GEN8_GT_IRQS (GEN8_GT_RCS_IRQ | \
> > @@ -39,4 +41,9 @@ void gen8_gt_irq_handler(struct intel_gt *gt, u32 master_ctl);
> >   void gen8_gt_irq_reset(struct intel_gt *gt);
> >   void gen8_gt_irq_postinstall(struct intel_gt *gt);
> >   
> > +static inline void intel_engine_cs_irq(struct intel_engine_cs *engine, u32 iir)
> > +{
> > +     engine->irq_handler(engine, iir);
> > +}
> > +
> >   #endif /* INTEL_GT_IRQ_H */
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > index 3cb2ce503544..9b5bfbe79347 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> > @@ -997,10 +997,17 @@ static void ring_release(struct intel_engine_cs *engine)
> >       intel_timeline_put(engine->legacy.timeline);
> >   }
> >   
> > +static void irq_handler(struct intel_engine_cs *engine, u32 iir)
> > +{
> > +     intel_engine_signal_breadcrumbs(engine);
> > +}
> > +
> >   static void setup_irq(struct intel_engine_cs *engine)
> >   {
> >       struct drm_i915_private *i915 = engine->i915;
> >   
> > +     engine->irq_handler = irq_handler;
> > +
> >       if (INTEL_GEN(i915) >= 6) {
> >               engine->irq_enable = gen6_irq_enable;
> >               engine->irq_disable = gen6_irq_disable;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> > index 405d814e9040..4ba6a33f65cf 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> > @@ -1774,7 +1774,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
> >               return;
> >   
> >       if (pm_iir & PM_VEBOX_USER_INTERRUPT)
> > -             intel_engine_signal_breadcrumbs(gt->engine[VECS0]);
> > +             intel_engine_cs_irq(gt->engine[VECS0], pm_iir);
> >   
> >       if (pm_iir & PM_VEBOX_CS_ERROR_INTERRUPT)
> >               DRM_DEBUG("Command parser error, pm_iir 0x%08x\n", pm_iir);
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 17b551a0c89f..96a38466299e 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -264,6 +264,14 @@ static void guc_submission_tasklet(struct tasklet_struct *t)
> >       spin_unlock_irqrestore(&engine->active.lock, flags);
> >   }
> >   
> > +static void cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
> > +{
> > +     if (iir & GT_RENDER_USER_INTERRUPT) {
> > +             intel_engine_signal_breadcrumbs(engine);
> > +             tasklet_hi_schedule(&engine->execlists.tasklet);
> > +     }
> > +}
> > +
> >   static void guc_reset_prepare(struct intel_engine_cs *engine)
> >   {
> >       struct intel_engine_execlists * const execlists = &engine->execlists;
> > @@ -645,7 +653,6 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
> >       }
> >       engine->set_default_submission = guc_set_default_submission;
> >   
> > -     engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
> >       engine->flags |= I915_ENGINE_HAS_PREEMPTION;
> >   
> >       /*
> > @@ -681,6 +688,7 @@ static void rcs_submission_override(struct intel_engine_cs *engine)
> >   static inline void guc_default_irqs(struct intel_engine_cs *engine)
> >   {
> >       engine->irq_keep_mask = GT_RENDER_USER_INTERRUPT;
> > +     engine->irq_handler = cs_irq_handler;
> >   }
> >   
> >   int intel_guc_submission_setup(struct intel_engine_cs *engine)
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> > index 9d47da8ec86d..37a48402adc1 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -3954,7 +3954,7 @@ static irqreturn_t i8xx_irq_handler(int irq, void *arg)
> >               intel_uncore_write16(&dev_priv->uncore, GEN2_IIR, iir);
> >   
> >               if (iir & I915_USER_INTERRUPT)
> > -                     intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
> > +                     intel_engine_cs_irq(dev_priv->gt.engine[RCS0], iir);
> >   
> >               if (iir & I915_MASTER_ERROR_INTERRUPT)
> >                       i8xx_error_irq_handler(dev_priv, eir, eir_stuck);
> > @@ -4062,7 +4062,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
> >               intel_uncore_write(&dev_priv->uncore, GEN2_IIR, iir);
> >   
> >               if (iir & I915_USER_INTERRUPT)
> > -                     intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
> > +                     intel_engine_cs_irq(dev_priv->gt.engine[RCS0], iir);
> >   
> >               if (iir & I915_MASTER_ERROR_INTERRUPT)
> >                       i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
> > @@ -4207,10 +4207,10 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
> >               intel_uncore_write(&dev_priv->uncore, GEN2_IIR, iir);
> >   
> >               if (iir & I915_USER_INTERRUPT)
> > -                     intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
> > +                     intel_engine_cs_irq(dev_priv->gt.engine[RCS0], iir);
> >   
> >               if (iir & I915_BSD_USER_INTERRUPT)
> > -                     intel_engine_signal_breadcrumbs(dev_priv->gt.engine[VCS0]);
> > +                     intel_engine_cs_irq(dev_priv->gt.engine[VCS0], iir);
> >   
> >               if (iir & I915_MASTER_ERROR_INTERRUPT)
> >                       i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
> > 
> 
> Looks believable as design cleanup.
> 
> Wonder if some barrier is neded after overwriting the nop handler to be 
> sure it propagates to all CPUs by the time interrupts get enabled. Maybe 
> we have enough sync points between the two events. Or add a paranoid 
> setter with some barrier - what would be required to flush the write to 
> all cores? smp_store_mb?

Hmm. Indeed, that seems justified. So justified I expect it's already
taken care of for us on installing the irq handler. Let's have a look.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
