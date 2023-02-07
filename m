Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D7968D2CC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 10:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4B410E498;
	Tue,  7 Feb 2023 09:29:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A6010E491
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 09:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675762163; x=1707298163;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=TdBBMRMYplcV0PZdCyqSfp+k6Y2hYbl35eLLajMWzbM=;
 b=e2qGS6OrzNZb56q84K2Mj03zYgrgwb9ASIYLEEQTNk8gaU6bCcMLd70+
 Trebx2jCosguNyfL3+nSbE2SaMw7TdtmvZGQluxMVLyLZcno4zNMKoAsW
 MaKsxmtrzN9rGpSWt8DHIdpfhvx78HC8GDQ8JhmLP9ImL77NdpX/XqjdS
 7Mb3zAf0VMU4Mr0NqZHaHC8wOXvVQFli864nP0hjZ2BHCXqotu/J9cyvX
 +FaHDhC4BMEa6Fb54QBnQ6JvYBQfGA0TNwwd6N/4m/SLT9oLUb4aqRDH7
 zROlY5FjQGsVl1JtVEW98gQhBLXsUlfcrIbxO76w/4J4GdDgZFgcnG3o2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309108149"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309108149"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 01:29:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="616748216"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="616748216"
Received: from sarahhan-mobl.ger.corp.intel.com (HELO [10.213.234.124])
 ([10.213.234.124])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 01:29:21 -0800
Message-ID: <16f7ff8a-1170-fa9a-49e7-1a1cf569d34f@linux.intel.com>
Date: Tue, 7 Feb 2023 09:29:19 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Dan Carpenter <error27@gmail.com>
References: <Y+EMbhwPiF6zjBVR@kili>
 <a41f5807-022f-1b4c-3baa-6bc928226853@linux.intel.com>
 <Y+IQmSbWR6laNiHd@kadam>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y+IQmSbWR6laNiHd@kadam>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [bug report] drm/i915: Allow compaction upto
 SWIOTLB max segment size
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 07/02/2023 08:49, Dan Carpenter wrote:
> On Mon, Feb 06, 2023 at 04:59:36PM +0000, Tvrtko Ursulin wrote:
>>
>> On 06/02/2023 14:19, Dan Carpenter wrote:
>>> [ Ancient code but the warning showed up again because the function was
>>>     renamed or something? - dan ]
>>>
>>> Hello Chris Wilson,
>>>
>>> The patch 871dfbd67d4e: "drm/i915: Allow compaction upto SWIOTLB max
>>> segment size" from Oct 11, 2016, leads to the following Smatch static
>>> checker warning:
>>>
>>> 	drivers/gpu/drm/i915/gem/i915_gem_shmem.c:164 shmem_sg_alloc_table()
>>> 	warn: variable dereferenced before check 'sg' (see line 155)
>>
>> Is smatch getting confused here? Not entirely sure but lets see below..
> 
> Reading through your comments, it seems like you're saying the NULL
> check should be deleted.  I don't really consider that a "false positive".
> Hopefully, we both agree that by the time we get to the check the "sg"
> pointer has been dereferenced.
> 
>>>
>>> drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>>>       58 int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
>>>       59                          size_t size, struct intel_memory_region *mr,
>>>       60                          struct address_space *mapping,
>>>       61                          unsigned int max_segment)
>>>       62 {
>>>       63         unsigned int page_count; /* restricted by sg_alloc_table */
>>>       64         unsigned long i;
>>>       65         struct scatterlist *sg;
>>>       66         struct page *page;
>>>       67         unsigned long last_pfn = 0;        /* suppress gcc warning */
>>>       68         gfp_t noreclaim;
>>>       69         int ret;
>>>       70
>>>       71         if (overflows_type(size / PAGE_SIZE, page_count))
>>>       72                 return -E2BIG;
>>>       73
>>>       74         page_count = size / PAGE_SIZE;
>>>       75         /*
>>>       76          * If there's no chance of allocating enough pages for the whole
>>>       77          * object, bail early.
>>>       78          */
>>>       79         if (size > resource_size(&mr->region))
>>>       80                 return -ENOMEM;
>>>       81
>>>       82         if (sg_alloc_table(st, page_count, GFP_KERNEL | __GFP_NOWARN))
>>>       83                 return -ENOMEM;
>>>       84
>>>       85         /*
>>>       86          * Get the list of pages out of our struct file.  They'll be pinned
>>>       87          * at this point until we release them.
>>>       88          *
>>>       89          * Fail silently without starting the shrinker
>>>       90          */
>>>       91         mapping_set_unevictable(mapping);
>>>       92         noreclaim = mapping_gfp_constraint(mapping, ~__GFP_RECLAIM);
>>>       93         noreclaim |= __GFP_NORETRY | __GFP_NOWARN;
>>>       94
>>>       95         sg = st->sgl;
>>>                  ^^^^^^^^^^^^
>>> "sg" set here.
>>
>> It is guaranteed to be non-NULL since sg_alloc_table succeeded.
>>
> 
> Yeah.  This doesn't matter.  When I originally wrote this, I thought it
> mattered but then I re-read the code but forgot to delete this comment.
> 
> In theory Smatch is supposed to be able to be tracking that "If
> sg_alloc_table() succeeds, then "st->sgl" is non-NULL," but
> __sg_alloc_table() has a do { } while() loop and Smatch is bad at
> parsing loops.
> 
> However, Smatch does say that if sg_alloc_table() succeeds it means
> page_count is non-zero.
> 
>>>
>>>       96         st->nents = 0;
>>>       97         for (i = 0; i < page_count; i++) {
> 
> Since page_count is non-zero we definitely enter this loop.
> 
>>>       98                 const unsigned int shrink[] = {
>>>       99                         I915_SHRINK_BOUND | I915_SHRINK_UNBOUND,
>>>       100                         0,
>>>       101                 }, *s = shrink;
>>>       102                 gfp_t gfp = noreclaim;
>>>       103
>>>       104                 do {
>>>       105                         cond_resched();
>>>       106                         page = shmem_read_mapping_page_gfp(mapping, i, gfp);
>>>       107                         if (!IS_ERR(page))
>>>       108                                 break;
>>>
>>> This should probably break out of the outer loop instead of the inner
>>> loop?
>>
>> Don't think so, the loop has allocated a page and wants to break out the
>> inner loop so the page can be appended to the sg list.
>>
>>>
>>>       109
>>>       110                         if (!*s) {
>>>       111                                 ret = PTR_ERR(page);
>>>       112                                 goto err_sg;
>>>       113                         }
>>>       114
>>>       115                         i915_gem_shrink(NULL, i915, 2 * page_count, NULL, *s++);
>>>       116
>>>       117                         /*
>>>       118                          * We've tried hard to allocate the memory by reaping
>>>       119                          * our own buffer, now let the real VM do its job and
>>>       120                          * go down in flames if truly OOM.
>>>       121                          *
>>>       122                          * However, since graphics tend to be disposable,
>>>       123                          * defer the oom here by reporting the ENOMEM back
>>>       124                          * to userspace.
>>>       125                          */
>>>       126                         if (!*s) {
>>>       127                                 /* reclaim and warn, but no oom */
>>>       128                                 gfp = mapping_gfp_mask(mapping);
>>>       129
>>>       130                                 /*
>>>       131                                  * Our bo are always dirty and so we require
>>>       132                                  * kswapd to reclaim our pages (direct reclaim
>>>       133                                  * does not effectively begin pageout of our
>>>       134                                  * buffers on its own). However, direct reclaim
>>>       135                                  * only waits for kswapd when under allocation
>>>       136                                  * congestion. So as a result __GFP_RECLAIM is
>>>       137                                  * unreliable and fails to actually reclaim our
>>>       138                                  * dirty pages -- unless you try over and over
>>>       139                                  * again with !__GFP_NORETRY. However, we still
>>>       140                                  * want to fail this allocation rather than
>>>       141                                  * trigger the out-of-memory killer and for
>>>       142                                  * this we want __GFP_RETRY_MAYFAIL.
>>>       143                                  */
>>>       144                                 gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
>>>       145                         }
>>>       146                 } while (1);
>>>       147
>>>       148                 if (!i ||
>>>       149                     sg->length >= max_segment ||
>>>       150                     page_to_pfn(page) != last_pfn + 1) {
>>>       151                         if (i)
>>>       152                                 sg = sg_next(sg);
>>>       153
>>>       154                         st->nents++;
>>>       155                         sg_set_page(sg, page, PAGE_SIZE, 0);
>>>                                               ^^
>>> Dereferenced.
>>
>> Does smatch worry about the sg = sg_next(sg) here, or the initially
>> highlighted state? Even for the former we know we have allocated enough
>> entries (always allocate assuming worst possible fragmentation) so this will
>> still be valid whatever happens.
> 
> None of that really matters.  What matters is that we dereference "sg"
> at the end of every iteration through the loop.
> 
> Technically, it does slightly matter.  If Smatch were able to determine
> that a dereference is safe, then it doesn't print a warning.  But Smatch
> is probably always never going to know that sg_next() can't return NULL
> here.
> 
>>
>>>
>>>       156                 } else {
>>>       157                         sg->length += PAGE_SIZE;
>>>                                   ^^
>>> Here too.
>>>
>>>       158                 }
>>>       159                 last_pfn = page_to_pfn(page);
>>>       160
>>>       161                 /* Check that the i965g/gm workaround works. */
>>>       162                 GEM_BUG_ON(gfp & __GFP_DMA32 && last_pfn >= 0x00100000UL);
>>>       163         }
>>>   --> 164         if (sg) /* loop terminated early; short sg table */
>                       ^^^^^^
> 
>>>       165                 sg_mark_end(sg);
> 
>>>
>>> If "sg" were NULL then we are already toasted.
>>
>> AFAICT it can never be since the loop can never try to iterate past the last
>> sg entry.
> 
> Right.  So this if statement can be deleted?

I think so, I don't see loop can exit with a null sg. Sg_mark_end() 
still has to stay in case of i915_sg_trim below is not able to 
re-allocate a more compact list.

Regards,

Tvrtko
