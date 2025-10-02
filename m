Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3237DBB4294
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 16:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97ABA10E1A0;
	Thu,  2 Oct 2025 14:27:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NAlOwiaY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FE0C10E1A0;
 Thu,  2 Oct 2025 14:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759415245; x=1790951245;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZmUnXSs5cllR1Kpy/Ga+1zosphz55wSlAgShZQfY7+w=;
 b=NAlOwiaY7sHb1OaGVuM5riRhNBPaRqje/9WUvotrGXWYvlbCLrQBZMEJ
 ROvH+BwWjvR9etevqZn/+tLQD+nlsJ2dDXCTYQlsULB7vsOpmKrRHG9M1
 /RatARTzq14ee52jdfD7GwoivvP4liqVsUjExNi1txTRkXSBTWSnuRB6k
 0ope/jfNIDgoGxi1P4VOKQRXbqNY042N+GGEQI26093JSJCduoptW8QtA
 6lBL8spzm4OBlZvzGrJOi4fDv3qE95ZcksbnP8RkM3ZgfrOvog3QmUscd
 qMQ/BIwsz1QLlhGvxeiXL6/urRxE8zEJj11kJSaSfrZ+ZXPKvf8MPZPBm Q==;
X-CSE-ConnectionGUID: JTVx1fscTiauwPDHz9JG6g==
X-CSE-MsgGUID: pBDAx7FAQsGbXG9jsfy3uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="49254012"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="49254012"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 07:27:24 -0700
X-CSE-ConnectionGUID: Zp/IkvMOTtSRp/zR0xyhlg==
X-CSE-MsgGUID: uW2R7EVWQjOccvIAuMOJlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="216170125"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.12])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 07:27:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/i915/fb: Drop the 'fb' argument from
 intel_fb_bo_framebuffer_init()
In-Reply-To: <20251002115434.6486-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251002115434.6486-1-ville.syrjala@linux.intel.com>
 <20251002115434.6486-4-ville.syrjala@linux.intel.com>
Date: Thu, 02 Oct 2025 17:27:19 +0300
Message-ID: <af887ceb983b9a9586f49e2eb6da2c67f979cbb1@intel.com>
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

On Thu, 02 Oct 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_fb_bo_framebuffer_init() doesn't do anything with the passed
> framebuffer. Don't pass it therefore.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_fb_bo.c | 3 +--
>  drivers/gpu/drm/i915/display/intel_fb_bo.h | 3 +--
>  drivers/gpu/drm/xe/display/intel_fb_bo.c   | 3 +--
>  4 files changed, 4 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index c5bbca7f2e8b..4c8de8b54c45 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -2226,7 +2226,7 @@ int intel_framebuffer_init(struct intel_framebuffer=
 *intel_fb,
>  	if (!intel_fb->frontbuffer)
>  		return -ENOMEM;
>=20=20
> -	ret =3D intel_fb_bo_framebuffer_init(fb, obj, mode_cmd);
> +	ret =3D intel_fb_bo_framebuffer_init(obj, mode_cmd);
>  	if (ret)
>  		goto err_frontbuffer_put;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm=
/i915/display/intel_fb_bo.c
> index b0e8b89f7ce8..7336d7294a7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
> @@ -18,8 +18,7 @@ void intel_fb_bo_framebuffer_fini(struct drm_gem_object=
 *obj)
>  	/* Nothing to do for i915 */
>  }
>=20=20
> -int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
> -				 struct drm_gem_object *_obj,
> +int intel_fb_bo_framebuffer_init(struct drm_gem_object *_obj,
>  				 struct drm_mode_fb_cmd2 *mode_cmd)
>  {
>  	struct drm_i915_gem_object *obj =3D to_intel_bo(_obj);
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.h b/drivers/gpu/drm=
/i915/display/intel_fb_bo.h
> index eefcb05a99f0..d775773c6c03 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_bo.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb_bo.h
> @@ -14,8 +14,7 @@ struct drm_mode_fb_cmd2;
>=20=20
>  void intel_fb_bo_framebuffer_fini(struct drm_gem_object *obj);
>=20=20
> -int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
> -				 struct drm_gem_object *obj,
> +int intel_fb_bo_framebuffer_init(struct drm_gem_object *obj,
>  				 struct drm_mode_fb_cmd2 *mode_cmd);
>=20=20
>  struct drm_gem_object *
> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/x=
e/display/intel_fb_bo.c
> index ebdb22c9499d..db8b1a27b4de 100644
> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> @@ -24,8 +24,7 @@ void intel_fb_bo_framebuffer_fini(struct drm_gem_object=
 *obj)
>  	xe_bo_put(bo);
>  }
>=20=20
> -int intel_fb_bo_framebuffer_init(struct drm_framebuffer *fb,
> -				 struct drm_gem_object *obj,
> +int intel_fb_bo_framebuffer_init(struct drm_gem_object *obj,
>  				 struct drm_mode_fb_cmd2 *mode_cmd)
>  {
>  	struct xe_bo *bo =3D gem_to_xe_bo(obj);

--=20
Jani Nikula, Intel
