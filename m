Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 420082236F0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 10:24:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A8446E49D;
	Fri, 17 Jul 2020 08:24:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 547556E48E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 08:24:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21846360-1500050 for multiple; Fri, 17 Jul 2020 09:24:18 +0100
MIME-Version: 1.0
In-Reply-To: <9f617a7c-8b62-fa67-07dc-0a9f8c0d2a88@linux.intel.com>
References: <20200716113357.7644-4-chris@chris-wilson.co.uk>
 <20200716172845.31427-1-chris@chris-wilson.co.uk>
 <9f617a7c-8b62-fa67-07dc-0a9f8c0d2a88@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jul 2020 09:24:18 +0100
Message-ID: <159497425828.27598.4204263809628931202@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Replace
 intel_engine_transfer_stale_breadcrumbs
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

Quoting Tvrtko Ursulin (2020-07-17 09:13:21)
> 
> On 16/07/2020 18:28, Chris Wilson wrote:
> > @@ -341,8 +325,10 @@ static void insert_breadcrumb(struct i915_request *rq,
> >                       break;
> >       }
> >       list_add(&rq->signal_link, pos);
> > -     if (pos == &ce->signals) /* catch transitions from empty list */
> > +     if (pos == &ce->signals) { /* catch transitions from empty list */
> >               list_move_tail(&ce->signal_link, &b->signalers);
> > +             irq_work_queue(&b->irq_work); /* check after enabling irq */
> > +     }
> >       GEM_BUG_ON(!check_signal_order(ce, rq));
> >   
> >       set_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
> > @@ -401,7 +387,7 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
> >   
> >       spin_unlock(&b->irq_lock);
> >   
> > -     return !__request_completed(rq);
> > +     return true;
> 
> Maybe my in head diff apply is failing me, but I think there isn't a 
> "return false" path left so could be made a return void function.

There is no return false path anymore (since we always queue the worker
which should run immediately after dma_fence_enable_signaling if
necessary, that seemed to be more sensible than conditionally using the
worker, I also looked at splitting enable_breadcrumb and
activate_breadcrumb, but the two paths are more similar than not), I
kept it bool so that it matched i915_fence_enable_signaling.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
