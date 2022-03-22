Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 473E44E3DA5
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 12:31:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0AF10E406;
	Tue, 22 Mar 2022 11:31:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 421FD10E406
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 11:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647948705; x=1679484705;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=YlwyFxnzlcJH8ZYtkw9fhcbZPJwSXYdVyyVqTmOSQtc=;
 b=kEtoVZAGiL/r8qg0iEbyHs3wr9DKqg5cor4wj3/fvR1JEt5nBDnaEZW0
 lu4AyXXibhkPEER4gi/Hon6kTzz5BY3O3f6PBcR2gvWkPVJr+cOaB7Rco
 hxV7BCBoi9qBTHGDpPZT3Wlk4JUx7+xctEJkisQAdHvv/YS7YwPX4pv66
 Sl5nEwPCXXYUZw4pGHEyx2vyg4a2iP5H5E5I4U/LsqZ0SjLM6CCAVQZo/
 pdM4wjDcRm39qKxduo3xU4/rrRyRRwtjDmTMNY4b7siow/DJNJjxIhA0i
 tB/RdbH1rPOt5SQWwDC1ACCdwWPfJOsbprAIEFRyV/DOBk3DOk5yqGcY6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="257511736"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="257511736"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 04:31:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="560346006"
Received: from srobinso-mobl.ger.corp.intel.com (HELO [10.213.230.39])
 ([10.213.230.39])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 04:31:42 -0700
Message-ID: <c2bf6e3e-a419-411b-1b06-581ab2d35e83@linux.intel.com>
Date: Tue, 22 Mar 2022 11:31:39 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Casey Bowman <casey.g.bowman@intel.com>
References: <20220319020042.306649-1-casey.g.bowman@intel.com>
 <20220319020042.306649-3-casey.g.bowman@intel.com>
 <20220319033955.5ns7bixcpzcjtlpc@ldmartin-desk2>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220319033955.5ns7bixcpzcjtlpc@ldmartin-desk2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Split intel-gtt functions
 by arch
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
Cc: thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 19/03/2022 03:39, Lucas De Marchi wrote:
> On Fri, Mar 18, 2022 at 07:00:42PM -0700, Casey Bowman wrote:
>> Some functions defined in the intel-gtt module are used in several
>> areas, but is only supported on x86 platforms.
>>
>> By separating these calls and their static underlying functions to
>> area, we are able to compile out these functions for non-x86 builds
>> and provide stubs for the non-x86 implementations.
>>
> 
> I like the direction this is going now. See comments below.
> 
>> Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
>> ---
>> drivers/gpu/drm/i915/Makefile               |   2 +
>> drivers/gpu/drm/i915/gt/intel_ggtt.c        |  97 +----------------
>> drivers/gpu/drm/i915/gt/intel_gt.c          |   6 +-
>> drivers/gpu/drm/i915/gt/intel_gtt.h         |  10 ++
>> drivers/gpu/drm/i915/gt/intel_gtt_support.c | 113 ++++++++++++++++++++
>> drivers/gpu/drm/i915/gt/intel_gtt_support.h |  39 +++++++
>> 6 files changed, 171 insertions(+), 96 deletions(-)
>> create mode 100644 drivers/gpu/drm/i915/gt/intel_gtt_support.c
>> create mode 100644 drivers/gpu/drm/i915/gt/intel_gtt_support.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile 
>> b/drivers/gpu/drm/i915/Makefile
>> index 61b078bd1b32..cc332cb6833b 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -124,6 +124,8 @@ gt-y += \
>>     gt/intel_workarounds.o \
>>     gt/shmem_utils.o \
>>     gt/sysfs_engines.o
>> +# x86 intel-gtt module support
>> +gt-$(CONFIG_X86) += gt/intel_gtt_support.o
>> # autogenerated null render state
>> gt-y += \
>>     gt/gen6_renderstate.o \
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c 
>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 04191fe2ee34..db2f1b12c273 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -3,14 +3,12 @@
>>  * Copyright © 2020 Intel Corporation
>>  */
>>
>> -#include <linux/agp_backend.h>
>> #include <linux/stop_machine.h>
>>
>> #include <asm/set_memory.h>
>> #include <asm/smp.h>
>>
>> #include <drm/i915_drm.h>
>> -#include <drm/intel-gtt.h>
>>
>> #include "gem/i915_gem_lmem.h"
>>
>> @@ -21,6 +19,7 @@
>> #include "i915_vgpu.h"
>>
>> #include "intel_gtt.h"
>> +#include "intel_gtt_support.h"
>> #include "gen8_ppgtt.h"
>>
>> static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
>> @@ -98,7 +97,7 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915)
>>  * Certain Gen5 chipsets require idling the GPU before
>>  * unmapping anything from the GTT when VT-d is enabled.
>>  */
>> -static bool needs_idle_maps(struct drm_i915_private *i915)
>> +bool needs_idle_maps(struct drm_i915_private *i915)
> 
> why didn't you move this function together? It's only used by
> i915_gmch_probe()
> 
> If it was something generic that needed to be exported, you'd need to
> rename it to respect the namespace.
> 
> but here I think you can just move it to the new file.
> 
>> {
>>     /*
>>      * Query intel_iommu to see if we need the workaround. Presumably 
>> that
>> @@ -229,11 +228,6 @@ static void guc_ggtt_invalidate(struct i915_ggtt 
>> *ggtt)
>>         intel_uncore_write_fw(uncore, GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>> }
>>
>> -static void gmch_ggtt_invalidate(struct i915_ggtt *ggtt)
>> -{
>> -    intel_gtt_chipset_flush();
>> -}
>> -
>> u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>              enum i915_cache_level level,
>>              u32 flags)
>> @@ -467,37 +461,7 @@ static void gen6_ggtt_clear_range(struct 
>> i915_address_space *vm,
>>         iowrite32(scratch_pte, &gtt_base[i]);
>> }
>>
>> -static void i915_ggtt_insert_page(struct i915_address_space *vm,
>> -                  dma_addr_t addr,
>> -                  u64 offset,
>> -                  enum i915_cache_level cache_level,
>> -                  u32 unused)
>> -{
>> -    unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>> -        AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> -
>> -    intel_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
>> -}
>> -
>> -static void i915_ggtt_insert_entries(struct i915_address_space *vm,
>> -                     struct i915_vma_resource *vma_res,
>> -                     enum i915_cache_level cache_level,
>> -                     u32 unused)
>> -{
>> -    unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>> -        AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> -
>> -    intel_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->start >> 
>> PAGE_SHIFT,
>> -                    flags);
>> -}
>> -
>> -static void i915_ggtt_clear_range(struct i915_address_space *vm,
>> -                  u64 start, u64 length)
>> -{
>> -    intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
>> -}
>> -
>> -static void ggtt_bind_vma(struct i915_address_space *vm,
>> +void ggtt_bind_vma(struct i915_address_space *vm,
>>               struct i915_vm_pt_stash *stash,
>>               struct i915_vma_resource *vma_res,
>>               enum i915_cache_level cache_level,
>> @@ -521,7 +485,7 @@ static void ggtt_bind_vma(struct 
>> i915_address_space *vm,
>>     vma_res->page_sizes_gtt = I915_GTT_PAGE_SIZE;
>> }
>>
>> -static void ggtt_unbind_vma(struct i915_address_space *vm,
>> +void ggtt_unbind_vma(struct i915_address_space *vm,
>>                 struct i915_vma_resource *vma_res)
>> {
>>     vm->clear_range(vm, vma_res->start, vma_res->vma_size);
>> @@ -1149,54 +1113,6 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
>>     return ggtt_probe_common(ggtt, size);
>> }
>>
>> -static void i915_gmch_remove(struct i915_address_space *vm)
>> -{
>> -    intel_gmch_remove();
>> -}
>> -
>> -static int i915_gmch_probe(struct i915_ggtt *ggtt)
>> -{
>> -    struct drm_i915_private *i915 = ggtt->vm.i915;
>> -    phys_addr_t gmadr_base;
>> -    int ret;
>> -
>> -    ret = intel_gmch_probe(i915->bridge_dev, 
>> to_pci_dev(i915->drm.dev), NULL);
>> -    if (!ret) {
>> -        drm_err(&i915->drm, "failed to set up gmch\n");
>> -        return -EIO;
>> -    }
>> -
>> -    intel_gtt_get(&ggtt->vm.total, &gmadr_base, &ggtt->mappable_end);
>> -
>> -    ggtt->gmadr =
>> -        (struct resource)DEFINE_RES_MEM(gmadr_base, ggtt->mappable_end);
>> -
>> -    ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>> -    ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>> -
>> -    if (needs_idle_maps(i915)) {
>> -        drm_notice(&i915->drm,
>> -               "Flushing DMA requests before IOMMU unmaps; 
>> performance may be degraded\n");
>> -        ggtt->do_idle_maps = true;
>> -    }
>> -
>> -    ggtt->vm.insert_page = i915_ggtt_insert_page;
>> -    ggtt->vm.insert_entries = i915_ggtt_insert_entries;
>> -    ggtt->vm.clear_range = i915_ggtt_clear_range;
>> -    ggtt->vm.cleanup = i915_gmch_remove;
>> -
>> -    ggtt->invalidate = gmch_ggtt_invalidate;
>> -
>> -    ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
>> -    ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
>> -
>> -    if (unlikely(ggtt->do_idle_maps))
>> -        drm_notice(&i915->drm,
>> -               "Applying Ironlake quirks for intel_iommu\n");
>> -
>> -    return 0;
>> -}
>> -
>> static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
>> {
>>     struct drm_i915_private *i915 = gt->i915;
>> @@ -1266,10 +1182,7 @@ int i915_ggtt_probe_hw(struct drm_i915_private 
>> *i915)
>>
>> int i915_ggtt_enable_hw(struct drm_i915_private *i915)
>> {
>> -    if (GRAPHICS_VER(i915) < 6 && !intel_enable_gtt())
>> -        return -EIO;
>> -
>> -    return 0;
>> +    return i915_gtt_support_enable_hw(i915);
>> }
>>
>> void i915_ggtt_enable_guc(struct i915_ggtt *ggtt)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c 
>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>> index 57ca1e6b6203..abdf8dc8ddf7 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>> @@ -4,7 +4,6 @@
>>  */
>>
>> #include <drm/drm_managed.h>
>> -#include <drm/intel-gtt.h>
>>
>> #include "gem/i915_gem_internal.h"
>> #include "gem/i915_gem_lmem.h"
>> @@ -20,6 +19,7 @@
>> #include "intel_gt_pm.h"
>> #include "intel_gt_regs.h"
>> #include "intel_gt_requests.h"
>> +#include "intel_gtt_support.h"
>> #include "intel_migrate.h"
>> #include "intel_mocs.h"
>> #include "intel_pm.h"
>> @@ -443,9 +443,7 @@ void intel_gt_flush_ggtt_writes(struct intel_gt *gt)
>>
>> void intel_gt_chipset_flush(struct intel_gt *gt)
>> {
>> -    wmb();
>> -    if (GRAPHICS_VER(gt->i915) < 6)
>> -        intel_gtt_chipset_flush();
>> +    intel_gtt_support_chipset_flush(gt);
> 
> humn... 2 things here:
> 
> 1) intel_gtt_support_* may not be a good name. Here it seems the
> function would return a boolean saying if chipset flush is supported.
> 
> Also, all the functions in intel_gtt_support_* are actually about
> support the i915 graphics card (not to be confused is i915, the name of
> the module). intel_gtt_* clashes with the other module. So, looking at
> the calls I'd actually call these e.g. gen5_gtt_chipset_flush()
> 
> This would follow what is done in other headers/sources like
> gen*_renderstate.*, gen*_ppgtt.*, etc
> 
> Then this function would become like:
> 
> void intel_gt_chipset_flush(struct intel_gt *gt)
> {
>      wmb();
>      if (GRAPHICS_VER(gt->i915) <= 5)
>          gen5_gtt_chipset_flush();
> }
> 
> So we split what is to be done for every gpu (the wmb()) from what is to
> be done for the older gens.
> 
> 
> What do you think? Jani / Matt?

And on Arm gen5_gtt_chipset_flush is a no-op stub - sounds good to me, 
exactly the concept we already talked about.

Also as discussed before, gmch related functions like i915_gmch_probe 
(and all that cascade in the call chain and remain static) should be 
moved to a file named intel_gt_gmch.[hc], not "support". Functions which 
are shared between gens can be exported from intel_gt.[hc] like I think 
this patch does for some.

But don't export with no prefix like for instance ggtt_bind_vma. Add 
intel_ there. Or needs_idle_maps should become i915_... is needs to be 
exported. (I haven't looked into details.)

Regards,

Tvrtko

>>
>> void intel_gt_driver_register(struct intel_gt *gt)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h 
>> b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> index 4529b5e9f6e6..fd1dea85bde4 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> @@ -547,6 +547,14 @@ i915_page_dir_dma_addr(const struct i915_ppgtt 
>> *ppgtt, const unsigned int n)
>> void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt,
>>         unsigned long lmem_pt_obj_flags);
>>
>> +void ggtt_bind_vma(struct i915_address_space *vm,
>> +              struct i915_vm_pt_stash *stash,
>> +              struct i915_vma_resource *vma_res,
>> +              enum i915_cache_level cache_level,
>> +              u32 flags);
>> +void ggtt_unbind_vma(struct i915_address_space *vm,
>> +                struct i915_vma_resource *vma_res);
>> +
>> int i915_ggtt_probe_hw(struct drm_i915_private *i915);
>> int i915_ggtt_init_hw(struct drm_i915_private *i915);
>> int i915_ggtt_enable_hw(struct drm_i915_private *i915);
>> @@ -654,4 +662,6 @@ static inline struct sgt_dma {
>>     return (struct sgt_dma){ sg, addr, addr + sg_dma_len(sg) };
>> }
>>
>> +bool needs_idle_maps(struct drm_i915_private *i915);
>> +
>> #endif
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt_support.c 
>> b/drivers/gpu/drm/i915/gt/intel_gtt_support.c
>> new file mode 100644
>> index 000000000000..d6d22b1a9520
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt_support.c
>> @@ -0,0 +1,113 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright © 2022 Intel Corporation
>> + */
>> +
>> +#include <drm/intel-gtt.h>
>> +
>> +#include <linux/agp_backend.h>
>> +
>> +#include "i915_drv.h"
>> +#include "intel_gtt_support.h"
>> +#include "intel_gt.h"
>> +
>> +/* Wrapper for intel_gt_chipset_flush() */
>> +void intel_gtt_support_chipset_flush(struct intel_gt *gt)
>> +{
>> +    wmb();
>> +    if (GRAPHICS_VER(gt->i915) < 6)
>> +        intel_gtt_chipset_flush();
>> +}
>> +
>> +static void gmch_ggtt_invalidate(struct i915_ggtt *ggtt)
>> +{
>> +    intel_gtt_chipset_flush();
>> +}
>> +
>> +static void i915_ggtt_insert_page(struct i915_address_space *vm,
>> +                  dma_addr_t addr,
>> +                  u64 offset,
>> +                  enum i915_cache_level cache_level,
>> +                  u32 unused)
>> +{
>> +    unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>> +        AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> +
>> +    intel_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
>> +}
>> +
>> +static void i915_ggtt_insert_entries(struct i915_address_space *vm,
>> +                     struct i915_vma_resource *vma_res,
>> +                     enum i915_cache_level cache_level,
>> +                     u32 unused)
>> +{
>> +    unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>> +        AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> +
>> +    intel_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->start >> 
>> PAGE_SHIFT,
>> +                    flags);
>> +}
>> +
>> +static void i915_ggtt_clear_range(struct i915_address_space *vm,
>> +                     u64 start, u64 length)
>> +{
>> +    intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
>> +}
>> +
>> +static void i915_gmch_remove(struct i915_address_space *vm)
>> +{
>> +    intel_gmch_remove();
>> +}
>> +
>> +/* Original i915_gmch_probe() behavior for x86 */
>> +int i915_gmch_probe(struct i915_ggtt *ggtt)
>> +{
>> +    struct drm_i915_private *i915 = ggtt->vm.i915;
>> +    phys_addr_t gmadr_base;
>> +    int ret;
>> +
>> +    ret = intel_gmch_probe(i915->bridge_dev, 
>> to_pci_dev(i915->drm.dev), NULL);
>> +    if (!ret) {
>> +        drm_err(&i915->drm, "failed to set up gmch\n");
>> +        return -EIO;
>> +    }
>> +
>> +    intel_gtt_get(&ggtt->vm.total, &gmadr_base, &ggtt->mappable_end);
>> +
>> +    ggtt->gmadr =
>> +        (struct resource)DEFINE_RES_MEM(gmadr_base, ggtt->mappable_end);
>> +
>> +    ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>> +    ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>> +
>> +    if (needs_idle_maps(i915)) {
>> +        drm_notice(&i915->drm,
>> +               "Flushing DMA requests before IOMMU unmaps; 
>> performance may be degraded\n");
>> +        ggtt->do_idle_maps = true;
>> +    }
>> +
>> +    ggtt->vm.insert_page = i915_ggtt_insert_page;
>> +    ggtt->vm.insert_entries = i915_ggtt_insert_entries;
>> +    ggtt->vm.clear_range = i915_ggtt_clear_range;
>> +    ggtt->vm.cleanup = i915_gmch_remove;
>> +
>> +    ggtt->invalidate = gmch_ggtt_invalidate;
>> +
>> +    ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
>> +    ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
>> +
>> +    if (unlikely(ggtt->do_idle_maps))
>> +        drm_notice(&i915->drm,
>> +               "Applying Ironlake quirks for intel_iommu\n");
>> +
>> +    return 0;
>> +}
>> +
>> +/* Wrapper for i915_ggtt_enable_hw() */
>> +int i915_gtt_support_enable_hw(struct drm_i915_private *i915)
>> +{
>> +    if (GRAPHICS_VER(i915) < 6 && !intel_enable_gtt())
>> +        return -EIO;
>> +
>> +    return 0;
>> +}
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt_support.h 
>> b/drivers/gpu/drm/i915/gt/intel_gtt_support.h
>> new file mode 100644
>> index 000000000000..2ebb0dd66ad7
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt_support.h
>> @@ -0,0 +1,39 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2022 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_GTT_SUPPORT_H__
>> +#define __INTEL_GTT_SUPPORT_H__
>> +
>> +#include "intel_gtt.h"
>> +
>> +/* For x86 platforms */
>> +#if IS_ENABLED(CONFIG_X86)
>> +/* Wrapper for intel_gt_chipset_flush() */
>> +void intel_gtt_support_chipset_flush(struct intel_gt *gt);
>> +/* Original i915_gmch_probe() behavior */
>> +int i915_gmch_probe(struct i915_ggtt *ggtt);
>> +/* Wrapper for i915_ggtt_enable_hw() */
>> +int i915_gtt_support_enable_hw(struct drm_i915_private *i915);
>> +
> 
> 
> we are trying to standardize on:
> 
> this_is_a_namespace.c / this_is_a_namespace.h
> 
> and the functions exported are:
> 
> this_is_a_namespace_*
> 
> Here you have 3 functions, all with different prefixes:
> 
> intel_gtt_support_
> i915_gmch_
> i915_ggtt_
> 
> we need to rename the functions we export. If people think my suggestion
> above with gen5_gtt_* is a good one, then this would be the namespace
> for all of them
> 
> I think we are now much closer to a version to be merged.
> 
> thanks,
> Lucas De Marchi
> 
>> +/* Stubs for non-x86 platforms */
>> +#else
>> +static inline void intel_gtt_support_chipset_flush(struct intel_gt *gt)
>> +{
>> +    return;
>> +}
>> +static inline int i915_gmch_probe(struct i915_ggtt *ggtt)
>> +{
>> +    /* We shouldn't detect a device in this case, return fail */
>> +    return -1;
>> +}
>> +
>> +static inline int i915_gtt_support_enable_hw(struct drm_i915_private 
>> *i915)
>> +{
>> +    /* No HW should be enabled for this case, return fail */
>> +    return -1;
>> +}
>> +#endif
>> +
>> +#endif /* __INTEL_GTT_SUPPORT_H__ */
>> -- 
>> 2.25.1
>>
