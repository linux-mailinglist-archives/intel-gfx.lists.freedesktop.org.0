Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB29EA4D754
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 10:05:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F33D10E371;
	Tue,  4 Mar 2025 09:05:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LLUPvYS0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAB9410E307
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 09:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741079113; x=1772615113;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kZzyfzFncVc+ljMfhzGSqNR0b4eVDe8lzq2wq/e9HPQ=;
 b=LLUPvYS0/l3QYqgt2vuz3ArP+Hht+14r8HN7gEWngQOmLRwCaHEP95T/
 dMUEQ5UXkoZjY7NGiQjlq2L/9HuGzoJlBEfj/aNdsv/reT48lMDMNfglZ
 i16bPuFPeQI/1UehsugswfY1jhFlU433n0BiHNaE2yIonte4x8xLAAWUE
 s+x95Nh5wBwX0It/HvWxCl3ijJyij0ZLL7sRpCA5DLF0ZjF2S2y9asujN
 8/IGqMnZfVvJjlBdKptkaZsFJPPmquI6a5gqPkUuiObzfCSKooeUz4RvW
 +yDwGBxCu9st6KqgQojOsGOTr6ruBYdbxBaEf/DnahtiNVRjHgGDUTjhC Q==;
X-CSE-ConnectionGUID: mLmGRe4bThKPV1nba7hjqA==
X-CSE-MsgGUID: HxIi30ztRNaiatzJdwMQ4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="64432583"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="64432583"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 01:05:11 -0800
X-CSE-ConnectionGUID: 7PkM7+BKQ16RXXac+d54ZQ==
X-CSE-MsgGUID: lWhfJ4AZS2q8EEcY/2Mn5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118324175"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 01:05:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/i915/dp: Reject HBR3 when sink doesn't support
 TPS4
In-Reply-To: <20250303123952.5669-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250303123952.5669-1-ville.syrjala@linux.intel.com>
Date: Tue, 04 Mar 2025 11:05:05 +0200
Message-ID: <87r03dyxmm.fsf@intel.com>
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

On Mon, 03 Mar 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
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

Based on the logs this drops bpp from 30 to 24 on the device. In case
anyone notices, they might wonder about the degration.

As we'll no longer hit the "8.1 Gbps link rate without sink TPS4
support" warning in intel_dp_training_pattern(), as the sink rates are
filtered earlier, I'm thinking it would be a good idea to debug log
this. Otherwise it might take a while to find out why we're rejecting
HBR3.

BR,
Jani.

>
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 36 ++++++++++++++++++++-----
>  1 file changed, 29 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 205ec315b413..61a58ff801a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -172,10 +172,22 @@ int intel_dp_link_symbol_clock(int rate)
>=20=20
>  static int max_dprx_rate(struct intel_dp *intel_dp)
>  {
> +	int max_rate;
> +
>  	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> -		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
> +		max_rate =3D drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
> +	else
> +		max_rate =3D drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RA=
TE]);
> +
> +	/*
> +	 * Some broken eDP sinks illegally declare support for
> +	 * HBR3 without TPS4, and are unable to produce a stable
> +	 * output. Reject HBR3 when TPS4 is not available.
> +	 */
> +	if (!drm_dp_tps4_supported(intel_dp->dpcd))
> +		max_rate =3D min(max_rate, 540000);
>=20=20
> -	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
> +	return max_rate;
>  }
>=20=20
>  static int max_dprx_lane_count(struct intel_dp *intel_dp)
> @@ -4180,10 +4192,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
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
> @@ -4191,7 +4200,20 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
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
> +			if (rate >=3D 810000 && !drm_dp_tps4_supported(intel_dp->dpcd))
> +				break;
> +
> +			intel_dp->sink_rates[i] =3D rate;
>  		}
>  		intel_dp->num_sink_rates =3D i;
>  	}

--=20
Jani Nikula, Intel
