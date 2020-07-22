Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B599229900
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 15:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87F146E09C;
	Wed, 22 Jul 2020 13:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EED26E09C
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 13:11:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21896051-1500050 for multiple; Wed, 22 Jul 2020 14:11:50 +0100
MIME-Version: 1.0
In-Reply-To: <6f820d97-f60e-03f3-5ac3-88d73486e405@linux.intel.com>
References: <20200720092312.16975-1-chris@chris-wilson.co.uk>
 <20200720092312.16975-7-chris@chris-wilson.co.uk>
 <6f820d97-f60e-03f3-5ac3-88d73486e405@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jul 2020 14:11:49 +0100
Message-ID: <159542350964.15672.5429441191471526406@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915/gt: Hold context/request
 reference while breadcrumbs are active
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

Quoting Tvrtko Ursulin (2020-07-22 14:05:35)
> 
> On 20/07/2020 10:23, Chris Wilson wrote:
> > @@ -198,7 +217,8 @@ static void signal_irq_work(struct irq_work *work)
> >                        * spinlock as the callback chain may end up adding
> >                        * more signalers to the same context or engine.
> >                        */
> > -                     __signal_request(rq, &signal);
> > +                     if (!__signal_request(rq, &signal))
> > +                             i915_request_put(rq);
> 
> Looks like __signal_request could do the request put but doesn't matter 
> hugely.

I ditch the __signal_request() wrapper as the two callers diverge a bit
more.

1:
	clear_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags);
	if (__dma_fence_signal(&rq->fence)) {
       		rq->signal_node.next = signal;
		signal = &rq->signal_node;
	} else {
		i915_request_put(rq);
	}

2:

	if (__request_completed(rq)) {
		if (__dma_fence_signal(&rq->fence)) {
			if (llist_add(&rq->signal_node, &b->signaled_requests))
				irq_work_queue(&b->irq_work);
		} else {
			i915_request_put(rq);
		}
		return;
	}

Not completely sold on that though. Keeping the i915_request_put() as
part of __signal_request() would remove the duplicate line there.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
