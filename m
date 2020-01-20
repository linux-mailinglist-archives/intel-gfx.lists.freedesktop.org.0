Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AB21432EA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 21:27:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F026EA8E;
	Mon, 20 Jan 2020 20:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63CFA6EA8E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 20:27:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19951392-1500050 for multiple; Mon, 20 Jan 2020 20:27:33 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200120175704.36340-1-chris@chris-wilson.co.uk>
 <1a812a72-7b17-f5b5-da41-dbeadae5b014@linux.intel.com>
In-Reply-To: <1a812a72-7b17-f5b5-da41-dbeadae5b014@linux.intel.com>
Message-ID: <157955205055.2218.11312513798739510262@skylake-alporthouse-com>
Date: Mon, 20 Jan 2020 20:27:30 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark the removal of the
 i915_request from the sched.link
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

Quoting Tvrtko Ursulin (2020-01-20 19:47:08)
> 
> On 20/01/2020 17:57, Chris Wilson wrote:
> > Keep the rq->fence.flags consistent with the status of the
> > rq->sched.link, and clear the associated bits when decoupling the link
> > on retirement (as we may wish to inspect those flags independent of
> > other state).
> > 
> > Fixes: 32ff621fd744 ("drm/i915/gt: Allow temporary suspension of inflight requests")
> > References: https://gitlab.freedesktop.org/drm/intel/issues/997
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/i915_request.c | 2 ++
> >   1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 9ed0d3bc7249..78a5f5d3c070 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -221,6 +221,8 @@ static void remove_from_engine(struct i915_request *rq)
> >               locked = engine;
> >       }
> >       list_del_init(&rq->sched.link);
> > +     clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> 
> This one I think can not be set in retirement. Or there is a path?

No, I don't think there's one for pqueue, it was just being consistent.
> 
> [comes back after writing the comment below]
> 
> Race between completion to hold puts the request on hold, then request 
> completes just as it is un-held? It needs retire to happen at the right 
> time, driven by ...? Is this it?

Yeah, but the clear one I was thinking about is 

static bool hold_request(const struct i915_request *rq)
{
        struct i915_dependency *p;

        /*
         * If one of our ancestors is on hold, we must also be on hold,
         * otherwise we will bypass it and execute before it.
         */
        list_for_each_entry(p, &rq->sched.signalers_list, signal_link) {
                const struct i915_request *s =
                        container_of(p->signaler, typeof(*s), sched);

                if (s->engine != rq->engine)
                        continue;

                if (i915_request_on_hold(s))
                        return true;
        }

        return false;
}

where we check the rq->fence.flags which holds stale information.

> 
> > +     clear_bit(I915_FENCE_FLAG_HOLD, &rq->fence.flags);
> 
> This one I think indeed can race with completion.

Clear both for consistency, caught out once, may be caught out again on
the other.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
