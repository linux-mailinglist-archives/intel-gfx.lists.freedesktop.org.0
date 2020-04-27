Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B421BA393
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 14:28:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 281BF6E071;
	Mon, 27 Apr 2020 12:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4642D6E071
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 12:28:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21034877-1500050 for multiple; Mon, 27 Apr 2020 13:28:26 +0100
MIME-Version: 1.0
In-Reply-To: <87blndktus.fsf@gaia.fi.intel.com>
References: <20200427120207.13212-1-chris@chris-wilson.co.uk>
 <87blndktus.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158799050510.17035.13522531279452716610@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 27 Apr 2020 13:28:25 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix up clock frequency
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

Quoting Mika Kuoppala (2020-04-27 13:15:23)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > The bspec lists both the clock frequency and the effective interval. The
> > interval corresponds to observed behaviour, so adjust the frequency to
> > match.
> >
> > v2: Mika rightfully asked if we could measure the clock frequency from a
> > selftest.
> 
> This kind of delivery times might impact on demand :P
> 
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >  .../gpu/drm/i915/gt/intel_gt_clock_utils.c    |  12 +-
> >  drivers/gpu/drm/i915/gt/selftest_gt_pm.c      |   1 +
> >  drivers/gpu/drm/i915/gt/selftest_rps.c        | 125 ++++++++++++++++++
> >  drivers/gpu/drm/i915/gt/selftest_rps.h        |   1 +
> >  4 files changed, 133 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> > index 852a7d731b3b..999079686846 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> > @@ -7,9 +7,9 @@
> >  #include "intel_gt.h"
> >  #include "intel_gt_clock_utils.h"
> >  
> > +#define MHZ_12   12000000 /* 12MHz (24MHz/2), 83.333ns */
> > +#define MHZ_12_5 12500000 /* 12.5MHz (25MHz/2), 80ns */
> >  #define MHZ_19_2 19200000 /* 19.2MHz, 52.083ns */
> > -#define MHZ_24 24000000 /* 24MHz, 83.333ns */
> > -#define MHZ_25 25000000 /* 25MHz, 80ns */
> >  
> >  static u32 read_clock_frequency(const struct intel_gt *gt)
> >  {
> > @@ -21,19 +21,19 @@ static u32 read_clock_frequency(const struct intel_gt *gt)
> >               config >>= GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT;
> >  
> >               switch (config) {
> > -             case 0: return MHZ_24;
> > +             case 0: return MHZ_12;
> >               case 1:
> >               case 2: return MHZ_19_2;
> >               default:
> > -             case 3: return MHZ_25;
> > +             case 3: return MHZ_12_5;
> >               }
> >       } else if (INTEL_GEN(gt->i915) >= 9) {
> >               if (IS_GEN9_LP(gt->i915))
> >                       return MHZ_19_2;
> >               else
> > -                     return MHZ_24;
> > +                     return MHZ_12;
> >       } else {
> > -             return MHZ_25;
> > +             return MHZ_12_5;
> >       }
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> > index e02fdec58826..242181a5214c 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> > @@ -53,6 +53,7 @@ int intel_gt_pm_live_selftests(struct drm_i915_private *i915)
> >  {
> >       static const struct i915_subtest tests[] = {
> >               SUBTEST(live_rc6_manual),
> > +             SUBTEST(live_rps_clock_interval),
> >               SUBTEST(live_rps_control),
> >               SUBTEST(live_rps_frequency_cs),
> >               SUBTEST(live_rps_frequency_srm),
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > index e13cbcb82825..fe92c55572c1 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > @@ -208,6 +208,131 @@ static void show_pstate_limits(struct intel_rps *rps)
> >       }
> >  }
> >  
> > +int live_rps_clock_interval(void *arg)
> > +{
> > +     struct intel_gt *gt = arg;
> > +     struct intel_rps *rps = &gt->rps;
> > +     void (*saved_work)(struct work_struct *wrk);
> > +     struct intel_engine_cs *engine;
> > +     enum intel_engine_id id;
> > +     struct igt_spinner spin;
> > +     int err = 0;
> > +
> > +     if (!rps->enabled)
> > +             return 0;
> > +
> > +     intel_gt_check_clock_frequency(gt);
> > +
> > +     if (igt_spinner_init(&spin, gt))
> > +             return -ENOMEM;
> > +
> > +     intel_gt_pm_wait_for_idle(gt);
> > +     saved_work = rps->work.func;
> > +     rps->work.func = dummy_rps_work;
> > +
> > +     intel_gt_pm_get(gt);
> > +     intel_rps_disable(&gt->rps);
> > +
> > +     for_each_engine(engine, gt, id) {
> > +             unsigned long saved_heartbeat;
> > +             struct i915_request *rq;
> > +             u32 cycles, expected;
> > +             ktime_t dt;
> > +             u64 time;
> > +
> > +             if (!intel_engine_can_store_dword(engine))
> > +                     continue;
> > +
> > +             saved_heartbeat = engine_heartbeat_disable(engine);
> > +
> > +             rq = igt_spinner_create_request(&spin,
> > +                                             engine->kernel_context,
> > +                                             MI_NOOP);
> > +             if (IS_ERR(rq)) {
> > +                     err = PTR_ERR(rq);
> > +                     break;
> > +             }
> > +
> > +             i915_request_add(rq);
> > +
> > +             if (!igt_wait_for_spinner(&spin, rq)) {
> > +                     pr_err("%s: RPS spinner did not start\n",
> > +                            engine->name);
> > +                     igt_spinner_end(&spin);
> > +                     engine_heartbeat_enable(engine, saved_heartbeat);
> > +                     intel_gt_set_wedged(engine->gt);
> > +                     err = -EIO;
> > +                     break;
> > +             }
> > +
> > +             intel_uncore_write(gt->uncore, GEN6_RP_CUR_UP_EI, 0);
> > +
> > +             /* Set the evaluation interval to infinity! */
> > +             intel_uncore_write(gt->uncore,
> > +                                GEN6_RP_UP_EI, 0xffffffff);
> > +             intel_uncore_write(gt->uncore,
> > +                                GEN6_RP_UP_THRESHOLD, 0xffffffff);
> 
> To keep it constant during the calculation?

Yeah, it shouldn't conceptually make a difference. I'm just worried in
case the interrupt and the EI stopped when it crosses threshold, as
opposed to evaluating the counters strictly at the end of the EI.

> > +
> > +             intel_uncore_write(gt->uncore, GEN6_RP_CONTROL,
> > +                                GEN6_RP_ENABLE | GEN6_RP_UP_BUSY_AVG);
> > +
> > +             if (wait_for(intel_uncore_read(gt->uncore, GEN6_RP_CUR_UP_EI),
> > +                          10)) {
> > +                     pr_err("%s: rps evalution interval not ticking\n",
> > +                            engine->name);
> > +                     igt_spinner_end(&spin);
> > +                     engine_heartbeat_enable(engine, saved_heartbeat);
> > +                     err = -ENODEV;
> > +                     break;
> > +             }
> > +
> > +             dt = ktime_get();
> > +             cycles = -intel_uncore_read(gt->uncore, GEN6_RP_CUR_UP_EI);
> 
> Hmm you have not zeroed the cycles on the first run, but does it matter
> is then the question. 

	cycles = -X, 
not
	cycles -= X
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
