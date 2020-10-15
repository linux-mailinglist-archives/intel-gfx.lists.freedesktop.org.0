Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1628928FA22
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 22:32:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 168AE89DA2;
	Thu, 15 Oct 2020 20:32:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D0EE89DA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 20:32:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22728916-1500050 for multiple; Thu, 15 Oct 2020 21:32:41 +0100
MIME-Version: 1.0
In-Reply-To: <8440cc7f281a49509efc25987b349438@intel.com>
References: <20201013103256.31446-1-chris@chris-wilson.co.uk>
 <8c41461201764a0d8a05caba47d1589a@intel.com>
 <160260628825.2946.16678261690978530238@build.alporthouse.com>
 <daa1a1f388a94b07ad95ce5d12132925@intel.com>
 <917a40e55bb64ff1a9692563eb459611@intel.com>
 <160277441055.32312.12137014703246379267@build.alporthouse.com>
 <8440cc7f281a49509efc25987b349438@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Tang, CQ" <cq.tang@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 21:32:40 +0100
Message-ID: <160279396077.3047.5670029514653870704@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make the GEM reclaim workqueue
 high priority
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

Quoting Tang, CQ (2020-10-15 21:09:32)
> 
> 
> > -----Original Message-----
> > From: Chris Wilson <chris@chris-wilson.co.uk>
> > Sent: Thursday, October 15, 2020 8:07 AM
> > To: Tang, CQ <cq.tang@intel.com>; intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make the GEM reclaim workqueue
> > high priority
> > 
> > Quoting Tang, CQ (2020-10-14 00:29:13)
> > > i915_gem_free_object() is called by multiple threads/processes, they all
> > add objects onto the same free_list. The free_list processing worker thread
> > becomes bottle-neck. I see that the worker is mostly a single thread (with
> > particular thread ID), but sometimes multiple threads are launched to
> > process the 'free_list' work concurrently. But the processing speed is still
> > slower than the multiple process's feeding speed, and 'free_list' is holding
> > more and more memory.
> > 
> > We can also prune the free_list immediately, if we know we are outside of
> > any critical section. (We do this before create ioctls, and I thought upon
> > close(device), but I see that's just contexts.)
> > 
> > > The worker launching time is delayed a lot, we call queue_work() when we
> > add the first object onto the empty 'free_list', but when the worker is
> > launched, the 'free_list' has sometimes accumulated 1M objects. Maybe it is
> > because of waiting currently running worker to finish?
> > 
> > 1M is a lot more than is comfortable, and that's even with a high-priority
> > worker.  The problem with objects being freed from any context is that we
> > can't simply put a flush_work around there. (Not without ridding ourselves of
> > a few mutexes at least.) We could try more than worker, but it's no more
> > more effort to starve 2 cpus than it is to starve 1.
> > 
> > No, with that much pressure the only option is to apply the backpressure at
> > the point of allocation ala create_ioctl. i.e. find the hog, and look to see if
> > there's a convenient spot before/after to call
> > i915_gem_flush_free_objects(). Since you highlight the vma-stash as the
> > likely culprit, and the free_pt_stash is unlikely to be inside any critical section,
> > might as well try flushing from there for starters.
> 
> I have not yet tested, but I guess calling i915_gem_flush_free_objects() inside free_pt_stash() will solve the problem that gem_exec_gttfill has, because it will give some back pressure on the system traffic.

Still I'm slightly concerned that so many PD objects are being created;
it's not something that shows up in the smem ppgtt tests (or at least
it's been dwarfed by other bottlenecks), and the set of vma (and so the
PD) are meant to reach a steady state. You would need to be using a
constant set of objects and recycling the vma, not to hit the
create_ioctl flush. However, it points back to the pressure point being
around the vma bind.

> But this is only for the page table 4K lmem objects allocated/freed by vma-stash. We might encounter the same situation with user space allocated objects.

See gem_exec_create, it's mission is to cause memory starvation by
creating as many new objects as it can and releasing them after a nop
batch. That's why we have the freelist flush from create_ioctl.

Now I need to add a pass that tries to create as many vma from a few
objects as is possible.

(And similarly why we try to free requests as they are created.)

One problem is that they will catch the client after the hog, not
necessarily the hog themselves.

I'm optimistic we can make freeing the object atomic, even if that means
pushing the pages onto some reclaim list. (Which is currently a really
nasty drawback of the free worker, a trick lost with the removal of
struct_mutex.)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
