Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6597F24D2A1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 12:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D08D56EACA;
	Fri, 21 Aug 2020 10:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7157F6E10C
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Aug 2020 10:36:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22196525-1500050 for multiple; Fri, 21 Aug 2020 11:36:09 +0100
MIME-Version: 1.0
In-Reply-To: <20200821102204.GH3354@suse.de>
References: <20200821085011.28878-1-chris@chris-wilson.co.uk>
 <20200821095129.GF3354@suse.de>
 <159800366215.29194.8455636122843151159@build.alporthouse.com>
 <20200821102204.GH3354@suse.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Joerg Roedel <jroedel@suse.de>
Date: Fri, 21 Aug 2020 11:36:07 +0100
Message-ID: <159800616716.29194.8354000222129735639@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/4] mm: Export flush_vm_area() to sync the
 PTEs upon construction
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-mm@kvack.org,
 David Vrabel <david.vrabel@citrix.com>, Pavel Machek <pavel@ucw.cz>,
 Dave Airlie <airlied@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Joerg Roedel (2020-08-21 11:22:04)
> On Fri, Aug 21, 2020 at 10:54:22AM +0100, Chris Wilson wrote:
> > Ok. I thought it had to be after assigning the *ptep. If we apply the
> > sync first, do not have to worry about PGTBL_PTE_MODIFIED from the
> > *ptep?
> 
> Hmm, if I understand the code correctly, you are re-implementing some
> generic ioremap/vmalloc mapping logic in the i915 driver. I don't know
> the reason, but if it is valid you need to manually call
> arch_sync_kernel_mappings() from your driver like this to be correct:
> 
>         if (ARCH_PAGE_TABLE_SYNC_MASK & PGTBL_PTE_MODIFIED)
>                 arch_sync_kernel_mappings();
> 
> In practice this is a no-op, because nobody sets PGTBL_PTE_MODIFIED in
> ARCH_PAGE_TABLE_SYNC_MASK, so the above code would be optimized away.
> 
> But what you really care about is the tracking in apply_to_page_range(),
> as that allocates the !pte levels of your page-table, which needs
> synchronization on x86-32.
> 
> Btw, what are the reasons you can't use generic vmalloc/ioremap
> interfaces to map the range?

ioremap_prot and ioremap_page_range assume a contiguous IO address. So
we needed to allocate the vmalloc area [and would then need to iterate
over the discontiguous iomem chunks with ioremap_page_range], and since
alloc_vm_area returned the ptep, it looked clearer to then assign those
according to whether we wanted ioremapping or a plain page. So we ended
up with one call to the core to return us a vm_struct and a pte array
that worked for either backing store.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
