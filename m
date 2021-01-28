Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 916A3308108
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 23:20:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F866E12E;
	Thu, 28 Jan 2021 22:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 900976E12E
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 22:20:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23731319-1500050 for multiple; Thu, 28 Jan 2021 22:20:25 +0000
MIME-Version: 1.0
In-Reply-To: <f4f42b32-d536-6f2f-0118-be7fedcd94db@linux.intel.com>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-20-chris@chris-wilson.co.uk>
 <7537d75b-3292-05aa-1ef2-b65aca4d3d73@linux.intel.com>
 <161185117340.2943.10174190803342821813@build.alporthouse.com>
 <f4f42b32-d536-6f2f-0118-be7fedcd94db@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 22:20:23 +0000
Message-ID: <161187242366.867.1574181347937423411@build.alporthouse.com>
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

Quoting Tvrtko Ursulin (2021-01-28 16:42:44)
> 
> On 28/01/2021 16:26, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2021-01-28 15:56:19)
> >> On 25/01/2021 14:01, Chris Wilson wrote:
> >>>    struct i915_priolist {
> >>>        struct list_head requests;
> >>
> >> What would be on this list? Request can only be on one at a time, so I
> >> was thinking these nodes would have pointers to list of that priority,
> >> rather than lists themselves. Assuming there can be multiple nodes of
> >> the same priority in the 2d hierarcy. Possibly I don't understand the
> >> layout.
> > 
> > A request is only on one list (queue, active, hold). But we may still
> > have more than one request at the same deadline, though that will likely
> > be limited to priority-inheritance and timeslice deferrals.
> > 
> > Since we would need pointer to the request, we could only reclaim a
> > single pointer here, which is not enough to warrant reducing the overall
> > node size. And while there is at least one user of request->sched.link,
> > the list maintenance will still be incurred. Using request->sched.link
> > remains a convenient interface.
> 
> Lost you.
> 
> Is the data structure like this and I will limit to priorities for 
> simplicity:
> 
>     Level1:     [-1]------------->[1]
>     Level0:     [-1]---->[0]----->[1]
> [SENTINEL]
> 
> Each of the boxes is struct i915_priolist?

Although each level is circular.

1: SENTINEL -> [-1] --------> [1] -> SENTINEL
0: SENTINEL -> [-1] -> [0] -> [1] -> SENTINEL

Ah. I think I see the cause of confusion here. Each column, not each
box, is a i915_priolist.

So the skiplist is really a set of [HEIGHT] singly linked lists, with
each list containing a sorted subset of the whole. And each descending
level includes every member from the level above, until we reach a
linked list of all i915_priolist in [0].

[skip, hopefully I caught the central point]

SENTINEL[2] is a list of all i915_priolist of level >= 2
SENTINEL[1] is a list of all i915_priolist of level >= 1
SENTINEL[0] is a list of all i915_priolist.

As we randomly assign i915_priolist.level, SENTINEL[1] should have half
the elements of SENTINEL[0], and SENTINEL[2] should have half again the
elements of SENTINEL[1] (hence its ability to do a binary/lgN search for
a key, each level is a bisection of the last).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
