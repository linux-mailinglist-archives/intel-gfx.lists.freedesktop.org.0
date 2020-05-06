Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C971C6A60
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 09:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0AA389C21;
	Wed,  6 May 2020 07:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28BAE89C21
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 07:48:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21123111-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 May 2020 08:48:45 +0100
MIME-Version: 1.0
In-Reply-To: <20200505215214.9690-9-chris@chris-wilson.co.uk>
References: <20200505215214.9690-1-chris@chris-wilson.co.uk>
 <20200505215214.9690-9-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158875132117.927.14561998764093526782@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 06 May 2020 08:48:41 +0100
Subject: Re: [Intel-gfx] [PATCH 09/14] drm/i915/gem: Teach execbuf how to
 wait on future syncobj
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

Quoting Chris Wilson (2020-05-05 22:52:09)
> +bool i915_sched_node_verify_dag(struct i915_sched_node *waiter,
> +                               struct i915_sched_node *signaler)
> +{
> +       struct i915_dependency *dep, *p;
> +       struct i915_dependency stack;
> +       bool result = false;
> +       LIST_HEAD(dfs);
> +
> +       if (list_empty(&waiter->waiters_list))
> +               return true;
> +
> +       spin_lock_irq(&schedule_lock);
> +
> +       stack.signaler = signaler;
> +       list_add(&stack.dfs_link, &dfs);
> +
> +       list_for_each_entry(dep, &dfs, dfs_link) {
> +               struct i915_sched_node *node = dep->signaler;
> +
> +               if (node_signaled(node))
> +                       continue;
> +
> +               list_for_each_entry(p, &node->signalers_list, signal_link) {
> +                       if (p->signaler == waiter)
> +                               goto out;
> +
> +                       if (list_empty(&p->dfs_link))
> +                               list_add_tail(&p->dfs_link, &dfs);
> +               }
> +       }

Food for thought. With the timeline tracking we have a means to see the
latest sync points and then we only need to compare the edges between
timelines, rather than the whole graph.

We need to kill this global serialisation, not just here but for
rescheduling as well. But the only alternative to using dfs_link would
be a local temporary iterator, which has yet to appeal.

There must be a good way of doing concurrent iterative dag traversals
with no memory allocations...
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
