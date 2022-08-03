Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF1458890C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 11:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E7A110ECCA;
	Wed,  3 Aug 2022 09:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9AAC10E66D
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659517612; x=1691053612;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=nvu9BSqJlKixbXG8v+vDpddquXgCpIOOtGGynXp29yQ=;
 b=Xm6TpVwRCoEu/6a9/CAq1vrofCphgKWIOGe4gewis/Ze+3HEeRpg6UK9
 K5+N1mfbVc+QvyYt40XND23KmaJrjmHmX2uZgflgOVyGggcdf+JfMT0of
 Da8m7BXh0QuakmMgdI3S7Lgdy+qZF71QPo7DGKyM2yGPHjPs9vP5sLFFo
 gsKZUUIsaAVTzflCsfzod0xEXh7bgBHvapI1sRdgKDBdnnveWmwPFxxb5
 lua2KhrAixahBguf39PunJbIom0Wy8DB9bMMjJEKENEmqibjRjxmPqXjS
 wfD9oTAl1VLDt1N1gF+Q983vr1Kc/UJ3a5o9fI6p2cyy8ALQtHCJbBaCJ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="272672725"
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="272672725"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 02:06:51 -0700
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="661999735"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.24.223])
 ([10.252.24.223])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 02:06:50 -0700
Message-ID: <53721de6-2fe7-2cd1-aad7-699aa4289018@linux.intel.com>
Date: Wed, 3 Aug 2022 11:06:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>, 
 intel-gfx@lists.freedesktop.org
References: <20220726144844.18429-1-nirmoy.das@intel.com>
 <0a44f6c5-1c75-52a6-33c4-4877303411c1@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <0a44f6c5-1c75-52a6-33c4-4877303411c1@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Remove shared locking on
 freeing objects
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
Cc: chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 8/3/2022 10:56 AM, Matthew Auld wrote:
> On 26/07/2022 15:48, Nirmoy Das wrote:
>> From: Chris Wilson <chris@chris-wilson.co.uk>
>>
>> The obj->base.resv may be shared across many objects, some of which may
>> still be live and locked, preventing objects from being freed
>> indefintely. We could individualise the lock during the free, or rely on
>> a freed object having no contention and being able to immediately free
>> th pages it owns.
>>
>> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6469
>> Fixes: be7612fd6665 ("drm/i915: Require object lock when freeing 
>> pages during destruction")
>> Fixes: 6cb12fbda1c2 ("drm/i915: Use trylock instead of blocking lock 
>> for __i915_gem_free_objects.")
>> Cc: <stable@vger.kernel.org> # v5.17+
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>
> Looks to be missing your sob.

True, I missed that.


Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Tested-and-acked-by: Nirmoy Das <nirmoy.das@intel.com>

Nirmoy

>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_object.c | 16 ++++------------
>>   drivers/gpu/drm/i915/i915_drv.h            |  4 ++--
>>   2 files changed, 6 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> index ccec4055fde3..389e9f157ca5 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> @@ -268,7 +268,7 @@ static void __i915_gem_object_free_mmaps(struct 
>> drm_i915_gem_object *obj)
>>    */
>>   void __i915_gem_object_pages_fini(struct drm_i915_gem_object *obj)
>>   {
>> -    assert_object_held(obj);
>> +    assert_object_held_shared(obj);
>>         if (!list_empty(&obj->vma.list)) {
>>           struct i915_vma *vma;
>> @@ -331,15 +331,7 @@ static void __i915_gem_free_objects(struct 
>> drm_i915_private *i915,
>>               continue;
>>           }
>>   -        if (!i915_gem_object_trylock(obj, NULL)) {
>> -            /* busy, toss it back to the pile */
>> -            if (llist_add(&obj->freed, &i915->mm.free_list))
>> -                queue_delayed_work(i915->wq, &i915->mm.free_work, 
>> msecs_to_jiffies(10));
>> -            continue;
>> -        }
>> -
>>           __i915_gem_object_pages_fini(obj);
>> -        i915_gem_object_unlock(obj);
>>           __i915_gem_free_object(obj);
>>             /* But keep the pointer alive for RCU-protected lookups */
>> @@ -359,7 +351,7 @@ void i915_gem_flush_free_objects(struct 
>> drm_i915_private *i915)
>>   static void __i915_gem_free_work(struct work_struct *work)
>>   {
>>       struct drm_i915_private *i915 =
>> -        container_of(work, struct drm_i915_private, mm.free_work.work);
>> +        container_of(work, struct drm_i915_private, mm.free_work);
>>         i915_gem_flush_free_objects(i915);
>>   }
>> @@ -391,7 +383,7 @@ static void i915_gem_free_object(struct 
>> drm_gem_object *gem_obj)
>>        */
>>         if (llist_add(&obj->freed, &i915->mm.free_list))
>> -        queue_delayed_work(i915->wq, &i915->mm.free_work, 0);
>> +        queue_work(i915->wq, &i915->mm.free_work);
>>   }
>>     void __i915_gem_object_flush_frontbuffer(struct 
>> drm_i915_gem_object *obj,
>> @@ -745,7 +737,7 @@ bool i915_gem_object_needs_ccs_pages(struct 
>> drm_i915_gem_object *obj)
>>     void i915_gem_init__objects(struct drm_i915_private *i915)
>>   {
>> -    INIT_DELAYED_WORK(&i915->mm.free_work, __i915_gem_free_work);
>> +    INIT_WORK(&i915->mm.free_work, __i915_gem_free_work);
>>   }
>>     void i915_objects_module_exit(void)
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>> b/drivers/gpu/drm/i915/i915_drv.h
>> index d25647be25d1..086bbe8945d6 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -247,7 +247,7 @@ struct i915_gem_mm {
>>        * List of objects which are pending destruction.
>>        */
>>       struct llist_head free_list;
>> -    struct delayed_work free_work;
>> +    struct work_struct free_work;
>>       /**
>>        * Count of objects pending destructions. Used to skip needlessly
>>        * waiting on an RCU barrier if no objects are waiting to be 
>> freed.
>> @@ -1378,7 +1378,7 @@ static inline void 
>> i915_gem_drain_freed_objects(struct drm_i915_private *i915)
>>        * armed the work again.
>>        */
>>       while (atomic_read(&i915->mm.free_count)) {
>> -        flush_delayed_work(&i915->mm.free_work);
>> +        flush_work(&i915->mm.free_work);
>>           flush_delayed_work(&i915->bdev.wq);
>>           rcu_barrier();
>>       }
