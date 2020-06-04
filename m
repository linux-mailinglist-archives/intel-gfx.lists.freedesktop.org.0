Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 641FA1EE58F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 15:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC1A46E40A;
	Thu,  4 Jun 2020 13:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE3EF6E067
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 13:44:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21395876-1500050 for multiple; Thu, 04 Jun 2020 14:44:26 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHM=qwi9h20Lu9JCz8KXPNJHo7ToUv63t9eADM-U9MZm9A@mail.gmail.com>
References: <20200604103751.18816-1-chris@chris-wilson.co.uk>
 <20200604103751.18816-14-chris@chris-wilson.co.uk>
 <CAM0jSHM=qwi9h20Lu9JCz8KXPNJHo7ToUv63t9eADM-U9MZm9A@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <159127826380.25109.18308915602088724728@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 04 Jun 2020 14:44:23 +0100
Subject: Re: [Intel-gfx] [PATCH 14/22] drm/i915/gem: Async GPU relocations
 only
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

Quoting Matthew Auld (2020-06-04 14:37:40)
> On Thu, 4 Jun 2020 at 11:38, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Reduce the 3 relocation patches down to the single path that accommodates
> > all. The primary motivation for this is to guard the relocations with a
> > natural fence (derived from the i915_request used to write the
> > relocation from the GPU).
> >
> > The tradeoff in using async gpu relocations is that it increases latency
> > over using direct CPU relocations, for the cases where the target is
> > idle and accessible by the CPU. The benefit is greatly reduced lock
> > contention and improved concurrency by pipelining.
> >
> > Note that forcing the async gpu relocations does reveal a few issues
> > they have. Firstly, is that they are visible as writes to gem_busy,
> > causing to mark some buffers are being to written to by the GPU even
> > though userspace only reads. Secondly is that, in combination with the
> > cmdparser, they can cause priority inversions. This should be the case
> > where the work is being put into a common workqueue losing our priority
> > information and so being executed in FIFO from the worker, denying us
> > the opportunity to reorder the requests afterwards.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Fwiw, if anyone else is as concerned about the priority inversions via
the global system workqueues as am I, we need to teach the CPU scheduler
about our priorities. I am considering a per-CPU kthread and plugging
them into our scheduling backend. That should be then be applicable to
all our async tasks (clflushing, binding, pages, random other tasks).

The devil is in the details of course.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
