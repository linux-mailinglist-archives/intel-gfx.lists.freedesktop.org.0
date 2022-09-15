Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C92265B9D2C
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 16:33:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98FE510EB56;
	Thu, 15 Sep 2022 14:33:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A1D810EB4C
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 14:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663252381; x=1694788381;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=u49iYiLmjLsjVyPx2gEBnNl0zkY7bngsEVzFtPgVkEQ=;
 b=Ab4WHR43BYb5anw/o5WIXACOs8RKibdyP3L8p51Lw+a4l5UxsDXj/OW/
 QDQmcpYDmn8/2GOztdfjsbBKYa7Dkw53Gt81d8C6k2VSXcE51BVo/FyqT
 J6UzF/CqqMfm73duB3yJKjk+Kyl3cmI2JVRjgWnB76FBa2v0Xo42LG91V
 TLZEKdKqXuBwQZD7TSu5zqWzxTHsReCOhPQmawa0P1NaodUVqkJ983yVp
 m1G6TyaZGS/0HYQ6UX3s6x+jvFQYvRVFgxsNCuY7jUdgJ1OYugU38wS0y
 GRz+y3kf0Omq0cPr9+uqFbp6vzkvs6Zp/VTJF18rvHTh6V3dpSOgqJMFp A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="279115183"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="279115183"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 07:33:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="721023794"
Received: from alishana-mobl1.ger.corp.intel.com (HELO [10.213.218.26])
 ([10.213.218.26])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 07:32:59 -0700
Message-ID: <ba980ae0-ea5a-5bdc-e87b-e56191aedc6f@linux.intel.com>
Date: Thu, 15 Sep 2022 15:32:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220915103311.5634-1-anshuman.gupta@intel.com>
 <20220915103311.5634-2-anshuman.gupta@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220915103311.5634-2-anshuman.gupta@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC 1/1] drm/i915/dgfx: Handling of pin_map
 against rpm
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
Cc: matthew.auld@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/09/2022 11:33, Anshuman Gupta wrote:
> If i915 gem obj lies in lmem, then i915_gem_object_pin_map
> need to grab a rpm wakeref to make sure gfx PCIe endpoint
> function stays in D0 state during any access to mapping
> returned by i915_gem_object_pin_map().
> Subsequently i915_gem_object_upin_map will put the wakref as well.
> 
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_object.c       |  2 ++
>   drivers/gpu/drm/i915/gem/i915_gem_object.h       |  5 +++++
>   drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 14 ++++++++++++++
>   drivers/gpu/drm/i915/gem/i915_gem_pages.c        |  8 ++++++++
>   4 files changed, 29 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 85482a04d158..f291f990838d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -95,6 +95,7 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
>   	mutex_init(&obj->mm.get_page.lock);
>   	INIT_RADIX_TREE(&obj->mm.get_dma_page.radix, GFP_KERNEL | __GFP_NOWARN);
>   	mutex_init(&obj->mm.get_dma_page.lock);
> +	mutex_init(&obj->wakeref_lock);
>   }
>   
>   /**
> @@ -110,6 +111,7 @@ void __i915_gem_object_fini(struct drm_i915_gem_object *obj)
>   {
>   	mutex_destroy(&obj->mm.get_page.lock);
>   	mutex_destroy(&obj->mm.get_dma_page.lock);
> +	mutex_destroy(&obj->wakeref_lock);
>   	dma_resv_fini(&obj->base._resv);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 7317d4102955..b31ac6e4c272 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -501,6 +501,11 @@ static inline void i915_gem_object_flush_map(struct drm_i915_gem_object *obj)
>    */
>   static inline void i915_gem_object_unpin_map(struct drm_i915_gem_object *obj)
>   {
> +	mutext_lock(obj->wakeref_lock);
> +	if (!--obj->wakeref_count)

Bug here - incremented only for i915_gem_object_is_lmem, decremented for 
all.

a)
Use i915_gem_object_is_lmem here? Is the answer it gives stable across 
object lifetime considering placements and migration?

b)
Store the wakeref in object and release if present?

Regards,

Tvrtko

> +		intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, obj->wakeref);
> +	mutext_unlock(obj->wakeref_lock);
> +
>   	i915_gem_object_unpin_pages(obj);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index 9f6b14ec189a..34aff95a1984 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -657,6 +657,20 @@ struct drm_i915_gem_object {
>   
>   		void *gvt_info;
>   	};
> +
> +	/**
> +	 * wakeref to protect the i915 lmem iomem mappings.
> +	 * We don't pin_map an object partially that makes easy
> +	 * to track the wakeref cookie, if wakeref is already held
> +	 * then we don't need to grab it again for other pin_map.
> +	 * first pin_map will grab the wakeref and last unpin_map
> +	 * will put the wakeref.
> +	 */
> +	intel_wakeref_t wakeref;
> +	unsigned int wakeref_count;
> +
> +	/** protects the wakeref_count wakeref cookie against multiple pin_map and unpin_map */
> +	struct mutex wakeref_lock;
>   };
>   
>   static inline struct drm_i915_gem_object *
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index 4df50b049cea..b638b5413280 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -370,6 +370,14 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
>   
>   	assert_object_held(obj);
>   
> +	if (i915_gem_object_is_lmem(obj)) {
> +		mutex_lock(&obj->wakeref_lock);
> +		if (!obj->wakeref_count++)
> +			obj->wakeref =
> +				intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
> +		mutex_unlock(&obj->wakeref_lock);
> +	}
> +
>   	pinned = !(type & I915_MAP_OVERRIDE);
>   	type &= ~I915_MAP_OVERRIDE;
>   
