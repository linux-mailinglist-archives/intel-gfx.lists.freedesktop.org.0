Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EDD122B0F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 13:15:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AFFB6E9C8;
	Tue, 17 Dec 2019 12:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54B186E9C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 12:15:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 04:15:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,325,1571727600"; d="scan'208";a="415443700"
Received: from vfrancis-mobl.gar.corp.intel.com ([10.255.171.44])
 by fmsmga005.fm.intel.com with ESMTP; 17 Dec 2019 04:15:52 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191217115750.11938-1-abdiel.janulgue@linux.intel.com>
 <157658485012.8790.12305457821651537982@skylake-alporthouse-com>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <1d1dd387-6240-d80b-5bbc-f4a0eee8488a@linux.intel.com>
Date: Tue, 17 Dec 2019 14:15:51 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <157658485012.8790.12305457821651537982@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add lmem fault handler
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 17/12/2019 14.14, Chris Wilson wrote:
> Quoting Abdiel Janulgue (2019-12-17 11:57:49)
>> Fault handler to handle missing pages for lmem objects.
>>
>> v4: Restore non-contigous fault handling in addition to remap_io_mapping
>>
>> Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_lmem.c | 13 +++++
>>  drivers/gpu/drm/i915/gem/i915_gem_lmem.h |  4 ++
>>  drivers/gpu/drm/i915/gem/i915_gem_mman.c | 71 ++++++++++++++++++++++--
>>  3 files changed, 84 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
>> index 520cc9cac471..e8326d8b66f7 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
>> @@ -6,6 +6,7 @@
>>  #include "intel_memory_region.h"
>>  #include "gem/i915_gem_region.h"
>>  #include "gem/i915_gem_lmem.h"
>> +#include "gem/i915_gem_mman.h"
>>  #include "i915_drv.h"
>>  
>>  const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops = {
>> @@ -56,6 +57,18 @@ i915_gem_object_lmem_io_map(struct drm_i915_gem_object *obj,
>>         return io_mapping_map_wc(&obj->mm.region->iomap, offset, size);
>>  }
>>  
>> +unsigned long i915_gem_object_lmem_io_pfn(struct drm_i915_gem_object *obj,
>> +                                         unsigned long n)
>> +{
>> +       struct intel_memory_region *mem = obj->mm.region;
>> +       resource_size_t offset;
>> +
>> +       offset = i915_gem_object_get_dma_address(obj, n);
>> +       offset -= mem->region.start;
>> +
>> +       return (mem->io_start + offset) >> PAGE_SHIFT;
>> +}
>> +
>>  bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
>>  {
>>         return obj->ops == &i915_gem_lmem_obj_ops;
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
>> index 7c176b8b7d2f..4d5fca1a3e0e 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
>> @@ -7,6 +7,7 @@
>>  #define __I915_GEM_LMEM_H
>>  
>>  #include <linux/types.h>
>> +#include <linux/mman.h>
>>  
>>  struct drm_i915_private;
>>  struct drm_i915_gem_object;
>> @@ -22,6 +23,9 @@ void __iomem *
>>  i915_gem_object_lmem_io_map_page_atomic(struct drm_i915_gem_object *obj,
>>                                         unsigned long n);
>>  
>> +unsigned long i915_gem_object_lmem_io_pfn(struct drm_i915_gem_object *obj,
>> +                                         unsigned long n);
>> +
>>  bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
>>  
>>  struct drm_i915_gem_object *
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> index 879fff8adc48..f5f7af745d1d 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> @@ -11,6 +11,7 @@
>>  #include "gt/intel_gt.h"
>>  #include "gt/intel_gt_requests.h"
>>  
>> +#include "i915_gem_lmem.h"
>>  #include "i915_drv.h"
>>  #include "i915_gem_gtt.h"
>>  #include "i915_gem_ioctls.h"
>> @@ -216,6 +217,7 @@ static vm_fault_t i915_error_to_vmf_fault(int err)
>>  
>>         case -ENOSPC: /* shmemfs allocation failure */
>>         case -ENOMEM: /* our allocation failure */
>> +       case -ENXIO:
>>                 return VM_FAULT_OOM;
>>  
>>         case 0:
>> @@ -274,6 +276,47 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
>>         return ret;
>>  }
>>  
>> +vm_fault_t vm_fault_iomem(struct vm_fault *vmf)
>> +{
>> +       struct vm_area_struct *area = vmf->vma;
>> +       struct i915_mmap_offset *priv = area->vm_private_data;
>> +       struct drm_i915_gem_object *obj = priv->obj;
>> +       struct intel_memory_region *mem = obj->mm.region;
>> +       unsigned long i, size = area->vm_end - area->vm_start;
>> +       bool write = area->vm_flags & VM_WRITE;
>> +       int ret;
>> +
>> +       /* Sanity check that we allow writing into this object */
>> +       if (i915_gem_object_is_readonly(obj) && write)
>> +               return VM_FAULT_SIGBUS;
>> +
>> +       ret = i915_gem_object_pin_pages(obj);
>> +       if (ret)
>> +               return i915_error_to_vmf_fault(ret);
>> +
>> +       if (obj->flags & I915_BO_ALLOC_CONTIGUOUS) {
>> +               ret = remap_io_mapping(area, area->vm_start,
>> +                                      i915_gem_object_lmem_io_pfn(obj, 0), size,
>> +                                      &mem->iomap);
>> +               i915_gem_object_unpin_pages(obj);
>> +               return i915_error_to_vmf_fault(ret);
>> +       } else {
>> +               vm_fault_t vmf_ret = VM_FAULT_SIGBUS;
>> +               if (GEM_WARN_ON(size < PAGE_SIZE))
>> +                       return vmf_ret;
>> +
>> +               for (i = 0; i < size >> PAGE_SHIFT; i++) {
>> +                       vmf_ret = vmf_insert_pfn(area,
>> +                                                (unsigned long)area->vm_start + i * PAGE_SIZE,
>> +                                                i915_gem_object_lmem_io_pfn(obj, i));
> 
> Sigh.

:( if you really need remap_io_mapping, I'm afraid I need help with this.

> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
