Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC924CDA59
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 18:28:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FCCD112B33;
	Fri,  4 Mar 2022 17:28:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F17B112B31
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 17:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646414917; x=1677950917;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=S82fbtPQ7vBWw7N2TuW8JsGAOmrACtt4ziU2Auy65Vw=;
 b=M5zygAhab8Z0c27bC1gBun+AmFKj8KInni16r20mtCZ7ibdNCxzgF9Yv
 LxSiA7ePPcX3sgcbrcyCBeT7uwreDEY03pAB7JHQdIVqWZHAsuFeJZYkF
 YfadNtuZuqKu5tmxLSCqCUEYHaJ2c+uQyO5dIYq6QetCMFXW7JlY8vHin
 6bYk0HeE1kMcgOgoHLudpZhqyObJ4QPd6KUG7NPUCwNt92RvXO6QMGXnk
 5ZQxdRZWwghzMxyJOVThYrX3buO4hlgXqFRSZw4EuRdO06IHPExcwLy3x
 DwKlqkwX6XLalEy1xnHWd58LsxdYn3wU5IWbUOgDIuJRUDPHGYpGH0DR4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="241444962"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="241444962"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 09:28:36 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="509042079"
Received: from vkats-mobl1.ccr.corp.intel.com (HELO [10.252.28.8])
 ([10.252.28.8])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 09:28:35 -0800
Message-ID: <3bb37dc6-85a5-eb24-f474-8b393479eab9@intel.com>
Date: Fri, 4 Mar 2022 17:28:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220304095934.925036-1-matthew.auld@intel.com>
 <20220304095934.925036-2-matthew.auld@intel.com>
 <fe19ddd39d48916c382e5bfe1c6a9f720358728b.camel@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <fe19ddd39d48916c382e5bfe1c6a9f720358728b.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [CI 2/2] drm/i915: limit the async bind to
 bind_async_flags
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

On 04/03/2022 16:41, Thomas Hellström wrote:
> On Fri, 2022-03-04 at 09:59 +0000, Matthew Auld wrote:
>> If the vm doesn't request async binding, like for example with the
>> dpt,
>> then we should be able to skip the async path and avoid calling
>> i915_vm_lock_objects() altogether. Currently if we have a moving
>> fence
>> set for the BO(even though it might have signalled), we still take
>> the
>> async patch regardless of the bind_async setting, and then later
>> still
>> end up just doing i915_gem_object_wait_moving_fence() anyway.
>>
>> Alternatively we would need to add dummy scratch object which can be
>> locked, just for the dpt.
>>
>> Suggested-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_vma.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_vma.c
>> b/drivers/gpu/drm/i915/i915_vma.c
>> index 94fcdb7bd21d..4d4d3659c938 100644
>> --- a/drivers/gpu/drm/i915/i915_vma.c
>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>> @@ -1360,8 +1360,7 @@ int i915_vma_pin_ww(struct i915_vma *vma,
>> struct i915_gem_ww_ctx *ww,
>>          if (flags & PIN_GLOBAL)
>>                  wakeref = intel_runtime_pm_get(&vma->vm->i915-
>>> runtime_pm);
>>   
>> -       moving = vma->obj ?
> 
> Is there a chance that "moving" will be used uninitialized later?

It looks to be initialised with NULL further up.

> 
> 
>> i915_gem_object_get_moving_fence(vma->obj) : NULL;
>> -       if (flags & vma->vm->bind_async_flags || moving) {
>> +       if (flags & vma->vm->bind_async_flags) {
>>                  /* lock VM */
>>                  err = i915_vm_lock_objects(vma->vm, ww);
>>                  if (err)
>> @@ -1375,6 +1374,7 @@ int i915_vma_pin_ww(struct i915_vma *vma,
>> struct i915_gem_ww_ctx *ww,
>>   
>>                  work->vm = i915_vm_get(vma->vm);
>>   
>> +               moving = vma->obj ?
>> i915_gem_object_get_moving_fence(vma->obj) : NULL;
> 
> IIRC, with Maarten's recent changes, vma->obj is always non-NULL.

Yup, a number of these seem to have crept back in. I was going to send a 
follow up patch to fix all of them at once.

> 
> Otherwise LGTM.
> Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>

Thanks.

> 
> 
>>                  dma_fence_work_chain(&work->base, moving);
>>   
>>                  /* Allocate enough page directories to used PTE */
> 
> /Thomas
> 
> 
