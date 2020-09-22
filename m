Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B31F92746B9
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 18:33:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82176E8BC;
	Tue, 22 Sep 2020 16:33:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 166D66E8BC;
 Tue, 22 Sep 2020 16:33:50 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id DF8FD67373; Tue, 22 Sep 2020 18:33:46 +0200 (CEST)
Date: Tue, 22 Sep 2020 18:33:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200922163346.GA1701@lst.de>
References: <20200918163724.2511-1-hch@lst.de>
 <20200918163724.2511-4-hch@lst.de>
 <20200921191157.GX32101@casper.infradead.org> <20200922062249.GA30831@lst.de>
 <43d10588-2033-038b-14e4-9f41cd622d7b@linux.intel.com>
 <20200922143141.GA26637@lst.de>
 <e429c3e6-2143-f51a-4c1c-c1470076ad3e@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e429c3e6-2143-f51a-4c1c-c1470076ad3e@linux.intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: use vmap in shmem_pin_map
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
Cc: Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Minchan Kim <minchan@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org, dri-devel@lists.freedesktop.org,
 xen-devel@lists.xenproject.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Christoph Hellwig <hch@lst.de>, Nitin Gupta <ngupta@vflare.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 22, 2020 at 05:13:45PM +0100, Tvrtko Ursulin wrote:
>>   void *shmem_pin_map(struct file *file)
>>   {
>> -	const size_t n_pte = shmem_npte(file);
>> -	pte_t *stack[32], **ptes, **mem;
>
> Chris can comment how much he'd miss the 32 page stack shortcut.

I'd like to see a profile that claim that kmalloc matters in a
path that does a vmap and reads pages through the page cache.
Especially when the kmalloc saves doing another page cache lookup
on the free side.

> Is there something in vmap() preventing us from freeing the pages array 
> here? I can't spot anything that is holding on to the pointer. Or it was 
> just a sketch before you realized we could walk the vm_area?
>
> Also, I may be totally misunderstanding something, but I think you need to 
> assign area->pages manually so shmem_unpin_map can access it below.

We need area->pages to hold the pages for the free side.  That being
said the patch I posted is broken because it never assigned to that.
As said it was a sketch.  This is the patch I just rebooted into on
my Laptop:

http://git.infradead.org/users/hch/misc.git/commitdiff/048522dfa26b6667adfb0371ff530dc263abe829

it needs extra prep patches from the series:

http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/alloc_vm_area

>>   	mapping_clear_unevictable(file->f_mapping);
>> -	__shmem_unpin_map(file, ptr, shmem_npte(file));
>> +	for (i = 0; i < shmem_npages(file); i++)
>> +		put_page(area->pages[i]);
>> +	kvfree(area->pages);
>> +	vunmap(ptr);
>
> Is the verdict from mm experts that we can't use vfree due __free_pages vs 
> put_page differences?

Switched to vfree now.

> Could we get from ptes to pages, so that we don't have to keep the 
> area->pages array allocated for the duration of the pin?

We could do vmalloc_to_page, but that is fairly expensive (not as bad
as reading from the page cache..).  Are you really worried about the
allocation?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
