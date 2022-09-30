Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 804505F0D20
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 16:10:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035F510ED12;
	Fri, 30 Sep 2022 14:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4046510ED12
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 14:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664547045; x=1696083045;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=AnB+DTbK9LVuovJ8oFk6YOoZl8MoSDnXk4u5wvCXPXU=;
 b=BWDvy2DCbUEeMp5Xl+lofcz/AN8snuOYeRLyvWr1axe/GaEpJlZo+7Nw
 0hQ8BlUP8qoyXwVWA3GuGobadtiSfN+hLDWwpDuXBJed9FYMJmqg6L8kN
 fOMzd6wG+J5MC9CARPnZ5RQq9uvoxOiimsUSDI4Mx+MPHXpstxETS+l7d
 2CuWlqcKXO+JQ5MnuqgT0BeNUkrn2JPSCUf6NfVUzzrX37Dn4pXaxjd/4
 TqvCM5yi89gD4cmbi+QIQ//veBmIApdX3N4amLE4uvy2X3ebt2UagarCI
 MHhdSq9m2KEZbp+msHRfE5LZ3OteaEcgFJWUWRtd1vXiZSNBcCQOqAavj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="302171166"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="302171166"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 07:10:44 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="624998977"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="624998977"
Received: from dtrawins-mobl1.ger.corp.intel.com (HELO [10.252.7.39])
 ([10.252.7.39])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 07:10:43 -0700
Message-ID: <09fcae20-0f50-d43f-336e-7f82293ce97c@intel.com>
Date: Fri, 30 Sep 2022 15:10:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.0
Content-Language: en-GB
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220930134731.389416-1-matthew.auld@intel.com>
 <Yzb2iHBSFpr6i8B2@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <Yzb2iHBSFpr6i8B2@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/display: consider
 DG2_RC_CCS_CC when migrating buffers
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>,
 Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 30/09/2022 15:00, Ville Syrjälä wrote:
> On Fri, Sep 30, 2022 at 02:47:30PM +0100, Matthew Auld wrote:
>> For these types of display buffers, we need to able to CPU access some
>> part of the backing memory in prepare_plane_clear_colors(). As a result
>> we need to ensure we always place in the mappable part of lmem, which
>> becomes necessary on small-bar systems.
>>
>> Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
>> Reported-by: Jianshui Yu <jianshui.yu@intel.com>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_fb_pin.c   | 11 ++++--
>>   drivers/gpu/drm/i915/gem/i915_gem_object.c    | 37 ++++++++++++++++++-
>>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |  4 ++
>>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  5 ++-
>>   5 files changed, 53 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
>> index c86e5d4ee016..f83cf41ddd63 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
>> @@ -139,9 +139,14 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
>>   	ret = i915_gem_object_lock(obj, &ww);
>>   	if (!ret && phys_cursor)
>>   		ret = i915_gem_object_attach_phys(obj, alignment);
>> -	else if (!ret && HAS_LMEM(dev_priv))
>> -		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
>> -	/* TODO: Do we need to sync when migration becomes async? */
> 
> Why is the TODO being removed?

Just because we now know we do a fence sync below, when binding into the 
GGTT (this comment was from before we had async moves/migrations). I can 
a make a note of that in the commit message. Or perhaps change the 
comment to "Should we rather make this async, currently we sync below 
which is maybe not optimal?" :)

> 
>> +	else if (!ret && HAS_LMEM(dev_priv)) {
>> +		unsigned int flags = obj->flags;
>> +
> 
> It might not be super obvious what is going on here, so maybe add
> a comment stating the CPU needs to read the clear color from the bo?

Sure.

> 
>> +		if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
>> +			flags &= ~I915_BO_ALLOC_GPU_ONLY;
> 
> Hmm. Do we require the clear color plane to be in the same bo as the
> rest of the planes? I know we require the main and aux to be in the
> same bo, but dunno why we would require that also of the clear color
> plane (apart from being lazy perhaps).

I have no idea :)

> 
>> +		ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
>> +						flags);
>> +	}
>>   	if (!ret)
>>   		ret = i915_gem_object_pin_pages(obj);
>>   	if (ret)
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> index 7ff9c7877bec..369006c5317f 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> @@ -652,6 +652,41 @@ bool i915_gem_object_can_migrate(struct drm_i915_gem_object *obj,
>>   int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
>>   			    struct i915_gem_ww_ctx *ww,
>>   			    enum intel_region_id id)
>> +{
>> +	return __i915_gem_object_migrate(obj, ww, id, obj->flags);
>> +}
>> +
>> +/**
>> + * __i915_gem_object_migrate - Migrate an object to the desired region id, with
>> + * control of the extra flags
>> + * @obj: The object to migrate.
>> + * @ww: An optional struct i915_gem_ww_ctx. If NULL, the backend may
>> + * not be successful in evicting other objects to make room for this object.
>> + * @id: The region id to migrate to.
>> + * @flags: The object flags. Normally just obj->flags.
>> + *
>> + * Attempt to migrate the object to the desired memory region. The
>> + * object backend must support migration and the object may not be
>> + * pinned, (explicitly pinned pages or pinned vmas). The object must
>> + * be locked.
>> + * On successful completion, the object will have pages pointing to
>> + * memory in the new region, but an async migration task may not have
>> + * completed yet, and to accomplish that, i915_gem_object_wait_migration()
>> + * must be called.
>> + *
>> + * Note: the @ww parameter is not used yet, but included to make sure
>> + * callers put some effort into obtaining a valid ww ctx if one is
>> + * available.
>> + *
>> + * Return: 0 on success. Negative error code on failure. In particular may
>> + * return -ENXIO on lack of region space, -EDEADLK for deadlock avoidance
>> + * if @ww is set, -EINTR or -ERESTARTSYS if signal pending, and
>> + * -EBUSY if the object is pinned.
>> + */
>> +int __i915_gem_object_migrate(struct drm_i915_gem_object *obj,
>> +			      struct i915_gem_ww_ctx *ww,
>> +			      enum intel_region_id id,
>> +			      unsigned int flags)
>>   {
>>   	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>   	struct intel_memory_region *mr;
>> @@ -672,7 +707,7 @@ int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
>>   		return 0;
>>   	}
>>   
>> -	return obj->ops->migrate(obj, mr);
>> +	return obj->ops->migrate(obj, mr, flags);
>>   }
>>   
>>   /**
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> index a3b7551a57fc..6b9ecff42bb5 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> @@ -612,6 +612,10 @@ bool i915_gem_object_migratable(struct drm_i915_gem_object *obj);
>>   int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
>>   			    struct i915_gem_ww_ctx *ww,
>>   			    enum intel_region_id id);
>> +int __i915_gem_object_migrate(struct drm_i915_gem_object *obj,
>> +			      struct i915_gem_ww_ctx *ww,
>> +			      enum intel_region_id id,
>> +			      unsigned int flags);
>>   
>>   bool i915_gem_object_can_migrate(struct drm_i915_gem_object *obj,
>>   				 enum intel_region_id id);
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> index 40305e2bcd49..d0d6772e6f36 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> @@ -107,7 +107,8 @@ struct drm_i915_gem_object_ops {
>>   	 * pinning or for as long as the object lock is held.
>>   	 */
>>   	int (*migrate)(struct drm_i915_gem_object *obj,
>> -		       struct intel_memory_region *mr);
>> +		       struct intel_memory_region *mr,
>> +		       unsigned int flags);
>>   
>>   	void (*release)(struct drm_i915_gem_object *obj);
>>   
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> index 3dc6acfcf4ec..5bed353ee9bc 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>> @@ -848,9 +848,10 @@ static int __i915_ttm_migrate(struct drm_i915_gem_object *obj,
>>   }
>>   
>>   static int i915_ttm_migrate(struct drm_i915_gem_object *obj,
>> -			    struct intel_memory_region *mr)
>> +			    struct intel_memory_region *mr,
>> +			    unsigned int flags)
>>   {
>> -	return __i915_ttm_migrate(obj, mr, obj->flags);
>> +	return __i915_ttm_migrate(obj, mr, flags);
>>   }
>>   
>>   static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
>> -- 
>> 2.37.3
> 
