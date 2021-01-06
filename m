Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEEB2EB6D9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 01:27:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4F489B57;
	Wed,  6 Jan 2021 00:27:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B36189B57
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 00:27:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23512878-1500050 for multiple; Wed, 06 Jan 2021 00:27:08 +0000
MIME-Version: 1.0
In-Reply-To: <X/T/THXWRdT6hs5N@intel.intel>
References: <20210104115145.24460-1-chris@chris-wilson.co.uk>
 <20210104115145.24460-6-chris@chris-wilson.co.uk>
 <X/T/THXWRdT6hs5N@intel.intel>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi.shyti@intel.com>
Date: Wed, 06 Jan 2021 00:27:06 +0000
Message-ID: <160989282692.14894.4243181113799728832@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gt: Remove timeslice
 suppression
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

Quoting Andi Shyti (2021-01-06 00:07:40)
> Hi Chris,
> 
> On Mon, Jan 04, 2021 at 11:51:45AM +0000, Chris Wilson wrote:
> > In the next patch, we remove the strict priority system and continuously
> 
> next patch?

If you take a birds eye view, and can look back in time, that sentence
made more sense.

> 
> [...]
> 
> > -static bool
> > -timeslice_expired(const struct intel_engine_execlists *el,
> > -               const struct i915_request *rq)
> > +static bool needs_timeslice(const struct intel_engine_cs *engine,
> > +                         const struct i915_request *rq)
> >  {
> > -     return timer_expired(&el->timer) || timeslice_yield(el, rq);
> > -}
> > +     if (!intel_engine_has_timeslices(engine))
> > +             return false;
> >  
> > -static int
> > -switch_prio(struct intel_engine_cs *engine, const struct i915_request *rq)
> > -{
> > -     if (list_is_last(&rq->sched.link, &engine->active.requests))
> > -             return engine->execlists.queue_priority_hint;
> > +     /* If not currently active, or about to switch, wait for next event */
> > +     if (!rq || __i915_request_is_complete(rq))
> > +             return false;
> >  
> > -     return rq_prio(list_next_entry(rq, sched.link));
> > -}
> > +     /* We do not need to start the timeslice until after the ACK */
> > +     if (READ_ONCE(engine->execlists.pending[0]))
> > +             return false;
> >  
> > -static inline unsigned long
> > -timeslice(const struct intel_engine_cs *engine)
> > -{
> > -     return READ_ONCE(engine->props.timeslice_duration_ms);
> > +     /* If ELSP[1] is occupied, always check to see if worth slicing */
> > +     if (!list_is_last_rcu(&rq->sched.link, &engine->active.requests))
> > +             return true;
> > +
> > +     /* Otherwise, ELSP[0] is by itself, but may be waiting in the queue */
> > +     if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root))
> > +             return true;
> > +
> > +     return !RB_EMPTY_ROOT(&engine->execlists.virtual.rb_root);
> >  }
> 
> the above diff is quite unreadable and besides the patch does not
> apply on the latest drm-tip.

The diff is quite meaningless since it removes one flow and replaces it
with a different system. I shall play with

--diff-algorithm={patience|minimal|histogram|myers}

and see what happens.


> In order to have a better review, I would suggest either one of
> the following:
> 
>  - use a different diff algorithm for generating the patch
>  - you rebase everything on top of the latest drm-tip so that I
>    can apply and check
>  - give me a branch so that I can checkout that branch and review
>    it from there.

fdo is quite full... But
https://cgit.freedesktop.org/~ickle/linux-2.6/log/?h=ringscheduler
made it intact.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
