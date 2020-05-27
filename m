Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 244AD1E4A9C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 18:43:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAD1189F6F;
	Wed, 27 May 2020 16:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E5B589F38;
 Wed, 27 May 2020 16:43:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21312381-1500050 for multiple; Wed, 27 May 2020 17:43:12 +0100
MIME-Version: 1.0
In-Reply-To: <159059525586.30979.1718850848806311032@build.alporthouse.com>
References: <20200527131409.699882-1-chris@chris-wilson.co.uk>
 <e3ceb72a-156b-a4cf-96c7-c339ea67ffb1@linux.intel.com>
 <159059525586.30979.1718850848806311032@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Message-ID: <159059779215.30979.18083026844038777418@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 27 May 2020 17:43:12 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Randomise
 bonded submission
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-05-27 17:00:55)
> Quoting Tvrtko Ursulin (2020-05-27 16:51:50)
> > 
> > On 27/05/2020 14:14, Chris Wilson wrote:
> > > +
> > > +             if (rand() % 1)
> > > +                     igt_swap(a, b);
> > > +
> > > +             batch.handle = create_semaphore_to_spinner(i915, a);
> > 
> > These will be preemptible right? More so they schedule out on semaphore 
> > interrupt straight away? So I don't see how slaves can be prevented from 
> > running because they always are on a different physical engine.
> 
> Right, as I understood your description the masters could only be on one
> engine with the bonded requests on the other.
> 
> And I don't know how to wait from the GPU other than with the
> preemptible semaphore spin. A non preemptible wait would be another
> spinner, but that would not coordinate across the bond. To reproduce the
> non-preemptible HW might require the actual instruction flow.

The most obvious way is the same igt_spin_t submitted to both engines
with a submit fence. But that still requires the CPU to terminate the
spinner. And has similarities to the existing tests.

Now we could have one spinner that counted or watched the timestamp,
looping back on itself with a predicated jump, and on completion
terminated the bonded spinner. That way we could have two
non-preemptible spinner of finite duration. But the coupling via memory
is still very loose and doesn't require both requests to be running
concurrently. Slightly better than would be to rewrite the jump target
from A and then go in another spin on A waiting for a similar update
from B. It still does not explode if either is preempted out, but more
likely to be caught spinning forever.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
