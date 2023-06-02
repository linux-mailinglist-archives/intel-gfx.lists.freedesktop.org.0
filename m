Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B85D97207EF
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 18:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2357110E5DD;
	Fri,  2 Jun 2023 16:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A70A10E05B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 16:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685724641; x=1717260641;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=rkmjCgcEdCO8OTxz4qCugHk1fg4q3oA9rI2DRMIjtdQ=;
 b=jg8+gxYblJ5VH8CGfQqIRDnZn8NIzNq0DDwWwgbjluv7kwCYKgvfvVdN
 j42GbTbF7n+opyec9jUEnTebuMPlgDRv6Wzj+WrpEYHhvhZ/xltsS7cNS
 G86K4ZRjekRaQTdTNLbL+fTyCAS9RXA2IVk+WYSJGavF2VnMObJocVKd6
 itRHCoT9+RyWgufMmMY0su9CsLQQ7N7pOrwtoOeHx0GJN9mP81G+ZM4CJ
 qmkjc/31l91/2Th7FOjy7yQSxSVTwdzePs+HjwOlnzoEmDGe1kbA/CTeY
 bomBFKPapcJLLBJjJS6SFVMHp2soD+LFH+kxggjqg+GF1EixclsY2487/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="353408628"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="353408628"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 09:50:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="777754396"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="777754396"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 09:50:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230530061417.2384188-3-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230530061417.2384188-1-jouni.hogander@intel.com>
 <20230530061417.2384188-3-jouni.hogander@intel.com>
Date: Fri, 02 Jun 2023 19:50:34 +0300
Message-ID: <87o7lxdd0l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915: Add getter/setter for
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

On Tue, 30 May 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Add getter/setter for i915_gem_object->frontbuffer and use it instead of
> directly touching i915_gem_object->frontbuffer frontbuffer pointer.

Before going into the details (which, at a glance, look fine) I think we
need to talk about the potential performance impact. I've never seen any
other reason for the static inlines here than avoiding a function call
when possible. Are there any other reasons? Is that a useless
micro-optimization or something that could have an impact? On what?

BR,
Jani.

>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_frontbuffer.c  | 18 ++---
>  .../gpu/drm/i915/display/intel_frontbuffer.h  | 27 -------
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    | 70 ++++++++++++++++++-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    |  6 ++
>  drivers/gpu/drm/i915/i915_vma.c               |  2 +-
>  5 files changed, 81 insertions(+), 42 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index 3ce0436a0c7d..41ac65c98720 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -237,7 +237,7 @@ static void frontbuffer_release(struct kref *ref)
>  	}
>  	spin_unlock(&obj->vma.lock);
>=20=20
> -	RCU_INIT_POINTER(obj->frontbuffer, NULL);
> +	i915_gem_object_set_frontbuffer(obj, NULL);
>  	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
>=20=20
>  	i915_active_fini(&front->write);
> @@ -250,9 +250,9 @@ struct intel_frontbuffer *
>  intel_frontbuffer_get(struct drm_i915_gem_object *obj)
>  {
>  	struct drm_i915_private *i915 =3D intel_bo_to_i915(obj);
> -	struct intel_frontbuffer *front;
> +	struct intel_frontbuffer *front, *front_ret;
>=20=20
> -	front =3D __intel_frontbuffer_get(obj);
> +	front =3D i915_gem_object_get_frontbuffer(obj);
>  	if (front)
>  		return front;
>=20=20
> @@ -269,16 +269,10 @@ intel_frontbuffer_get(struct drm_i915_gem_object *o=
bj)
>  			 I915_ACTIVE_RETIRE_SLEEPS);
>=20=20
>  	spin_lock(&i915->display.fb_tracking.lock);
> -	if (rcu_access_pointer(obj->frontbuffer)) {
> -		kfree(front);
> -		front =3D rcu_dereference_protected(obj->frontbuffer, true);
> -		kref_get(&front->ref);
> -	} else {
> -		i915_gem_object_get(obj);
> -		rcu_assign_pointer(obj->frontbuffer, front);
> -	}
> +	front_ret =3D i915_gem_object_set_frontbuffer(obj, front);
>  	spin_unlock(&i915->display.fb_tracking.lock);
> -
> +	if (front_ret !=3D front)
> +		kfree(front);
>  	return front;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.h
> index 3c474ed937fb..eeccc847331d 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> @@ -75,33 +75,6 @@ void intel_frontbuffer_flip(struct drm_i915_private *i=
915,
>=20=20
>  void intel_frontbuffer_put(struct intel_frontbuffer *front);
>=20=20
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
> -		front =3D rcu_dereference(obj->frontbuffer);
> -		if (!front)
> -			break;
> -
> -		if (unlikely(!kref_get_unless_zero(&front->ref)))
> -			continue;
> -
> -		if (likely(front =3D=3D rcu_access_pointer(obj->frontbuffer)))
> -			break;
> -
> -		intel_frontbuffer_put(front);
> -	} while (1);
> -	rcu_read_unlock();
> -
> -	return front;
> -}
> -
>  struct intel_frontbuffer *
>  intel_frontbuffer_get(struct drm_i915_gem_object *obj);
>=20=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm=
/i915/gem/i915_gem_object.c
> index 46a19b099ec8..6945e903e106 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -463,7 +463,7 @@ void __i915_gem_object_flush_frontbuffer(struct drm_i=
915_gem_object *obj,
>  {
>  	struct intel_frontbuffer *front;
>=20=20
> -	front =3D __intel_frontbuffer_get(obj);
> +	front =3D i915_gem_object_get_frontbuffer(obj);
>  	if (front) {
>  		intel_frontbuffer_flush(front, origin);
>  		intel_frontbuffer_put(front);
> @@ -475,7 +475,7 @@ void __i915_gem_object_invalidate_frontbuffer(struct =
drm_i915_gem_object *obj,
>  {
>  	struct intel_frontbuffer *front;
>=20=20
> -	front =3D __intel_frontbuffer_get(obj);
> +	front =3D i915_gem_object_get_frontbuffer(obj);
>  	if (front) {
>  		intel_frontbuffer_invalidate(front, origin);
>  		intel_frontbuffer_put(front);
> @@ -952,6 +952,72 @@ bool i915_gem_object_has_unknown_state(struct drm_i9=
15_gem_object *obj)
>  	return obj->mm.unknown_state;
>  }
>=20=20
> +/**
> + * i915_gem_object_get_frontbuffer - Get the object's frontbuffer
> + * @obj: The object whose frontbuffer to get.
> + *
> + * Get pointer to object's frontbuffer if such exists. Please note that =
RCU
> + * mechanism is used to handle e.g. ongoing removal of frontbuffer point=
er.
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
> +		front =3D rcu_dereference(obj->frontbuffer);
> +		if (!front)
> +			break;
> +
> +		if (unlikely(!kref_get_unless_zero(&front->ref)))
> +			continue;
> +
> +		if (likely(front =3D=3D rcu_access_pointer(obj->frontbuffer)))
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
> + * Set object's frontbuffer pointer. If frontbuffer is already set for t=
he
> + * object keep it and return it's pointer to the caller. Please note tha=
t RCU
> + * mechanism is used to handle e.g. ongoing removal of frontbuffer point=
er.
> + *
> + * Return: pointer to frontbuffer which was set.
> + */
> +struct intel_frontbuffer *
> +i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
> +				struct intel_frontbuffer *front)
> +{
> +	struct intel_frontbuffer *front_ret =3D front;
> +
> +	if (!front) {
> +		RCU_INIT_POINTER(obj->frontbuffer, NULL);
> +	} else if (rcu_access_pointer(obj->frontbuffer)) {
> +		front_ret =3D rcu_dereference_protected(obj->frontbuffer, true);
> +		kref_get(&front_ret->ref);
> +	} else {
> +		drm_gem_object_get(&intel_bo_to_drm_bo(obj));
> +		rcu_assign_pointer(obj->frontbuffer, front);
> +	}
> +
> +	return front_ret;
> +}
> +
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>  #include "selftests/huge_gem_object.c"
>  #include "selftests/huge_pages.c"
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm=
/i915/gem/i915_gem_object.h
> index 884a17275b3a..69c5fa91152a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -891,4 +891,10 @@ static inline int i915_gem_object_userptr_validate(s=
truct drm_i915_gem_object *o
>=20=20
>  #endif
>=20=20
> +struct intel_frontbuffer *
> +i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj);
> +struct intel_frontbuffer *
> +i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
> +				struct intel_frontbuffer *front);
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_=
vma.c
> index ffb425ba591c..c66ff2157f6a 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1908,7 +1908,7 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
>  	if (flags & EXEC_OBJECT_WRITE) {
>  		struct intel_frontbuffer *front;
>=20=20
> -		front =3D __intel_frontbuffer_get(obj);
> +		front =3D i915_gem_object_get_frontbuffer(obj);
>  		if (unlikely(front)) {
>  			if (intel_frontbuffer_invalidate(front, ORIGIN_CS))
>  				i915_active_add_request(&front->write, rq);

--=20
Jani Nikula, Intel Open Source Graphics Center
