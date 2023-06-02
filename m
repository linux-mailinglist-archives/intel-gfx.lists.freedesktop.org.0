Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7652D7207E3
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 18:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DCF510E05B;
	Fri,  2 Jun 2023 16:46:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A34BF10E05B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 16:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685724378; x=1717260378;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Pzc9nmrtFqv5HvfPNTos4olnDncJX2cTGxAxV3hF3rc=;
 b=ZsY5ObQpCNl0fI/DYWfRyZreOp9wpWcZR6w/oeTqOLWnyr9Wc/R026CM
 +4KZ6fOP/WY4hu3p7K7R3gvor8U8/JCyW/ufHxvL2t3mjPt250aC+59up
 C8o1TrAe2Fev724ZcxMlfxTiyK6MPV0cG236fbTuJnTRCeNN/Z1jqla5W
 pFgJNeut1bLsmdxZmXZ86BXdCl7MxBd98eL+eH6sweShP04gGaShQhodG
 vvde987OdeeoGPwJLEzjwELCnrnbbQxVDSC0LGqnfOZhzkQ2KK6LO15NY
 sGDv8+qd+Im5vaZW1mAeX17yqxnovvff/gViGFz8zr4qan8uMLG8iUmL3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="353407633"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="353407633"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 09:46:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="702013974"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="702013974"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 09:46:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230530061417.2384188-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230530061417.2384188-1-jouni.hogander@intel.com>
 <20230530061417.2384188-2-jouni.hogander@intel.com>
Date: Fri, 02 Jun 2023 19:46:12 +0300
Message-ID: <87sfb9dd7v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915: Add macros to get i915
 device from i915_gem_object
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
> We want to stop touching directly i915_gem_object struct members in
> intel_frontbuffer code. As a part of this we add helper macro to get i915
> device from i915_gem_object.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_frontbuffer.c   | 18 +++++++++---------
>  .../gpu/drm/i915/gem/i915_gem_object_types.h   |  3 +++
>  2 files changed, 12 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index 17a7aa8b28c2..3ce0436a0c7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -167,7 +167,7 @@ void __intel_fb_invalidate(struct intel_frontbuffer *=
front,
>  			   enum fb_op_origin origin,
>  			   unsigned int frontbuffer_bits)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(front->obj->base.dev);
> +	struct drm_i915_private *i915 =3D intel_bo_to_i915(front->obj);
>=20=20
>  	if (origin =3D=3D ORIGIN_CS) {
>  		spin_lock(&i915->display.fb_tracking.lock);
> @@ -188,7 +188,7 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
>  		      enum fb_op_origin origin,
>  		      unsigned int frontbuffer_bits)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(front->obj->base.dev);
> +	struct drm_i915_private *i915 =3D intel_bo_to_i915(front->obj);
>=20=20
>  	if (origin =3D=3D ORIGIN_CS) {
>  		spin_lock(&i915->display.fb_tracking.lock);
> @@ -221,14 +221,14 @@ static void frontbuffer_retire(struct i915_active *=
ref)
>  }
>=20=20
>  static void frontbuffer_release(struct kref *ref)
> -	__releases(&to_i915(front->obj->base.dev)->display.fb_tracking.lock)
> +	__releases(&intel_bo_to_i915(front->obj)->display.fb_tracking.lock)
>  {
>  	struct intel_frontbuffer *front =3D
>  		container_of(ref, typeof(*front), ref);
>  	struct drm_i915_gem_object *obj =3D front->obj;
>  	struct i915_vma *vma;
>=20=20
> -	drm_WARN_ON(obj->base.dev, atomic_read(&front->bits));
> +	drm_WARN_ON(&intel_bo_to_i915(obj)->drm, atomic_read(&front->bits));
>=20=20
>  	spin_lock(&obj->vma.lock);
>  	for_each_ggtt_vma(vma, obj) {
> @@ -238,7 +238,7 @@ static void frontbuffer_release(struct kref *ref)
>  	spin_unlock(&obj->vma.lock);
>=20=20
>  	RCU_INIT_POINTER(obj->frontbuffer, NULL);
> -	spin_unlock(&to_i915(obj->base.dev)->display.fb_tracking.lock);
> +	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
>=20=20
>  	i915_active_fini(&front->write);
>=20=20
> @@ -249,7 +249,7 @@ static void frontbuffer_release(struct kref *ref)
>  struct intel_frontbuffer *
>  intel_frontbuffer_get(struct drm_i915_gem_object *obj)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> +	struct drm_i915_private *i915 =3D intel_bo_to_i915(obj);
>  	struct intel_frontbuffer *front;
>=20=20
>  	front =3D __intel_frontbuffer_get(obj);
> @@ -286,7 +286,7 @@ void intel_frontbuffer_put(struct intel_frontbuffer *=
front)
>  {
>  	kref_put_lock(&front->ref,
>  		      frontbuffer_release,
> -		      &to_i915(front->obj->base.dev)->display.fb_tracking.lock);
> +		      &intel_bo_to_i915(front->obj)->display.fb_tracking.lock);
>  }
>=20=20
>  /**
> @@ -315,13 +315,13 @@ void intel_frontbuffer_track(struct intel_frontbuff=
er *old,
>  	BUILD_BUG_ON(I915_MAX_PLANES > INTEL_FRONTBUFFER_BITS_PER_PIPE);
>=20=20
>  	if (old) {
> -		drm_WARN_ON(old->obj->base.dev,
> +		drm_WARN_ON(&intel_bo_to_i915(old->obj)->drm,
>  			    !(atomic_read(&old->bits) & frontbuffer_bits));
>  		atomic_andnot(frontbuffer_bits, &old->bits);
>  	}
>=20=20
>  	if (new) {
> -		drm_WARN_ON(new->obj->base.dev,
> +		drm_WARN_ON(&intel_bo_to_i915(new->obj)->drm,
>  			    atomic_read(&new->bits) & frontbuffer_bits);
>  		atomic_or(frontbuffer_bits, &new->bits);
>  	}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/g=
pu/drm/i915/gem/i915_gem_object_types.h
> index e72c57716bee..658bdac2a75f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -718,6 +718,9 @@ struct drm_i915_gem_object {
>  	};
>  };
>=20=20
> +#define intel_bo_to_drm_bo(bo) ((bo)->base)

All of the foo_to_bar() things we have operate on and return pointers,
and I think this one should too.

I.e. (&(bo)->base)

> +#define intel_bo_to_i915(bo) to_i915(intel_bo_to_drm_bo(bo).dev)

And consequently this needs to have ->dev.

Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
>  static inline struct drm_i915_gem_object *
>  to_intel_bo(struct drm_gem_object *gem)
>  {

--=20
Jani Nikula, Intel Open Source Graphics Center
