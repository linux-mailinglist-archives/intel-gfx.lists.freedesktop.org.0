Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EE6284956
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 11:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF7456E40F;
	Tue,  6 Oct 2020 09:27:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D97786E40F
 for <Intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 09:27:08 +0000 (UTC)
IronPort-SDR: NrwFdMtniYX0B3dQsJc6oFvypblrFuTlemygCTUQi1gXMHOXu2E9FlBvu4jvB5a5WqRblYVqvY
 TaY47aqmBTYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="226023993"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="226023993"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:27:08 -0700
IronPort-SDR: 0AsXNS4L9ulU2X23KtyfCnk11mlFgyy5XcgqGtfG7p4TjeUqn5OC3QCa73IIydhFpDZX4DJGbq
 EhfIBrTL1d2w==
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="460713837"
Received: from gschnitm-mobl.ger.corp.intel.com (HELO [10.251.178.213])
 ([10.251.178.213])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:27:07 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200910115900.407686-3-tvrtko.ursulin@linux.intel.com>
 <20200910145018.408983-1-tvrtko.ursulin@linux.intel.com>
 <160015978860.3890.1211829559641660544@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <47c933d8-6c88-30d1-4ac7-ca3bd96cfde2@linux.intel.com>
Date: Tue, 6 Oct 2020 10:27:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160015978860.3890.1211829559641660544@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix DMA mapped scatterlist
 lookup
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/09/2020 09:49, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-09-10 15:50:18)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> As the previous patch fixed the places where we walk the whole scatterlist
>> for DMA addresses, this patch fixes the random lookup functionality.
>>
>> To achieve this we have to add a second lookup iterator and add a
>> i915_gem_object_get_sg_dma helper, to be used analoguous to existing
>> i915_gem_object_get_sg_dma. Therefore two lookup caches are maintained per
>> object and they are flushed at the same point for simplicity. (Strictly
>> speaking the DMA cache should be flushed from i915_gem_gtt_finish_pages,
>> but today this conincides with unsetting of the pages in general.)
>>
>> Partial VMA view is then fixed to use the new DMA lookup and properly
>> query sg length.
>>
>> v2:
>>   * Checkpatch.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Lu Baolu <baolu.lu@linux.intel.com>
>> Cc: Tom Murphy <murphyt7@tcd.ie>
>> Cc: Logan Gunthorpe <logang@deltatee.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 ++
>>   drivers/gpu/drm/i915/gem/i915_gem_object.h    | 20 +++++++++++++++++-
>>   .../gpu/drm/i915/gem/i915_gem_object_types.h  | 17 ++++++++-------
>>   drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 21 ++++++++++++-------
>>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  4 ++--
>>   drivers/gpu/drm/i915/i915_scatterlist.h       |  5 +++++
>>   6 files changed, 51 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> index c8421fd9d2dc..ffeaf1b9b1bb 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> @@ -73,6 +73,8 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
>>          obj->mm.madv = I915_MADV_WILLNEED;
>>          INIT_RADIX_TREE(&obj->mm.get_page.radix, GFP_KERNEL | __GFP_NOWARN);
>>          mutex_init(&obj->mm.get_page.lock);
>> +       INIT_RADIX_TREE(&obj->mm.get_dma_page.radix, GFP_KERNEL | __GFP_NOWARN);
>> +       mutex_init(&obj->mm.get_dma_page.lock);
>>   
>>          if (IS_ENABLED(CONFIG_LOCKDEP) && i915_gem_object_is_shrinkable(obj))
>>                  i915_gem_shrinker_taints_mutex(to_i915(obj->base.dev),
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> index d46db8d8f38e..44c6910e2669 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> @@ -275,8 +275,26 @@ int i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
>>                                 unsigned int tiling, unsigned int stride);
>>   
>>   struct scatterlist *
>> +__i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
>> +                        struct i915_gem_object_page_iter *iter,
>> +                        unsigned int n,
>> +                        unsigned int *offset);
>> +
>> +static inline struct scatterlist *
>>   i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
>> -                      unsigned int n, unsigned int *offset);
>> +                      unsigned int n,
>> +                      unsigned int *offset)
>> +{
>> +       return __i915_gem_object_get_sg(obj, &obj->mm.get_page, n, offset);
>> +}
> 
> I wonder if get_sg_phys() is worth it to make it completely clear the
> difference between it and get_sg_dma() (and .get_phys_page?) ?
> 
>> +
>> +static inline struct scatterlist *
>> +i915_gem_object_get_sg_dma(struct drm_i915_gem_object *obj,
>> +                          unsigned int n,
>> +                          unsigned int *offset)
>> +{
>> +       return __i915_gem_object_get_sg(obj, &obj->mm.get_dma_page, n, offset);
>> +}
>>   
>>   struct page *
>>   i915_gem_object_get_page(struct drm_i915_gem_object *obj,
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> index b5c15557cc87..fedfebf13344 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> @@ -80,6 +80,14 @@ struct i915_mmap_offset {
>>          struct rb_node offset;
>>   };
>>   
>> +struct i915_gem_object_page_iter {
>> +       struct scatterlist *sg_pos;
>> +       unsigned int sg_idx; /* in pages, but 32bit eek! */
>> +
>> +       struct radix_tree_root radix;
>> +       struct mutex lock; /* protects this cache */
>> +};
> 
> All alternatives to trying to avoid a second random lookup were
> squashed, it really is two lists within one scatterlist and we do use
> both page/dma lookups in non-trivial ways.
> 
>> +
>>   struct drm_i915_gem_object {
>>          struct drm_gem_object base;
>>   
>> @@ -246,13 +254,8 @@ struct drm_i915_gem_object {
>>   
>>                  I915_SELFTEST_DECLARE(unsigned int page_mask);
>>   
>> -               struct i915_gem_object_page_iter {
>> -                       struct scatterlist *sg_pos;
>> -                       unsigned int sg_idx; /* in pages, but 32bit eek! */
>> -
>> -                       struct radix_tree_root radix;
>> -                       struct mutex lock; /* protects this cache */
>> -               } get_page;
>> +               struct i915_gem_object_page_iter get_page;
>> +               struct i915_gem_object_page_iter get_dma_page;
>>   
>>                  /**
>>                   * Element within i915->mm.unbound_list or i915->mm.bound_list,
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> index e8a083743e09..04a3c1233f80 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> @@ -33,6 +33,8 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
>>   
>>          obj->mm.get_page.sg_pos = pages->sgl;
>>          obj->mm.get_page.sg_idx = 0;
>> +       obj->mm.get_dma_page.sg_pos = pages->sgl;
>> +       obj->mm.get_dma_page.sg_idx = 0;
>>   
>>          obj->mm.pages = pages;
>>   
>> @@ -155,6 +157,8 @@ static void __i915_gem_object_reset_page_iter(struct drm_i915_gem_object *obj)
>>          rcu_read_lock();
>>          radix_tree_for_each_slot(slot, &obj->mm.get_page.radix, &iter, 0)
>>                  radix_tree_delete(&obj->mm.get_page.radix, iter.index);
>> +       radix_tree_for_each_slot(slot, &obj->mm.get_dma_page.radix, &iter, 0)
>> +               radix_tree_delete(&obj->mm.get_dma_page.radix, iter.index);
>>          rcu_read_unlock();
>>   }
>>   
>> @@ -424,11 +428,12 @@ void __i915_gem_object_release_map(struct drm_i915_gem_object *obj)
>>   }
>>   
>>   struct scatterlist *
>> -i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
>> -                      unsigned int n,
>> -                      unsigned int *offset)
>> +__i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
>> +                        struct i915_gem_object_page_iter *iter,
>> +                        unsigned int n,
>> +                        unsigned int *offset)
>>   {
>> -       struct i915_gem_object_page_iter *iter = &obj->mm.get_page;
>> +       const bool dma = iter == &obj->mm.get_dma_page;
>>          struct scatterlist *sg;
>>          unsigned int idx, count;
>>   
>> @@ -457,7 +462,7 @@ i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
>>   
>>          sg = iter->sg_pos;
>>          idx = iter->sg_idx;
>> -       count = __sg_page_count(sg);
>> +       count = dma ? __sg_dma_page_count(sg) : __sg_page_count(sg);
>>   
>>          while (idx + count <= n) {
>>                  void *entry;
>> @@ -485,7 +490,7 @@ i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
>>   
>>                  idx += count;
>>                  sg = ____sg_next(sg);
>> -               count = __sg_page_count(sg);
>> +               count = dma ? __sg_dma_page_count(sg) : __sg_page_count(sg);
>>          }
>>   
>>   scan:
>> @@ -503,7 +508,7 @@ i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
>>          while (idx + count <= n) {
>>                  idx += count;
>>                  sg = ____sg_next(sg);
>> -               count = __sg_page_count(sg);
>> +               count = dma ? __sg_dma_page_count(sg) : __sg_page_count(sg);
> 
> Hmm. So for a coalesced dma entry, we must therefore end up with some
> entries where the sg_dma_length is 0.
> 
> We then insert multiple sg for the same idx into the radix tree, causing
> it to return an error, -EEXIST. We eat such errors and so overwrite the
> empty entry with the final sg that actually has a valid length.
> 
> Ok. Looks like get_sg already handles zero length elements and you
> caught all 3 __sg_page_count().
> 
>>          }
>>   
>>          *offset = n - idx;
>> @@ -570,7 +575,7 @@ i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
>>          struct scatterlist *sg;
>>          unsigned int offset;
>>   
>> -       sg = i915_gem_object_get_sg(obj, n, &offset);
>> +       sg = i915_gem_object_get_sg_dma(obj, n, &offset);
>>   
>>          if (len)
>>                  *len = sg_dma_len(sg) - (offset << PAGE_SHIFT);
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 81c05f551b9c..95e77d56c1ce 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -1383,7 +1383,7 @@ intel_partial_pages(const struct i915_ggtt_view *view,
>>          if (ret)
>>                  goto err_sg_alloc;
>>   
>> -       iter = i915_gem_object_get_sg(obj, view->partial.offset, &offset);
>> +       iter = i915_gem_object_get_sg_dma(obj, view->partial.offset, &offset);
>>          GEM_BUG_ON(!iter);
>>   
>>          sg = st->sgl;
>> @@ -1391,7 +1391,7 @@ intel_partial_pages(const struct i915_ggtt_view *view,
>>          do {
>>                  unsigned int len;
>>   
>> -               len = min(iter->length - (offset << PAGE_SHIFT),
>> +               len = min(sg_dma_len(iter) - (offset << PAGE_SHIFT),
>>                            count << PAGE_SHIFT);
>>                  sg_set_page(sg, NULL, len, 0);
>>                  sg_dma_address(sg) =
> 
> I didn't find any other users for get_sg() and this looks to catch all
> the fixes required for using sg_dma.
> 
>> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
>> index 510856887628..102d8d7007b6 100644
>> --- a/drivers/gpu/drm/i915/i915_scatterlist.h
>> +++ b/drivers/gpu/drm/i915/i915_scatterlist.h
>> @@ -48,6 +48,11 @@ static inline int __sg_page_count(const struct scatterlist *sg)
>>          return sg->length >> PAGE_SHIFT;
>>   }
>>   
>> +static inline int __sg_dma_page_count(const struct scatterlist *sg)
>> +{
>> +       return sg_dma_len(sg) >> PAGE_SHIFT;
>> +}
> 
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Thanks!

> Do we need cc:stable?

Probably not given how this oversight only gets exposed once the Intel 
IOMMU dma-api refactoring work lands.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
