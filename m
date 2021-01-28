Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B7E307324
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 10:50:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A0726E0EC;
	Thu, 28 Jan 2021 09:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0452F6E0EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 09:50:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23723376-1500050 for multiple; Thu, 28 Jan 2021 09:50:10 +0000
MIME-Version: 1.0
In-Reply-To: <4b5dcbf2-5e48-3049-c4ac-f9ac0a25ad80@linux.intel.com>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-20-chris@chris-wilson.co.uk>
 <5b716048-6d94-cbbe-4092-5eaebb706561@linux.intel.com>
 <161176158580.2943.5136791152327305702@build.alporthouse.com>
 <161176227212.2943.15527894923176928677@build.alporthouse.com>
 <4b5dcbf2-5e48-3049-c4ac-f9ac0a25ad80@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 09:50:08 +0000
Message-ID: <161182740877.16746.15701677458503974250@build.alporthouse.com>
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

Quoting Tvrtko Ursulin (2021-01-27 15:58:12)
> Okay makes sense. The change in key drives the requirement so just 
> please mention in the commit message and I'll tackle the skip list 
> mechanics in the meantime.

In the following patches, we introduce a new sort key to the scheduler,
a virtual deadline. This imposes a different structure to the tree.
Using a priority sort, we have very few priority levels active at any
time, most likely just the default priority and so the rbtree degenerates
to a single elements containing the list of all ready requests. The
deadlines in contrast are very sparse, and typically each request has a
unique deadline. Instead of being able to simply walk the list during
dequeue, with the deadline scheduler we have to iterate through the bst
on the critical submission path. Skiplists are vastly superior in this
instance due to the O(1) iteration during dequeue, with very similar
characteristics [on average] to the rbtree for insertion.

This means that by using skiplists we can introduce a sparse sort key
without degrading latency on the critical submission path.

As an example, one simple case where we try to do lots of
semi-independent work without any priority management (gem_exec_parallel),
the lock hold times were
[worst]        [total]    [avg]
 973.05     6301584.84     0.35 # plain rbtree
 559.82     5424915.25     0.33 # best rbtree with pruning
 208.21     3898784.09     0.24 # skiplist
  34.05     5784106.01     0.32 # rbtree without deadlines
  23.35     4152999.80     0.24 # skiplist without deadlines

-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
