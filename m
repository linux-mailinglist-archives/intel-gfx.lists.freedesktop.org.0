Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E5514A7C8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 17:07:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A3AD6E107;
	Mon, 27 Jan 2020 16:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E39B6E107
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 16:07:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20024731-1500050 for multiple; Mon, 27 Jan 2020 16:07:04 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200126102346.1877661-1-chris@chris-wilson.co.uk>
 <20200126102346.1877661-5-chris@chris-wilson.co.uk>
 <a7f7de04-8dee-69a8-b88c-a90f21a89347@linux.intel.com>
 <158014099145.25356.10711091176788181450@skylake-alporthouse-com>
In-Reply-To: <158014099145.25356.10711091176788181450@skylake-alporthouse-com>
Message-ID: <158014122260.25356.3137370299157179922@skylake-alporthouse-com>
Date: Mon, 27 Jan 2020 16:07:02 +0000
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/gt: Yield the timeslice if
 caught waiting on a user semaphore
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

Quoting Chris Wilson (2020-01-27 16:03:11)
> Quoting Tvrtko Ursulin (2020-01-27 15:52:51)
> > 
> > On 26/01/2020 10:23, Chris Wilson wrote:
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> > > index f796bdf1ed30..6ae64a224b02 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> > > @@ -24,6 +24,13 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
> > >   {
> > >       bool tasklet = false;
> > >   
> > > +     if (iir & GT_WAIT_SEMAPHORE_INTERRUPT) {
> > > +             WRITE_ONCE(engine->execlists.yield,
> > > +                        ENGINE_READ_FW(engine, EXECLIST_CCID));
> > > +             if (del_timer(&engine->execlists.timer))
> > > +                     tasklet = true;
> > 
> > What if it fires before timeslice timer has been set up and when we miss 
> > to yield?
> 
> We only set the timer after the HW ack, and we can legitimately hit a
> semaphore in the user payload before we see the ack. That is
> demonstrated aptly by live_timeslice_preempt.

Hmm. I thought we would see the yield such that we would dequeue and
process the new timelice regardless of the previous timer.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
