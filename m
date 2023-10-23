Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D56D7D349A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 13:41:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54FC910E0BC;
	Mon, 23 Oct 2023 11:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 842CC10E1AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 11:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698061229; x=1729597229;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=OPO2Ds943IVlZVEhHEY67nwFP7S8i8ljwotVHaTSnpw=;
 b=CKfl8UmMkQFUacEZxvd3m/YKCJsm1JCS0ke/L8pmxfvNiT+sBMeYJKDZ
 3HOP+G4FdPsFjnrwm9l77vzqJrMuV/hrmCP0LivrVLocBJedpdxFsEFCe
 8DyhTGAQmzjHfaUi45MFlQtO1OYkIpmt+0cHDxPQ009Quu2o6SH6M1BUb
 DZVePShJ955lwz9dkZnsxL/alL64UYiQF6zdOI5LFrkx4fJJV8JV1bT2X
 aml2FmuiisHlq7rutV/IVKUE1C+7mKAFXaCJzGpyqQOBjKsdoWfnqHNV5
 ejupRwuUVhIKt0lDSOlz0g0GGC9uK/xXykxI3YiYxUGdSAXxVJz1DZPec Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="473034133"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="473034133"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 04:40:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="734639463"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="734639463"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.16.23])
 ([10.213.16.23])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 04:40:24 -0700
Message-ID: <f8be64f9-758c-46bc-929d-55f9b0afbee3@intel.com>
Date: Mon, 23 Oct 2023 13:40:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20231023-wabb-v3-0-1a4fbc632440@intel.com>
 <20231023-wabb-v3-2-1a4fbc632440@intel.com>
 <6090c205-04e3-84f9-bbf3-cc6318de4445@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <6090c205-04e3-84f9-bbf3-cc6318de4445@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 2/4] drm/i915: Reserve some kernel space
 per vm
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 23.10.2023 10:49, Nirmoy Das wrote:
> Hi Andrzej,
> 
> On 10/23/2023 9:41 AM, Andrzej Hajda wrote:
>> Reserve two pages in each vm for kernel space to use for things
>> such as workarounds.
>>
>> v2: use real memory, do not decrease vm.total
>>
>> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 38 
>> ++++++++++++++++++++++++++++++++++++
>>   drivers/gpu/drm/i915/gt/intel_gtt.h  |  1 +
>>   2 files changed, 39 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c 
>> b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> index 84aa29715e0aca..c25e1d4cceeb17 100644
>> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>> @@ -5,6 +5,7 @@
>>   #include <linux/log2.h>
>> +#include "gem/i915_gem_internal.h"
>>   #include "gem/i915_gem_lmem.h"
>>   #include "gen8_ppgtt.h"
>> @@ -953,6 +954,39 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
>>       return ERR_PTR(err);
>>   }
>> +static int gen8_init_rsvd(struct i915_address_space *vm)
>> +{
>> +    const resource_size_t size = 2 * PAGE_SIZE;
>> +    struct drm_i915_private *i915 = vm->i915;
>> +    struct drm_i915_gem_object *obj;
>> +    struct i915_vma *vma;
>> +    int ret;
>> +
>> +    obj = i915_gem_object_create_lmem(i915, size,
>> +                      I915_BO_ALLOC_VOLATILE |
>> +                      I915_BO_ALLOC_GPU_ONLY);
> 
> Please add a comment why GPU_ONLY flag is used. It makes sense to me now 
> but good to have a comment for the future. Also why 2 pages are
> 
> reserved ?

GPU only because it is just for GPU write, nothing more.

About two pages, it is probably leftover from prev versions,
Jonathan if there are no objections I will use one page,
as it should be enough (IIRC, in WA description/discussion
it was mentioned that one cacheline is enough).

Regards
Andrzej

> 
> 
> Regards,
> 
> Nirmoy
> 
>> +    if (IS_ERR(obj))
>> +        obj = i915_gem_object_create_internal(i915, size);
>> +    if (IS_ERR(obj))
>> +        return PTR_ERR(obj);
>> +
>> +    vma = i915_vma_instance(obj, vm, NULL);
>> +    if (IS_ERR(vma)) {
>> +        ret = PTR_ERR(vma);
>> +        goto unref;
>> +    }
>> +
>> +    ret = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
>> +    if (ret)
>> +        goto unref;
>> +
>> +    vm->rsvd = i915_vma_make_unshrinkable(vma);
>> +
>> +unref:
>> +    i915_gem_object_put(obj);
>> +    return ret;
>> +}
>> +
>>   /*
>>    * GEN8 legacy ppgtt programming is accomplished through a max 4 PDP 
>> registers
>>    * with a net effect resembling a 2-level page table in normal x86 
>> terms. Each
>> @@ -1034,6 +1068,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct 
>> intel_gt *gt,
>>       if (intel_vgpu_active(gt->i915))
>>           gen8_ppgtt_notify_vgt(ppgtt, true);
>> +    err = gen8_init_rsvd(&ppgtt->vm);
>> +    if (err)
>> +        goto err_put;
>> +
>>       return ppgtt;
>>   err_put:
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h 
>> b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> index 15c71da14d1d27..4a35ef24501b5f 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> @@ -250,6 +250,7 @@ struct i915_address_space {
>>       struct work_struct release_work;
>>       struct drm_mm mm;
>> +    struct i915_vma *rsvd;
>>       struct intel_gt *gt;
>>       struct drm_i915_private *i915;
>>       struct device *dma;
>>

