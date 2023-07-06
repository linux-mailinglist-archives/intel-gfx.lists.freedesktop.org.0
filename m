Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF3B749769
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:22:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 517FC10E46E;
	Thu,  6 Jul 2023 08:22:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4176710E46E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688631775; x=1720167775;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uHWLJyt81NgzpqhRqJcS5X3f0a7jZVYEFBck41Cd+VM=;
 b=bQ7GRq5VEO9TvCwaLaVYPTGdO0ze4gnOdBNkgopMYh9PagBzmexeXVTC
 o0AIyOdyugUXda+fmVGJjqlmkrpLajbe0HS46mzEOXNTJCja5w4Eh97TP
 d/ryaV5HawUDoWunvaZlxPxBqBVgZ6pthTp/xqOWMer89lr2jKhlfjTXV
 E8VlGb84dCEmlE/4hEQ5TORFixgCGFvvVMB4NFh4m4wTkSPe014aUnyJz
 esGJKxNZajooNeqjyYlW0j2bnHrvTvS1iQmqScIXUDuHR4LDKLn5TtNvA
 aJUppLUsYd6KhMm7NpILVTvmFVDEniyaNFI+bJouoLxcRDGWrYiDCKI77 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="363566292"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="363566292"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:22:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="669672774"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="669672774"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:22:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-8-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 11:22:49 +0300
Message-ID: <877crdzbxi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915/sdvo: Fail gracefully if the
 TV dotclock is out of range
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

On Wed, 05 Jul 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Instead of warning and continuing with bogus state when the
> requested dotclock isn't acceptable just print some debug
> spew and fail gracefully.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 75a8e5583358..fcf3a95393d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1269,7 +1269,7 @@ intel_sdvo_get_preferred_input_mode(struct intel_sd=
vo *intel_sdvo,
>  	return true;
>  }
>=20=20
> -static void i9xx_adjust_sdvo_tv_clock(struct intel_crtc_state *pipe_conf=
ig)
> +static int i9xx_adjust_sdvo_tv_clock(struct intel_crtc_state *pipe_confi=
g)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(pipe_config->uapi.crtc->d=
ev);
>  	unsigned int dotclock =3D pipe_config->hw.adjusted_mode.crtc_clock;
> @@ -1292,11 +1292,14 @@ static void i9xx_adjust_sdvo_tv_clock(struct inte=
l_crtc_state *pipe_config)
>  		clock->m1 =3D 12;
>  		clock->m2 =3D 8;
>  	} else {
> -		drm_WARN(&dev_priv->drm, 1,
> -			 "SDVO TV clock out of range: %i\n", dotclock);
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "SDVO TV clock out of range: %i\n", dotclock);
> +		return -EINVAL;
>  	}
>=20=20
>  	pipe_config->clock_set =3D true;
> +
> +	return 0;
>  }
>=20=20
>  static bool intel_has_hdmi_sink(struct intel_sdvo_connector *intel_sdvo_=
connector,
> @@ -1414,8 +1417,13 @@ static int intel_sdvo_compute_config(struct intel_=
encoder *encoder,
>  					       conn_state);
>=20=20
>  	/* Clock computation needs to happen after pixel multiplier. */
> -	if (IS_TV(intel_sdvo_connector))
> -		i9xx_adjust_sdvo_tv_clock(pipe_config);
> +	if (IS_TV(intel_sdvo_connector)) {
> +		int ret;
> +
> +		ret =3D i9xx_adjust_sdvo_tv_clock(pipe_config);
> +		if (ret)
> +			return ret;
> +	}
>=20=20
>  	if (conn_state->picture_aspect_ratio)
>  		adjusted_mode->picture_aspect_ratio =3D

--=20
Jani Nikula, Intel Open Source Graphics Center
