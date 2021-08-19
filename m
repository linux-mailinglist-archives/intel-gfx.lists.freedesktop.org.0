Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C363F143A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 09:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 489AD6E7D1;
	Thu, 19 Aug 2021 07:15:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698A06E4B5;
 Thu, 19 Aug 2021 07:15:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="280236763"
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="280236763"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 00:15:08 -0700
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; d="scan'208";a="451288475"
Received: from mdziuba-mobl.ger.corp.intel.com (HELO [10.249.254.196])
 ([10.249.254.196])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 00:15:07 -0700
Message-ID: <e409a691305229d7c4b1b08a568e809d669a3e5c.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Date: Thu, 19 Aug 2021 09:15:04 +0200
In-Reply-To: <20210818145850.225387-1-matthew.auld@intel.com>
References: <20210818145850.225387-1-matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.3 (3.40.3-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/buddy: add some pretty printing
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

On Wed, 2021-08-18 at 15:58 +0100, Matthew Auld wrote:
> Implement the debug hook for the buddy resource manager. For this we
> want to print out the status of the memory manager, including how much
> memory is still allocatable, what page sizes we have etc. This will be
> triggered when TTM is unable to fulfil an allocation request for device
> local-memory.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_buddy.c             | 45 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_buddy.h             |  8 ++++
>  drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 20 ++++++++-
>  3 files changed, 72 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_buddy.c
> b/drivers/gpu/drm/i915/i915_buddy.c
> index 7b274c51cac0..240e881d9eb0 100644
> --- a/drivers/gpu/drm/i915/i915_buddy.c
> +++ b/drivers/gpu/drm/i915/i915_buddy.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <linux/kmemleak.h>
> +#include <linux/sizes.h>
>  
>  #include "i915_buddy.h"
>  
> @@ -82,6 +83,7 @@ int i915_buddy_init(struct i915_buddy_mm *mm, u64
> size, u64 chunk_size)
>         size = round_down(size, chunk_size);
>  
>         mm->size = size;
> +       mm->avail = size;
>         mm->chunk_size = chunk_size;
>         mm->max_order = ilog2(size) - ilog2(chunk_size);
>  
> @@ -155,6 +157,8 @@ void i915_buddy_fini(struct i915_buddy_mm *mm)
>                 i915_block_free(mm, mm->roots[i]);
>         }
>  
> +       GEM_WARN_ON(mm->avail != mm->size);
> +
>         kfree(mm->roots);
>         kfree(mm->free_list);
>  }
> @@ -230,6 +234,7 @@ void i915_buddy_free(struct i915_buddy_mm *mm,
>                      struct i915_buddy_block *block)
>  {
>         GEM_BUG_ON(!i915_buddy_block_is_allocated(block));
> +       mm->avail += i915_buddy_block_size(mm, block);
>         __i915_buddy_free(mm, block);
>  }
>  
> @@ -283,6 +288,7 @@ i915_buddy_alloc(struct i915_buddy_mm *mm, unsigned
> int order)
>         }
>  
>         mark_allocated(block);
> +       mm->avail -= i915_buddy_block_size(mm, block);
>         kmemleak_update_trace(block);
>         return block;
>  
> @@ -368,6 +374,7 @@ int i915_buddy_alloc_range(struct i915_buddy_mm
> *mm,
>                         }
>  
>                         mark_allocated(block);
> +                       mm->avail -= i915_buddy_block_size(mm, block);
>                         list_add_tail(&block->link, &allocated);
>                         continue;
>                 }
> @@ -402,6 +409,44 @@ int i915_buddy_alloc_range(struct i915_buddy_mm
> *mm,
>         return err;
>  }
>  
> +void i915_buddy_block_print(struct i915_buddy_mm *mm,
> +                           struct i915_buddy_block *block,
> +                           struct drm_printer *p)
> +{
> +       u64 start = i915_buddy_block_offset(block);
> +       u64 size = i915_buddy_block_size(mm, block);
> +
> +       drm_printf(p, "%#018llx-%#018llx: %llu\n", start, start + size,
> size);
> +}
> +
> +void i915_buddy_print(struct i915_buddy_mm *mm, struct drm_printer *p)
> +{
> +       int order;
> +
> +       drm_printf(p, "chunk_size: %lluKB, total: %lluMB, free:
> %lluMB\n",
> +                  mm->chunk_size >> 10, mm->size >> 20, mm->avail >>
> 20);
> +
> +       for (order = mm->max_order; order >= 0; order--) {
> +               struct i915_buddy_block *block;
> +               u64 count = 0, free;
> +
> +               list_for_each_entry(block, &mm->free_list[order], link)
> {
> +                       GEM_BUG_ON(!i915_buddy_block_is_free(block));
> +                       count++;
> +               }
> +
> +               drm_printf(p, "order-%d ", order);
> +
> +               free = count * (mm->chunk_size << order);
> +               if (free < SZ_1M)
> +                       drm_printf(p, "free: %lluKB", free >> 10);
> +               else
> +                       drm_printf(p, "free: %lluMB", free >> 20);

Use KiB and MiB instead of KB and MB? Also below.


> +
> +               drm_printf(p, ", pages: %llu\n", count);
> +       }
> +}
> +
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>  #include "selftests/i915_buddy.c"
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_buddy.h
> b/drivers/gpu/drm/i915/i915_buddy.h
> index 3940d632f208..7077742112ac 100644
> --- a/drivers/gpu/drm/i915/i915_buddy.h
> +++ b/drivers/gpu/drm/i915/i915_buddy.h
> @@ -10,6 +10,8 @@
>  #include <linux/list.h>
>  #include <linux/slab.h>
>  
> +#include <drm/drm_print.h>
> +
>  struct i915_buddy_block {
>  #define I915_BUDDY_HEADER_OFFSET GENMASK_ULL(63, 12)
>  #define I915_BUDDY_HEADER_STATE  GENMASK_ULL(11, 10)
> @@ -69,6 +71,7 @@ struct i915_buddy_mm {
>         /* Must be at least PAGE_SIZE */
>         u64 chunk_size;
>         u64 size;
> +       u64 avail;
>  };
>  
>  static inline u64
> @@ -129,6 +132,11 @@ void i915_buddy_free(struct i915_buddy_mm *mm,
> struct i915_buddy_block *block);
>  
>  void i915_buddy_free_list(struct i915_buddy_mm *mm, struct list_head
> *objects);
>  
> +void i915_buddy_print(struct i915_buddy_mm *mm, struct drm_printer
> *p);
> +void i915_buddy_block_print(struct i915_buddy_mm *mm,
> +                           struct i915_buddy_block *block,
> +                           struct drm_printer *p);
> +
>  void i915_buddy_module_exit(void);
>  int i915_buddy_module_init(void);
>  
> diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> index 6877362f6b85..95ab786a1fe4 100644
> --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> @@ -126,12 +126,30 @@ static void i915_ttm_buddy_man_free(struct
> ttm_resource_manager *man,
>         kfree(bman_res);
>  }
>  
> +static void i915_ttm_buddy_man_debug(struct ttm_resource_manager *man,
> +                                    struct drm_printer *printer)
> +{
> +       struct i915_ttm_buddy_manager *bman = to_buddy_manager(man);
> +       struct i915_buddy_block *block;
> +
> +       mutex_lock(&bman->lock);
> +       drm_printf(printer, "default_page_size: %lluKB\n",
> +                  bman->default_page_size >> 10);
> +
> +       i915_buddy_print(&bman->mm, printer);
> +
> +       drm_printf(printer, "reserved:\n");
> +       list_for_each_entry(block, &bman->reserved, link)
> +               i915_buddy_block_print(&bman->mm, block, printer);
> +       mutex_unlock(&bman->lock);
> +}
> +
>  static const struct ttm_resource_manager_func
> i915_ttm_buddy_manager_func = {
>         .alloc = i915_ttm_buddy_man_alloc,
>         .free = i915_ttm_buddy_man_free,
> +       .debug = i915_ttm_buddy_man_debug,
>  };
>  
> -
>  /**
>   * i915_ttm_buddy_man_init - Setup buddy allocator based ttm manager
>   * @bdev: The ttm device

Otherwise LGTM,
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>



