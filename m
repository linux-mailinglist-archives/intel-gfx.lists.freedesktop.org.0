Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB2F68C40B
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 17:59:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA7810E9CB;
	Mon,  6 Feb 2023 16:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D5010E9CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 16:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675702780; x=1707238780;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=p8to2aYojEC9NdkOVyToFj2cgY/J2LalHKsPVX/316E=;
 b=fkUc3k58uRUqiw/tyFdIF4UIs7kq9VZHe7b3vEQeDXV7WzYUXFewv6XT
 uR+ULAE+eq9LQQFJqR1jYrD1Lk5qcQWcPRqXWyxrQwB4GTeITov6kn309
 0XfXsyvIYLpLYdpejle/H/ekOq6VxKN6CxKF1JPzWeFjPQGAXU5thGbDC
 dWnx/GaPAiZgmfF1vHX3h4jtOX/5mcTfG82OR9q7Ov6s0pCJGRNA4Qli8
 FJ0go4R38pGkIF0rShwVK3PRXMArkRKcUmZwlu9xMcShi+789IW+L64M2
 2wOzzxrauAL5riBrg7gbFHSRJ7kDKQVt6G7YwF+uma3e4ZNpgbG9u3su4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="356614559"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="356614559"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:59:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="790488190"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="790488190"
Received: from kgurski-mobl3.ger.corp.intel.com (HELO [10.213.203.226])
 ([10.213.203.226])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:59:38 -0800
Message-ID: <a41f5807-022f-1b4c-3baa-6bc928226853@linux.intel.com>
Date: Mon, 6 Feb 2023 16:59:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Dan Carpenter <error27@gmail.com>, chris@chris-wilson.co.uk
References: <Y+EMbhwPiF6zjBVR@kili>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y+EMbhwPiF6zjBVR@kili>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 06/02/2023 14:19, Dan Carpenter wrote:
> [ Ancient code but the warning showed up again because the function was
>    renamed or something? - dan ]
> 
> Hello Chris Wilson,
> 
> The patch 871dfbd67d4e: "drm/i915: Allow compaction upto SWIOTLB max
> segment size" from Oct 11, 2016, leads to the following Smatch static
> checker warning:
> 
> 	drivers/gpu/drm/i915/gem/i915_gem_shmem.c:164 shmem_sg_alloc_table()
> 	warn: variable dereferenced before check 'sg' (see line 155)

Is smatch getting confused here? Not entirely sure but lets see below..
> 
> drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>      58 int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
>      59                          size_t size, struct intel_memory_region *mr,
>      60                          struct address_space *mapping,
>      61                          unsigned int max_segment)
>      62 {
>      63         unsigned int page_count; /* restricted by sg_alloc_table */
>      64         unsigned long i;
>      65         struct scatterlist *sg;
>      66         struct page *page;
>      67         unsigned long last_pfn = 0;        /* suppress gcc warning */
>      68         gfp_t noreclaim;
>      69         int ret;
>      70
>      71         if (overflows_type(size / PAGE_SIZE, page_count))
>      72                 return -E2BIG;
>      73
>      74         page_count = size / PAGE_SIZE;
>      75         /*
>      76          * If there's no chance of allocating enough pages for the whole
>      77          * object, bail early.
>      78          */
>      79         if (size > resource_size(&mr->region))
>      80                 return -ENOMEM;
>      81
>      82         if (sg_alloc_table(st, page_count, GFP_KERNEL | __GFP_NOWARN))
>      83                 return -ENOMEM;
>      84
>      85         /*
>      86          * Get the list of pages out of our struct file.  They'll be pinned
>      87          * at this point until we release them.
>      88          *
>      89          * Fail silently without starting the shrinker
>      90          */
>      91         mapping_set_unevictable(mapping);
>      92         noreclaim = mapping_gfp_constraint(mapping, ~__GFP_RECLAIM);
>      93         noreclaim |= __GFP_NORETRY | __GFP_NOWARN;
>      94
>      95         sg = st->sgl;
>                 ^^^^^^^^^^^^
> "sg" set here.

It is guaranteed to be non-NULL since sg_alloc_table succeeded.

> 
>      96         st->nents = 0;
>      97         for (i = 0; i < page_count; i++) {
>      98                 const unsigned int shrink[] = {
>      99                         I915_SHRINK_BOUND | I915_SHRINK_UNBOUND,
>      100                         0,
>      101                 }, *s = shrink;
>      102                 gfp_t gfp = noreclaim;
>      103
>      104                 do {
>      105                         cond_resched();
>      106                         page = shmem_read_mapping_page_gfp(mapping, i, gfp);
>      107                         if (!IS_ERR(page))
>      108                                 break;
> 
> This should probably break out of the outer loop instead of the inner
> loop?

Don't think so, the loop has allocated a page and wants to break out the 
inner loop so the page can be appended to the sg list.

> 
>      109
>      110                         if (!*s) {
>      111                                 ret = PTR_ERR(page);
>      112                                 goto err_sg;
>      113                         }
>      114
>      115                         i915_gem_shrink(NULL, i915, 2 * page_count, NULL, *s++);
>      116
>      117                         /*
>      118                          * We've tried hard to allocate the memory by reaping
>      119                          * our own buffer, now let the real VM do its job and
>      120                          * go down in flames if truly OOM.
>      121                          *
>      122                          * However, since graphics tend to be disposable,
>      123                          * defer the oom here by reporting the ENOMEM back
>      124                          * to userspace.
>      125                          */
>      126                         if (!*s) {
>      127                                 /* reclaim and warn, but no oom */
>      128                                 gfp = mapping_gfp_mask(mapping);
>      129
>      130                                 /*
>      131                                  * Our bo are always dirty and so we require
>      132                                  * kswapd to reclaim our pages (direct reclaim
>      133                                  * does not effectively begin pageout of our
>      134                                  * buffers on its own). However, direct reclaim
>      135                                  * only waits for kswapd when under allocation
>      136                                  * congestion. So as a result __GFP_RECLAIM is
>      137                                  * unreliable and fails to actually reclaim our
>      138                                  * dirty pages -- unless you try over and over
>      139                                  * again with !__GFP_NORETRY. However, we still
>      140                                  * want to fail this allocation rather than
>      141                                  * trigger the out-of-memory killer and for
>      142                                  * this we want __GFP_RETRY_MAYFAIL.
>      143                                  */
>      144                                 gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
>      145                         }
>      146                 } while (1);
>      147
>      148                 if (!i ||
>      149                     sg->length >= max_segment ||
>      150                     page_to_pfn(page) != last_pfn + 1) {
>      151                         if (i)
>      152                                 sg = sg_next(sg);
>      153
>      154                         st->nents++;
>      155                         sg_set_page(sg, page, PAGE_SIZE, 0);
>                                              ^^
> Dereferenced.

Does smatch worry about the sg = sg_next(sg) here, or the initially 
highlighted state? Even for the former we know we have allocated enough 
entries (always allocate assuming worst possible fragmentation) so this 
will still be valid whatever happens.

> 
>      156                 } else {
>      157                         sg->length += PAGE_SIZE;
>                                  ^^
> Here too.
> 
>      158                 }
>      159                 last_pfn = page_to_pfn(page);
>      160
>      161                 /* Check that the i965g/gm workaround works. */
>      162                 GEM_BUG_ON(gfp & __GFP_DMA32 && last_pfn >= 0x00100000UL);
>      163         }
> --> 164         if (sg) /* loop terminated early; short sg table */
> 
> If "sg" were NULL then we are already toasted.

AFAICT it can never be since the loop can never try to iterate past the 
last sg entry.

Regards,

Tvrtko

> 
>      165                 sg_mark_end(sg);
>      166
>      167         /* Trim unused sg entries to avoid wasting memory. */
>      168         i915_sg_trim(st);
>      169
>      170         return 0;
>      171 err_sg:
>      172         sg_mark_end(sg);
>      173         if (sg != st->sgl) {
>      174                 shmem_sg_free_table(st, mapping, false, false);
>      175         } else {
>      176                 mapping_clear_unevictable(mapping);
>      177                 sg_free_table(st);
>      178         }
>      179
>      180         /*
>      181          * shmemfs first checks if there is enough memory to allocate the page
>      182          * and reports ENOSPC should there be insufficient, along with the usual
>      183          * ENOMEM for a genuine allocation failure.
>      184          *
>      185          * We use ENOSPC in our driver to mean that we have run out of aperture
>      186          * space and so want to translate the error from shmemfs back to our
>      187          * usual understanding of ENOMEM.
>      188          */
>      189         if (ret == -ENOSPC)
>      190                 ret = -ENOMEM;
>      191
>      192         return ret;
>      193 }
> 
> regards,
> dan carpenter
