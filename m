Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 165DD305FE4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 16:44:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E41E6E84B;
	Wed, 27 Jan 2021 15:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 153136E84B
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 15:44:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23716097-1500050 for multiple; Wed, 27 Jan 2021 15:44:29 +0000
MIME-Version: 1.0
In-Reply-To: <161176158580.2943.5136791152327305702@build.alporthouse.com>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-20-chris@chris-wilson.co.uk>
 <5b716048-6d94-cbbe-4092-5eaebb706561@linux.intel.com>
 <161176158580.2943.5136791152327305702@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 15:44:32 +0000
Message-ID: <161176227212.2943.15527894923176928677@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 20/41] drm/i915: Replace priolist rbtree
 with a skiplist
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
Cc: thomas.hellstrom@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2021-01-27 15:33:05)
> Quoting Tvrtko Ursulin (2021-01-27 15:10:43)
> > 
> > On 25/01/2021 14:01, Chris Wilson wrote:
> > > Replace the priolist rbtree with a skiplist. The crucial difference is
> > > that walking and removing the first element of a skiplist is O(1), but
> > 
> > I wasn't (and am not) familiar with them, but wikipedia page says 
> > removal is O(logN) average case to O(N) worst case.
> > 
> > If I understand correctly O(1) could be ignoring the need to traverse 
> > from top to bottom level and removing the element from all. But since 
> > I915_PRIOLIST_HEIGHT is fixed maybe it is okay to call it O(1).
> 
> Correct, since we removing the first element, we do not need to do the
> lgN search and can just move the next[I915_PRIOLIST_HEIGHT] forwards.
> (Although, I did starting doing the lgN removal for timeslicing as
> traversing the empty levels were showing up in worst case lock hold
> times.) But the primary means of removing from the skiplist is as we
> consume the first request during the dequeue.
> 
> > I wonder though why this wouldn't mean skip list would be worse for both 
> > lightly loaded and highly-loaded scenarios? Presumably height would need 
> > to be balanced to compensate for that.
> 
> I think the answer is yes. skiplists uses probablistic balancing so they
> are only from a bird's eye view as good as a rbtree. If you look at the
> perf tests, the skiplists are generally faster, but it's close overall.
> 
> What sold me was lock_stat and that I could remove a few hacky patches
> trying to hide some of the worst case behaviour of rbtree and how we had
> frees within the critical submit path.
>  
> > In summary I have no idea for what number of in-flight requests would 
> > they be better.
> > 
> > How about putting this patch aside for now since it doesn't sound it is 
> > critical for deadline scheduling per se?
> 
> Oh no, we are not going back to the hacky patches like
> https://patchwork.freedesktop.org/patch/407913/?series=84900&rev=1
> https://patchwork.freedesktop.org/patch/407903/?series=84900&rev=1

To be extra clear, the biggest drawback in using deadlines as the sort
key is that they are very, very sparse in comparison to priorities.
Where we would typically have only a single priority level for every
request, with deadlines we typically have a new deadline with every
request (and it's not until we get into priority bumping or timeslice
deferring do we start to see the deadlines coalesce). In this situation,
the lgN list traversal of rbtree during execlists_dequeue() was
abyssmal, and so as the skiplists give similar lgN insertion but O(1)
list traversal, the difference is enough to completely negate the
overhead of having more levels to process. It is a dramatic improvement.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
