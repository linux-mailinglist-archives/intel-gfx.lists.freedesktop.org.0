Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A19A34E53
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 20:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B10A710EB81;
	Thu, 13 Feb 2025 19:17:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BgxUD4d8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FE9810EB81
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 19:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739474245; x=1771010245;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=o6me10YGDrZ7bq7CELyywE30cqrPsJASYAfeVf2uoeQ=;
 b=BgxUD4d8SQEt6BYCbKGnO2tUK8c/9ByfvQmougymKfbeK383YVX5vTRy
 8Ep4JTefJ4efT+yBSfZhY+UyM30W46dRZaoRmhjZCfol0yAl007oqlQNr
 POcEQTzF+NfIGSHirnvQzV/rDBh9ObxznX0t5rhMeFRckGuW+Ta/kCUIU
 wJkLcAyx6DO1wLQftbNjraLq9c7iM/wNT78LE1V/jQQBuAAF4MZBPCxSy
 UaOr2JGekUxsCids7nLTxh3bjJXfWlMSWS5Jvry0SoXHdb8NHDdh7/+ki
 43cf7+ttwe8IdKi3sVphkKHjjtdYiJJmfbJHlQ+oOg/2EReZK64vDr3aO Q==;
X-CSE-ConnectionGUID: eJQhn+r5QmiSsFJWOCQfZg==
X-CSE-MsgGUID: 4KHG9iqMRfmIXvbGNFYBSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="44131073"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="44131073"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:17:25 -0800
X-CSE-ConnectionGUID: Dd+3ZLYZQJ27y7wmD11JDQ==
X-CSE-MsgGUID: Vy31qwr1TL+GNAyTPVe4Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113192618"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:17:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 06/12] drm/i915: Move intel_plane_destroy() into
 intel_atomic_plane.c
In-Reply-To: <20250213150220.13580-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
 <20250213150220.13580-7-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2025 21:17:19 +0200
Message-ID: <8734ghy7r4.fsf@intel.com>
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

On Thu, 13 Feb 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_atomic_plane.c (should rename it really) has become our
> standard place for generic plane code. Move intel_plane_destroy()
> there so it doesn't clutter intel_display.c.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Agreed on the renaming.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_atomic_plane.h |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c      | 13 -------------
>  drivers/gpu/drm/i915/display/intel_display.h      |  1 -
>  4 files changed, 14 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index 8a49d87d9bd9..7e87c052be45 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -92,6 +92,19 @@ void intel_plane_free(struct intel_plane *plane)
>  	kfree(plane);
>  }
>=20=20
> +/**
> + * intel_plane_destroy - destroy a plane
> + * @plane: plane to destroy
> + *
> + * Common destruction function for all types of planes (primary, cursor,
> + * sprite).
> + */
> +void intel_plane_destroy(struct drm_plane *plane)
> +{
> +	drm_plane_cleanup(plane);
> +	kfree(to_intel_plane(plane));
> +}
> +
>  /**
>   * intel_plane_duplicate_state - duplicate plane state
>   * @plane: drm plane
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.h
> index fb87b3353ab0..e965ea0cb15c 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -52,6 +52,7 @@ void intel_plane_disable_arm(struct intel_dsb *dsb,
>  			     const struct intel_crtc_state *crtc_state);
>  struct intel_plane *intel_plane_alloc(void);
>  void intel_plane_free(struct intel_plane *plane);
> +void intel_plane_destroy(struct drm_plane *plane);
>  struct drm_plane_state *intel_plane_duplicate_state(struct drm_plane *pl=
ane);
>  void intel_plane_destroy_state(struct drm_plane *plane,
>  			       struct drm_plane_state *state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0807a4979ea2..4278212a2496 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8117,19 +8117,6 @@ int intel_atomic_commit(struct drm_device *dev, st=
ruct drm_atomic_state *_state,
>  	return 0;
>  }
>=20=20
> -/**
> - * intel_plane_destroy - destroy a plane
> - * @plane: plane to destroy
> - *
> - * Common destruction function for all types of planes (primary, cursor,
> - * sprite).
> - */
> -void intel_plane_destroy(struct drm_plane *plane)
> -{
> -	drm_plane_cleanup(plane);
> -	kfree(to_intel_plane(plane));
> -}
> -
>  static u32 intel_encoder_possible_clones(struct intel_encoder *encoder)
>  {
>  	struct drm_device *dev =3D encoder->base.dev;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index e14aa773323e..2e11fc2ba1f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -450,7 +450,6 @@ bool intel_pipe_config_compare(const struct intel_crt=
c_state *current_config,
>  			       const struct intel_crtc_state *pipe_config,
>  			       bool fastset);
>=20=20
> -void intel_plane_destroy(struct drm_plane *plane);
>  void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_sta=
te);

--=20
Jani Nikula, Intel
