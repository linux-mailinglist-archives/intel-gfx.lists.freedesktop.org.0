Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 684E05FC80E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E5B10E51F;
	Wed, 12 Oct 2022 15:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B2110E519
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665587742; x=1697123742;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=PV1ttITQ5cQJJKJJreDI1BxZ+F0WPtc1ELm5n6S+JRg=;
 b=KJz+MRnLnpk640NJaYrWtCXQz8odpYtvQb0xicR6DvK+9RabAMIaMmC7
 UwJOU/AC4GN1iYa4GrL6GMC0fJmie1u1jqKK5noQrs7LpyLoRccyRiKgo
 dyDSurh8Zr4OqWdaL5nmFz24N6FGSLtUM1eub0vvdQECbV9phMhZM+n9m
 FBUPjAKjgUnoRF6G+8PP67geFr56w8coN2WdVwDqjwpR+qXdhYAojCmYm
 k/BXTTQtAgX4b8PF9xzohN0rC3zHiFBBA0sWKXBaCRWWhb9m5Q/xJiWpX
 g1AGattPq25XcgHj3lYZwURcWGVRyOixtXiHms8OpQQ9c41Fn5pTuF3UN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="331313572"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="331313572"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:15:40 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="695508607"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="695508607"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:15:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-18-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-18-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 18:15:42 +0300
Message-ID: <87y1tlt6n5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 17/22] drm/i915/sdvo: Extract
 intel_sdvo_has_audio()
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the SDVO audio state computaiton into a helper.

*computation

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> This is almost identical to intel_hdmi_has_audio(),
> except the sink capabilities are stored under intel_sdvo
> rather than intel_hdmi. Might be nice to get rid of
> this duplication eventually...
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 27 +++++++++++++++--------
>  1 file changed, 18 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index cf8e80936d8e..8852564b5fbf 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1297,13 +1297,28 @@ static bool intel_sdvo_limited_color_range(struct=
 intel_encoder *encoder,
>  	return intel_hdmi_limited_color_range(crtc_state, conn_state);
>  }
>=20=20
> +static bool intel_sdvo_has_audio(struct intel_encoder *encoder,
> +				 const struct intel_crtc_state *crtc_state,
> +				 const struct drm_connector_state *conn_state)
> +{
> +	struct intel_sdvo *intel_sdvo =3D to_sdvo(encoder);
> +	const struct intel_digital_connector_state *intel_conn_state =3D
> +		to_intel_digital_connector_state(conn_state);
> +
> +	if (!crtc_state->has_hdmi_sink)
> +		return false;
> +
> +	if (intel_conn_state->force_audio =3D=3D HDMI_AUDIO_AUTO)
> +		return intel_sdvo->has_hdmi_audio;
> +	else
> +		return intel_conn_state->force_audio =3D=3D HDMI_AUDIO_ON;
> +}
> +
>  static int intel_sdvo_compute_config(struct intel_encoder *encoder,
>  				     struct intel_crtc_state *pipe_config,
>  				     struct drm_connector_state *conn_state)
>  {
>  	struct intel_sdvo *intel_sdvo =3D to_sdvo(encoder);
> -	struct intel_sdvo_connector_state *intel_sdvo_state =3D
> -		to_intel_sdvo_connector_state(conn_state);
>  	struct intel_sdvo_connector *intel_sdvo_connector =3D
>  		to_intel_sdvo_connector(conn_state->connector);
>  	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
> @@ -1362,13 +1377,7 @@ static int intel_sdvo_compute_config(struct intel_=
encoder *encoder,
>=20=20
>  	pipe_config->has_hdmi_sink =3D intel_has_hdmi_sink(intel_sdvo, conn_sta=
te);
>=20=20
> -	if (pipe_config->has_hdmi_sink) {
> -		if (intel_sdvo_state->base.force_audio =3D=3D HDMI_AUDIO_AUTO)
> -			pipe_config->has_audio =3D intel_sdvo->has_hdmi_audio;
> -		else
> -			pipe_config->has_audio =3D
> -				intel_sdvo_state->base.force_audio =3D=3D HDMI_AUDIO_ON;
> -	}
> +	pipe_config->has_audio =3D intel_sdvo_has_audio(encoder, pipe_config, c=
onn_state);
>=20=20
>  	pipe_config->limited_color_range =3D
>  		intel_sdvo_limited_color_range(encoder, pipe_config,

--=20
Jani Nikula, Intel Open Source Graphics Center
