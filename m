Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE282C2E91
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 18:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A966E457;
	Tue, 24 Nov 2020 17:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14CAB6E457
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 17:31:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23094913-1500050 for multiple; Tue, 24 Nov 2020 17:31:52 +0000
MIME-Version: 1.0
In-Reply-To: <a94f4727-84b2-8a3d-d4a1-eeeae0c369db@linux.intel.com>
References: <20201124114219.29020-1-chris@chris-wilson.co.uk>
 <20201124114219.29020-6-chris@chris-wilson.co.uk>
 <a94f4727-84b2-8a3d-d4a1-eeeae0c369db@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 17:31:51 +0000
Message-ID: <160623911107.28476.5808928666560182985@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 06/16] drm/i915/gt: Decouple completed
 requests on unwind
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

Quoting Tvrtko Ursulin (2020-11-24 17:13:02)
> 
> On 24/11/2020 11:42, Chris Wilson wrote:
> > Since the introduction of preempt-to-busy, requests can complete in the
> > background, even while they are not on the engine->active.requests list.
> > As such, the engine->active.request list itself is not in strict
> > retirement order, and we have to scan the entire list while unwinding to
> > not miss any. However, if the request is completed we currently leave it
> > on the list [until retirement], but we could just as simply remove it
> > and stop treating it as active. We would only have to then traverse it
> > once while unwinding in quick succession.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_lrc.c | 6 ++++--
> >   drivers/gpu/drm/i915/i915_request.c | 3 ++-
> >   2 files changed, 6 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 30aa59fb7271..cf11cbac241b 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -1116,8 +1116,10 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
> >       list_for_each_entry_safe_reverse(rq, rn,
> >                                        &engine->active.requests,
> >                                        sched.link) {
> > -             if (i915_request_completed(rq))
> > -                     continue; /* XXX */
> > +             if (i915_request_completed(rq)) {
> > +                     list_del_init(&rq->sched.link);
> > +                     continue;
> > +             }
> >   
> >               __i915_request_unsubmit(rq);
> >   
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 8d7d29c9e375..a9db1376b996 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -321,7 +321,8 @@ bool i915_request_retire(struct i915_request *rq)
> >        * after removing the breadcrumb and signaling it, so that we do not
> >        * inadvertently attach the breadcrumb to a completed request.
> >        */
> > -     remove_from_engine(rq);
> > +     if (!list_empty(&rq->sched.link))
> > +             remove_from_engine(rq);
> 
> The list_empty check is unlocked so is list_del_init in 
> remove_from_engine safe on potentially already unlinked request or it 
> needs to re-check under the lock?

It's safe. The unwind is under the lock, and remove_from_engine takes
the lock, and both do list_del_init() which is a no-op if already
removed. And the end state of the flag bits is the same on each path. We
can skip the __notify_execute_cb_imm() since we know in unwind it is
executing and there should be no cb.

The test before we take the lock is only allowed to skip the active.lock
if it sees the list is already decoupled, in which case we can leave it
to the unwind to remove it from the engine (and we know that the request
can only have been inflight prior to completion). Since the test is not
locked, we don't serialise with the removal, but the list_del_init is
the last action on the request so there is no window where the unwind is
accessing the request after it may have been retired.

list_move() will not confuse list_empty(), as although it does a
list_del_entry, it is not temporarily re-initialised to an empty list.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
