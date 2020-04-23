Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3141B5EBE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 17:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010926E8AE;
	Thu, 23 Apr 2020 15:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D194E6E88C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 15:11:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20997591-1500050 for multiple; Thu, 23 Apr 2020 16:11:51 +0100
MIME-Version: 1.0
In-Reply-To: <4db490d5-9155-2991-67af-ee6962cdb034@linux.intel.com>
References: <20200423115839.27972-1-chris@chris-wilson.co.uk>
 <4db490d5-9155-2991-67af-ee6962cdb034@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158765470949.9772.2505613959138344519@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 23 Apr 2020 16:11:49 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark up racy read of rq->engine
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

Quoting Tvrtko Ursulin (2020-04-23 15:53:44)
> 
> On 23/04/2020 12:58, Chris Wilson wrote:
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 22635bbabf06..e9fd20242438 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -1660,7 +1660,7 @@ long i915_request_wait(struct i915_request *rq,
> >                       break;
> >               }
> >   
> > -             intel_engine_flush_submission(rq->engine);
> > +             intel_engine_flush_submission(READ_ONCE(rq->engine));
> >   
> >               if (signal_pending_state(state, current)) {
> >                       timeout = -ERESTARTSYS;
> > 
> 
> What with the mutex_acquire/release in this case? No practical effect 
> but they are also dereferencing rq->engine... Take a copy of engine for 
> lockdep at start and another read for engine flushing in the loop?

No practical difference [today], since the lockmap is on the gt.

Well that will be interesting in the future. Hmm, we could replace it
with a static [global] lockmap and then link all gt->reset.mutex to.
The only danger then is that we link a wait on one gt with a wait on
another -- except that if we allow it, that will happen naturally.
So I don't see a loss in generality in using a global lockmap.

Make a note for the future.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
