Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B24CB213804
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 11:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291066E201;
	Fri,  3 Jul 2020 09:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 435FE6E201
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 09:49:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21700712-1500050 for multiple; Fri, 03 Jul 2020 10:49:22 +0100
MIME-Version: 1.0
In-Reply-To: <3593fac6-f178-14d1-6948-ee3bcf65e74c@linux.intel.com>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-7-chris@chris-wilson.co.uk>
 <aae73a4b-c942-53ae-9127-6160bd6b614a@linux.intel.com>
 <159376683236.12771.16953737584055290689@build.alporthouse.com>
 <3593fac6-f178-14d1-6948-ee3bcf65e74c@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 03 Jul 2020 10:49:24 +0100
Message-ID: <159376976443.22925.16302677649396965411@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 07/23] drm/i915: Switch to object
 allocations for page directories
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

Quoting Tvrtko Ursulin (2020-07-03 10:24:27)
> 
> On 03/07/2020 10:00, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-07-03 09:44:52)
> >>
> >> On 02/07/2020 09:32, Chris Wilson wrote:
> >>> The GEM object is grossly overweight for the practicality of tracking
> >>> large numbers of individual pages, yet it is currently our only
> >>> abstraction for tracking DMA allocations. Since those allocations need
> >>> to be reserved upfront before an operation, and that we need to break
> >>> away from simple system memory, we need to ditch using plain struct page
> >>> wrappers.
> >>
> >> [Calling all page table experts...] :)
> >>
> >> So.. mostly 4k allocations via GEM objects? Sounds not ideal on first.
> 
> What is the relationship between object size and number of 4k objects 
> needed for page tables?

1 pt (4KiB dma + small struct) per 2MiB + misalignment
1 pd (4KiB dma + ~4KiB struct) per 1GiB + misalignment
1 pd per 512GiB + misalignment
1 pd per 256TiB + misalignment
[top level is preallocated]

etc.

> 
> >> Reminder on why we need to break away from simple system memory?
> > 
> > The page tables are stored in device memory, which at the moment are
> > plain pages with dma mappings.
> > 
> >> Need to
> >> have a list of GEM objects which can be locked in the ww locking phase?
> > 
> > Yes, since we will need to be able to reserve all the device memory we
> > need for execution.
> > 
> >> But how do you allocate these objects up front, when allocation needs to
> >> be under the ww lock in case evictions need to be triggered.
> > 
> > By preeallocating enough objects to cover the page directories during
> > the reservation phase. The previous patch moved the allocations from the
> > point-of-use to before we insert the vma. Having made it the onus of the
> > caller to provide the page directories allocations, we can then do it
> > early on during the memory reservations.
> 
> Okay I missed the importance of the previous patch.
> 
> But preallocations have to be able to trigger evictions. Is the 
> preallocating objects split then into creating objects and obtaining 
> backing store? I do not see this in this patch, alloc_pt_dma both 
> creates the object and pins the pages.

Sure. It can be broken into two calls easily, or rather after having
allocated objects suitable for the page tables, they can then all be
reserved en masse will the rest of the objects. I was guilty of still
thinking in terms of system memory.

Worth keeping in mind is that the GGTT should never need extra
allocations, which should keep a lot of the isolated object handling
easier. And some vm will have preallocated ranges (e.g. the
aliasing-ppgtt) so that we don't need to allocate more objects during
critical phases.

My goal is separate out the special cases for PIN_USER (i.e. execbuf)
where there are many, many objects and auxiliary allocations from the
special cases for the isolated PIN_GLOBAL, and from future special cases
for pageout; killing i915_vma_pin(PIN_USER).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
