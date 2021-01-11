Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B50C2F1A90
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 17:10:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A49D6E0F2;
	Mon, 11 Jan 2021 16:10:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBEDA6E0F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 16:10:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23561047-1500050 for multiple; Mon, 11 Jan 2021 16:10:46 +0000
MIME-Version: 1.0
In-Reply-To: <38984801-1e30-29ce-a6f3-c846bea7eab3@linux.intel.com>
References: <20210111105735.21515-1-chris@chris-wilson.co.uk>
 <20210111105735.21515-2-chris@chris-wilson.co.uk>
 <38984801-1e30-29ce-a6f3-c846bea7eab3@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jan 2021 16:10:44 +0000
Message-ID: <161038144448.28181.2940128230292829562@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/gt: Check for arbitration
 after writing start seqno
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

Quoting Tvrtko Ursulin (2021-01-11 16:03:48)
> 
> On 11/01/2021 10:57, Chris Wilson wrote:
> > On the off chance that we need to arbitrate before launching the
> > payload, perform the check after we signal the request is ready to
> > start. Assuming instantaneous processing of the CS event, the request
> > will then be treated as having started when we make the decisions as to
> > how to process that CS event.
> 
> What is the wider context with this change?

Just thinking about the impact of MI_ARB_ONOFF. It's the next patch that
sparked the curiosity at that is trying to address a missed arbitration
point on the semaphore-wait miss.

> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 12 ++++++------
> >   1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > index 2e36e0a9d8a6..9a182652a35e 100644
> > --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > @@ -361,19 +361,19 @@ int gen8_emit_init_breadcrumb(struct i915_request *rq)
> >       if (IS_ERR(cs))
> >               return PTR_ERR(cs);
> >   
> > +     *cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
> > +     *cs++ = hwsp_offset(rq);
> > +     *cs++ = 0;
> > +     *cs++ = rq->fence.seqno - 1;
> > +
> 
> Strictly this movement even makes the existing comment (below) more correct.
> 
> >       /*
> >        * Check if we have been preempted before we even get started.
> >        *
> >        * After this point i915_request_started() reports true, even if
> >        * we get preempted and so are no longer running.
> >        */
> > -     *cs++ = MI_ARB_CHECK;
> >       *cs++ = MI_NOOP;
> > -
> > -     *cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
> > -     *cs++ = hwsp_offset(rq);
> > -     *cs++ = 0;
> > -     *cs++ = rq->fence.seqno - 1;
> > +     *cs++ = MI_ARB_CHECK;
> 
> Special reason to have NOOP before MI_ARB_CHECK or would more common 
> NOOP padding at the end be suitable?

The so small it's barely a reason was to put as much distance (those
whole 6 cycles) between the store and the arbitration point.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
