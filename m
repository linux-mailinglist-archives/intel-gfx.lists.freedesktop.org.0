Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B08620F8C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 12:52:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053EC10E3F6;
	Tue,  8 Nov 2022 11:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95CB210E3F6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 11:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667908319; x=1699444319;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=We4CiLONHAiJfP3Yz1fNSWICpLgTAQsw413uGr8uchE=;
 b=BGm1p9h1/a3H6JaXRH1kGMvibE7p+RtUiqJtdCz/WKcNjOn/Hu7hL+Rs
 V/vRZZBhXq1SNIYFC/MKOm8tdbOqYoY/AIKWZDmvioM4fBBag4BOXBH2p
 YrumnHcj0B/5EVFnpn7MVdKmFmPv0ep+5kv1xFihiASRwA21ePY69+Lm1
 YUjSfgAkp5TDAu0oLijBgwCffIxj9N9FluMEcrbP6f7N2trxfui5nBxlx
 DZ7AcxFL/mk7GMg/gpIseE9jQObQ4Ize1b73/HVTxwdXhPipQL1OKrxsd
 pKXc15ixC5WJUFr6t2VH1ZhHAgJrHygnmC3Hi6zBKOUWU63dwLoUD4gJy A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="291061459"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="291061459"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 03:51:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="778898243"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="778898243"
Received: from smoriord-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.110])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 03:51:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221107194604.15227-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
 <20221107194604.15227-4-ville.syrjala@linux.intel.com>
Date: Tue, 08 Nov 2022 13:51:54 +0200
Message-ID: <87v8np8y05.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Treat HDMI as DVI when cloning
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

On Mon, 07 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> When doing HDMI+non-HDMI cloing the other sink can't get

*cloning

> the inframes/etc. so stuff like limited range output is

*infoframes

> not a good idea.
>
> Similarly when doing HDMI+HDMI cloning on g4x (only platform
> where we allow it) only one of the ports can receive infoframes
> and so again using any fancy stuff is a bad idea. We also don't
> track the inforames/audio state per-port so we'd end up with
> some kind of random mismash state when multipled encoders try
> to compute the same stuff. And the hardware will in fact
> automagically disable audio/infoframe transmission if you try
> to enable it for multiple HDMI ports at the same time.
>
> Thus disable all HDMI specific features when cloning.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index d3692c9a1d80..31927f8238d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2057,13 +2057,6 @@ static bool hdmi_bpc_possible(const struct intel_c=
rtc_state *crtc_state, int bpc
>  	if (!intel_hdmi_source_bpc_possible(dev_priv, bpc))
>  		return false;
>=20=20
> -	/*
> -	 * HDMI deep color affects the clocks, so it's only possible
> -	 * when not cloning with other encoder types.
> -	 */
> -	if (bpc > 8 && crtc_state->output_types !=3D BIT(INTEL_OUTPUT_HDMI))
> -		return false;
> -
>  	/* Display Wa_1405510057:icl,ehl */
>  	if (intel_hdmi_is_ycbcr420(crtc_state) &&
>  	    bpc =3D=3D 10 && DISPLAY_VER(dev_priv) =3D=3D 11 &&
> @@ -2238,6 +2231,12 @@ static int intel_hdmi_compute_output_format(struct=
 intel_encoder *encoder,
>  	return ret;
>  }
>=20=20
> +static bool intel_hdmi_is_cloned(const struct intel_crtc_state *crtc_sta=
te)
> +{
> +	return crtc_state->uapi.encoder_mask &&
> +		!is_power_of_2(crtc_state->uapi.encoder_mask);
> +}
> +
>  int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
>  			      struct drm_connector_state *conn_state)
> @@ -2253,8 +2252,9 @@ int intel_hdmi_compute_config(struct intel_encoder =
*encoder,
>  		return -EINVAL;
>=20=20
>  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> -	pipe_config->has_hdmi_sink =3D intel_has_hdmi_sink(intel_hdmi,
> -							 conn_state);
> +	pipe_config->has_hdmi_sink =3D
> +		intel_has_hdmi_sink(intel_hdmi, conn_state) &&
> +		!intel_hdmi_is_cloned(pipe_config);
>=20=20
>  	if (pipe_config->has_hdmi_sink)
>  		pipe_config->has_infoframe =3D true;

--=20
Jani Nikula, Intel Open Source Graphics Center
