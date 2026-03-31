Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPJ1Jka6y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:12:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E30D0369500
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:12:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E642B10E99D;
	Tue, 31 Mar 2026 12:12:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="Ed5S7gSR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com
 [136.143.188.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2DE810E958;
 Tue, 31 Mar 2026 12:12:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1774959168; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=mB+bYdQaVQKjQJMEgS6+7Orri/2hSQSsU4fESrfzdYM9oEHwR93qXEh0n2oJl30hi5KsK1LYLyWJe0BqUw1iHG3oqgknvCyJsSiihFSFwP8tLqNC2CJIxBI5AMAgWEKytB3/ZXWVnOq1qEEvmWAIv3JAlvpCiAkGT6ZIU6ccIdk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1774959168;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=5sOvhoHZSW+OQe8QyBxFtsVVu8nL41LWEj1KoksKUSA=; 
 b=S7EYEXvXTm9X+fA0eGtlw50+gAdiZ81A/zQlrYJnziDbuJO8by/2RwftD8TW8/bYNOwmdVb1j8vRDYBdo+VuRhvGuDtO2zTWF/pU308I64FhjeG9jOtFUlVMYid4waxrKRxvVFA13Z19DF5Nf+JHwm2Unc/GK06evHYZc8SrnGk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774959168; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=5sOvhoHZSW+OQe8QyBxFtsVVu8nL41LWEj1KoksKUSA=;
 b=Ed5S7gSR5Qy/zDeQtXzwoVSN2+hyVccpai+Sl8OjzVuD8OTkMLFNVgT0RPqjdFO7
 dVJ2xZcrxzxjTASD4xHLNxhTPn7VBzOWLJ5VTHm2QWzP1IrGYzWciPulvNgXYsBgbY1
 uzBe4BHZBDGs8PNlh2c2rWk/W+zfSZg5p7xYh6Zs=
Received: by mx.zohomail.com with SMTPS id 1774959166710407.8067483053901;
 Tue, 31 Mar 2026 05:12:46 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: intel-gfx@lists.freedesktop.org,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/9] drm/i915/hdmi: Restructure the sink/output format
 selection
Date: Tue, 31 Mar 2026 14:12:43 +0200
Message-ID: <2868694.iZASKD2KPV@workhorse>
In-Reply-To: <20260330235339.29479-3-ville.syrjala@linux.intel.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
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
X-Spamd-Result: default: False [-1.81 / 15.00];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Queue-Id: E30D0369500
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tuesday, 31 March 2026 01:53:32 Central European Summer Time Ville Syrja=
la wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> intel_hdmi_compute_output_format() is a bit of a mess. Try to
> restructure it into a more readable form.
>=20
> Right now we basically have two main code paths:
> - YCbCr 4:2:0 only modes
> - everything else including YCbCr 4:2:0 also modes
>=20
> Those two basically do the same two steps (try 4:2:0 and try 4:4:4)
> but in opposite orders. Let's write that out in a more explicit
> if-else form. And since I'm running out of function names I'll
> rename the function with that high level logic into
> intel_hdmi_compute_formats() and it will call (the new) with
> intel_hdmi_compute_output_format() with an explicit sink_format
> as needed.
>=20
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 112 ++++++++++++++--------
>  1 file changed, 70 insertions(+), 42 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 072b0554cc24..16873fc7bcb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2021,6 +2021,30 @@ intel_hdmi_mode_clock_valid(struct drm_connector *=
_connector, int clock,
>  	return status;
>  }
> =20
> +static enum drm_mode_status
> +intel_hdmi_sink_format_valid(struct intel_connector *connector,
> +			     const struct drm_display_mode *mode,
> +			     bool has_hdmi_sink,
> +			     enum intel_output_format sink_format)
> +{
> +	const struct drm_display_info *info =3D &connector->base.display_info;
> +
> +	switch (sink_format) {
> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> +		if (!has_hdmi_sink ||
> +		    !connector->base.ycbcr_420_allowed ||
> +		    !drm_mode_is_420(info, mode))
> +			return MODE_NO_420;
> +
> +		return MODE_OK;
> +	case INTEL_OUTPUT_FORMAT_RGB:
> +		return MODE_OK;
> +	default:
> +		MISSING_CASE(sink_format);
> +		return MODE_BAD;
> +	}
> +}

I think this here is missing INTEL_OUTPUT_FORMAT_YCBCR444 as a case.
The following diff adding it for both intel_hdmi_sink_format_valid
and intel_hdmi_sink_bpc_possible that I quickly whipped up may be the
way to go, but I'm unsure about the interaction between the two:

=2D--
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i9=
15/display/intel_hdmi.c
index 6bc1689cbf93..38b9924ebef0 100644
=2D-- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1966,6 +1966,8 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_c=
onnector *_connector,
=20
                if (sink_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420)
                        return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_3=
6;
+               else if (sink_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR444)
+                       return info->edid_hdmi_ycbcr444_dc_modes & DRM_EDID=
_HDMI_DC_36;
                else
                        return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_H=
DMI_DC_36;
        case 10:
@@ -1974,6 +1976,8 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_c=
onnector *_connector,
=20
                if (sink_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420)
                        return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_3=
0;
+               else if (sink_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR444)
+                       return info->edid_hdmi_ycbcr444_dc_modes & DRM_EDID=
_HDMI_DC_30;
                else
                        return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_H=
DMI_DC_30;
        case 8:
@@ -2038,6 +2042,11 @@ intel_hdmi_sink_format_valid(struct intel_connector =
*connector,
=20
                return MODE_OK;
        case INTEL_OUTPUT_FORMAT_RGB:
+               return MODE_OK;
+       case INTEL_OUTPUT_FORMAT_YCBCR444:
+               if (!(info->color_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCB=
CR444)))
+                       return MODE_BAD;
+
                return MODE_OK;
        default:
                MISSING_CASE(sink_format);
=2D--

It does work for me though at YCBCr 4:4:4 @ 12bpc, 10bpc and 8bpc, so both =
info
members this relies on are populated correctly.

> +
>  static enum drm_mode_status
>  intel_hdmi_mode_valid(struct drm_connector *_connector,
>  		      const struct drm_display_mode *mode)
> @@ -2246,20 +2270,6 @@ static bool intel_hdmi_has_audio(struct intel_enco=
der *encoder,
>  		return intel_conn_state->force_audio =3D=3D HDMI_AUDIO_ON;
>  }
> =20
> -static enum intel_output_format
> -intel_hdmi_sink_format(const struct intel_crtc_state *crtc_state,
> -		       struct intel_connector *connector,
> -		       bool ycbcr_420_output)
> -{
> -	if (!crtc_state->has_hdmi_sink)
> -		return INTEL_OUTPUT_FORMAT_RGB;
> -
> -	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
> -		return INTEL_OUTPUT_FORMAT_YCBCR420;
> -	else
> -		return INTEL_OUTPUT_FORMAT_RGB;
> -}
> -
>  static enum intel_output_format
>  intel_hdmi_output_format(const struct intel_crtc_state *crtc_state)
>  {
> @@ -2268,37 +2278,55 @@ intel_hdmi_output_format(const struct intel_crtc_=
state *crtc_state)
> =20
>  static int intel_hdmi_compute_output_format(struct intel_encoder *encode=
r,
>  					    struct intel_crtc_state *crtc_state,
> -					    const struct drm_connector_state *conn_state,
> -					    bool respect_downstream_limits)
> +					    struct intel_connector *connector,
> +					    bool respect_downstream_limits,
> +					    enum intel_output_format sink_format)
>  {
> -	struct intel_display *display =3D to_intel_display(encoder);
> -	struct intel_connector *connector =3D to_intel_connector(conn_state->co=
nnector);
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
> -	const struct drm_display_info *info =3D &connector->base.display_info;
> -	bool ycbcr_420_only =3D drm_mode_is_420_only(info, adjusted_mode);
> -	int ret;
> =20
> -	crtc_state->sink_format =3D
> -		intel_hdmi_sink_format(crtc_state, connector, ycbcr_420_only);
> -
> -	if (ycbcr_420_only && crtc_state->sink_format !=3D INTEL_OUTPUT_FORMAT_=
YCBCR420) {
> -		drm_dbg_kms(display->drm,
> -			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling ba=
ck to RGB.\n");
> -		crtc_state->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> -	}
> +	if (intel_hdmi_sink_format_valid(connector, adjusted_mode,
> +					 crtc_state->has_hdmi_sink, sink_format) !=3D MODE_OK)
> +		return -EINVAL;
> =20
> +	crtc_state->sink_format =3D sink_format;
>  	crtc_state->output_format =3D intel_hdmi_output_format(crtc_state);
> -	ret =3D intel_hdmi_compute_clock(encoder, crtc_state, respect_downstrea=
m_limits);
> -	if (ret) {
> -		if (crtc_state->sink_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 ||
> -		    !crtc_state->has_hdmi_sink ||
> -		    !connector->base.ycbcr_420_allowed ||
> -		    !drm_mode_is_420_also(info, adjusted_mode))
> -			return ret;
> -
> -		crtc_state->sink_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
> -		crtc_state->output_format =3D intel_hdmi_output_format(crtc_state);
> -		ret =3D intel_hdmi_compute_clock(encoder, crtc_state, respect_downstre=
am_limits);
> +
> +	return intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream=
_limits);
> +}
> +
> +static int intel_hdmi_compute_formats(struct intel_encoder *encoder,
> +				      struct intel_crtc_state *crtc_state,
> +				      const struct drm_connector_state *conn_state,
> +				      bool respect_downstream_limits)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct intel_connector *connector =3D to_intel_connector(conn_state->co=
nnector);
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
> +	const struct drm_display_info *info =3D &connector->base.display_info;
> +	int ret;
> +
> +	if (drm_mode_is_420_only(info, adjusted_mode)) {
> +		ret =3D intel_hdmi_compute_output_format(encoder, crtc_state, connecto=
r,
> +						       respect_downstream_limits,
> +						       INTEL_OUTPUT_FORMAT_YCBCR420);
> +
> +		if (ret) {
> +			drm_dbg_kms(display->drm,
> +				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling b=
ack to RGB.\n");
> +
> +			ret =3D intel_hdmi_compute_output_format(encoder, crtc_state, connect=
or,
> +							       respect_downstream_limits,
> +							       INTEL_OUTPUT_FORMAT_RGB);
> +		}
> +	} else {
> +		ret =3D intel_hdmi_compute_output_format(encoder, crtc_state, connecto=
r,
> +						       respect_downstream_limits,
> +						       INTEL_OUTPUT_FORMAT_RGB);
> +
> +		if (ret && drm_mode_is_420_also(info, adjusted_mode))
> +			ret =3D intel_hdmi_compute_output_format(encoder, crtc_state, connect=
or,
> +							       respect_downstream_limits,
> +							       INTEL_OUTPUT_FORMAT_YCBCR420);
>  	}
> =20
>  	return ret;
> @@ -2375,9 +2403,9 @@ int intel_hdmi_compute_config(struct intel_encoder =
*encoder,
>  	 * Try to respect downstream TMDS clock limits first, if
>  	 * that fails assume the user might know something we don't.
>  	 */
> -	ret =3D intel_hdmi_compute_output_format(encoder, pipe_config, conn_sta=
te, true);
> +	ret =3D intel_hdmi_compute_formats(encoder, pipe_config, conn_state, tr=
ue);
>  	if (ret)
> -		ret =3D intel_hdmi_compute_output_format(encoder, pipe_config, conn_st=
ate, false);
> +		ret =3D intel_hdmi_compute_formats(encoder, pipe_config, conn_state, f=
alse);
>  	if (ret) {
>  		drm_dbg_kms(display->drm,
>  			    "unsupported HDMI clock (%d kHz), rejecting mode\n",
>=20




