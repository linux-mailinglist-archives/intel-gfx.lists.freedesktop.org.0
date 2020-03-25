Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BDE192637
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 11:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F6B96E7DC;
	Wed, 25 Mar 2020 10:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AC2F6E7DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 10:53:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20685380-1500050 for multiple; Wed, 25 Mar 2020 10:53:06 +0000
MIME-Version: 1.0
In-Reply-To: <65307902-8163-24cc-0738-b11f3bd982c5@linux.intel.com>
References: <20200325101358.12231-1-chris@chris-wilson.co.uk>
 <65307902-8163-24cc-0738-b11f3bd982c5@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158513358748.13191.5123461003263057429@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 25 Mar 2020 10:53:07 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Drop setting sibling
 priority hint on virtual engines
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

Quoting Tvrtko Ursulin (2020-03-25 10:43:55)
> 
> On 25/03/2020 10:13, Chris Wilson wrote:
> > We set the priority hint on execlists to avoid executing the tasklet for
> > when we know that there will be no change in execution order. However,
> > as we set it from the virtual engine for all siblings, but only one
> > physical engine may respond, we leave the hint set on the others
> > stopping direct submission that could take place.
> > 
> > If we do not set the hint, we may attempt direct submission even if we
> > don't expect to submit. If we set the hint, we may not do any submission
> > until the tasklet is run (and sometimes we may park the engine before
> > that has had a chance). Ergo there's only a minor ill-effect on mixed
> > virtual/physical engine workloads where we may try and fail to do direct
> > submission more often than required. (Pure virtual / engine workloads
> > will have redundant tasklet execution suppressed as normal.)
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1522
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +---
> >   1 file changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 210f60e14ef4..f88d3b95c4e1 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -4985,10 +4985,8 @@ static void virtual_submission_tasklet(unsigned long data)
> >   submit_engine:
> >               GEM_BUG_ON(RB_EMPTY_NODE(&node->rb));
> >               node->prio = prio;
> > -             if (first && prio > sibling->execlists.queue_priority_hint) {
> > -                     sibling->execlists.queue_priority_hint = prio;
> > +             if (first && prio > sibling->execlists.queue_priority_hint)
> >                       tasklet_hi_schedule(&sibling->execlists.tasklet);
> > -             }
> >   
> >               spin_unlock(&sibling->active.lock);
> >       }
> > 
> 
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> The queue_priority_hint scheme with virtual engine design is a bit 
> problematic, since we have no way to unwind. And it's spreading it's 
> tentacles all over the place. Oh well.

Hear, hear. 

> Could we one day consider just peeking at the top of the tree(s)

The problem is that we have a single attention bit (tasklet_schedule).
So if we add a new virtual engine below the top of the tree, and we race
with two engines pulling from the virtual trees, we need both engines to
claim a virtual request or else we waste the tasklet and do not have a
second wakeup queued.

I don't think we can drop rechecking the virtual rbtree if we lose the
race in the execlists tasklet.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
