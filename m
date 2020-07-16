Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 089502227DB
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 17:53:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D616EC84;
	Thu, 16 Jul 2020 15:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A47C36EC84
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 15:53:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21840633-1500050 for multiple; Thu, 16 Jul 2020 16:53:17 +0100
MIME-Version: 1.0
In-Reply-To: <a09eea8d-2b13-8fc4-e5c3-1105f4d34ad3@linux.intel.com>
References: <20200716113357.7644-1-chris@chris-wilson.co.uk>
 <20200716113357.7644-4-chris@chris-wilson.co.uk>
 <a09eea8d-2b13-8fc4-e5c3-1105f4d34ad3@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 16:53:16 +0100
Message-ID: <159491479674.13677.2210964298470044875@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/gt: Drop
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

Quoting Tvrtko Ursulin (2020-07-16 16:29:37)
> 
> On 16/07/2020 12:33, Chris Wilson wrote:
> > Now that we have serialised the request retirement's decoupling of the
> > breadcrumb from the engine with the request signaling, we know that
> > there should never be a stale breadcrumb attached to an unbound virtual
> > engine. We can now remove the fixup code that had to migrate the
> > breadcrumbs along with the virtual engine, from one sibling to the next.
> 
> What do you mean by "unbound virtual engine"?

I think of ve->context.inflight == NULL as being unbound.

> Previous siblings[0]? We 
> do know that has been completed, at the point the next one is getting 
> dequeued, and by the virtue of breadcrumbs doing the signaling it will 
> have been removed from the list. But that was true before. Which leaves 
> me confused as to why the transfer was needed.. Was it just because 
> explicit wait used to be a potential signaler and that's no longer the case?

Evidently we did get requests finding their way onto
ve->engine[0].breadcumbs after the unsubmit. I thought I had a good
explanation with a window between ACTIVE and SIGNALED, but going back to
tip, those transitions are all underneath the rq->lock.

However, if we submit a completed request, that is put onto the
rq->engine->breadcrumb, but we do not schedule-in the context. That
would cause us to have breadcrumbs on ve->engine[0] while
ve->context.flight was NULL and on the next virtual request submission
could switch to a new engine with stale requests.

Ok, the issue of stale breadcrumbs is not completely solved yet.
But this time, this time for sure!, I think I know the cause of the
stale breadcrumbs!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
