Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1D724E88B
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Aug 2020 18:13:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6054E6E138;
	Sat, 22 Aug 2020 16:13:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0887F6E138
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Aug 2020 16:13:01 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 49E7DB746;
 Sat, 22 Aug 2020 16:13:29 +0000 (UTC)
Date: Sat, 22 Aug 2020 18:12:58 +0200
From: Joerg Roedel <jroedel@suse.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200822161258.GP3354@suse.de>
References: <20200821123746.16904-1-joro@8bytes.org>
 <CAHk-=wgNEsVwVMwQdHL4O1tDWQa-HcmOv-EmqLTQH+SoC2CkWA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wgNEsVwVMwQdHL4O1tDWQa-HcmOv-EmqLTQH+SoC2CkWA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] mm: Track page table modifications in
 __apply_to_page_range()
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
Cc: Joerg Roedel <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, Chris Wilson <chris@chris-wilson.co.uk>,
 Linux-MM <linux-mm@kvack.org>, David Vrabel <david.vrabel@citrix.com>,
 Pavel Machek <pavel@ucw.cz>, Dave Airlie <airlied@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 21, 2020 at 12:18:41PM -0700, Linus Torvalds wrote:
> It also strikes me that I think the only architecture that uses the
> whole arch_sync_kernel_mappings() thing is now just x86-32.
> 
> [ Well, x86-64 still has it, but that's because we undid the 64-bit
> removal, but it's on the verge of going away and x86-64 shouldn't
> actually _need_ it any more ]
> 
> So all of this seems to be purely for 32-bit x86. Which kind of makes
> this all fail the smell test.

Yeah, it is certainly not the nicest thing to have in generic mm code,
but at least it is an improvement of the vmalloc_sync_all() interface we
had before, where the function had to be called at random undefined
places.

And x86-32 needs it, as long as we have the !SHARED_KERNEL_PMD cases
(which includes legacy paging). Or we also pre-allocate the PMDs on
x86-32 and forbid large ioremap mappings. But since the vmalloc area
gets larger with less RAM on x86-32, this would penalize low memory
machines by using more pages for the pre-allocations.

Not sure if making the vmalloc area on x86-32 a fixed 128MB range of
address space independent of RAM size is doable or if it will break some
machines. But with that pre-allocating PMDs would make more sense and we
could get rid of the p?d_alloc_track() stuff.

Regards,

	Joerg
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
