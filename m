Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C14B14A162
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 11:01:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 790766EAB0;
	Mon, 27 Jan 2020 10:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42B9B6EAB0
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 10:01:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20019616-1500050 for multiple; Mon, 27 Jan 2020 10:01:04 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87y2ttmdgu.fsf@gaia.fi.intel.com>
References: <20200124213903.611152-1-chris@chris-wilson.co.uk>
 <87y2ttmdgu.fsf@gaia.fi.intel.com>
Message-ID: <158011926198.25356.13139729386288599633@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 27 Jan 2020 10:01:02 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915_pm_rps: Be wary if RP0 == RPn
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
Cc: igt-dev@lsts.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-01-27 09:54:25)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > If the HW min/max frequencies are the same, there is not much range to
> > deal with and a couple of our invalid tests become confused as they are
> > actually no-ops.
> >
> > Error reporting in i915_pm_rps is rudimentary and we deserve better.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1008
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  tests/i915/i915_pm_rps.c | 16 ++++++++++------
> >  1 file changed, 10 insertions(+), 6 deletions(-)
> >
> > diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
> > index b65eefb03..56c745a5b 100644
> > --- a/tests/i915/i915_pm_rps.c
> > +++ b/tests/i915/i915_pm_rps.c
> > @@ -397,9 +397,11 @@ static void min_max_config(void (*check)(void), bool load_gpu)
> >       writeval_inval(sysfs_files[MIN].filp, origfreqs[RP0] + 1000);
> >       check();
> >  
> > -     igt_debug("\nDecrease max to RPn (invalid)...\n");
> > -     writeval_inval(sysfs_files[MAX].filp, origfreqs[RPn]);
> > -     check();
> > +     if (origfreqs[RPn] < origfreqs[RP0]) {
> > +             igt_debug("\nDecrease max to RPn (invalid)...\n");
> > +             writeval_inval(sysfs_files[MAX].filp, origfreqs[RPn]);
> > +             check();
> > +     }
> >  
> >       igt_debug("\nDecrease min to midpoint...\n");
> >       writeval(sysfs_files[MIN].filp, fmid);
> > @@ -429,9 +431,11 @@ static void min_max_config(void (*check)(void), bool load_gpu)
> >       writeval_inval(sysfs_files[MAX].filp, 0);
> >       check();
> >  
> > -     igt_debug("\nIncrease min to RP0 (invalid)...\n");
> > -     writeval_inval(sysfs_files[MIN].filp, origfreqs[RP0]);
> > -     check();
> > +     if (origfreqs[RP0] > origfreqs[RP0]) {
> 
> RPn?

if (RP0 > RPn)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
