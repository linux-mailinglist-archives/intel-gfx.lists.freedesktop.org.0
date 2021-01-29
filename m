Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAA33087CC
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 11:31:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 338B16EAC5;
	Fri, 29 Jan 2021 10:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F15B6EAC8
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 10:31:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23734644-1500050 for multiple; Fri, 29 Jan 2021 10:31:00 +0000
MIME-Version: 1.0
In-Reply-To: <20210128225604.GA20650@sdutt-i7>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-20-chris@chris-wilson.co.uk>
 <20210128225604.GA20650@sdutt-i7>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Brost <matthew.brost@intel.com>
Date: Fri, 29 Jan 2021 10:30:58 +0000
Message-ID: <161191625882.867.12917284563227933093@build.alporthouse.com>
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
Cc: intel-gfx@lists.freedesktop.org, thomas.hellstrom@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Brost (2021-01-28 22:56:04)
> On Mon, Jan 25, 2021 at 02:01:15PM +0000, Chris Wilson wrote:
> > Replace the priolist rbtree with a skiplist. The crucial difference is
> > that walking and removing the first element of a skiplist is O(1), but
> > O(lgN) for an rbtree, as we need to rebalance on remove. This is a
> > hindrance for submission latency as it occurs between picking a request
> > for the priolist and submitting it to hardware, as well effectively
> > trippling the number of O(lgN) operations required under the irqoff lock.
> > This is critical to reducing the latency jitter with multiple clients.
> > 
> > The downsides to skiplists are that lookup/insertion is only
> > probablistically O(lgN) and there is a significant memory penalty to
> > as each skip node is larger than the rbtree equivalent. Furthermore, we
> > don't use dynamic arrays for the skiplist, so the allocation is fixed,
> > and imposes an upper bound on the scalability wrt to the number of
> > inflight requests.
> > 
> 
> This is a fun data structure but IMO might be overkill to maintain this
> code in the i915. The UMDs have effectively agreed to use only 3 levels,
> is O(lgN) where N == 3 really a big deal? With GuC submission we will
> statically map all user levels into 3 buckets. If we are doing that, do
> we even need a complex data structure? i.e. Could use just use can
> array of linked lists?

Because we need to scale the bst to handle a unqiue key per request with
thousands of requests [this is not only about priorities]. And as you
will see from the results, even with just a single priority in the system
(so one entry in either the skiplist or rbtree), the skiplist is beating 
the rbtree as measured by the lock hold time around insert/dequeue of
requests. That surprised me.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
