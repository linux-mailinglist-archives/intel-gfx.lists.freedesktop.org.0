Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8157711DDD3
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 06:40:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1B296E279;
	Fri, 13 Dec 2019 05:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B65246E279
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 05:40:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 21:40:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,308,1571727600"; d="scan'208";a="239193196"
Received: from echew2-mobl.gar.corp.intel.com ([10.255.170.251])
 by fmsmga004.fm.intel.com with ESMTP; 12 Dec 2019 21:40:02 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.william.auld@gmail.com>
References: <20191212113438.5412-1-abdiel.janulgue@linux.intel.com>
 <157616034917.4546.15052864218216216334@skylake-alporthouse-com>
 <CAM0jSHNUhAnRXQUGX2xR943GwFZixvEfL6tJWF5+T7Cz1DKUfg@mail.gmail.com>
 <157616399450.4546.5472279753206797713@skylake-alporthouse-com>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <51f2f2da-c60c-2b54-c81a-5f6d6385f0ed@linux.intel.com>
Date: Fri, 13 Dec 2019 07:39:36 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <157616399450.4546.5472279753206797713@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add lmem fault handler
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 12/12/2019 17.19, Chris Wilson wrote:
> Quoting Matthew Auld (2019-12-12 15:11:02)
>> On Thu, 12 Dec 2019 at 14:20, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>>>
>>> Quoting Abdiel Janulgue (2019-12-12 11:34:38)
>>>> Fault handler to handle missing pages for lmem objects.
>>>>
>>>> v3: Add get_vm_cpu_ops, iterate over all memory regions in the
>>>>     lmem selftest, use remap_io_mapping.
>>>>
>>>> Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
>>>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>>>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/gem/i915_gem_lmem.c      |  40 +++++
>>>>  drivers/gpu/drm/i915/gem/i915_gem_lmem.h      |   6 +
>>>>  drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  32 +++-
>>>>  drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   1 +
>>>>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 137 +++++++++++++++---
>>>>  5 files changed, 188 insertions(+), 28 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
>>>> index 0e2bf6b7e143..bbe625935005 100644
>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
>>>> @@ -6,8 +6,36 @@
>>>>  #include "intel_memory_region.h"
>>>>  #include "gem/i915_gem_region.h"
>>>>  #include "gem/i915_gem_lmem.h"
>>>> +#include "gem/i915_gem_mman.h"
>>>>  #include "i915_drv.h"
>>>>
>>>> +vm_fault_t vm_fault_iomem(struct vm_fault *vmf)
>>>> +{
>>>> +       struct vm_area_struct *area = vmf->vma;
>>>> +       struct i915_mmap_offset *priv = area->vm_private_data;
>>>> +       struct drm_i915_gem_object *obj = priv->obj;
>>>> +       struct intel_memory_region *mem = obj->mm.region;
>>>> +       unsigned long size = area->vm_end - area->vm_start;
>>>> +       bool write = area->vm_flags & VM_WRITE;
>>>> +       int ret;
>>>> +
>>>> +       /* Sanity check that we allow writing into this object */
>>>> +       if (i915_gem_object_is_readonly(obj) && write)
>>>> +               return VM_FAULT_SIGBUS;
>>>> +
>>>> +       ret = i915_gem_object_pin_pages(obj);
>>>> +       if (ret)
>>>> +               return i915_error_to_vmf_fault(ret);
>>>> +
>>>> +       ret = remap_io_mapping(area, area->vm_start,
>>>> +                              i915_gem_object_lmem_io_pfn(obj, 0), size,
>>>> +                              &mem->iomap);
>>>
>>> So this implementation only works with contiguous objects, right?
>>
>> Hmm can't we go back to what we had before, so support !contiguous also?
> 
> The fun part is that you can do both :) Do a discontiguous
> remap_io_mapping() The queue part is that remap_io_mapping() avoids the
> O(N^2), and should give us O(N) instead.

So just to be clear,

if (obj->flags & I915_BO_ALLOC_CONTIGUOUS) {
	remap_io_mapping(...)
} else {
	for(...)
		vmf_insert_pfn()
}

??

- Abdiel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
