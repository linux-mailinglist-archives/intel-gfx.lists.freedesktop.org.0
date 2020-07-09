Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6893219ECA
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 13:07:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA0E16EA41;
	Thu,  9 Jul 2020 11:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02E1F6EA41
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 11:07:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21763904-1500050 for multiple; Thu, 09 Jul 2020 12:07:23 +0100
MIME-Version: 1.0
In-Reply-To: <71aaf1cf-9d3a-6681-c9b0-fc25144b86b0@linux.intel.com>
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-10-chris@chris-wilson.co.uk>
 <427a43a2-c434-6239-5101-87209472def9@linux.intel.com>
 <159421217807.17526.6465016562541726599@build.alporthouse.com>
 <dfc69bdb-eb8c-9746-eabb-434a263357de@linux.intel.com>
 <159422257929.17526.13795947568657610354@build.alporthouse.com>
 <71aaf1cf-9d3a-6681-c9b0-fc25144b86b0@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 09 Jul 2020 12:07:21 +0100
Message-ID: <159429284100.22162.194646133366627797@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 09/20] drm/i915/gem: Assign context id for
 async work
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

Quoting Tvrtko Ursulin (2020-07-09 12:01:29)
> 
> On 08/07/2020 16:36, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-07-08 15:24:20)
> >> And what is the effective behaviour you get with N contexts - emit N
> >> concurrent operations and for N + 1 block in execbuf?
> > 
> > Each context defines a timeline. A task is not ready to run until the
> > task before it in its timeline is completed. So we don't block in
> > execbuf, the scheduler waits until the request is ready before putting
> > it into the HW queues -- i.e. the number chain of fences with everything
> > that entails about ensuring it runs to completion [whether successfully
> > or not, if not we then rely on the error propagation to limit the damage
> > and report it back to the user if they kept a fence around to inspect].
> 
> Okay but what is the benefit of N contexts in this series, before the 
> work is actually spread over ctx async width CPUs? Is there any? If not 
> I would prefer this patch is delayed until the time some actual 
> parallelism is ready to be added.

We currently submit an unbounded amount of work. This patch is added
along with its user to restrict the amount of work allowed to run in
parallel, and also is used to [crudely] serialise the multiple threads
attempting to allocate space in the vm when we completely exhaust that
address space. We need at least one fence-context id for each user, this
took the opportunity to generalise that to N ids for each user.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
