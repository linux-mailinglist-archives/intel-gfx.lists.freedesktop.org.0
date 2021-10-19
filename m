Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C1D433F3F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 21:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C91F66E897;
	Tue, 19 Oct 2021 19:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C3A26E897
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 19:28:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="289462169"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="289462169"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 12:28:28 -0700
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="494258157"
Received: from jsanz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.211.239])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 12:28:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211015133921.4609-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
 <20211015133921.4609-6-ville.syrjala@linux.intel.com>
Date: Tue, 19 Oct 2021 22:28:23 +0300
Message-ID: <87bl3kq0fc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/20] drm/i915/hdmi: Extract
 intel_hdmi_output_format()
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

On Fri, 15 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Reorganize the HDMI 4:2:0 handling a bit by introducing
> intel_hdmi_output_format(). We already have the DP counterpart
> and I want to unify the 4:2:0 handling across both a bit.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Patches 1-5,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 35 ++++++++++++++---------
>  1 file changed, 22 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 18e7ef125827..7e6af959bf83 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2157,34 +2157,43 @@ static bool intel_hdmi_has_audio(struct intel_enc=
oder *encoder,
>  		return intel_conn_state->force_audio =3D=3D HDMI_AUDIO_ON;
>  }
>=20=20
> +static enum intel_output_format
> +intel_hdmi_output_format(struct intel_connector *connector,
> +			 bool ycbcr_420_output)
> +{
> +	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
> +		return INTEL_OUTPUT_FORMAT_YCBCR420;
> +	else
> +		return INTEL_OUTPUT_FORMAT_RGB;
> +}
> +
>  static int intel_hdmi_compute_output_format(struct intel_encoder *encode=
r,
>  					    struct intel_crtc_state *crtc_state,
>  					    const struct drm_connector_state *conn_state)
>  {
> -	struct drm_connector *connector =3D conn_state->connector;
> -	struct drm_i915_private *i915 =3D to_i915(connector->dev);
> +	struct intel_connector *connector =3D to_intel_connector(conn_state->co=
nnector);
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
> +	const struct drm_display_info *info =3D &connector->base.display_info;
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	bool ycbcr_420_only =3D drm_mode_is_420_only(info, adjusted_mode);
>  	int ret;
> -	bool ycbcr_420_only;
>=20=20
> -	ycbcr_420_only =3D drm_mode_is_420_only(&connector->display_info, adjus=
ted_mode);
> -	if (connector->ycbcr_420_allowed && ycbcr_420_only) {
> -		crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
> -	} else {
> -		if (!connector->ycbcr_420_allowed && ycbcr_420_only)
> -			drm_dbg_kms(&i915->drm,
> -				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling b=
ack to RGB.\n");
> +	crtc_state->output_format =3D intel_hdmi_output_format(connector, ycbcr=
_420_only);
> +
> +	if (ycbcr_420_only && !intel_hdmi_is_ycbcr420(crtc_state)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling ba=
ck to RGB.\n");
>  		crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>  	}
>=20=20
>  	ret =3D intel_hdmi_compute_clock(encoder, crtc_state);
>  	if (ret) {
>  		if (intel_hdmi_is_ycbcr420(crtc_state) ||
> -		    !connector->ycbcr_420_allowed ||
> -		    !drm_mode_is_420_also(&connector->display_info, adjusted_mode))
> +		    !connector->base.ycbcr_420_allowed ||
> +		    !drm_mode_is_420_also(info, adjusted_mode))
>  			return ret;
>=20=20
> -		crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
> +		crtc_state->output_format =3D intel_hdmi_output_format(connector, true=
);
>  		ret =3D intel_hdmi_compute_clock(encoder, crtc_state);
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
