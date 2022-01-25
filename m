Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0D049ABCD
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 06:38:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E5BD10E657;
	Tue, 25 Jan 2022 05:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CC9610E657
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 05:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643089098; x=1674625098;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=1CfpGmMQ+dyTE5Z+6KrkuG0f7lq0l5AgDheILItegrc=;
 b=JqsryJ6EeRJVbchCOme0jx4b5+GIMVEStUVoX1vx3RgJYD2zBYA001Qi
 NGOIUd/0Zb3LqiHhE5YOcKw8voNgnbcnPFfvF4Y3DhxhBRMEVkON/vF+w
 XS5TYBsT9Lc5ZXlZvTCVn4QOEr7KBFUHrXf979Hhn2kr1xaVDOoNl9pIm
 j6zUBt3p2L9z/gGsJUedWacc5vH+N6rTZ3zapNlDgEKcL0BRRHTRYbKeZ
 KMztHO6uZQERyHo6a7OJlWqL9j1MrjLAUEXp9peqXXqKNnh/mfIcWpbem
 r8rP06lxBbTYd1i9iZk17KJoFnzReKUOYYuxuPI5c9qMrXc2tRfeb3m1S w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="306940671"
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="306940671"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 21:38:17 -0800
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="534576050"
Received: from skirillo-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.32.77])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 21:38:16 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220124192638.26262-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
 <20220124192638.26262-4-ville.syrjala@linux.intel.com>
Date: Tue, 25 Jan 2022 07:38:01 +0200
Message-ID: <87wnio1ikm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Extract
 hsw_configure_cpu_transcoder()
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

On Mon, 24 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the transcoder specific modeset steps into a single place.
> With bigoiner we need to keep in mind wheher we're dealing with
> the transcoder or the pipe, and a slightly higher level split makes
> that easier.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 38 ++++++++++++--------
>  1 file changed, 23 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c23c854f212f..d2906434ab3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2012,6 +2012,27 @@ static void icl_ddi_bigjoiner_pre_enable(struct in=
tel_atomic_state *state,
>  		intel_uncompressed_joiner_enable(crtc_state);
>  }
>=20=20
> +static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *=
crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +
> +	intel_set_transcoder_timings(crtc_state);
> +
> +	if (cpu_transcoder !=3D TRANSCODER_EDP)
> +		intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
> +			       crtc_state->pixel_multiplier - 1);
> +
> +	if (crtc_state->has_pch_encoder)
> +		intel_cpu_transcoder_set_m_n(crtc_state,
> +					     &crtc_state->fdi_m_n, NULL);
> +
> +	hsw_set_frame_start_delay(crtc_state);
> +
> +	hsw_set_transconf(crtc_state);
> +}
> +
>  static void hsw_crtc_enable(struct intel_atomic_state *state,
>  			    struct intel_crtc *crtc)
>  {
> @@ -2040,21 +2061,8 @@ static void hsw_crtc_enable(struct intel_atomic_st=
ate *state,
>  	if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv))
>  		bdw_set_pipemisc(new_crtc_state);
>=20=20
> -	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcod=
er)) {
> -		intel_set_transcoder_timings(new_crtc_state);
> -
> -		if (cpu_transcoder !=3D TRANSCODER_EDP)
> -			intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
> -				       new_crtc_state->pixel_multiplier - 1);
> -
> -		if (new_crtc_state->has_pch_encoder)
> -			intel_cpu_transcoder_set_m_n(new_crtc_state,
> -						     &new_crtc_state->fdi_m_n, NULL);
> -
> -		hsw_set_frame_start_delay(new_crtc_state);
> -
> -		hsw_set_transconf(new_crtc_state);
> -	}
> +	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcod=
er))
> +		hsw_configure_cpu_transcoder(new_crtc_state);
>=20=20
>  	crtc->active =3D true;

--=20
Jani Nikula, Intel Open Source Graphics Center
