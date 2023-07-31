Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F317691DC
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 11:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DA6F10E192;
	Mon, 31 Jul 2023 09:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD97D10E187
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 09:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690796076; x=1722332076;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=lVxXRPTXER37A2Ku7oDawoTqqDCse3C98XXUHE7pmMs=;
 b=Ry4ixJerKg8kV46bW3gPw5iQJZzqpUjQ8ga2VojohLKg0gkVZT21YGOV
 5WAGI5RMxOzYsglIhGLhGyUcZBo317E3JBdpB7lBndERdWBUM6qS4JSwq
 4+7NewFytirhWy8dRjXXRsgCh7VvkY2JEngppQq/waDFQ93UwntMKHdNJ
 //cJj9jwwsLTeDg/t3TGNqKR2dRZGpQeiydHr2czbLoTGLKPFMF9Fd+5+
 3CkZ8ZSayDwV2MOY3+IbvjeW8T7kVXwviswKnIwOY+XDxgOzs3N49AUCO
 3pw6H4QML+/qs8JnTWj3Gu6V1Z8gnFOdCMznFUGjoS0r5ooRJiPX1JWHE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="348570171"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="348570171"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 02:34:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="678251663"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="678251663"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.62.140])
 ([10.252.62.140])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 02:34:34 -0700
Message-ID: <d20a2bcd-f64e-a00b-6a56-c28abba235d9@linux.intel.com>
Date: Mon, 31 Jul 2023 11:34:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230727064142.751976-1-jouni.hogander@intel.com>
 <20230727064142.751976-3-jouni.hogander@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230727064142.751976-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v4 2/4] drm/i915: Add getter/setter for
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/27/2023 8:41 AM, Jouni Högander wrote:
> Add getter/setter for i915_gem_object->frontbuffer and use it instead of
> directly touching i915_gem_object->frontbuffer frontbuffer pointer.
>
> v3:
>   - Fix intel_frontbuffer_get return value
>   - s/front_ret/cur/
> v2: Move getter/setter into i915_gem_object.h
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_frontbuffer.c  | 20 ++----
>   .../gpu/drm/i915/display/intel_frontbuffer.h  | 27 --------
>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |  4 +-
>   drivers/gpu/drm/i915/gem/i915_gem_object.h    | 67 +++++++++++++++++++
>   drivers/gpu/drm/i915/i915_vma.c               |  2 +-
>   5 files changed, 77 insertions(+), 43 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index 3ce0436a0c7d..56f45370fee0 100644
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
> +	struct intel_frontbuffer *front, *cur;
>   
> -	front = __intel_frontbuffer_get(obj);
> +	front = i915_gem_object_get_frontbuffer(obj);
>   	if (front)
>   		return front;
>   
> @@ -269,17 +269,11 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
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
> +	cur = i915_gem_object_set_frontbuffer(obj, front);
>   	spin_unlock(&i915->display.fb_tracking.lock);
> -
> -	return front;
> +	if (cur != front)
> +		kfree(front);
> +	return cur;
>   }
>   
>   void intel_frontbuffer_put(struct intel_frontbuffer *front)
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
> index 97ac6fb37958..148468098082 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -469,7 +469,7 @@ void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
>   {
>   	struct intel_frontbuffer *front;
>   
> -	front = __intel_frontbuffer_get(obj);
> +	front = i915_gem_object_get_frontbuffer(obj);
>   	if (front) {
>   		intel_frontbuffer_flush(front, origin);
>   		intel_frontbuffer_put(front);
> @@ -481,7 +481,7 @@ void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
>   {
>   	struct intel_frontbuffer *front;
>   
> -	front = __intel_frontbuffer_get(obj);
> +	front = i915_gem_object_get_frontbuffer(obj);
>   	if (front) {
>   		intel_frontbuffer_invalidate(front, origin);
>   		intel_frontbuffer_put(front);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 884a17275b3a..112c130cfaaa 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -891,4 +891,71 @@ static inline int i915_gem_object_userptr_validate(struct drm_i915_gem_object *o
>   
>   #endif
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
> +static inline struct intel_frontbuffer *
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
> + * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer. This
> + * function is protected by i915->display.fb_tracking.lock
> + *
> + * Return: pointer to frontbuffer which was set.
> + */
> +static inline struct intel_frontbuffer *
> +i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
> +				struct intel_frontbuffer *front)
> +{
> +	struct intel_frontbuffer *cur = front;
> +
> +	if (!front) {
> +		RCU_INIT_POINTER(obj->frontbuffer, NULL);
> +	} else if (rcu_access_pointer(obj->frontbuffer)) {
> +		cur = rcu_dereference_protected(obj->frontbuffer, true);
> +		kref_get(&cur->ref);
> +	} else {
> +		drm_gem_object_get(intel_bo_to_drm_bo(obj));
> +		rcu_assign_pointer(obj->frontbuffer, front);
> +	}
> +
> +	return cur;
> +}
> +
>   #endif
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index af2e49f90f2f..e90b9c812180 100644
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
