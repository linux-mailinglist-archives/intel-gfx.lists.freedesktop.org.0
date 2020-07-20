Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 459B1225CC7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 12:40:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E053B89D89;
	Mon, 20 Jul 2020 10:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DDE989DAB
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 10:40:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21871888-1500050 for multiple; Mon, 20 Jul 2020 11:40:04 +0100
MIME-Version: 1.0
In-Reply-To: <d89649f1-4025-e347-8d52-f4ecb34aaf77@intel.com>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-12-chris@chris-wilson.co.uk>
 <d89649f1-4025-e347-8d52-f4ecb34aaf77@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jul 2020 11:40:03 +0100
Message-ID: <159524160359.15672.2219562394754971629@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 12/66] drm/i915: Switch to object
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

Quoting Matthew Auld (2020-07-20 11:34:10)
> On 15/07/2020 12:50, Chris Wilson wrote:
> > The GEM object is grossly overweight for the practicality of tracking
> > large numbers of individual pages, yet it is currently our only
> > abstraction for tracking DMA allocations. Since those allocations need
> > to be reserved upfront before an operation, and that we need to break
> > away from simple system memory, we need to ditch using plain struct page
> > wrappers.
> > 
> > In the process, we drop the WC mapping as we ended up clflushing
> > everything anyway due to various issues across a wider range of
> > platforms. Though in a future step, we need to drop the kmap_atomic
> > approach which suggests we need to pre-map all the pages and keep them
> > mapped.
> > 
> > v2: Verify our large scratch page is suitably DMA aligned; and manually
> > clear the scratch since we are allocating random struct pages.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > ---
> 
> <snip>
> 
> > -
> > -static struct page *vm_alloc_page(struct i915_address_space *vm, gfp_t gfp)
> > -{
> > -     struct pagevec stack;
> > -     struct page *page;
> > -
> > -     if (I915_SELFTEST_ONLY(should_fail(&vm->fault_attr, 1)))
> > -             i915_gem_shrink_all(vm->i915);
> 
> 
> I guess shrink_boom et al are now mostly irrelevant in this new scheme.

The failures now occur at a less precarious time, but we can copy the
should_fail across, maybe even add more injection sites.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
