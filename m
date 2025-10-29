Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7A6C1B7C1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 15:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5383310E7EF;
	Wed, 29 Oct 2025 14:59:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bTMd3TVV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D3D510E7EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 14:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761749943; x=1793285943;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=axtpxbsbqIbY+pXjWEdqmedajIQMek/k75tQuJpjV34=;
 b=bTMd3TVVHmmk/Tzrgo8iHkiuww5tchOPjuDbbWmjzgZ/l+AZCSa05Wmh
 gyYzzqJHiHv+nOyGRM4cKaSGQf11+wvSSMFK7JmKbpOqPeH6Fe61aQr+D
 7fbHnQLmqzv23F+hnYWIOg5GLJ0wJbmJuehUnbhBBZM1S62mf6/23N0Wp
 Go7ikLgIE5zMJnksyQfBXqed9BUq02Nt37aX9O/VzFaCl+xM8Vc5DSRPE
 Kr7VV88mPiwCptydHWIE8rV7d1V8QAu33+b46ljB60Ev+hWAR+VD9bCdD
 OZkCoGVuDjeY/8p6kKh7yFOrwjdub/II6T6B1ZeaZMIXNSC3IC3dzhsSN A==;
X-CSE-ConnectionGUID: vPsUaGyER62XNE8yHrZ8Rw==
X-CSE-MsgGUID: VHmlBHeBQ7y1RAVMbvKf+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="86501382"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="86501382"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:59:03 -0700
X-CSE-ConnectionGUID: qPVjpnKHQ8Kr3m6jP8aqWw==
X-CSE-MsgGUID: FvZJdoTvRNG/5jwqpeZ41w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="185573000"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:59:02 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 29 Oct 2025 16:58:59 +0200
Resent-Message-ID: <f457ca58dd483ee78ffb7efd19ed9f01d2a4bb9c@intel.com>
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 08/10] drm/i915/frontbuffer: Add
 intel_frontbuffer::display
In-Reply-To: <20251016185408.22735-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
 <20251016185408.22735-9-ville.syrjala@linux.intel.com>
Date: Wed, 29 Oct 2025 15:36:27 +0200
Message-ID: <dddd33010e1c47ca7c690e7d9657111cf9b64447@intel.com>
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
>
> After upcoming intel_frontbuffer lifetime related changed we
> won't need intel_frontbuffer::obj for anything apart from
> getting at the display. Add a direct pointer for that instead
> so that the obj pointer can be completely eliminated.
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Upgrade to

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_frontbuffer.c  | 19 ++++++++-----------
>  .../gpu/drm/i915/display/intel_frontbuffer.h  |  1 +
>  2 files changed, 9 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index e5f3f0d555a8..5d627eac07bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -128,7 +128,7 @@ void __intel_fb_invalidate(struct intel_frontbuffer *=
front,
>  			   enum fb_op_origin origin,
>  			   unsigned int frontbuffer_bits)
>  {
> -	struct intel_display *display =3D to_intel_display(front->obj->dev);
> +	struct intel_display *display =3D front->display;
>=20=20
>  	if (origin =3D=3D ORIGIN_CS) {
>  		spin_lock(&display->fb_tracking.lock);
> @@ -148,7 +148,7 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
>  		      enum fb_op_origin origin,
>  		      unsigned int frontbuffer_bits)
>  {
> -	struct intel_display *display =3D to_intel_display(front->obj->dev);
> +	struct intel_display *display =3D front->display;
>=20=20
>  	if (origin =3D=3D ORIGIN_DIRTYFB)
>  		intel_bo_frontbuffer_flush_for_display(front);
> @@ -215,12 +215,12 @@ static void frontbuffer_retire(struct i915_active *=
ref)
>  }
>=20=20
>  static void frontbuffer_release(struct kref *ref)
> -	__releases(&to_intel_display(front->obj->dev)->fb_tracking.frontbuffer_=
lock)
> +	__releases(&front->display->fb_tracking.frontbuffer_lock)
>  {
>  	struct intel_frontbuffer *ret, *front =3D
>  		container_of(ref, typeof(*front), ref);
> +	struct intel_display *display =3D front->display;
>  	struct drm_gem_object *obj =3D front->obj;
> -	struct intel_display *display =3D to_intel_display(obj->dev);
>=20=20
>  	drm_WARN_ON(display->drm, atomic_read(&front->bits));
>=20=20
> @@ -253,6 +253,7 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
>  	drm_gem_object_get(obj);
>=20=20
>  	front->obj =3D obj;
> +	front->display =3D display;
>  	kref_init(&front->ref);
>  	atomic_set(&front->bits, 0);
>  	i915_active_init(&front->write,
> @@ -277,7 +278,7 @@ void intel_frontbuffer_put(struct intel_frontbuffer *=
front)
>  {
>  	kref_put_lock(&front->ref,
>  		      frontbuffer_release,
> -		      &to_intel_display(front->obj->dev)->fb_tracking.frontbuffer_lock=
);
> +		      &front->display->fb_tracking.frontbuffer_lock);
>  }
>=20=20
>  /**
> @@ -306,17 +307,13 @@ void intel_frontbuffer_track(struct intel_frontbuff=
er *old,
>  	BUILD_BUG_ON(I915_MAX_PLANES > INTEL_FRONTBUFFER_BITS_PER_PIPE);
>=20=20
>  	if (old) {
> -		struct intel_display *display =3D to_intel_display(old->obj->dev);
> -
> -		drm_WARN_ON(display->drm,
> +		drm_WARN_ON(old->display->drm,
>  			    !(atomic_read(&old->bits) & frontbuffer_bits));
>  		atomic_andnot(frontbuffer_bits, &old->bits);
>  	}
>=20=20
>  	if (new) {
> -		struct intel_display *display =3D to_intel_display(new->obj->dev);
> -
> -		drm_WARN_ON(display->drm,
> +		drm_WARN_ON(new->display->drm,
>  			    atomic_read(&new->bits) & frontbuffer_bits);
>  		atomic_or(frontbuffer_bits, &new->bits);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.h
> index 293c2d0152d6..ff2a6ac75a34 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> @@ -43,6 +43,7 @@ enum fb_op_origin {
>=20=20
>  struct intel_frontbuffer {
>  	struct kref ref;
> +	struct intel_display *display;
>  	atomic_t bits;
>  	struct i915_active write;
>  	struct drm_gem_object *obj;

--=20
Jani Nikula, Intel
