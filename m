Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E68691FAE1D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 12:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8966E898;
	Tue, 16 Jun 2020 10:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 086C36E898
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 10:38:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21511590-1500050 for multiple; Tue, 16 Jun 2020 11:38:49 +0100
MIME-Version: 1.0
In-Reply-To: <874krbs7qg.fsf@gaia.fi.intel.com>
References: <20200616084141.3722-1-chris@chris-wilson.co.uk>
 <20200616084141.3722-3-chris@chris-wilson.co.uk>
 <874krbs7qg.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <159230392826.18853.3449404310767518966@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 16 Jun 2020 11:38:48 +0100
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/selftests: Enable selftesting
 of busy-stats
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

Quoting Mika Kuoppala (2020-06-16 10:03:19)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > A couple of very simple tests to ensure that the basic properties of
> > per-engine busyness accounting [0% and 100% busy] are faithful.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 94 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/gt/selftest_rps.c       |  5 ++
> >  2 files changed, 99 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> > index cbf6b0735272..fb0fd8a7db9a 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> > @@ -7,6 +7,99 @@
> >  #include "i915_selftest.h"
> >  #include "selftest_engine.h"
> >  #include "selftests/igt_atomic.h"
> > +#include "selftests/igt_flush_test.h"
> > +#include "selftests/igt_spinner.h"
> > +
> > +static int live_engine_busy_stats(void *arg)
> > +{
> > +     struct intel_gt *gt = arg;
> > +     struct intel_engine_cs *engine;
> > +     enum intel_engine_id id;
> > +     struct igt_spinner spin;
> > +     int err = 0;
> > +
> > +     /*
> > +      * Check that if an engine supports busy-stats, they tell the truth.
> > +      */
> > +
> > +     if (igt_spinner_init(&spin, gt))
> > +             return -ENOMEM;
> > +
> > +     GEM_BUG_ON(intel_gt_pm_is_awake(gt));
> > +     for_each_engine(engine, gt, id) {
> > +             struct i915_request *rq;
> > +             ktime_t de;
> > +             u64 dt;
> > +
> > +             if (!intel_engine_supports_stats(engine))
> > +                     continue;
> > +
> > +             if (!intel_engine_can_store_dword(engine))
> > +                     continue;
> > +
> > +             if (intel_gt_pm_wait_for_idle(gt)) {
> > +                     err = -EBUSY;
> > +                     break;
> > +             }
> > +
> > +             preempt_disable();
> > +             dt = ktime_to_ns(ktime_get());
> > +             de = intel_engine_get_busy_time(engine);
> > +             udelay(100);
> > +             de = ktime_sub(intel_engine_get_busy_time(engine), de);
> > +             dt = ktime_to_ns(ktime_get()) - dt;
> > +             preempt_enable();
> > +             if (de > 10) {
> 
> 10 is from stetson?
> 
> Well I would say it is strict enough.
> 
> The signed de just makes me nervous, so de < 0 too?

de < 0 would be nasty, monotonic going backwards, so yeah.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
