Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BC380C6E2
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 11:41:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E30310E392;
	Mon, 11 Dec 2023 10:41:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD64910E392
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 10:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702291279; x=1733827279;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=r9HPN2A2mC72EUPSadrR1XHTwZHG2LFwf6sekRl3+Mg=;
 b=HbXDcCVkqa2Oc8aFKJHpX05AMEpD+9dBLBQ4c/WIa3TziM5TtoFDx41L
 1RMjw3aMHkp+WIXvGqpxtaMe8sfHaBanRv3xLYlr1aAyrqZ4KulCi1Nby
 2viR3uRVA07SNXsOTvY6ZBd1vI/cOrC5LzpQnfJcL8I9nuOo4Wp9H+E8d
 gL24OKSyEr8p290msMiKblYrztg1crgYcd4m8hiPiJ+5yop6YBRxoV6q5
 7D02Ehf3nIG0guT36/ju4k3xo0dX5dBwVAtppH/SLdwyS/HQlpoTNtGQb
 i5LKEcAPuZNjjbHC1l3833uS2F4L4tjj+h0N55HRfbgm75qV05WJueqWM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="425753458"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="425753458"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 02:41:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="1104428794"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="1104428794"
Received: from kbalak2x-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.68])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 02:41:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/edp: don't write to DP_LINK_BW_SET when
 using rate select
In-Reply-To: <20231205180551.2476228-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231205180551.2476228-1-jani.nikula@intel.com>
Date: Mon, 11 Dec 2023 12:41:01 +0200
Message-ID: <87r0jtxbr6.fsf@intel.com>
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

On Tue, 05 Dec 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> The eDP 1.5 spec adds a clarification for eDP 1.4x:
>
>> For eDP v1.4x, if the Source device chooses the Main-Link rate by way
>> of DPCD 00100h, the Sink device shall ignore DPCD 00115h[2:0].
>
> We write 0 to DP_LINK_BW_SET (DPCD 100h) even when using
> DP_LINK_RATE_SET (DPCD 114h). Stop doing that, as it can cause the panel
> to ignore the rate set method.
>
> Moreover, 0 is a reserved value for DP_LINK_BW_SET, and should not be
> used.
>
> v2: Improve the comments (Ville)
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9081
> Tested-by: Animesh Manna <animesh.manna@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Pushed to drm-intel-next, thanks for the review and testing.

BR,
Jani.

> ---
>  .../drm/i915/display/intel_dp_link_training.c | 31 +++++++++++++------
>  1 file changed, 21 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index dbc1b66c8ee4..1abfafbbfa75 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -650,19 +650,30 @@ intel_dp_update_link_bw_set(struct intel_dp *intel_=
dp,
>  			    const struct intel_crtc_state *crtc_state,
>  			    u8 link_bw, u8 rate_select)
>  {
> -	u8 link_config[2];
> +	u8 lane_count =3D crtc_state->lane_count;
>=20=20
> -	/* Write the link configuration data */
> -	link_config[0] =3D link_bw;
> -	link_config[1] =3D crtc_state->lane_count;
>  	if (crtc_state->enhanced_framing)
> -		link_config[1] |=3D DP_LANE_COUNT_ENHANCED_FRAME_EN;
> -	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
> +		lane_count |=3D DP_LANE_COUNT_ENHANCED_FRAME_EN;
> +
> +	if (link_bw) {
> +		/* DP and eDP v1.3 and earlier link bw set method. */
> +		u8 link_config[] =3D { link_bw, lane_count };
>=20=20
> -	/* eDP 1.4 rate select method. */
> -	if (!link_bw)
> -		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
> -				  &rate_select, 1);
> +		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config,
> +				  ARRAY_SIZE(link_config));
> +	} else {
> +		/*
> +		 * eDP v1.4 and later link rate set method.
> +		 *
> +		 * eDP v1.4x sinks shall ignore DP_LINK_RATE_SET if
> +		 * DP_LINK_BW_SET is set. Avoid writing DP_LINK_BW_SET.
> +		 *
> +		 * eDP v1.5 sinks allow choosing either, and the last choice
> +		 * shall be active.
> +		 */
> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_LANE_COUNT_SET, lane_count);
> +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_LINK_RATE_SET, rate_select);
> +	}
>  }
>=20=20
>  /*

--=20
Jani Nikula, Intel
