Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 733B043DD22
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 10:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 052CF6E850;
	Thu, 28 Oct 2021 08:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3297B6E850;
 Thu, 28 Oct 2021 08:47:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="291195767"
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="291195767"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 01:47:06 -0700
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="487048330"
Received: from malloyd-mobl.ger.corp.intel.com (HELO [10.252.16.73])
 ([10.252.16.73])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 01:47:05 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com
References: <20211027105211.485125-1-thomas.hellstrom@linux.intel.com>
 <20211027105211.485125-2-thomas.hellstrom@linux.intel.com>
 <0f548cca-214f-26c2-1628-35e6fa0d7c95@intel.com>
 <1d2f46030369b17405550b5ea42d0326199ad4bf.camel@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <e2b4f1d3-3ade-92d9-5216-77d4619e408e@intel.com>
Date: Thu, 28 Oct 2021 09:47:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <1d2f46030369b17405550b5ea42d0326199ad4bf.camel@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Introduce refcounted
 sg-tables
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 28/10/2021 08:04, Thomas Hellström wrote:
> On Wed, 2021-10-27 at 19:03 +0100, Matthew Auld wrote:
>> On 27/10/2021 11:52, Thomas Hellström wrote:
>>> As we start to introduce asynchronous failsafe object migration,
>>> where we update the object state and then submit asynchronous
>>> commands we need to record what memory resources are actually used
>>> by various part of the command stream. Initially for three
>>> purposes:
>>>
>>> 1) Error capture.
>>> 2) Asynchronous migration error recovery.
>>> 3) Asynchronous vma bind.
>>>
>>> At the time where these happens, the object state may have been
>>> updated
>>> to be several migrations ahead and object sg-tables discarded.
>>>
>>> In order to make it possible to keep sg-tables with memory resource
>>> information for these operations, introduce refcounted sg-tables
>>> that
>>> aren't freed until the last user is done with them.
>>>
>>> The alternative would be to reference information sitting on the
>>> corresponding ttm_resources which typically have the same lifetime
>>> as
>>> these refcountes sg_tables, but that leads to other awkward
>>> constructs:
>>> Due to the design direction chosen for ttm resource managers that
>>> would
>>> lead to diamond-style inheritance, the LMEM resources may sometimes
>>> be
>>> prematurely freed, and finally the subclassed struct ttm_resource
>>> would
>>> have to bleed into the asynchronous vma bind code.
>>>
>>> Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_object.h    |   4 +-
>>>    .../gpu/drm/i915/gem/i915_gem_object_types.h  |   3 +-
>>>    drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |  16 +-
>>>    drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 188 +++++++++++--
>>> -----
>>>    drivers/gpu/drm/i915/i915_scatterlist.c       |  62 ++++--
>>>    drivers/gpu/drm/i915/i915_scatterlist.h       |  76 ++++++-
>>>    drivers/gpu/drm/i915/intel_region_ttm.c       |  15 +-
>>>    drivers/gpu/drm/i915/intel_region_ttm.h       |   5 +-
>>>    drivers/gpu/drm/i915/selftests/mock_region.c  |  12 +-
>>>    9 files changed, 262 insertions(+), 119 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> index a5479ac7a4ad..c5ab364d4311 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> @@ -624,8 +624,8 @@ struct sg_table *shmem_alloc_st(struct
>>> drm_i915_private *i915,
>>>                                  size_t size, struct
>>> intel_memory_region *mr,
>>>                                  struct address_space *mapping,
>>>                                  unsigned int max_segment);
>>> -void shmem_free_st(struct sg_table *st, struct address_space
>>> *mapping,
>>> -                  bool dirty, bool backup);
>>> +void shmem_free_st_table(struct sg_table *st, struct address_space
>>> *mapping,
>>> +                        bool dirty, bool backup);
>>
>> s/st_table/sg_table/?
>>
>> I thought st was shorthand for sg_table? Maybe shmem_sg_free_table?
> 
> Yes the naming is indeed a bit unfortunate here. To be consistent with
> the core's sg_free_table(), I changed to
> shmem_sg_free_table() / shmem_sg_alloc_table.
> 
>>
>>
>>>    void __shmem_writeback(size_t size, struct address_space
>>> *mapping);
>>>    
>>>    #ifdef CONFIG_MMU_NOTIFIER
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> index a4b69a43b898..604ed5ad77f5 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> @@ -544,6 +544,7 @@ struct drm_i915_gem_object {
>>>                   */
>>>                  struct list_head region_link;
>>>    
>>> +               struct i915_refct_sgt *rsgt;
>>>                  struct sg_table *pages;
>>>                  void *mapping;
>>>    
>>> @@ -597,7 +598,7 @@ struct drm_i915_gem_object {
>>>          } mm;
>>>    
>>>          struct {
>>> -               struct sg_table *cached_io_st;
>>> +               struct i915_refct_sgt *cached_io_rsgt;
>>>                  struct i915_gem_object_page_iter get_io_page;
>>>                  struct drm_i915_gem_object *backup;
>>>                  bool created:1;
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>>> b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>>> index 01f332d8dbde..67c6bee695c7 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>>> @@ -25,8 +25,8 @@ static void check_release_pagevec(struct pagevec
>>> *pvec)
>>>          cond_resched();
>>>    }
>>>    
>>> -void shmem_free_st(struct sg_table *st, struct address_space
>>> *mapping,
>>> -                  bool dirty, bool backup)
>>> +void shmem_free_st_table(struct sg_table *st, struct address_space
>>> *mapping,
>>> +                        bool dirty, bool backup)
>>>    {
>>>          struct sgt_iter sgt_iter;
>>>          struct pagevec pvec;
>>> @@ -49,7 +49,6 @@ void shmem_free_st(struct sg_table *st, struct
>>> address_space *mapping,
>>>                  check_release_pagevec(&pvec);
>>>    
>>>          sg_free_table(st);
>>> -       kfree(st);
>>>    }
>>>    
>>>    struct sg_table *shmem_alloc_st(struct drm_i915_private *i915,
>>> @@ -171,7 +170,8 @@ struct sg_table *shmem_alloc_st(struct
>>> drm_i915_private *i915,
>>>    err_sg:
>>>          sg_mark_end(sg);
>>>          if (sg != st->sgl) {
>>> -               shmem_free_st(st, mapping, false, false);
>>> +               shmem_free_st_table(st, mapping, false, false);
>>> +               kfree(st);
>>>          } else {
>>>                  mapping_clear_unevictable(mapping);
>>>                  sg_free_table(st);
>>> @@ -254,7 +254,8 @@ static int shmem_get_pages(struct
>>> drm_i915_gem_object *obj)
>>>          return 0;
>>>    
>>>    err_pages:
>>> -       shmem_free_st(st, mapping, false, false);
>>> +       shmem_free_st_table(st, mapping, false, false);
>>> +       kfree(st);
>>>          /*
>>>           * shmemfs first checks if there is enough memory to
>>> allocate the page
>>>           * and reports ENOSPC should there be insufficient, along
>>> with the usual
>>> @@ -374,8 +375,9 @@ void i915_gem_object_put_pages_shmem(struct
>>> drm_i915_gem_object *obj, struct sg_
>>>          if (i915_gem_object_needs_bit17_swizzle(obj))
>>>                  i915_gem_object_save_bit_17_swizzle(obj, pages);
>>>    
>>> -       shmem_free_st(pages, file_inode(obj->base.filp)->i_mapping,
>>> -                     obj->mm.dirty, obj->mm.madv ==
>>> I915_MADV_WILLNEED);
>>> +       shmem_free_st_table(pages, file_inode(obj->base.filp)-
>>>> i_mapping,
>>> +                           obj->mm.dirty, obj->mm.madv ==
>>> I915_MADV_WILLNEED);
>>> +       kfree(pages);
>>>          obj->mm.dirty = false;
>>>    }
>>>    
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> index 4fd2edb20dd9..6826e3859e18 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>> @@ -34,7 +34,7 @@
>>>     * struct i915_ttm_tt - TTM page vector with additional private
>>> information
>>>     * @ttm: The base TTM page vector.
>>>     * @dev: The struct device used for dma mapping and unmapping.
>>> - * @cached_st: The cached scatter-gather table.
>>> + * @cached_rsgt: The cached scatter-gather table.
>>>     * @is_shmem: Set if using shmem.
>>>     * @filp: The shmem file, if using shmem backend.
>>>     *
>>> @@ -47,7 +47,7 @@
>>>    struct i915_ttm_tt {
>>>          struct ttm_tt ttm;
>>>          struct device *dev;
>>> -       struct sg_table *cached_st;
>>> +       struct i915_refct_sgt cached_rsgt;
>>>    
>>>          bool is_shmem;
>>>          struct file *filp;
>>> @@ -221,14 +221,10 @@ static int i915_ttm_tt_shmem_populate(struct
>>> ttm_device *bdev,
>>>          if (IS_ERR(st))
>>>                  return PTR_ERR(st);
>>>    
>>> -       err = dma_map_sg_attrs(i915_tt->dev,
>>> -                              st->sgl, st->nents,
>>> -                              DMA_BIDIRECTIONAL,
>>> -                              DMA_ATTR_SKIP_CPU_SYNC);
>>> -       if (err <= 0) {
>>> -               err = -EINVAL;
>>> +       err = dma_map_sgtable(i915_tt->dev, st, DMA_BIDIRECTIONAL,
>>> +                             DMA_ATTR_SKIP_CPU_SYNC);
>>> +       if (err)
>>>                  goto err_free_st;
>>> -       }
>>>    
>>>          i = 0;
>>>          for_each_sgt_page(page, sgt_iter, st)
>>> @@ -237,11 +233,15 @@ static int i915_ttm_tt_shmem_populate(struct
>>> ttm_device *bdev,
>>>          if (ttm->page_flags & TTM_TT_FLAG_SWAPPED)
>>>                  ttm->page_flags &= ~TTM_TT_FLAG_SWAPPED;
>>>    
>>> -       i915_tt->cached_st = st;
>>> +       i915_tt->cached_rsgt.table = *st;
>>> +       kfree(st);
>>
>> Will it work if the above just operates on the rsgt.table?
> 
> I'll change the shmem utility here to not allocate the struct sg_table
> and then we can operate on it directly.
> 
>>
>>> +
>>>          return 0;
>>>    
>>>    err_free_st:
>>> -       shmem_free_st(st, filp->f_mapping, false, false);
>>> +       shmem_free_st_table(st, filp->f_mapping, false, false);
>>> +       kfree(st);
>>> +
>>>          return err;
>>>    }
>>>    
>>> @@ -249,16 +249,29 @@ static void
>>> i915_ttm_tt_shmem_unpopulate(struct ttm_tt *ttm)
>>>    {
>>>          struct i915_ttm_tt *i915_tt = container_of(ttm,
>>> typeof(*i915_tt), ttm);
>>>          bool backup = ttm->page_flags & TTM_TT_FLAG_SWAPPED;
>>> +       struct sg_table *st = &i915_tt->cached_rsgt.table;
>>>    
>>> -       dma_unmap_sg(i915_tt->dev, i915_tt->cached_st->sgl,
>>> -                    i915_tt->cached_st->nents,
>>> -                    DMA_BIDIRECTIONAL);
>>> +       if (st->sgl)
>>
>> Can we ever hit this? I would have presumed not? Below also.
> 
> Yes, here's where we typically free the scatterlist.

What I meant to say: can the above ever not be true? i.e sgl == NULL

> 
>>
>>> +               shmem_free_st_table(st,
>>> +                                   file_inode(i915_tt->filp)-
>>>> i_mapping,
>>> +                                   backup, backup);
>>> +}
>>>    
>>> -       shmem_free_st(fetch_and_zero(&i915_tt->cached_st),
>>> -                     file_inode(i915_tt->filp)->i_mapping,
>>> -                     backup, backup);
>>> +static void i915_ttm_tt_release(struct kref *ref)
>>> +{
>>> +       struct i915_ttm_tt *i915_tt =
>>> +               container_of(ref, typeof(*i915_tt),
>>> cached_rsgt.kref);
>>> +       struct sg_table *st = &i915_tt->cached_rsgt.table;
>>> +
>>> +       GEM_WARN_ON(st->sgl);
>>> +
>>> +       kfree(i915_tt);
>>>    }
>>>    
>>> +static const struct i915_refct_sgt_ops tt_rsgt_ops = {
>>> +       .release = i915_ttm_tt_release
>>> +};
>>> +
>>>    static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object
>>> *bo,
>>>                                           uint32_t page_flags)
>>>    {
>>> @@ -287,6 +300,9 @@ static struct ttm_tt *i915_ttm_tt_create(struct
>>> ttm_buffer_object *bo,
>>>          if (ret)
>>>                  goto err_free;
>>>    
>>> +       i915_refct_sgt_init_ops(&i915_tt->cached_rsgt, bo-
>>>> base.size,
>>> +                               &tt_rsgt_ops);
>>> +
>>>          i915_tt->dev = obj->base.dev->dev;
>>>    
>>>          return &i915_tt->ttm;
>>> @@ -311,17 +327,15 @@ static int i915_ttm_tt_populate(struct
>>> ttm_device *bdev,
>>>    static void i915_ttm_tt_unpopulate(struct ttm_device *bdev,
>>> struct ttm_tt *ttm)
>>>    {
>>>          struct i915_ttm_tt *i915_tt = container_of(ttm,
>>> typeof(*i915_tt), ttm);
>>> +       struct sg_table *st = &i915_tt->cached_rsgt.table;
>>> +
>>> +       if (st->sgl)
>>> +               dma_unmap_sgtable(i915_tt->dev, st,
>>> DMA_BIDIRECTIONAL, 0);
>>>    
>>>          if (i915_tt->is_shmem) {
>>>                  i915_ttm_tt_shmem_unpopulate(ttm);
>>>          } else {
>>> -               if (i915_tt->cached_st) {
>>> -                       dma_unmap_sgtable(i915_tt->dev, i915_tt-
>>>> cached_st,
>>> -                                         DMA_BIDIRECTIONAL, 0);
>>> -                       sg_free_table(i915_tt->cached_st);
>>> -                       kfree(i915_tt->cached_st);
>>> -                       i915_tt->cached_st = NULL;
>>> -               }
>>> +               sg_free_table(st);
>>>                  ttm_pool_free(&bdev->pool, ttm);
>>>          }
>>>    }
>>> @@ -334,7 +348,7 @@ static void i915_ttm_tt_destroy(struct
>>> ttm_device *bdev, struct ttm_tt *ttm)
>>>                  fput(i915_tt->filp);
>>>    
>>>          ttm_tt_fini(ttm);
>>> -       kfree(i915_tt);
>>> +       i915_refct_sgt_put(&i915_tt->cached_rsgt);
>>>    }
>>>    
>>>    static bool i915_ttm_eviction_valuable(struct ttm_buffer_object
>>> *bo,
>>> @@ -376,12 +390,12 @@ static int i915_ttm_move_notify(struct
>>> ttm_buffer_object *bo)
>>>          return 0;
>>>    }
>>>    
>>> -static void i915_ttm_free_cached_io_st(struct drm_i915_gem_object
>>> *obj)
>>> +static void i915_ttm_free_cached_io_rsgt(struct
>>> drm_i915_gem_object *obj)
>>>    {
>>>          struct radix_tree_iter iter;
>>>          void __rcu **slot;
>>>    
>>> -       if (!obj->ttm.cached_io_st)
>>> +       if (!obj->ttm.cached_io_rsgt)
>>>                  return;
>>>    
>>>          rcu_read_lock();
>>> @@ -389,9 +403,8 @@ static void i915_ttm_free_cached_io_st(struct
>>> drm_i915_gem_object *obj)
>>>                  radix_tree_delete(&obj->ttm.get_io_page.radix,
>>> iter.index);
>>>          rcu_read_unlock();
>>>    
>>> -       sg_free_table(obj->ttm.cached_io_st);
>>> -       kfree(obj->ttm.cached_io_st);
>>> -       obj->ttm.cached_io_st = NULL;
>>> +       i915_refct_sgt_put(obj->ttm.cached_io_rsgt);
>>> +       obj->ttm.cached_io_rsgt = NULL;
>>>    }
>>>    
>>>    static void
>>> @@ -477,7 +490,7 @@ static int i915_ttm_purge(struct
>>> drm_i915_gem_object *obj)
>>>          obj->write_domain = 0;
>>>          obj->read_domains = 0;
>>>          i915_ttm_adjust_gem_after_move(obj);
>>> -       i915_ttm_free_cached_io_st(obj);
>>> +       i915_ttm_free_cached_io_rsgt(obj);
>>>          obj->mm.madv = __I915_MADV_PURGED;
>>>          return 0;
>>>    }
>>> @@ -532,7 +545,7 @@ static void i915_ttm_swap_notify(struct
>>> ttm_buffer_object *bo)
>>>          int ret = i915_ttm_move_notify(bo);
>>>    
>>>          GEM_WARN_ON(ret);
>>> -       GEM_WARN_ON(obj->ttm.cached_io_st);
>>> +       GEM_WARN_ON(obj->ttm.cached_io_rsgt);
>>>          if (!ret && obj->mm.madv != I915_MADV_WILLNEED)
>>>                  i915_ttm_purge(obj);
>>>    }
>>> @@ -543,7 +556,7 @@ static void i915_ttm_delete_mem_notify(struct
>>> ttm_buffer_object *bo)
>>>    
>>>          if (likely(obj)) {
>>>                  __i915_gem_object_pages_fini(obj);
>>> -               i915_ttm_free_cached_io_st(obj);
>>> +               i915_ttm_free_cached_io_rsgt(obj);
>>>          }
>>>    }
>>>    
>>> @@ -563,40 +576,35 @@ i915_ttm_region(struct ttm_device *bdev, int
>>> ttm_mem_type)
>>>                                            ttm_mem_type -
>>> I915_PL_LMEM0);
>>>    }
>>>    
>>> -static struct sg_table *i915_ttm_tt_get_st(struct ttm_tt *ttm)
>>> +static struct i915_refct_sgt *i915_ttm_tt_get_st(struct ttm_tt
>>> *ttm)
>>>    {
>>>          struct i915_ttm_tt *i915_tt = container_of(ttm,
>>> typeof(*i915_tt), ttm);
>>>          struct sg_table *st;
>>>          int ret;
>>>    
>>> -       if (i915_tt->cached_st)
>>> -               return i915_tt->cached_st;
>>> -
>>> -       st = kzalloc(sizeof(*st), GFP_KERNEL);
>>> -       if (!st)
>>> -               return ERR_PTR(-ENOMEM);
>>> +       if (i915_tt->cached_rsgt.table.sgl)
>>> +               return i915_refct_sgt_get(&i915_tt->cached_rsgt);
>>>    
>>> +       st = &i915_tt->cached_rsgt.table;
>>>          ret = sg_alloc_table_from_pages_segment(st,
>>>                          ttm->pages, ttm->num_pages,
>>>                          0, (unsigned long)ttm->num_pages <<
>>> PAGE_SHIFT,
>>>                          i915_sg_segment_size(), GFP_KERNEL);
>>>          if (ret) {
>>> -               kfree(st);
>>> +               st->sgl = NULL;
>>>                  return ERR_PTR(ret);
>>>          }
>>>    
>>>          ret = dma_map_sgtable(i915_tt->dev, st, DMA_BIDIRECTIONAL,
>>> 0);
>>>          if (ret) {
>>>                  sg_free_table(st);
>>> -               kfree(st);
>>>                  return ERR_PTR(ret);
>>>          }
>>>    
>>> -       i915_tt->cached_st = st;
>>> -       return st;
>>> +       return i915_refct_sgt_get(&i915_tt->cached_rsgt);
>>>    }
>>>    
>>> -static struct sg_table *
>>> +static struct i915_refct_sgt *
>>>    i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
>>>                           struct ttm_resource *res)
>>>    {
>>> @@ -610,7 +618,21 @@ i915_ttm_resource_get_st(struct
>>> drm_i915_gem_object *obj,
>>>           * the resulting st. Might make sense for GGTT.
>>>           */
>>>          GEM_WARN_ON(!cpu_maps_iomem(res));
>>> -       return intel_region_ttm_resource_to_st(obj->mm.region,
>>> res);
>>> +       if (bo->resource == res) {
>>> +               if (!obj->ttm.cached_io_rsgt) {
>>> +                       struct i915_refct_sgt *rsgt;
>>> +
>>> +                       rsgt =
>>> intel_region_ttm_resource_to_rsgt(obj->mm.region,
>>> +
>>> res);
>>> +                       if (IS_ERR(rsgt))
>>> +                               return rsgt;
>>> +
>>> +                       obj->ttm.cached_io_rsgt = rsgt;
>>> +               }
>>> +               return i915_refct_sgt_get(obj->ttm.cached_io_rsgt);
>>> +       }
>>> +
>>> +       return intel_region_ttm_resource_to_rsgt(obj->mm.region,
>>> res);
>>>    }
>>>    
>>>    static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
>>> @@ -621,10 +643,7 @@ static int i915_ttm_accel_move(struct
>>> ttm_buffer_object *bo,
>>>    {
>>>          struct drm_i915_private *i915 = container_of(bo->bdev,
>>> typeof(*i915),
>>>                                                       bdev);
>>> -       struct ttm_resource_manager *src_man =
>>> -               ttm_manager_type(bo->bdev, bo->resource->mem_type);
>>>          struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
>>> -       struct sg_table *src_st;
>>>          struct i915_request *rq;
>>>          struct ttm_tt *src_ttm = bo->ttm;
>>>          enum i915_cache_level src_level, dst_level;
>>> @@ -650,17 +669,22 @@ static int i915_ttm_accel_move(struct
>>> ttm_buffer_object *bo,
>>>                  }
>>>                  intel_engine_pm_put(i915->gt.migrate.context-
>>>> engine);
>>>          } else {
>>> -               src_st = src_man->use_tt ?
>>> i915_ttm_tt_get_st(src_ttm) :
>>> -                       obj->ttm.cached_io_st;
>>> +               struct i915_refct_sgt *src_rsgt =
>>> +                       i915_ttm_resource_get_st(obj, bo-
>>>> resource);
>>> +
>>> +               if (IS_ERR(src_rsgt))
>>> +                       return PTR_ERR(src_rsgt);
>>>    
>>>                  src_level = i915_ttm_cache_level(i915, bo-
>>>> resource, src_ttm);
>>>                  intel_engine_pm_get(i915->gt.migrate.context-
>>>> engine);
>>>                  ret = intel_context_migrate_copy(i915-
>>>> gt.migrate.context,
>>> -                                                NULL, src_st->sgl,
>>> src_level,
>>> +                                                NULL, src_rsgt-
>>>> table.sgl,
>>> +                                                src_level,
>>>                                                  
>>> gpu_binds_iomem(bo->resource),
>>>                                                   dst_st->sgl,
>>> dst_level,
>>>                                                  
>>> gpu_binds_iomem(dst_mem),
>>>                                                   &rq);
>>> +               i915_refct_sgt_put(src_rsgt);
>>>                  if (!ret && rq) {
>>>                          i915_request_wait(rq, 0,
>>> MAX_SCHEDULE_TIMEOUT);
>>>                          i915_request_put(rq);
>>> @@ -674,13 +698,14 @@ static int i915_ttm_accel_move(struct
>>> ttm_buffer_object *bo,
>>>    static void __i915_ttm_move(struct ttm_buffer_object *bo, bool
>>> clear,
>>>                              struct ttm_resource *dst_mem,
>>>                              struct ttm_tt *dst_ttm,
>>> -                           struct sg_table *dst_st,
>>> +                           struct i915_refct_sgt *dst_rsgt,
>>>                              bool allow_accel)
>>>    {
>>>          int ret = -EINVAL;
>>>    
>>>          if (allow_accel)
>>> -               ret = i915_ttm_accel_move(bo, clear, dst_mem,
>>> dst_ttm, dst_st);
>>> +               ret = i915_ttm_accel_move(bo, clear, dst_mem,
>>> dst_ttm,
>>> +                                         &dst_rsgt->table);
>>>          if (ret) {
>>>                  struct drm_i915_gem_object *obj =
>>> i915_ttm_to_gem(bo);
>>>                  struct intel_memory_region *dst_reg, *src_reg;
>>> @@ -697,12 +722,13 @@ static void __i915_ttm_move(struct
>>> ttm_buffer_object *bo, bool clear,
>>>                  dst_iter = !cpu_maps_iomem(dst_mem) ?
>>>                          ttm_kmap_iter_tt_init(&_dst_iter.tt,
>>> dst_ttm) :
>>>                          ttm_kmap_iter_iomap_init(&_dst_iter.io,
>>> &dst_reg->iomap,
>>> -                                                dst_st, dst_reg-
>>>> region.start);
>>> +                                                &dst_rsgt->table,
>>> +                                                dst_reg-
>>>> region.start);
>>>    
>>>                  src_iter = !cpu_maps_iomem(bo->resource) ?
>>>                          ttm_kmap_iter_tt_init(&_src_iter.tt, bo-
>>>> ttm) :
>>>                          ttm_kmap_iter_iomap_init(&_src_iter.io,
>>> &src_reg->iomap,
>>> -                                                obj-
>>>> ttm.cached_io_st,
>>> +                                                &obj-
>>>> ttm.cached_io_rsgt->table,
>>>                                                   src_reg-
>>>> region.start);
>>>    
>>>                  ttm_move_memcpy(clear, dst_mem->num_pages,
>>> dst_iter, src_iter);
>>> @@ -718,7 +744,7 @@ static int i915_ttm_move(struct
>>> ttm_buffer_object *bo, bool evict,
>>>          struct ttm_resource_manager *dst_man =
>>>                  ttm_manager_type(bo->bdev, dst_mem->mem_type);
>>>          struct ttm_tt *ttm = bo->ttm;
>>> -       struct sg_table *dst_st;
>>> +       struct i915_refct_sgt *dst_rsgt;
>>>          bool clear;
>>>          int ret;
>>>    
>>> @@ -744,22 +770,24 @@ static int i915_ttm_move(struct
>>> ttm_buffer_object *bo, bool evict,
>>>                          return ret;
>>>          }
>>>    
>>> -       dst_st = i915_ttm_resource_get_st(obj, dst_mem);
>>> -       if (IS_ERR(dst_st))
>>> -               return PTR_ERR(dst_st);
>>> +       dst_rsgt = i915_ttm_resource_get_st(obj, dst_mem);
>>> +       if (IS_ERR(dst_rsgt))
>>> +               return PTR_ERR(dst_rsgt);
>>>    
>>>          clear = !cpu_maps_iomem(bo->resource) && (!ttm ||
>>> !ttm_tt_is_populated(ttm));
>>>          if (!(clear && ttm && !(ttm->page_flags &
>>> TTM_TT_FLAG_ZERO_ALLOC)))
>>> -               __i915_ttm_move(bo, clear, dst_mem, bo->ttm,
>>> dst_st, true);
>>> +               __i915_ttm_move(bo, clear, dst_mem, bo->ttm,
>>> dst_rsgt, true);
>>>    
>>>          ttm_bo_move_sync_cleanup(bo, dst_mem);
>>>          i915_ttm_adjust_domains_after_move(obj);
>>> -       i915_ttm_free_cached_io_st(obj);
>>> +       i915_ttm_free_cached_io_rsgt(obj);
>>>    
>>>          if (gpu_binds_iomem(dst_mem) || cpu_maps_iomem(dst_mem)) {
>>> -               obj->ttm.cached_io_st = dst_st;
>>> -               obj->ttm.get_io_page.sg_pos = dst_st->sgl;
>>> +               obj->ttm.cached_io_rsgt = dst_rsgt;
>>> +               obj->ttm.get_io_page.sg_pos = dst_rsgt->table.sgl;
>>>                  obj->ttm.get_io_page.sg_idx = 0;
>>> +       } else {
>>> +               i915_refct_sgt_put(dst_rsgt);
>>>          }
>>>    
>>>          i915_ttm_adjust_lru(obj);
>>> @@ -825,7 +853,6 @@ static int __i915_ttm_get_pages(struct
>>> drm_i915_gem_object *obj,
>>>                  .interruptible = true,
>>>                  .no_wait_gpu = false,
>>>          };
>>> -       struct sg_table *st;
>>>          int real_num_busy;
>>>          int ret;
>>>    
>>> @@ -862,12 +889,16 @@ static int __i915_ttm_get_pages(struct
>>> drm_i915_gem_object *obj,
>>>          }
>>>    
>>>          if (!i915_gem_object_has_pages(obj)) {
>>> -               /* Object either has a page vector or is an iomem
>>> object */
>>> -               st = bo->ttm ? i915_ttm_tt_get_st(bo->ttm) : obj-
>>>> ttm.cached_io_st;
>>> -               if (IS_ERR(st))
>>> -                       return PTR_ERR(st);
>>> +               struct i915_refct_sgt *rsgt =
>>> +                       i915_ttm_resource_get_st(obj, bo-
>>>> resource);
>>> +
>>> +               if (IS_ERR(rsgt))
>>> +                       return PTR_ERR(rsgt);
>>>    
>>> -               __i915_gem_object_set_pages(obj, st,
>>> i915_sg_dma_sizes(st->sgl));
>>> +               GEM_BUG_ON(obj->mm.rsgt);
>>> +               obj->mm.rsgt = rsgt;
>>> +               __i915_gem_object_set_pages(obj, &rsgt->table,
>>> +                                           i915_sg_dma_sizes(rsgt-
>>>> table.sgl));
>>>          }
>>>    
>>>          i915_ttm_adjust_lru(obj);
>>> @@ -941,6 +972,13 @@ static void i915_ttm_put_pages(struct
>>> drm_i915_gem_object *obj,
>>>           * If the object is not destroyed next, The TTM eviction
>>> logic
>>>           * and shrinkers will move it out if needed.
>>>           */
>>> +
>>> +       if (obj->mm.rsgt) {
>>> +               i915_refct_sgt_put(obj->mm.rsgt);
>>> +               obj->mm.rsgt = NULL;
>>> +       }
>>
>> i915_refct_sgt_put(fetch_and_zero(&obj->mm.rsgt)) ?
>>
>>> +
>>> +       i915_ttm_adjust_lru(obj);
>>
>> Unrelated change, or do I need to look closer?
> 
> No that's unrelated. Probably a rebase mistake. Will remove.
> 
>>
>>>    }
>>>    
>>>    static void i915_ttm_adjust_lru(struct drm_i915_gem_object *obj)
>>> @@ -1278,7 +1316,7 @@ int i915_gem_obj_copy_ttm(struct
>>> drm_i915_gem_object *dst,
>>>          struct ttm_operation_ctx ctx = {
>>>                  .interruptible = intr,
>>>          };
>>> -       struct sg_table *dst_st;
>>> +       struct i915_refct_sgt *dst_rsgt;
>>>          int ret;
>>>    
>>>          assert_object_held(dst);
>>> @@ -1293,11 +1331,11 @@ int i915_gem_obj_copy_ttm(struct
>>> drm_i915_gem_object *dst,
>>>          if (ret)
>>>                  return ret;
>>>    
>>> -       dst_st = gpu_binds_iomem(dst_bo->resource) ?
>>> -               dst->ttm.cached_io_st : i915_ttm_tt_get_st(dst_bo-
>>>> ttm);
>>> -
>>> +       dst_rsgt = i915_ttm_resource_get_st(dst, dst_bo->resource);
>>>          __i915_ttm_move(src_bo, false, dst_bo->resource, dst_bo-
>>>> ttm,
>>> -                       dst_st, allow_accel);
>>> +                       dst_rsgt, allow_accel);
>>> +
>>> +       i915_refct_sgt_put(dst_rsgt);
>>>    
>>>          return 0;
>>>    }
>>> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.c
>>> b/drivers/gpu/drm/i915/i915_scatterlist.c
>>> index 4a6712dca838..8a510ee5d1ad 100644
>>> --- a/drivers/gpu/drm/i915/i915_scatterlist.c
>>> +++ b/drivers/gpu/drm/i915/i915_scatterlist.c
>>> @@ -41,8 +41,32 @@ bool i915_sg_trim(struct sg_table *orig_st)
>>>          return true;
>>>    }
>>>    
>>> +static void i915_refct_sgt_release(struct kref *ref)
>>> +{
>>> +       struct i915_refct_sgt *rsgt =
>>> +               container_of(ref, typeof(*rsgt), kref);
>>> +
>>> +       sg_free_table(&rsgt->table);
>>> +       kfree(rsgt);
>>> +}
>>> +
>>> +static const struct i915_refct_sgt_ops rsgt_ops = {
>>> +       .release = i915_refct_sgt_release
>>> +};
>>> +
>>> +/**
>>> + * i915_refct_sgt_init - Initialize a struct i915_refct_sgt with
>>> default ops
>>> + * @rsgt: The struct i915_refct_sgt to initialize.
>>> + * size: The size of the underlying memory buffer.
>>> + */
>>> +void i915_refct_sgt_init(struct i915_refct_sgt *rsgt, size_t size)
>>> +{
>>> +       i915_refct_sgt_init_ops(rsgt, size, &rsgt_ops);
>>> +}
>>> +
>>>    /**
>>> - * i915_sg_from_mm_node - Create an sg_table from a struct
>>> drm_mm_node
>>> + * i915_rsgt_from_mm_node - Create a refcounted sg_table from a
>>> struct
>>> + * drm_mm_node
>>>     * @node: The drm_mm_node.
>>>     * @region_start: An offset to add to the dma addresses of the sg
>>> list.
>>>     *
>>> @@ -50,25 +74,28 @@ bool i915_sg_trim(struct sg_table *orig_st)
>>>     * taking a maximum segment length into account, splitting into
>>> segments
>>>     * if necessary.
>>>     *
>>> - * Return: A pointer to a kmalloced struct sg_table on success,
>>> negative
>>> + * Return: A pointer to a kmalloced struct i915_refct_sgt on
>>> success, negative
>>>     * error code cast to an error pointer on failure.
>>>     */
>>> -struct sg_table *i915_sg_from_mm_node(const struct drm_mm_node
>>> *node,
>>> -                                     u64 region_start)
>>> +struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct
>>> drm_mm_node *node,
>>> +                                             u64 region_start)
>>>    {
>>>          const u64 max_segment = SZ_1G; /* Do we have a limit on
>>> this? */
>>>          u64 segment_pages = max_segment >> PAGE_SHIFT;
>>>          u64 block_size, offset, prev_end;
>>> +       struct i915_refct_sgt *rsgt;
>>>          struct sg_table *st;
>>>          struct scatterlist *sg;
>>>    
>>> -       st = kmalloc(sizeof(*st), GFP_KERNEL);
>>> -       if (!st)
>>> +       rsgt = kmalloc(sizeof(*rsgt), GFP_KERNEL);
>>> +       if (!rsgt)
>>>                  return ERR_PTR(-ENOMEM);
>>>    
>>> +       i915_refct_sgt_init(rsgt, node->size << PAGE_SHIFT);
>>> +       st = &rsgt->table;
>>>          if (sg_alloc_table(st, DIV_ROUND_UP(node->size,
>>> segment_pages),
>>>                             GFP_KERNEL)) {
>>> -               kfree(st);
>>> +               i915_refct_sgt_put(rsgt);
>>>                  return ERR_PTR(-ENOMEM);
>>>          }
>>>    
>>> @@ -104,11 +131,11 @@ struct sg_table *i915_sg_from_mm_node(const
>>> struct drm_mm_node *node,
>>>          sg_mark_end(sg);
>>>          i915_sg_trim(st);
>>>    
>>> -       return st;
>>> +       return rsgt;
>>>    }
>>>    
>>>    /**
>>> - * i915_sg_from_buddy_resource - Create an sg_table from a struct
>>> + * i915_rsgt_from_buddy_resource - Create a refcounted sg_table
>>> from a struct
>>>     * i915_buddy_block list
>>>     * @res: The struct i915_ttm_buddy_resource.
>>>     * @region_start: An offset to add to the dma addresses of the sg
>>> list.
>>> @@ -117,11 +144,11 @@ struct sg_table *i915_sg_from_mm_node(const
>>> struct drm_mm_node *node,
>>>     * taking a maximum segment length into account, splitting into
>>> segments
>>>     * if necessary.
>>>     *
>>> - * Return: A pointer to a kmalloced struct sg_table on success,
>>> negative
>>> + * Return: A pointer to a kmalloced struct i915_refct_sgts on
>>> success, negative
>>>     * error code cast to an error pointer on failure.
>>>     */
>>> -struct sg_table *i915_sg_from_buddy_resource(struct ttm_resource
>>> *res,
>>> -                                            u64 region_start)
>>> +struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct
>>> ttm_resource *res,
>>> +                                                    u64
>>> region_start)
>>>    {
>>>          struct i915_ttm_buddy_resource *bman_res =
>>> to_ttm_buddy_resource(res);
>>>          const u64 size = res->num_pages << PAGE_SHIFT;
>>> @@ -129,18 +156,21 @@ struct sg_table
>>> *i915_sg_from_buddy_resource(struct ttm_resource *res,
>>>          struct i915_buddy_mm *mm = bman_res->mm;
>>>          struct list_head *blocks = &bman_res->blocks;
>>>          struct i915_buddy_block *block;
>>> +       struct i915_refct_sgt *rsgt;
>>>          struct scatterlist *sg;
>>>          struct sg_table *st;
>>>          resource_size_t prev_end;
>>>    
>>>          GEM_BUG_ON(list_empty(blocks));
>>>    
>>> -       st = kmalloc(sizeof(*st), GFP_KERNEL);
>>> -       if (!st)
>>> +       rsgt = kmalloc(sizeof(*rsgt), GFP_KERNEL);
>>> +       if (!rsgt)
>>>                  return ERR_PTR(-ENOMEM);
>>>    
>>> +       i915_refct_sgt_init(rsgt, size);
>>> +       st = &rsgt->table;
>>>          if (sg_alloc_table(st, res->num_pages, GFP_KERNEL)) {
>>> -               kfree(st);
>>> +               i915_refct_sgt_put(rsgt);
>>>                  return ERR_PTR(-ENOMEM);
>>>          }
>>>    
>>> @@ -181,7 +211,7 @@ struct sg_table
>>> *i915_sg_from_buddy_resource(struct ttm_resource *res,
>>>          sg_mark_end(sg);
>>>          i915_sg_trim(st);
>>>    
>>> -       return st;
>>> +       return rsgt;
>>>    }
>>>    
>>>    #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>>> diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h
>>> b/drivers/gpu/drm/i915/i915_scatterlist.h
>>> index b8bd5925b03f..321fd4a9f777 100644
>>> --- a/drivers/gpu/drm/i915/i915_scatterlist.h
>>> +++ b/drivers/gpu/drm/i915/i915_scatterlist.h
>>> @@ -144,10 +144,78 @@ static inline unsigned int
>>> i915_sg_segment_size(void)
>>>    
>>>    bool i915_sg_trim(struct sg_table *orig_st);
>>>    
>>> -struct sg_table *i915_sg_from_mm_node(const struct drm_mm_node
>>> *node,
>>> -                                     u64 region_start);
>>> +/**
>>> + * struct i915_refct_sgt_ops - Operations structure for struct
>>> i915_refct_sgt
>>> + */
>>> +struct i915_refct_sgt_ops {
>>> +       /**
>>> +        * release() - Free the memory of the struct i915_refct_sgt
>>> +        * @ref: struct kref that is embedded in the struct
>>> i915_refct_sgt
>>> +        */
>>> +       void (*release)(struct kref *ref);
>>> +};
>>> +
>>> +/**
>>> + * struct i915_refct_sgt - A refcounted scatter-gather table
>>> + * @kref: struct kref for refcounting
>>> + * @table: struct sg_table holding the scatter-gather table
>>> itself. Note that
>>> + * @table->sgl = NULL can be used to determine whether a scatter-
>>> gather table
>>> + * is present or not.
>>> + * @size: The size in bytes of the underlying memory buffer
>>> + * @ops: The operations structure.
>>> + */
>>> +struct i915_refct_sgt {
>>> +       struct kref kref;
>>> +       struct sg_table table;
>>> +       size_t size;
>>> +       const struct i915_refct_sgt_ops *ops;
>>> +};
>>> +
>>> +/**
>>> + * i915_refct_sgt_put - Put a refcounted sg-table
>>> + * @rsgt the struct i915_refct_sgt to put.
>>> + */
>>> +static inline void i915_refct_sgt_put(struct i915_refct_sgt *rsgt)
>>> +{
>>> +       if (rsgt)
>>> +               kref_put(&rsgt->kref, rsgt->ops->release);
>>> +}
>>> +
>>> +/**
>>> + * i915_refct_sgt_get - Get a refcounted sg-table
>>> + * @rsgt the struct i915_refct_sgt to get.
>>> + */
>>> +static inline struct i915_refct_sgt *
>>> +i915_refct_sgt_get(struct i915_refct_sgt *rsgt)
>>> +{
>>> +       kref_get(&rsgt->kref);
>>> +       return rsgt;
>>> +}
>>> +
>>> +/**
>>> + * i915_refct_sgt_init_ops - Initialize a refcounted sg-list with
>>> a custom
>>> + * operations structure
>>> + * @rsgt The struct i915_refct_sgt to initialize.
>>> + * @size: Size in bytes of the underlying memory buffer.
>>> + * @ops: A customized operations structure in case the refcounted
>>> sg-list
>>> + * is embedded into another structure.
>>> + */
>>> +static inline void i915_refct_sgt_init_ops(struct i915_refct_sgt
>>> *rsgt,
>>> +                                          size_t size,
>>> +                                          const struct
>>> i915_refct_sgt_ops *ops)
>>> +{
>>> +       kref_init(&rsgt->kref);
>>> +       rsgt->table.sgl = NULL;
>>> +       rsgt->size = size;
>>> +       rsgt->ops = ops;
>>> +}
>>
>> Could maybe make this __i915_refct_sgt_init(), since it inits more
>> than
>> just the ops?
>>
>>
> 
> Will change.
> 
> Thanks,
> Thomas
> 
> 
