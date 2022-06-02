Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDEE53B607
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 11:27:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B06FE10FDD5;
	Thu,  2 Jun 2022 09:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C63CE10FE3C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 09:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654162046; x=1685698046;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=F7CK43ViKt7jWxbvJ8qyK6COkJP/ofS3Jx0taDJqa1I=;
 b=JPdXy8PMlTccOCpeElMX1e0CDrEhl4vavy505cMnuLyTcHi2XofnkUAF
 STKeZtbOx0jV2u2x2uS1KybPPsEV3dkaEfT1CcVFt5R3kkoiKedYaQZQj
 qZp9/94L41IEnsQZkWPQbXG6CudKF8hPZ8gEGkBaNeO7/l+p0k2qH/kf5
 RC/Ri6Rw5zDgRN+p2r++PYcQmQJLAuxBS0qje0kASC+ThbfJKlelZcATP
 SFm5oafrjpslK8o4SsoY3uWcfeQXQgdC7Z7U2CsA9A3itb6xR0+pJs7D+
 I4MBdwCwMrIPoHJfnAKesGyitWL7ze+Ii+wXw3nAaDb72qMztg826JjC3 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="263527919"
X-IronPort-AV: E=Sophos;i="5.91,270,1647327600"; d="scan'208";a="263527919"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 02:27:26 -0700
X-IronPort-AV: E=Sophos;i="5.91,270,1647327600"; d="scan'208";a="606752293"
Received: from fbackhou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 02:27:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220601151907.18725-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
 <20220601151907.18725-2-ville.syrjala@linux.intel.com>
Date: Thu, 02 Jun 2022 12:27:21 +0300
Message-ID: <87sfonpg92.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Initialize eDP source rates
 after per-panel VBT parsing
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

On Wed, 01 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We'll need to know the VBT panel_type before we can determine the
> maximum link rate for eDP. To that end move
> intel_dp_set_source_rates() & co. to be called after the per-panel
> VBT parsing has been done.
>
> I'm not immediately spotting anything that would consult the link
> rate arrays before this, so seems safe enough.

Cc: Imre

I guess these are some of the reasons we have them there:

3f61ef9777c0 ("drm/i915/dp: Ensure sink rate values are always valid")
bedcaddadd22 ("drm/i915/dp: Ensure sink/link max lane count values are alwa=
ys valid")
9ad87de47356 ("drm/i915/dp: Ensure max link params are always valid")

But I can't see why they'd need to be so early. *knocks wood*

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index b8e2d3cd4d68..03af93ef9e93 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2852,9 +2852,6 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>  		intel_dp_set_sink_rates(intel_dp);
>  	intel_dp_set_max_sink_lane_count(intel_dp);
>=20=20
> -	intel_dp_set_common_rates(intel_dp);
> -	intel_dp_reset_max_link_params(intel_dp);
> -
>  	/* Read the eDP DSC DPCD registers */
>  	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		intel_dp_get_dsc_sink_cap(intel_dp);
> @@ -5342,11 +5339,8 @@ intel_dp_init_connector(struct intel_digital_port =
*dig_port,
>  		type =3D DRM_MODE_CONNECTOR_DisplayPort;
>  	}
>=20=20
> -	intel_dp_set_source_rates(intel_dp);
>  	intel_dp_set_default_sink_rates(intel_dp);
>  	intel_dp_set_default_max_sink_lane_count(intel_dp);
> -	intel_dp_set_common_rates(intel_dp);
> -	intel_dp_reset_max_link_params(intel_dp);
>=20=20
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		intel_dp->pps.active_pipe =3D vlv_active_pipe(intel_dp);
> @@ -5384,6 +5378,10 @@ intel_dp_init_connector(struct intel_digital_port =
*dig_port,
>  		goto fail;
>  	}
>=20=20
> +	intel_dp_set_source_rates(intel_dp);
> +	intel_dp_set_common_rates(intel_dp);
> +	intel_dp_reset_max_link_params(intel_dp);
> +
>  	intel_dp_add_properties(intel_dp, connector);
>=20=20
>  	if (is_hdcp_supported(dev_priv, port) && !intel_dp_is_edp(intel_dp)) {

--=20
Jani Nikula, Intel Open Source Graphics Center
