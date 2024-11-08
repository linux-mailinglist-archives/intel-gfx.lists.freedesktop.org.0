Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DF49C1D7D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:02:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F4A10E97B;
	Fri,  8 Nov 2024 13:02:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F5cscKH0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C769310E97C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 13:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731070931; x=1762606931;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=pxvjDpasuosT2+ZrPyu49nL9UHV/Xgv7THOEXPiJlMQ=;
 b=F5cscKH0lno2pKCMPApM+KNGrHQP6VyR/K4lV4NJhhb9/cLjYG1tg2+f
 6m09P03f+8a17XP4CLz29OeY7uPbhHBtSGRFaL5mLg7iAOvUt3hu4WwjV
 2PT/FIywRUQwPbMkrOwU6+tqo0XkEks8dXR7nqKnn68c5ZtzVHaC920o6
 KlsFV5SHQim30Wt1ZTQreRE8SBB2cD0sjrnsQtlxWfKMKgEikCC3DCpBb
 24DeJMFcB7xjKlZTZNeslztxkzZ2y2S6STb3RRSZW/fx3SCjjs7/hl1iQ
 DXS6nFzekKuyWrTqNF4lesBGBXWCFGkjrX1RhmInyZMZQz2GN6Me/Zt9Q w==;
X-CSE-ConnectionGUID: F31MDw0GTkCxuwH29fSxpQ==
X-CSE-MsgGUID: gAbc3lHWSJmw1euNptZjvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="30368701"
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="30368701"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:00:27 -0800
X-CSE-ConnectionGUID: lnC3qqrnTpivvOIM1Yj4nQ==
X-CSE-MsgGUID: DvHZ60udTcGZfCgyrCRFqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="116382520"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.252])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:00:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/10] drm/i915: Grab intel_display from the encoder to
 avoid potential oopsies
In-Reply-To: <20241107161123.16269-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
 <20241107161123.16269-2-ville.syrjala@linux.intel.com>
Date: Fri, 08 Nov 2024 15:00:21 +0200
Message-ID: <87v7wxev8a.fsf@intel.com>
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

On Thu, 07 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Grab the intel_display from 'encoder' rather than 'state'
> in the encoder hooks to avoid the massive footgun that is
> intel_sanitize_encoder(), which passes NULL as the 'state'
> argument to encoder .disable() and .post_disable().
>
> TODO: figure out how to actually fix intel_sanitize_encoder()...
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Whoopsies.

Do we need a Fixes: tag? I presume the changes are headed to v6.13 and
without the tag this one isn't.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_crt.c | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_tv.c  |  4 ++--
>  2 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 74c1983fe07e..1be55bdb48b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -244,7 +244,7 @@ static void hsw_disable_crt(struct intel_atomic_state=
 *state,
>  			    const struct intel_crtc_state *old_crtc_state,
>  			    const struct drm_connector_state *old_conn_state)
>  {
> -	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>=20=20
>  	drm_WARN_ON(display->drm, !old_crtc_state->has_pch_encoder);
> @@ -257,7 +257,7 @@ static void hsw_post_disable_crt(struct intel_atomic_=
state *state,
>  				 const struct intel_crtc_state *old_crtc_state,
>  				 const struct drm_connector_state *old_conn_state)
>  {
> -	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>=20=20
> @@ -287,7 +287,7 @@ static void hsw_pre_pll_enable_crt(struct intel_atomi=
c_state *state,
>  				   const struct intel_crtc_state *crtc_state,
>  				   const struct drm_connector_state *conn_state)
>  {
> -	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>=20=20
>  	drm_WARN_ON(display->drm, !crtc_state->has_pch_encoder);
> @@ -300,7 +300,7 @@ static void hsw_pre_enable_crt(struct intel_atomic_st=
ate *state,
>  			       const struct intel_crtc_state *crtc_state,
>  			       const struct drm_connector_state *conn_state)
>  {
> -	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum pipe pipe =3D crtc->pipe;
> @@ -319,7 +319,7 @@ static void hsw_enable_crt(struct intel_atomic_state =
*state,
>  			   const struct intel_crtc_state *crtc_state,
>  			   const struct drm_connector_state *conn_state)
>  {
> -	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum pipe pipe =3D crtc->pipe;
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i9=
15/display/intel_tv.c
> index bfd16054ca05..27c530218ee6 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -929,7 +929,7 @@ intel_enable_tv(struct intel_atomic_state *state,
>  		const struct intel_crtc_state *pipe_config,
>  		const struct drm_connector_state *conn_state)
>  {
> -	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20=20
>  	/* Prevents vblank waits from timing out in intel_tv_detect_type() */
>  	intel_crtc_wait_for_next_vblank(to_intel_crtc(pipe_config->uapi.crtc));
> @@ -943,7 +943,7 @@ intel_disable_tv(struct intel_atomic_state *state,
>  		 const struct intel_crtc_state *old_crtc_state,
>  		 const struct drm_connector_state *old_conn_state)
>  {
> -	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20=20
>  	intel_de_rmw(display, TV_CTL, TV_ENC_ENABLE, 0);
>  }

--=20
Jani Nikula, Intel
