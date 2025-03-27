Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D63E2A72AA0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 08:36:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B607B10E08B;
	Thu, 27 Mar 2025 07:36:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YUp2PcTJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FEF710E08B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Mar 2025 07:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743060962; x=1774596962;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=yrY8VfjNeosBxXXkOauKnIhZOnR93pLSzmdIVaLmK3o=;
 b=YUp2PcTJRlL40XbEeeH6NlaAoKNl5WaILSx+S2vMJf3WaX3mGSfwCxO1
 259QjtbWJUcnRIV/8dHrZQ44NOc0ohRllhBhyjdH/wRveOeajJJbSWkQg
 Wr9p32M2Jn029J0FpMAdVLEycFuGfcrDey115Or6Nt3fiQxhWq0Z2gKjR
 ij57rzTHaAuxQSrDL3U9xQ0z/gUUWSfbf1PUMq35p3zYRxR/FgFkhb2qh
 kILmcBNo9hvYHqMW9r16pMGoQO9QVJsZc8fcgeSThmd03WkwjZWQ5Whyb
 7lRZm/xMh4oSWVw2hvjBgKhG6T0zDZ2LgogmsJE14RYdT9aoCFGtGUH1S g==;
X-CSE-ConnectionGUID: hLPZ2Dj2Qjyi3h4S35ma/Q==
X-CSE-MsgGUID: vTEOCE0KRLSfu2sofhUNWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44297071"
X-IronPort-AV: E=Sophos;i="6.14,279,1736841600"; d="scan'208";a="44297071"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 00:36:01 -0700
X-CSE-ConnectionGUID: rvqhyw/1TaqgLYess/peMw==
X-CSE-MsgGUID: 7pjgDcxfTh+aro5gLqyw8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,279,1736841600"; d="scan'208";a="125029781"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 00:35:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/i915/dp: Reject HBR3 when sink doesn't
 support TPS4
In-Reply-To: <20250306210740.11886-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250303123952.5669-1-ville.syrjala@linux.intel.com>
 <20250306210740.11886-1-ville.syrjala@linux.intel.com>
Date: Thu, 27 Mar 2025 09:35:56 +0200
Message-ID: <87h63f6i3n.fsf@intel.com>
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

On Thu, 06 Mar 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> According to the DP spec TPS4 is mandatory for HBR3. We have
> however seen some broken eDP sinks that violate this and
> declare support for HBR3 without TPS4 support.
>
> At least in the case of the icl Dell XPS 13 7390 this results
> in an unstable output.
>
> Reject HBR3 when TPS4 supports is unavailable on the sink.
>
> v2: Leave breadcrumbs in dmesg to avoid head scratching (Jani)
>
> Cc: stable@vger.kernel.org
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 49 +++++++++++++++++++++----
>  1 file changed, 42 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 205ec315b413..70f5d1465f81 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -172,10 +172,28 @@ int intel_dp_link_symbol_clock(int rate)
>=20=20
>  static int max_dprx_rate(struct intel_dp *intel_dp)
>  {
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +	int max_rate;
> +
>  	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> -		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
> +		max_rate =3D drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
> +	else
> +		max_rate =3D drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RA=
TE]);
>=20=20
> -	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
> +	/*
> +	 * Some broken eDP sinks illegally declare support for
> +	 * HBR3 without TPS4, and are unable to produce a stable
> +	 * output. Reject HBR3 when TPS4 is not available.
> +	 */
> +	if (max_rate >=3D 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
> +		drm_dbg_kms(display->drm,
> +			    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
> +			    encoder->base.base.id, encoder->base.name);
> +		max_rate =3D 540000;
> +	}
> +
> +	return max_rate;
>  }
>=20=20
>  static int max_dprx_lane_count(struct intel_dp *intel_dp)
> @@ -4170,6 +4188,9 @@ static void intel_edp_mso_init(struct intel_dp *int=
el_dp)
>  static void
>  intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  {
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +
>  	intel_dp->num_sink_rates =3D 0;
>=20=20
>  	if (intel_dp->edp_dpcd[0] >=3D DP_EDP_14) {
> @@ -4180,10 +4201,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  				 sink_rates, sizeof(sink_rates));
>=20=20
>  		for (i =3D 0; i < ARRAY_SIZE(sink_rates); i++) {
> -			int val =3D le16_to_cpu(sink_rates[i]);
> -
> -			if (val =3D=3D 0)
> -				break;
> +			int rate;
>=20=20
>  			/* Value read multiplied by 200kHz gives the per-lane
>  			 * link rate in kHz. The source rates are, however,
> @@ -4191,7 +4209,24 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  			 * back to symbols is
>  			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
>  			 */
> -			intel_dp->sink_rates[i] =3D (val * 200) / 10;
> +			rate =3D le16_to_cpu(sink_rates[i]) * 200 / 10;
> +
> +			if (rate =3D=3D 0)
> +				break;
> +
> +			/*
> +			 * Some broken eDP sinks illegally declare support for
> +			 * HBR3 without TPS4, and are unable to produce a stable
> +			 * output. Reject HBR3 when TPS4 is not available.
> +			 */
> +			if (rate >=3D 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
> +				drm_dbg_kms(display->drm,
> +					    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
> +					    encoder->base.base.id, encoder->base.name);
> +				break;
> +			}
> +
> +			intel_dp->sink_rates[i] =3D rate;
>  		}
>  		intel_dp->num_sink_rates =3D i;
>  	}

--=20
Jani Nikula, Intel
