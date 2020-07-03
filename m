Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF842136F5
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 11:00:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8476E081;
	Fri,  3 Jul 2020 09:00:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BF1A6E081
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 09:00:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21699935-1500050 for multiple; Fri, 03 Jul 2020 10:00:30 +0100
MIME-Version: 1.0
In-Reply-To: <aae73a4b-c942-53ae-9127-6160bd6b614a@linux.intel.com>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-7-chris@chris-wilson.co.uk>
 <aae73a4b-c942-53ae-9127-6160bd6b614a@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 03 Jul 2020 10:00:32 +0100
Message-ID: <159376683236.12771.16953737584055290689@build.alporthouse.com>
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

Quoting Tvrtko Ursulin (2020-07-03 09:44:52)
> 
> On 02/07/2020 09:32, Chris Wilson wrote:
> > The GEM object is grossly overweight for the practicality of tracking
> > large numbers of individual pages, yet it is currently our only
> > abstraction for tracking DMA allocations. Since those allocations need
> > to be reserved upfront before an operation, and that we need to break
> > away from simple system memory, we need to ditch using plain struct page
> > wrappers.
> 
> [Calling all page table experts...] :)
> 
> So.. mostly 4k allocations via GEM objects? Sounds not ideal on first.
> 
> Reminder on why we need to break away from simple system memory?

The page tables are stored in device memory, which at the moment are
plain pages with dma mappings.

> Need to 
> have a list of GEM objects which can be locked in the ww locking phase? 

Yes, since we will need to be able to reserve all the device memory we
need for execution.

> But how do you allocate these objects up front, when allocation needs to 
> be under the ww lock in case evictions need to be triggered.

By preeallocating enough objects to cover the page directories during
the reservation phase. The previous patch moved the allocations from the
point-of-use to before we insert the vma. Having made it the onus of the
caller to provide the page directories allocations, we can then do it
early on during the memory reservations.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
