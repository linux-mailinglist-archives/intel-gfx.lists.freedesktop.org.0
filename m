Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4211B06F8
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 13:02:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C305D89D81;
	Mon, 20 Apr 2020 11:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E62289D81
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 11:02:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20957900-1500050 for multiple; Mon, 20 Apr 2020 12:02:53 +0100
MIME-Version: 1.0
In-Reply-To: <87y2qqmnpt.fsf@gaia.fi.intel.com>
References: <20200420090914.14679-1-chris@chris-wilson.co.uk>
 <87y2qqmnpt.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158738057131.19285.14967910014530902851@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 20 Apr 2020 12:02:51 +0100
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/selftests: Verify frequency
 scaling with RPS
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

Quoting Mika Kuoppala (2020-04-20 11:54:38)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > One of the core tenents of reclocking the GPU is that its throughput
> > scales with the clock frequency. We can observe this by incrementing a
> > loop counter on the GPU, and compare the different execution rates at
> > the notional RPS frequencies.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_gt_pm.c |   3 +-
> >  drivers/gpu/drm/i915/gt/selftest_rps.c   | 249 +++++++++++++++++++++--
> >  drivers/gpu/drm/i915/gt/selftest_rps.h   |   1 +
> >  3 files changed, 240 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> > index 0141c334f2ac..4b2733967c42 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> > @@ -53,8 +53,9 @@ int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
> >  {
> >       static const struct i915_subtest tests[] = {
> >               SUBTEST(live_rc6_manual),
> > -             SUBTEST(live_rps_interrupt),
> > +             SUBTEST(live_rps_frequency),
> >               SUBTEST(live_rps_power),
> > +             SUBTEST(live_rps_interrupt),
> >               SUBTEST(live_gt_resume),
> >       };
> >  
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > index 360f56aa4b82..b1a435db1edc 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > @@ -6,6 +6,7 @@
> >  #include <linux/sort.h>
> >  
> >  #include "intel_engine_pm.h"
> > +#include "intel_gpu_commands.h"
> >  #include "intel_gt_pm.h"
> >  #include "intel_rc6.h"
> >  #include "selftest_rps.h"
> > @@ -17,6 +18,242 @@ static void dummy_rps_work(struct work_struct *wrk)
> >  {
> >  }
> >  
> > +static int cmp_u64(const void *A, const void *B)
> > +{
> > +     const u64 *a = A, *b = B;
> > +
> > +     if (a < b)
> > +             return -1;
> > +     else if (a > b)
> > +             return 1;
> > +     else
> > +             return 0;
> > +}
> > +
> > +static struct i915_vma *
> > +create_spin_counter(struct intel_engine_cs *engine,
> > +                 struct i915_address_space *vm,
> > +                 u32 **cancel,
> > +                 u32 **counter)
> > +{
> > +     enum {
> > +             COUNT,
> 
> ok, it starts from zero.
> 
> > +             INC,
> > +             __NGPR__,
> > +     };
> > +#define CS_GPR(x) GEN8_RING_CS_GPR(engine->mmio_base, x)
> > +     struct drm_i915_gem_object *obj;
> > +     struct i915_vma *vma;
> > +     u32 *base, *cs;
> > +     int loop, i;
> > +     int err;
> > +
> > +     obj = i915_gem_object_create_internal(vm->i915, 4096);
> > +     if (IS_ERR(obj))
> > +             return ERR_CAST(obj);
> > +
> > +     vma = i915_vma_instance(obj, vm, NULL);
> > +     if (IS_ERR(vma)) {
> > +             i915_gem_object_put(obj);
> > +             return vma;
> > +     }
> > +
> > +     err = i915_vma_pin(vma, 0, 0, PIN_USER);
> > +     if (err) {
> > +             i915_vma_put(vma);
> 
> You forgot to put the obj.

The i915_vma_put() is i915_gem_object_put().

I know, I am in for a reckoning when I have to fix all the allocations
for i915_vma.kref being independent of the object.

> 
> > +             return ERR_PTR(err);
> > +     }
> > +
> > +     base = i915_gem_object_pin_map(obj, I915_MAP_WC);
> > +     if (IS_ERR(base)) {
> > +             i915_gem_object_put(obj);
> 
> You forgot to put the vma?

One and the same :)

> 
> > +             return ERR_CAST(base);
> > +     }
> > +     cs = base;
> > +
> > +     *cs++ = MI_LOAD_REGISTER_IMM(__NGPR__ * 2);
> > +     for (i = 0; i < __NGPR__; i++) {
> > +             *cs++ = i915_mmio_reg_offset(CS_GPR(i));
> > +             *cs++ = 0;
> > +             *cs++ = i915_mmio_reg_offset(CS_GPR(i)) + 4;
> > +             *cs++ = 0;
> > +     }
> > +
> > +     *cs++ = MI_LOAD_REGISTER_IMM(1);
> > +     *cs++ = i915_mmio_reg_offset(CS_GPR(INC));
> > +     *cs++ = 1;
> > +
> > +     loop = cs - base;
> > +
> > +     *cs++ = MI_MATH(4);
> > +     *cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCA, MI_MATH_REG(COUNT));
> > +     *cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCB, MI_MATH_REG(INC));
> > +     *cs++ = MI_MATH_ADD;
> > +     *cs++ = MI_MATH_STORE(MI_MATH_REG(COUNT), MI_MATH_REG_ACCU);
> > +
> > +     *cs++ = MI_STORE_REGISTER_MEM_GEN8;
> > +     *cs++ = i915_mmio_reg_offset(CS_GPR(COUNT));
> > +     *cs++ = lower_32_bits(vma->node.start + 1000 * sizeof(*cs));
> > +     *cs++ = upper_32_bits(vma->node.start + 1000 * sizeof(*cs));
> > +
> > +     *cs++ = MI_BATCH_BUFFER_START_GEN8;
> > +     *cs++ = lower_32_bits(vma->node.start + loop * sizeof(*cs));
> > +     *cs++ = upper_32_bits(vma->node.start + loop * sizeof(*cs));
> > +
> > +     i915_gem_object_flush_map(obj);
> > +
> > +     *cancel = base + loop;
> > +     *counter = memset32(base + 1000, 0, 1);
> > +     return vma;
> > +}
> > +
> > +static u64 __measure_frequency(u32 *cntr, int duration_ms)
> > +{
> > +     u64 dc, dt;
> > +
> > +     dt = ktime_get();
> > +     dc = READ_ONCE(*cntr);
> > +     usleep_range(1000 * duration_ms, 2000 * duration_ms);
> > +     dc = READ_ONCE(*cntr) - dc;
> > +     dt = ktime_get() - dt;
> > +
> > +     return div64_u64(1000 * 1000 * dc, dt);
> > +}
> > +
> > +static u64 measure_frequency_at(struct intel_rps *rps, u32 *cntr, int *freq)
> > +{
> > +     u64 x[5];
> > +     int i;
> > +
> > +     mutex_lock(&rps->lock);
> > +     GEM_BUG_ON(!rps->active);
> > +     intel_rps_set(rps, *freq);
> > +     mutex_unlock(&rps->lock);
> > +
> > +     msleep(20); /* more than enough time to stabilise! */
> > +
> > +     for (i = 0; i < 5; i++)
> > +             x[i] = __measure_frequency(cntr, 2);
> > +     *freq = read_cagf(rps);
> > +
> > +     /* A simple triangle filter for better result stability */
> > +     sort(x, 5, sizeof(*x), cmp_u64, NULL);
> > +     return div_u64(x[1] + 2 * x[2] + x[3], 4);
> > +}
> > +
> > +static bool scaled_within(u64 x, u64 y, u32 f_n, u32 f_d)
> > +{
> > +     return f_d * x > f_n * y && f_n * x < f_d * y;
> > +}
> > +
> > +int live_rps_frequency(void *arg)
> > +{
> > +     void (*saved_work)(struct work_struct *wrk);
> > +     struct intel_gt *gt = arg;
> > +     struct intel_rps *rps = &gt->rps;
> > +     struct intel_engine_cs *engine;
> > +     enum intel_engine_id id;
> > +     int err = 0;
> > +
> > +     /*
> > +      * The premise is that the GPU does change freqency at our behest.
> > +      * Let's check there is a correspondence between the requested
> > +      * frequency, the actual frequency, and the observed clock rate.
> > +      */
> > +
> > +     if (!rps->enabled || rps->max_freq <= rps->min_freq)
> > +             return 0;
> > +
> > +     if (INTEL_GEN(gt->i915) < 8) /* for CS simplicity */
> > +             return 0;
> > +
> > +     intel_gt_pm_wait_for_idle(gt);
> > +     saved_work = rps->work.func;
> > +     rps->work.func = dummy_rps_work;
> > +
> > +     for_each_engine(engine, gt, id) {
> > +             struct i915_request *rq;
> > +             struct i915_vma *vma;
> > +             u32 *cancel, *cntr;
> > +             struct {
> > +                     u64 count;
> > +                     int freq;
> > +             } min, max;
> > +
> > +             vma = create_spin_counter(engine,
> > +                                       engine->kernel_context->vm,
> > +                                       &cancel, &cntr);
> > +             if (IS_ERR(vma)) {
> > +                     err = PTR_ERR(vma);
> > +                     break;
> > +             }
> > +
> > +             rq = intel_engine_create_kernel_request(engine);
> > +             if (IS_ERR(rq)) {
> > +                     err = PTR_ERR(rq);
> > +                     goto err_vma;
> > +             }
> > +
> > +             i915_vma_lock(vma);
> > +             err = i915_request_await_object(rq, vma->obj, false);
> 
> I am puzzled what we need to wait asynchronously in here.

To bind the vma, mostly. Yes that is now hidden away by
i915_vma_move_to_active(), but we established the pattern to always add
the waits even if we expect them to be no-ops -- because it's a hard
task to find a missing one later.
 
> Further, intel_runtime_pm_get is missing.

For what? We acquire the wakeref via the request on the engine.

We don't talk to intel_runtime_pm directly, everything we should be
doing is engine specific, which knows which gt and the power management
for that.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
