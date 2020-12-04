Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 735E22CECB4
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 12:06:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D3236E13A;
	Fri,  4 Dec 2020 11:06:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC586E13A
 for <Intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 11:06:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23212935-1500050 for multiple; Fri, 04 Dec 2020 11:06:18 +0000
MIME-Version: 1.0
In-Reply-To: <23fc777b-58d4-4bb0-6e2e-a0182246d063@linux.intel.com>
References: <20201126164703.1578226-1-tvrtko.ursulin@linux.intel.com>
 <160703481225.6805.2703036425596972611@build.alporthouse.com>
 <23fc777b-58d4-4bb0-6e2e-a0182246d063@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Fri, 04 Dec 2020 11:06:17 +0000
Message-ID: <160707997705.7398.4425722691050660336@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Deprecate I915_PMU_LAST and
 optimize state tracking
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

Quoting Tvrtko Ursulin (2020-12-04 10:57:52)
> 
> On 03/12/2020 22:33, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-11-26 16:47:03)
> >> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>
> >> Adding any kinds of "last" abi markers is usually a mistake which I
> >> repeated when implementing the PMU because it felt convenient at the time.
> >>
> >> This patch marks I915_PMU_LAST as deprecated and stops the internal
> >> implementation using it for sizing the event status bitmask and array.
> >>
> >> New way of sizing the fields is a bit less elegant, but it omits reserving
> >> slots for tracking events we are not interested in, and as such saves some
> >> runtime space. Adding sampling events is likely to be a special event and
> >> the new plumbing needed will be easily detected in testing. Existing
> >> asserts against the bitfield and array sizes are keeping the code safe.
> >>
> >> First event which gets the new treatment in this new scheme are the
> >> interrupts - which neither needs any tracking in i915 pmu nor needs
> >> waking up the GPU to read it.
> >>
> >> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/i915_pmu.c | 64 +++++++++++++++++++++++++++------
> >>   drivers/gpu/drm/i915/i915_pmu.h | 35 ++++++++++++------
> >>   include/uapi/drm/i915_drm.h     |  2 +-
> >>   3 files changed, 78 insertions(+), 23 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> >> index cd786ad12be7..cd564c709115 100644
> >> --- a/drivers/gpu/drm/i915/i915_pmu.c
> >> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> >> @@ -27,8 +27,6 @@
> >>           BIT(I915_SAMPLE_WAIT) | \
> >>           BIT(I915_SAMPLE_SEMA))
> >>   
> >> -#define ENGINE_SAMPLE_BITS (1 << I915_PMU_SAMPLE_BITS)
> >> -
> >>   static cpumask_t i915_pmu_cpumask;
> >>   static unsigned int i915_pmu_target_cpu = -1;
> >>   
> >> @@ -57,12 +55,39 @@ static bool is_engine_config(u64 config)
> >>          return config < __I915_PMU_OTHER(0);
> >>   }
> >>   
> >> -static unsigned int config_enabled_bit(u64 config)
> >> +static unsigned int is_tracked_config(const u64 config)
> >>   {
> >> -       if (is_engine_config(config))
> >> +       unsigned int val;
> >> +
> >> +       switch (config) {
> >> +       case I915_PMU_ACTUAL_FREQUENCY:
> >> +               val =  __I915_PMU_ACTUAL_FREQUENCY_ENABLED;
> >> +               break;
> >> +       case I915_PMU_REQUESTED_FREQUENCY:
> >> +               val = __I915_PMU_REQUESTED_FREQUENCY_ENABLED;
> >> +               break;
> >> +       case I915_PMU_RC6_RESIDENCY:
> >> +               val = __I915_PMU_RC6_RESIDENCY_ENABLED;
> >> +               break;
> >> +       default:
> >> +               return 0;
> >> +       }
> >> +
> >> +       return val + 1;
> >> +}
> >> +
> >> +static unsigned int config_enabled_bit(const u64 config)
> >> +{
> >> +       if (is_engine_config(config)) {
> >>                  return engine_config_sample(config);
> >> -       else
> >> -               return ENGINE_SAMPLE_BITS + (config - __I915_PMU_OTHER(0));
> >> +       } else {
> >> +               unsigned int bit = is_tracked_config(config);
> >> +
> >> +               if (bit)
> >> +                       return I915_ENGINE_SAMPLE_COUNT + bit - 1;
> >> +               else
> >> +                       return -1;
> >> +       }
> >>   }
> >>   
> >>   static u64 config_enabled_mask(u64 config)
> >> @@ -80,10 +105,15 @@ static unsigned int event_enabled_bit(struct perf_event *event)
> >>          return config_enabled_bit(event->attr.config);
> >>   }
> >>   
> >> +static bool event_read_needs_wakeref(const struct perf_event *event)
> >> +{
> >> +       return event->attr.config == I915_PMU_RC6_RESIDENCY;
> >> +}
> >> +
> >>   static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
> >>   {
> >>          struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
> >> -       u64 enable;
> >> +       u32 enable;
> >>   
> >>          /*
> >>           * Only some counters need the sampling timer.
> >> @@ -627,12 +657,19 @@ static void i915_pmu_enable(struct perf_event *event)
> >>   {
> >>          struct drm_i915_private *i915 =
> >>                  container_of(event->pmu, typeof(*i915), pmu.base);
> >> -       unsigned int bit = event_enabled_bit(event);
> >> +       bool need_wakeref = event_read_needs_wakeref(event);
> >>          struct i915_pmu *pmu = &i915->pmu;
> >> -       intel_wakeref_t wakeref;
> >> +       intel_wakeref_t wakeref = 0;
> >>          unsigned long flags;
> >> +       unsigned int bit;
> >> +
> >> +       if (need_wakeref)
> >> +               wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> >> +
> >> +       bit = event_enabled_bit(event);
> >> +       if (bit == -1)
> >> +               goto update;
> >>   
> >> -       wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> >>          spin_lock_irqsave(&pmu->lock, flags);
> > 
> > What are we taking a wakeref here for?
> > 
> > Looks just to be __get_rc6. Do we need to update the sample at all?
> 
> Yes, so __get_rc6 can record the start state. But if you have seen it 
> called from irq context then obviously it is not safe.. Just no idea why 
> we haven't hit it so far. Does perf_pmu need a more evil subtest?

I haven't figured out why CI hasn't picked it up yet, but dg1 does

<3> [134.304493] BUG: sleeping function called from invalid context at drivers/base/power/runtime.c:1074
<3> [134.304638] in_atomic(): 1, irqs_disabled(): 1, non_block: 0, pid: 1117, name: dmesg
<4> [134.304656] 4 locks held by dmesg/1117:
<4> [134.304664]  #0: ffff88847cf375b0 (&f->f_pos_lock){+.+.}-{3:3}, at: __fdget_pos+0x45/0x50
<4> [134.304691]  #1: ffff8884a58c9430 (sb_writers#3){.+.+}-{0:0}, at: vfs_write+0x16a/0x230
<4> [134.304715]  #2: ffff8884a5573358 (&sb->s_type->i_mutex_key#14){+.+.}-{3:3}, at: ext4_buffered_write_iter+0x2e/0x140
<4> [134.304736]  #3: ffffe8ffffa353d0 (&cpuctx_lock){-...}-{2:2}, at: __perf_install_in_context+0x41/0x2c0
<4> [134.304758] irq event stamp: 18348534
<4> [134.304771] hardirqs last  enabled at (18348533): [<ffffffff812b76d7>] __slab_alloc.isra.84.constprop.93+0x87/0x90
<4> [134.304785] hardirqs last disabled at (18348534): [<ffffffff81b5bd6d>] irqentry_enter+0x1d/0x50
<4> [134.304796] softirqs last  enabled at (18343298): [<ffffffff81e0037f>] __do_softirq+0x37f/0x4cb
<4> [134.304806] softirqs last disabled at (18343291): [<ffffffff81c00f72>] asm_call_irq_on_stack+0x12/0x20
<3> [134.304813] Preemption disabled at:
<3> [134.304821] [<ffffffff81113e97>] irq_enter_rcu+0x27/0x80
<4> [134.304847] CPU: 0 PID: 1117 Comm: dmesg Not tainted 5.9.0-gbd5b876be63e-DII_3243_dg1+ #1
<4> [134.304856] Hardware name: Gigabyte Technology Co., Ltd. GB-Z390 Garuda/GB-Z390 Garuda-CF, BIOS IG1c 11/19/2019
<4> [134.304863] Call Trace:
<4> [134.304872]  <IRQ>
<4> [134.304888]  dump_stack+0x77/0xa0
<4> [134.304907]  ___might_sleep.cold.107+0xf2/0x106
<4> [134.304930]  __pm_runtime_resume+0x75/0x80
<4> [134.305073]  __intel_runtime_pm_get+0x19/0x80 [i915]
<4> [134.305227]  i915_pmu_enable+0x1b7/0x280 [i915]
<4> [134.305385]  i915_pmu_event_add+0x21/0x40 [i915]
<4> [134.305402]  event_sched_in.isra.145+0xe0/0x270
<4> [134.305427]  merge_sched_in+0x192/0x3e0
<4> [134.305458]  visit_groups_merge.constprop.150+0x140/0x4d0
<4> [134.305471]  ? sched_clock+0x5/0x10
<4> [134.305498]  ctx_sched_in+0xf9/0x250
<4> [134.305526]  ctx_resched+0x58/0x90
<4> [134.305546]  __perf_install_in_context+0x21d/0x2c0
<4> [134.305570]  remote_function+0x44/0x50
<4> [134.305589]  flush_smp_call_function_queue+0x135/0x1c0
<4> [134.305608]  __sysvec_call_function_single+0x3f/0x1e0
<4> [134.305620]  asm_call_irq_on_stack+0x12/0x20
<4> [134.305631]  </IRQ>
<4> [134.305645]  sysvec_call_function_single+0xc1/0xe0
<4> [134.305661]  asm_sysvec_call_function_single+0x12/0x20
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
