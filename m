Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AC4763910
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 16:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5319810E480;
	Wed, 26 Jul 2023 14:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE7110E480
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 14:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690381627; x=1721917627;
 h=message-id:date:mime-version:subject:to:references:from:
 cc:in-reply-to:content-transfer-encoding;
 bh=bLBtUIeK0RGwczz3a0b8/FiTRWJjXqJh2udPPxQmLHc=;
 b=OaJ3hNexpye8n14cbS2oteKOwfWel2iZzDGvBtmuzzQY9uC1TyeiZVsy
 xMmjvwaiWFVCg+h8JoyArgGVkZtydAIF6PpKLbIuHFuCeOCJkrO39rQ9h
 CTh7tmhaV3TWXwtS7fP5vMby6PtR/3FFzVSDJVExHopr+P1Fl3dg+/yzl
 CBfV1Rxu5XyUjGA/3f0/rsqeiQGJp3aFO2doRQsEvo6G5uK2otp/iRqNA
 m/Fv1QXcZwPLsI//YEFOt9pc/K9ngRFsAAH44EcBnLju5VOGIo1v0bVoe
 N3Y9SoOmX3pY93dl9K9W7u91dIq46rNf/6sI4cN05+Yj+1f8QLLPZ47qM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="366910122"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="366910122"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 07:27:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="850482131"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="850482131"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.38.43])
 ([10.249.38.43])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 07:27:05 -0700
Message-ID: <76a67e7f-5e71-ce35-d80a-44bf824a7929@linux.intel.com>
Date: Wed, 26 Jul 2023 16:27:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230529062723.1928520-1-jouni.hogander@intel.com>
 <20230529062723.1928520-3-jouni.hogander@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230529062723.1928520-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Add getter/setter for
 i915_gem_object->frontbuffer
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jouni,

On 5/29/2023 8:27 AM, Jouni Högander wrote:
> Add getter/setter for i915_gem_object->frontbuffer and use it instead of
> directly touching i915_gem_object->frontbuffer frontbuffer pointer.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_frontbuffer.c  | 18 ++---
>   .../gpu/drm/i915/display/intel_frontbuffer.h  | 27 -------
>   drivers/gpu/drm/i915/gem/i915_gem_object.c    | 70 ++++++++++++++++++-
>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |  6 ++
>   drivers/gpu/drm/i915/i915_vma.c               |  2 +-
>   5 files changed, 81 insertions(+), 42 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index 3ce0436a0c7d..41ac65c98720 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -237,7 +237,7 @@ static void frontbuffer_release(struct kref *ref)
>   	}
>   	spin_unlock(&obj->vma.lock);
>   
> -	RCU_INIT_POINTER(obj->frontbuffer, NULL);
> +	i915_gem_object_set_frontbuffer(obj, NULL);
>   	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
>   
>   	i915_active_fini(&front->write);
> @@ -250,9 +250,9 @@ struct intel_frontbuffer *
>   intel_frontbuffer_get(struct drm_i915_gem_object *obj)
>   {
>   	struct drm_i915_private *i915 = intel_bo_to_i915(obj);
> -	struct intel_frontbuffer *front;
> +	struct intel_frontbuffer *front, *front_ret;
>   
> -	front = __intel_frontbuffer_get(obj);
> +	front = i915_gem_object_get_frontbuffer(obj);
>   	if (front)
>   		return front;
>   
> @@ -269,16 +269,10 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
>   			 I915_ACTIVE_RETIRE_SLEEPS);
>   
>   	spin_lock(&i915->display.fb_tracking.lock);
> -	if (rcu_access_pointer(obj->frontbuffer)) {
> -		kfree(front);
> -		front = rcu_dereference_protected(obj->frontbuffer, true);
> -		kref_get(&front->ref);
> -	} else {
> -		i915_gem_object_get(obj);
> -		rcu_assign_pointer(obj->frontbuffer, front);
> -	}
> +	front_ret = i915_gem_object_set_frontbuffer(obj, front);
>   	spin_unlock(&i915->display.fb_tracking.lock);
> -
> +	if (front_ret != front)
> +		kfree(front);
>   	return front;


Should be "return front_ret" here or better s/front_ret/cur/

>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> index 3c474ed937fb..eeccc847331d 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> @@ -75,33 +75,6 @@ void intel_frontbuffer_flip(struct drm_i915_private *i915,
>   
>   void intel_frontbuffer_put(struct intel_frontbuffer *front);
>   
> -static inline struct intel_frontbuffer *
> -__intel_frontbuffer_get(const struct drm_i915_gem_object *obj)
> -{
> -	struct intel_frontbuffer *front;
> -
> -	if (likely(!rcu_access_pointer(obj->frontbuffer)))
> -		return NULL;
> -
> -	rcu_read_lock();
> -	do {
> -		front = rcu_dereference(obj->frontbuffer);
> -		if (!front)
> -			break;
> -
> -		if (unlikely(!kref_get_unless_zero(&front->ref)))
> -			continue;
> -
> -		if (likely(front == rcu_access_pointer(obj->frontbuffer)))
> -			break;
> -
> -		intel_frontbuffer_put(front);
> -	} while (1);
> -	rcu_read_unlock();
> -
> -	return front;
> -}
> -
>   struct intel_frontbuffer *
>   intel_frontbuffer_get(struct drm_i915_gem_object *obj);
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 46a19b099ec8..6945e903e106 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -463,7 +463,7 @@ void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
>   {
>   	struct intel_frontbuffer *front;
>   
> -	front = __intel_frontbuffer_get(obj);
> +	front = i915_gem_object_get_frontbuffer(obj);
>   	if (front) {
>   		intel_frontbuffer_flush(front, origin);
>   		intel_frontbuffer_put(front);
> @@ -475,7 +475,7 @@ void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
>   {
>   	struct intel_frontbuffer *front;
>   
> -	front = __intel_frontbuffer_get(obj);
> +	front = i915_gem_object_get_frontbuffer(obj);
>   	if (front) {
>   		intel_frontbuffer_invalidate(front, origin);
>   		intel_frontbuffer_put(front);
> @@ -952,6 +952,72 @@ bool i915_gem_object_has_unknown_state(struct drm_i915_gem_object *obj)
>   	return obj->mm.unknown_state;
>   }
>   
> +/**
> + * i915_gem_object_get_frontbuffer - Get the object's frontbuffer
> + * @obj: The object whose frontbuffer to get.
> + *
> + * Get pointer to object's frontbuffer if such exists. Please note that RCU
> + * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer.
> + *
> + * Return: pointer to object's frontbuffer is such exists or NULL
> + */
> +struct intel_frontbuffer *
> +i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
> +{
> +	struct intel_frontbuffer *front;
> +
> +	if (likely(!rcu_access_pointer(obj->frontbuffer)))
> +		return NULL;
> +
> +	rcu_read_lock();
> +	do {
> +		front = rcu_dereference(obj->frontbuffer);
> +		if (!front)
> +			break;
> +
> +		if (unlikely(!kref_get_unless_zero(&front->ref)))
> +			continue;
> +
> +		if (likely(front == rcu_access_pointer(obj->frontbuffer)))
> +			break;
> +
> +		intel_frontbuffer_put(front);
> +	} while (1);
> +	rcu_read_unlock();
> +
> +	return front;
> +}
> +
> +/**
> + * i915_gem_object_set_frontbuffer - Set the object's frontbuffer
> + * @obj: The object whose frontbuffer to set.
> + * @front: The frontbuffer to set
> + *
> + * Set object's frontbuffer pointer. If frontbuffer is already set for the
> + * object keep it and return it's pointer to the caller. Please note that RCU
> + * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer.
> + *
> + * Return: pointer to frontbuffer which was set.
> + */
> +struct intel_frontbuffer *
> +i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
> +				struct intel_frontbuffer *front)
> +{
> +	struct intel_frontbuffer *front_ret = front;
> +
> +	if (!front) {
> +		RCU_INIT_POINTER(obj->frontbuffer, NULL);
> +	} else if (rcu_access_pointer(obj->frontbuffer)) {
> +		front_ret = rcu_dereference_protected(obj->frontbuffer, true);

Could you please add a comment here stating that this function is 
protected by i915->display.fb_tracking.lock or consider moving the lock 
handling to this function?

Otherwise this is bit confusing.


Regards,

Nirmo


> +		kref_get(&front_ret->ref);
> +	} else {
> +		drm_gem_object_get(&intel_bo_to_drm_bo(obj));
> +		rcu_assign_pointer(obj->frontbuffer, front);
> +	}
> +
> +	return front_ret;
> +}
> +
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>   #include "selftests/huge_gem_object.c"
>   #include "selftests/huge_pages.c"
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 884a17275b3a..69c5fa91152a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -891,4 +891,10 @@ static inline int i915_gem_object_userptr_validate(struct drm_i915_gem_object *o
>   
>   #endif
>   
> +struct intel_frontbuffer *
> +i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj);
> +struct intel_frontbuffer *
> +i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
> +				struct intel_frontbuffer *front);
> +
>   #endif
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index ffb425ba591c..c66ff2157f6a 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1908,7 +1908,7 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
>   	if (flags & EXEC_OBJECT_WRITE) {
>   		struct intel_frontbuffer *front;
>   
> -		front = __intel_frontbuffer_get(obj);
> +		front = i915_gem_object_get_frontbuffer(obj);
>   		if (unlikely(front)) {
>   			if (intel_frontbuffer_invalidate(front, ORIGIN_CS))
>   				i915_active_add_request(&front->write, rq);
