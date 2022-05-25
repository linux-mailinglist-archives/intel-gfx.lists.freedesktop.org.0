Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A18533B40
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 13:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3FD910E233;
	Wed, 25 May 2022 11:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D18B10E233
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 11:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653476840; x=1685012840;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=QUaaJmnRm2hJkENXN4qBmgU9C+T2GhMg7m8Jc4A5fBU=;
 b=erI3TSYU1zHKCjsx/VKZTYl6BC2Ky4kzGSZdxf31hGQukXS1vPLnKe/c
 TdfnIb+nIGLVaWUxS1le8HUWgRXeIHe6XaJQqzW5hbZ29iYnLsgy376ih
 Usl9dRjpfYJK10j6me1v7ghKNA4rg07G2kpH+A4zQO/gfsrAVZ/TVLfY3
 fV1qCWB3OQJ/si93Fzs/5IaArnfT4Rod2I6YZuyNWTsAdmfBWByod/1Fn
 +ovBnC/HeDZLdla1sFcIxjQn28tdtrjh7qzk3ZVT/6ofDn1lhsIT5SVhH
 eEBwaQmzLuvzEUB+Fn7G8aZBeY8ZQkoJ6A54oJ46pEcC3+BWCSGofZwsF g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="253658860"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="253658860"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:07:19 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="745702161"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:07:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-17-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-17-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 14:07:14 +0300
Message-ID: <87zgj5uazh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 16/26] drm/i915: Make all clock checks
 non-fuzzy
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that we backfeed the actual DPLL frequency into the
> compute crtc state all our clocks should come out exact.

/me looks at where intel_fuzzy_clock_check() is still used, and it's of
course DSI. Maybe we could move the function there until we figure it
out.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 +++++---------------
>  1 file changed, 5 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 198c6340a463..066b9e7a5696 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6118,16 +6118,6 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  	} \
>  } while (0)
>=20=20
> -#define PIPE_CONF_CHECK_CLOCK_FUZZY(name) do { \
> -	if (!intel_fuzzy_clock_check(current_config->name, pipe_config->name)) =
{ \
> -		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> -				     "(expected %i, found %i)", \
> -				     current_config->name, \
> -				     pipe_config->name); \
> -		ret =3D false; \
> -	} \
> -} while (0)
> -
>  #define PIPE_CONF_CHECK_INFOFRAME(name) do { \
>  	if (!intel_compare_infoframe(&current_config->infoframes.name, \
>  				     &pipe_config->infoframes.name)) { \
> @@ -6242,7 +6232,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  		PIPE_CONF_CHECK_RECT(pch_pfit.dst);
>=20=20
>  		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
> -		PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
> +		PIPE_CONF_CHECK_I(pixel_rate);
>=20=20
>  		PIPE_CONF_CHECK_X(gamma_mode);
>  		if (IS_CHERRYVIEW(dev_priv))
> @@ -6312,9 +6302,9 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >=3D 5)
>  		PIPE_CONF_CHECK_I(pipe_bpp);
>=20=20
> -	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.pipe_mode.crtc_clock);
> -	PIPE_CONF_CHECK_CLOCK_FUZZY(hw.adjusted_mode.crtc_clock);
> -	PIPE_CONF_CHECK_CLOCK_FUZZY(port_clock);
> +	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
> +	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
> +	PIPE_CONF_CHECK_I(port_clock);
>=20=20
>  	PIPE_CONF_CHECK_I(min_voltage_level);
>=20=20
> @@ -6358,7 +6348,6 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  #undef PIPE_CONF_CHECK_BOOL_INCOMPLETE
>  #undef PIPE_CONF_CHECK_P
>  #undef PIPE_CONF_CHECK_FLAGS
> -#undef PIPE_CONF_CHECK_CLOCK_FUZZY
>  #undef PIPE_CONF_CHECK_COLOR_LUT
>  #undef PIPE_CONF_CHECK_TIMINGS
>  #undef PIPE_CONF_CHECK_RECT
> @@ -6379,8 +6368,7 @@ static void intel_pipe_config_sanity_check(struct d=
rm_i915_private *dev_priv,
>  		 * FDI already provided one idea for the dotclock.
>  		 * Yell if the encoder disagrees.
>  		 */
> -		drm_WARN(&dev_priv->drm,
> -			 !intel_fuzzy_clock_check(fdi_dotclock, dotclock),
> +		drm_WARN(&dev_priv->drm, fdi_dotclock !=3D dotclock,
>  			 "FDI dotclock and encoder dotclock mismatch, fdi: %i, encoder: %i\n",
>  			 fdi_dotclock, dotclock);
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
