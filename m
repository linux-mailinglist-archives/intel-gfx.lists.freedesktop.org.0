Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B51F91651DF
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 22:48:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 087CA6E888;
	Wed, 19 Feb 2020 21:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3B7C6E888
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 21:48:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20281196-1500050 for multiple; Wed, 19 Feb 2020 21:48:03 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHOnfmVZCQhQ23Hh70Wh0yRVstt7hLBAAODaJQaw91NfMQ@mail.gmail.com>
References: <20200218202302.1326399-1-chris@chris-wilson.co.uk>
 <CAM0jSHOnfmVZCQhQ23Hh70Wh0yRVstt7hLBAAODaJQaw91NfMQ@mail.gmail.com>
Message-ID: <158214888261.8112.1674632563478440744@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 19 Feb 2020 21:48:02 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Protect signaler walk with RCU
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-02-19 19:02:36)
> > @@ -497,7 +497,7 @@ void i915_sched_node_fini(struct i915_sched_node *node)
> >                 GEM_BUG_ON(dep->signaler != node);
> >                 GEM_BUG_ON(!list_empty(&dep->dfs_link));
> >
> > -               list_del(&dep->signal_link);
> > +               list_del_rcu(&dep->signal_link);
> >                 if (dep->flags & I915_DEPENDENCY_ALLOC)
> >                         i915_dependency_free(dep);
> 
> Is this not a potential uaf? Do we not have to wait for the grace
> period before doing the free, or what?

If we insert SLAB_TYPESAFE_BY_RCU that should satisfy all.
(Give or that the amount of pain in thinking about rcu-freelists.)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
