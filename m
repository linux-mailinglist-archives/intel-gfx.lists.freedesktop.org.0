Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E926B24D5A8
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 15:02:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 540156E95E;
	Fri, 21 Aug 2020 13:02:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D8936E95E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 13:02:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22198351-1500050 for multiple; Fri, 21 Aug 2020 14:01:43 +0100
MIME-Version: 1.0
In-Reply-To: <CAHk-=wiu1WHD0x0VXKoLQGy43S7KLCY=Yd-TPDh=7tDW08554w@mail.gmail.com>
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
 <20200821085011.28878-2-chris@chris-wilson.co.uk>
 <CAHk-=wiu1WHD0x0VXKoLQGy43S7KLCY=Yd-TPDh=7tDW08554w@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 21 Aug 2020 14:01:41 +0100
Message-ID: <159801490171.29194.13892566081151243171@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/gem: Sync the vmap PTEs upon
 construction
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
Cc: Joerg Roedel <jroedel@suse.de>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Pavel Machek <pavel@ucw.cz>, Dave Airlie <airlied@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Linus Torvalds (2020-08-21 13:41:03)
> On Fri, Aug 21, 2020 at 1:50 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Since synchronising the PTE after assignment is a manual step, use the
> > newly exported interface to flush the PTE after assigning via
> > alloc_vm_area().
> 
> This commit message doesn't make much sense to me.
> 
> Are you talking about synchronizing the page directory structure
> across processes after possibly creating new kernel page tables?
> 
> Because that has nothing to do with the PTE. It's all about making
> sure the _upper_ layers of the page directories are populated
> everywhere..
> 
> The name seems off to me too - what are you "flushing"? (And yes, I
> know about the flush_cache_vmap(), but that looks just bogus, since
> any non-mapped area shouldn't have any virtual caches to begin with,
> so I suspect that is just the crazy architectures being confused -
> flush_cache_vmap() is a no-op on any sane architecture - and powerpc
> that mis-uses it for other things).

I was trying to mimic map_kernel_range() which does the
arch_sync_kernel_mappings and flush_cache_vmap on top of the
apply_to_page_range performed by alloc_vm_area, because buried away in
there, on x86-32, is a set_pmd(). Since map_kernel_range() wrapped
map_kernel_range_noflush(), flush seemed like the right verb.

Joerg pointed out that the sync belonged to __apply_to_page_range and
fixed it in situ.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
