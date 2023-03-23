Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8886C6135
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 09:00:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CFD10EA43;
	Thu, 23 Mar 2023 08:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FA6A10EA43;
 Thu, 23 Mar 2023 08:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679558455; x=1711094455;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bSKsCiwKEcMLBa0evmEIV2cW2Z+RXVvhMh4pXPysk9I=;
 b=JEdvA2qVEabu8fNTuBQFm7tMTjSsF2829BDS9uml4s8nn76/tyndZoLD
 2cZGM1v8LxKfXDuzek3uXeGeUh1ergRr1p1B8TxG+7bjGVN1cwpUPiQSu
 K7tBEEw2pfnCEiyEftYlWTPg7TM8nnDdOy7GIN7MtibviwW6bSmSCmjLD
 RbPXUK3vh7NDGEqofIyvyK2h+e+NmLEUHqpm+xogzWFm25U+PhwVhTgs9
 G+V7YlxiSNRl8qAPJk3uhLOQ8AppnBQmqKe9e5wN28svPdRryS8pmsbc0
 vZaX5s30sXv7oeuALYCJzMo0t5V4jgAc4/0ApziefzQqtb+ymxKN1wrQd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="404310796"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="404310796"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 01:00:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="659503088"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="659503088"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.62.49])
 ([10.252.62.49])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 01:00:52 -0700
Message-ID: <f1d57967-0671-88c0-5c08-3b79ec188360@linux.intel.com>
Date: Thu, 23 Mar 2023 09:00:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das
 <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230320100903.23588-1-nirmoy.das@intel.com>
 <c1b797a5-92d6-6590-9c47-6606ec409a12@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <c1b797a5-92d6-6590-9c47-6606ec409a12@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2: 1/3] drm/i915: Add a function to mmap
 framebuffer obj
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
Cc: Jani Nikula <jani.nikula@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/20/2023 3:02 PM, Andrzej Hajda wrote:
> On 20.03.2023 11:09, Nirmoy Das wrote:
>> Implement i915_gem_fb_mmap() to enable fb_ops.fb_mmap()
>> callback for i915's framebuffer objects.
>>
>> v2: add a comment why i915_gem_object_get() needed(Andi).
>>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>


Thanks, Andrzej.


Going to resend it without RFC now as there are two r-bs and no one 
complained.


Regards,

Nirmoy

>
> Regards
> Andrzej
>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_mman.c | 127 +++++++++++++++--------
>>   drivers/gpu/drm/i915/gem/i915_gem_mman.h |   2 +-
>>   2 files changed, 83 insertions(+), 46 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> index d3c1dee16af2..341e952d3510 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> @@ -927,53 +927,15 @@ static struct file *mmap_singleton(struct 
>> drm_i915_private *i915)
>>       return file;
>>   }
>>   -/*
>> - * This overcomes the limitation in drm_gem_mmap's assignment of a
>> - * drm_gem_object as the vma->vm_private_data. Since we need to
>> - * be able to resolve multiple mmap offsets which could be tied
>> - * to a single gem object.
>> - */
>> -int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
>> +static int
>> +i915_gem_object_mmap(struct drm_i915_gem_object *obj,
>> +             struct i915_mmap_offset *mmo,
>> +             struct vm_area_struct *vma)
>>   {
>> -    struct drm_vma_offset_node *node;
>> -    struct drm_file *priv = filp->private_data;
>> -    struct drm_device *dev = priv->minor->dev;
>> -    struct drm_i915_gem_object *obj = NULL;
>> -    struct i915_mmap_offset *mmo = NULL;
>> +    struct drm_i915_private *i915 = to_i915(obj->base.dev);
>> +    struct drm_device *dev = &i915->drm;
>>       struct file *anon;
>>   -    if (drm_dev_is_unplugged(dev))
>> -        return -ENODEV;
>> -
>> -    rcu_read_lock();
>> -    drm_vma_offset_lock_lookup(dev->vma_offset_manager);
>> -    node = drm_vma_offset_exact_lookup_locked(dev->vma_offset_manager,
>> -                          vma->vm_pgoff,
>> -                          vma_pages(vma));
>> -    if (node && drm_vma_node_is_allowed(node, priv)) {
>> -        /*
>> -         * Skip 0-refcnted objects as it is in the process of being
>> -         * destroyed and will be invalid when the vma manager lock
>> -         * is released.
>> -         */
>> -        if (!node->driver_private) {
>> -            mmo = container_of(node, struct i915_mmap_offset, 
>> vma_node);
>> -            obj = i915_gem_object_get_rcu(mmo->obj);
>> -
>> -            GEM_BUG_ON(obj && obj->ops->mmap_ops);
>> -        } else {
>> -            obj = i915_gem_object_get_rcu
>> -                (container_of(node, struct drm_i915_gem_object,
>> -                          base.vma_node));
>> -
>> -            GEM_BUG_ON(obj && !obj->ops->mmap_ops);
>> -        }
>> -    }
>> -    drm_vma_offset_unlock_lookup(dev->vma_offset_manager);
>> -    rcu_read_unlock();
>> -    if (!obj)
>> -        return node ? -EACCES : -EINVAL;
>> -
>>       if (i915_gem_object_is_readonly(obj)) {
>>           if (vma->vm_flags & VM_WRITE) {
>>               i915_gem_object_put(obj);
>> @@ -1005,7 +967,7 @@ int i915_gem_mmap(struct file *filp, struct 
>> vm_area_struct *vma)
>>       if (obj->ops->mmap_ops) {
>>           vma->vm_page_prot = 
>> pgprot_decrypted(vm_get_page_prot(vma->vm_flags));
>>           vma->vm_ops = obj->ops->mmap_ops;
>> -        vma->vm_private_data = node->driver_private;
>> +        vma->vm_private_data = obj->base.vma_node.driver_private;
>>           return 0;
>>       }
>>   @@ -1043,6 +1005,81 @@ int i915_gem_mmap(struct file *filp, struct 
>> vm_area_struct *vma)
>>       return 0;
>>   }
>>   +/*
>> + * This overcomes the limitation in drm_gem_mmap's assignment of a
>> + * drm_gem_object as the vma->vm_private_data. Since we need to
>> + * be able to resolve multiple mmap offsets which could be tied
>> + * to a single gem object.
>> + */
>> +int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
>> +{
>> +    struct drm_vma_offset_node *node;
>> +    struct drm_file *priv = filp->private_data;
>> +    struct drm_device *dev = priv->minor->dev;
>> +    struct drm_i915_gem_object *obj = NULL;
>> +    struct i915_mmap_offset *mmo = NULL;
>> +
>> +    if (drm_dev_is_unplugged(dev))
>> +        return -ENODEV;
>> +
>> +    rcu_read_lock();
>> +    drm_vma_offset_lock_lookup(dev->vma_offset_manager);
>> +    node = drm_vma_offset_exact_lookup_locked(dev->vma_offset_manager,
>> +                          vma->vm_pgoff,
>> +                          vma_pages(vma));
>> +    if (node && drm_vma_node_is_allowed(node, priv)) {
>> +        /*
>> +         * Skip 0-refcnted objects as it is in the process of being
>> +         * destroyed and will be invalid when the vma manager lock
>> +         * is released.
>> +         */
>> +        if (!node->driver_private) {
>> +            mmo = container_of(node, struct i915_mmap_offset, 
>> vma_node);
>> +            obj = i915_gem_object_get_rcu(mmo->obj);
>> +
>> +            GEM_BUG_ON(obj && obj->ops->mmap_ops);
>> +        } else {
>> +            obj = i915_gem_object_get_rcu
>> +                (container_of(node, struct drm_i915_gem_object,
>> +                          base.vma_node));
>> +
>> +            GEM_BUG_ON(obj && !obj->ops->mmap_ops);
>> +        }
>> +    }
>> +    drm_vma_offset_unlock_lookup(dev->vma_offset_manager);
>> +    rcu_read_unlock();
>> +    if (!obj)
>> +        return node ? -EACCES : -EINVAL;
>> +
>> +    return i915_gem_object_mmap(obj, mmo, vma);
>> +}
>> +
>> +int i915_gem_fb_mmap(struct drm_i915_gem_object *obj, struct 
>> vm_area_struct *vma)
>> +{
>> +    struct drm_i915_private *i915 = to_i915(obj->base.dev);
>> +    struct drm_device *dev = &i915->drm;
>> +    struct i915_mmap_offset *mmo = NULL;
>> +    enum i915_mmap_type mmap_type;
>> +    struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
>> +
>> +    if (drm_dev_is_unplugged(dev))
>> +        return -ENODEV;
>> +
>> +    mmap_type = i915_ggtt_has_aperture(ggtt) ? I915_MMAP_TYPE_GTT : 
>> I915_MMAP_TYPE_WC;
>> +    mmo = mmap_offset_attach(obj, mmap_type, NULL);
>> +    if (!mmo)
>> +        return -ENODEV;
>> +
>> +    /*
>> +     * When we install vm_ops for mmap we are too late for
>> +     * the vm_ops->open() which increases the ref_count of
>> +     * this obj and then it gets decreased by the vm_ops->close().
>> +     * To balance this increase the obj ref_count here.
>> +     */
>> +    obj = i915_gem_object_get(mmo->obj);
>> +    return i915_gem_object_mmap(obj, mmo, vma);
>> +}
>> +
>>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>>   #include "selftests/i915_gem_mman.c"
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h 
>> b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>> index 1fa91b3033b3..196417fd0f5c 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>> @@ -29,5 +29,5 @@ void i915_gem_object_release_mmap_gtt(struct 
>> drm_i915_gem_object *obj);
>>     void i915_gem_object_runtime_pm_release_mmap_offset(struct 
>> drm_i915_gem_object *obj);
>>   void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object 
>> *obj);
>> -
>> +int i915_gem_fb_mmap(struct drm_i915_gem_object *obj, struct 
>> vm_area_struct *vma);
>>   #endif
>
