Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C25D1244EE7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 21:41:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DEB86EB90;
	Fri, 14 Aug 2020 19:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4FF96EB90
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 19:41:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22131583-1500050 for multiple; Fri, 14 Aug 2020 20:41:35 +0100
MIME-Version: 1.0
In-Reply-To: <87ft8p135h.fsf@gaia.fi.intel.com>
References: <20200814155735.29138-1-chris@chris-wilson.co.uk>
 <20200814155735.29138-3-chris@chris-wilson.co.uk>
 <87ft8p135h.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 14 Aug 2020 20:41:32 +0100
Message-ID: <159743409290.31882.4297809836771338545@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Apply the CSB w/a for all
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

Quoting Mika Kuoppala (2020-08-14 19:41:14)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Since we expect to inline the csb_parse() routines, the w/a for the
> > stale CSB data on Tigerlake will be pulled into process_csb(), and so we
> > might as well simply reuse the logic for all, and so will hopefully
> > avoid any strange behaviour on Icelake that was not covered by our
> > previous w/a.
> >
> > References: d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Bruce Chang <yu.bruce.chang@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_lrc.c | 70 +++++++++++++++++------------
> >  1 file changed, 42 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 3b8161c6b601..c176a029f27b 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -2496,25 +2496,11 @@ invalidate_csb_entries(const u64 *first, const u64 *last)
> >   *     bits 47-57: sw context id of the lrc the GT switched away from
> >   *     bits 58-63: sw counter of the lrc the GT switched away from
> >   */
> > -static inline bool gen12_csb_parse(const u64 *csb)
> > +static inline bool gen12_csb_parse(const u64 csb)
> >  {
> > -     bool ctx_away_valid;
> > -     bool new_queue;
> > -     u64 entry;
> > -
> > -     /* XXX HSD */
> > -     entry = READ_ONCE(*csb);
> > -     if (unlikely(entry == -1)) {
> > -             preempt_disable();
> > -             if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))
> 
> If we get this deep into desperation, should we start to apply more
> pressure. Ie, rmb instead of just instructing the compiler. And could also
> start to invalidate the entry which obviously if of no use.

I had a rmb() here; removing it did not appear to make any difference
whatsoever to the average delay. The extreme case would be a full
mb(); clflush(); mb() read. I haven't timed the average for that....
 
> It could even be that the invalidate pays out as the correct value
> bubbles throught hierarchy faster?

I had the same thought... But atm my feeling is the issue is not on the
CPU side (or at least controllable from our code on the CPU).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
