Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EEBC1B7A6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 15:58:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89CAF10E7EE;
	Wed, 29 Oct 2025 14:58:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TQCu81HS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFE7810E7ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 14:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761749927; x=1793285927;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=MDDnzdIp+mLIXH8LZZKXUOLAv4gNndCGWG23UwcuCxY=;
 b=TQCu81HS9tkNZ4Ym1bCIGqroQyUrUfv8kMoUN3+1nfKrFCkIijAb2JDS
 ZSbreGxOAYl68k/G8O5bK6+VHTSGRo1RM7Hsh5uFtFNoZYCpfuR1U8abt
 KSAG75GOfFn9dX282LFkNmY6fJysoPAM/lPLH13eFrFAeZjSGGZJxg9NC
 SfQjEW3S05oY19vjoVpRwzKGAHOTLc7+rk6oHdALHAENNP5uwgT5g+yGt
 LCVo60uV8jo4WBK+ej79JZoMvlCTC9wLZ+Yrk1mt6eENXLEeiIOUEGBpo
 hy2/Or6aor/IeVjRkQmua6W2uzPYflu0nqfhcWpXH8Sk6NVFU518Whixx Q==;
X-CSE-ConnectionGUID: D+nbqJKzT1uNs4igB8L4ng==
X-CSE-MsgGUID: z4nnfmRfQrewzJrsnZT2MA==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="67736216"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="67736216"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:58:47 -0700
X-CSE-ConnectionGUID: vhORrnQiQZKNfYwAD3DHVg==
X-CSE-MsgGUID: SdvvTw8CRFuM6w+oC+RXQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="186144552"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:58:46 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 29 Oct 2025 16:58:43 +0200
Resent-Message-ID: <8454763d31370e5c3fb76538505d6b6df3b35f00@intel.com>
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 06/10] drm/i915/frontbuffef: Split fb_tracking.lock
 into two
In-Reply-To: <20251016185408.22735-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
 <20251016185408.22735-7-ville.syrjala@linux.intel.com>
Date: Wed, 29 Oct 2025 15:35:25 +0200
Message-ID: <5bcca4db3f5017f1e697a1e5869bac8aec5fc1a7@intel.com>
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

On Thu, 16 Oct 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Subject, *frontbuffer

>
> Our fb_tracking.lock is serving a double duty:
> - protects fb_tracking.busy_bits
> - provides the write-side protection for obj->frontbuffer
>
> Split obj->frontbuffer role into a separate lock so that
> we can clean up the current mess with the frontbuffer lifetime
> management.
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Upgrade to

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h      |  4 ++++
>  drivers/gpu/drm/i915/display/intel_display_driver.c    |  1 +
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c       | 10 +++++-----
>  drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h |  2 +-
>  4 files changed, 11 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index fa43636b89fa..13576d07c999 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -141,6 +141,10 @@ struct intel_dpll_global {
>  };
>=20=20
>  struct intel_frontbuffer_tracking {
> +	/* protects obj->frontbuffer (write-side) */
> +	spinlock_t frontbuffer_lock;
> +
> +	/* protects busy_bits */
>  	spinlock_t lock;
>=20=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index f84a0b26b7a6..ac684f8c5d40 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -184,6 +184,7 @@ void intel_display_driver_early_probe(struct intel_di=
splay *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>=20=20
> +	spin_lock_init(&display->fb_tracking.frontbuffer_lock);
>  	spin_lock_init(&display->fb_tracking.lock);
>  	mutex_init(&display->backlight.lock);
>  	mutex_init(&display->audio.mutex);
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index bdf8bfa7deb9..02b06dfb9fee 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -210,7 +210,7 @@ static void frontbuffer_retire(struct i915_active *re=
f)
>  }
>=20=20
>  static void frontbuffer_release(struct kref *ref)
> -	__releases(&to_intel_display(front->obj->dev)->fb_tracking.lock)
> +	__releases(&to_intel_display(front->obj->dev)->fb_tracking.frontbuffer_=
lock)
>  {
>  	struct intel_frontbuffer *ret, *front =3D
>  		container_of(ref, typeof(*front), ref);
> @@ -223,7 +223,7 @@ static void frontbuffer_release(struct kref *ref)
>=20=20
>  	ret =3D intel_bo_set_frontbuffer(obj, NULL);
>  	drm_WARN_ON(display->drm, ret);
> -	spin_unlock(&display->fb_tracking.lock);
> +	spin_unlock(&display->fb_tracking.frontbuffer_lock);
>=20=20
>  	i915_active_fini(&front->write);
>=20=20
> @@ -256,9 +256,9 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
>  			 I915_ACTIVE_RETIRE_SLEEPS);
>  	INIT_WORK(&front->flush_work, intel_frontbuffer_flush_work);
>=20=20
> -	spin_lock(&display->fb_tracking.lock);
> +	spin_lock(&display->fb_tracking.frontbuffer_lock);
>  	cur =3D intel_bo_set_frontbuffer(obj, front);
> -	spin_unlock(&display->fb_tracking.lock);
> +	spin_unlock(&display->fb_tracking.frontbuffer_lock);
>=20=20
>  	if (cur !=3D front) {
>  		drm_gem_object_put(obj);
> @@ -272,7 +272,7 @@ void intel_frontbuffer_put(struct intel_frontbuffer *=
front)
>  {
>  	kref_put_lock(&front->ref,
>  		      frontbuffer_release,
> -		      &to_intel_display(front->obj->dev)->fb_tracking.lock);
> +		      &to_intel_display(front->obj->dev)->fb_tracking.frontbuffer_lock=
);
>  }
>=20=20
>  /**
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/dri=
vers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> index b682969e3a29..1ec382c43aee 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> @@ -77,7 +77,7 @@ i915_gem_object_get_frontbuffer(const struct drm_i915_g=
em_object *obj)
>   * Set object's frontbuffer pointer. If frontbuffer is already set for t=
he
>   * object keep it and return it's pointer to the caller. Please note tha=
t RCU
>   * mechanism is used to handle e.g. ongoing removal of frontbuffer point=
er. This
> - * function is protected by i915->display->fb_tracking.lock
> + * function is protected by i915->display->fb_tracking.frontbuffer_lock
>   *
>   * Return: pointer to frontbuffer which was set.
>   */

--=20
Jani Nikula, Intel
