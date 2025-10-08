Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 828E4BC567A
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 16:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1406510E823;
	Wed,  8 Oct 2025 14:14:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BfX3rFOA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286F210E085;
 Wed,  8 Oct 2025 14:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759932867; x=1791468867;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=a2tgryLWHssbO5bXcIHkRmcvyxJKzRy9IBsIfajPIR8=;
 b=BfX3rFOA8GehYSTsZYd9s0JCWfc1twpURcvFMPvpmBKKknZ5eqUBz3/a
 /o+PACDX4G5k/Z6FlzgMmkTgtUpnMIioV8Gs9VAmICCdR5K6eKpXVY1+9
 gmFqMmf4j5r6a+gOOlSwOksS8NzjeHimFdCWv2+olrgnvUaGitP0QZwik
 EZHgq0VPZh2/+tzOMHqH88iuHZ6+LQLJUKZf4Y++M2jSHdiCwycAu0MGq
 zCrE9WbJwhUJPCL1E64iPqyW+3JVVbW0qobEc3Ib+dV2VX8cPqwkGKtnr
 j5oMC9cPB0zqZpzIfnjatV8WoRQZR0a/LWzuu8hpo32YyvvRQeigDeyLx Q==;
X-CSE-ConnectionGUID: JFLqe8nER5ib8t0EU7AA3w==
X-CSE-MsgGUID: P85srVg3RxiyiCzGKilmeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="61831289"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="61831289"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 07:14:18 -0700
X-CSE-ConnectionGUID: IqtDU8miRoKaym+pYCTizg==
X-CSE-MsgGUID: dB/4eelWRSiOJ1VUfx0lXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="180277211"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.39])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 07:14:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 1/5] drm/i915/frontbuffer: Move bo refcounting
 intel_frontbuffer_{get, release}()
In-Reply-To: <20251003145734.7634-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251003145734.7634-1-ville.syrjala@linux.intel.com>
 <20251003145734.7634-2-ville.syrjala@linux.intel.com>
Date: Wed, 08 Oct 2025 17:14:13 +0300
Message-ID: <79938f1fb87149221a274eae89aa1e755ac8ab00@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 03 Oct 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently xe's intel_frontbuffer implementation forgets to
> hold a reference on the bo. This makes the entire thing
> extremely fragile as the cleanup order now depends on bo
> references held by other things
> (namely intel_fb_bo_framebuffer_fini()).
>
> Move the bo refcounting to intel_frontbuffer_{get,release}()
> so that both i915 and xe do this the same way.
>
> I first tried to fix this by having xe do the refcounting
> from its intel_bo_set_frontbuffer() implementation
> (which is what i915 does currently), but turns out xe's
> drm_gem_object_free() can sleep and thus drm_gem_object_put()
> isn't safe to call while we hold fb_tracking.lock.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I'm a bit uneasy about all of this code, but the change looks all right,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



> ---
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c       | 10 +++++++++-
>  drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h |  2 --
>  2 files changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index 43be5377ddc1..73ed28ac9573 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -270,6 +270,8 @@ static void frontbuffer_release(struct kref *ref)
>  	spin_unlock(&display->fb_tracking.lock);
>=20=20
>  	i915_active_fini(&front->write);
> +
> +	drm_gem_object_put(obj);
>  	kfree_rcu(front, rcu);
>  }
>=20=20
> @@ -287,6 +289,8 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
>  	if (!front)
>  		return NULL;
>=20=20
> +	drm_gem_object_get(obj);
> +
>  	front->obj =3D obj;
>  	kref_init(&front->ref);
>  	atomic_set(&front->bits, 0);
> @@ -299,8 +303,12 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
>  	spin_lock(&display->fb_tracking.lock);
>  	cur =3D intel_bo_set_frontbuffer(obj, front);
>  	spin_unlock(&display->fb_tracking.lock);
> -	if (cur !=3D front)
> +
> +	if (cur !=3D front) {
> +		drm_gem_object_put(obj);
>  		kfree(front);
> +	}
> +
>  	return cur;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/dri=
vers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> index b6dc3d1b9bb1..b682969e3a29 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> @@ -89,12 +89,10 @@ i915_gem_object_set_frontbuffer(struct drm_i915_gem_o=
bject *obj,
>=20=20
>  	if (!front) {
>  		RCU_INIT_POINTER(obj->frontbuffer, NULL);
> -		drm_gem_object_put(intel_bo_to_drm_bo(obj));
>  	} else if (rcu_access_pointer(obj->frontbuffer)) {
>  		cur =3D rcu_dereference_protected(obj->frontbuffer, true);
>  		kref_get(&cur->ref);
>  	} else {
> -		drm_gem_object_get(intel_bo_to_drm_bo(obj));
>  		rcu_assign_pointer(obj->frontbuffer, front);
>  	}

--=20
Jani Nikula, Intel
