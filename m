Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7841923BF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 10:10:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246046E7D5;
	Wed, 25 Mar 2020 09:10:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F16E6E7D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 09:10:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20684059-1500050 for multiple; Wed, 25 Mar 2020 09:10:21 +0000
MIME-Version: 1.0
In-Reply-To: <20200325085854.GE131880@jack.zhora.eu>
References: <20200324201526.16571-1-chris@chris-wilson.co.uk>
 <20200325081056.23003-1-chris@chris-wilson.co.uk>
 <20200325085854.GE131880@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Message-ID: <158512742232.12212.1282918554317216831@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 25 Mar 2020 09:10:22 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Measure the energy
 consumed while in RC6
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-03-25 08:58:54)
> Hi Chris,
> 
> On Wed, Mar 25, 2020 at 08:10:56AM +0000, Chris Wilson wrote:
> > Measure and compare the energy consumed, as reported by the rapl MSR,
> > by the GPU while in RC0 and RC6 states. Throw an error if RC6 does not
> > at least halve the energy consumption of RC0, as this more than likely
> > means we failed to enter RC0 correctly.
> > 
> > If we can't measure the energy draw with the MSR, then it will report 0
> > for both measurements. Since the measurement works on all gen6+, this seems
> > worth flagging as an error.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Andi Shyti <andi.shyti@intel.com>
> 
> would be nice to have a revision history, given that I got quite 
> some versions of this patch.

Nothing that interesting happened, I told myself.

> > +static u64 energy_uJ(struct intel_rc6 *rc6)
> > +{
> > +     unsigned long long power;
> > +     u32 units;
> > +
> > +     if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
> > +             return 0;
> > +
> > +     units = (power & 0x1f00) >> 8;
> > +
> > +     if (rdmsrl_safe(MSR_PP1_ENERGY_STATUS, &power))
> > +             return 0;
> > +
> > +     return (1000000 * power) >> units; /* convert to uJ */
> > +}
> 
> shall we put this in a library?

Call it rapl and make it available via perf? Done.

More seriously outside of measuring idle power usage, I haven't had an
idea where it makes sense. As an optimisation metric, you want work done
per joule, but we have no concept of the user's work in the kernel.
Other things like "operating point power" (the cost of running at a
particular frequency) are mostly constant and not tunable.

> >       res[0] = rc6_residency(rc6);
> > +     dt = ktime_get();
> > +     rc0_power = energy_uJ(rc6);
> >       msleep(250);
> > +     rc0_power = energy_uJ(rc6) - rc0_power;
> > +     dt = ktime_sub(ktime_get(), dt);
> >       res[1] = rc6_residency(rc6);
> >       if ((res[1] - res[0]) >> 10) {
> >               pr_err("RC6 residency increased by %lldus while disabled for 250ms!\n",
> > @@ -63,13 +85,23 @@ int live_rc6_manual(void *arg)
> >               goto out_unlock;
> >       }
> >  
> > +     rc0_power = div64_u64(NSEC_PER_SEC * rc0_power, ktime_to_ns(dt));
> > +     if (!rc0_power) {
> 
> is this likely to happen?

Likely? Only if rapl is unable to measure the GPU energy consumption. So
no, it's not likely, unless you load the guc firmware on icl!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
