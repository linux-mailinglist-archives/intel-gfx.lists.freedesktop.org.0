Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +G5ZEpPNy2luLwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 15:35:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DB836A53B
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 15:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E461E10E95D;
	Tue, 31 Mar 2026 13:35:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="HMGWt68q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com
 [136.143.188.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09BF510E1DE;
 Tue, 31 Mar 2026 13:35:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1774964109; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=nh024V5/6apg0ZihOIWYvLW4Me1c/q02G6xc8/dlc07Ik/aVdrPdnOYhBYdTX3K3thbxZKJDK4DvQWirzIj6q8dotTvMEhZxTPm4At6gA6/Hbqju7FkTLHME4tWYLRFi3FMqTxb0yi2OK0kueNrFAGSIJ3V/RmbWRvXzSMGnFEc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1774964109;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=hc7ZXy7iPAJ9l43ijItZ3lwM+XClvjkTosZx6H9KVOs=; 
 b=FfBNmzzPw+dYMc2/4AS3rHPQn3i6khzXML9/64NxTgjrYoX21JKR/6hZ8LWAYo/Fgvwe8wrjiQ3usV1ciHJgS5q2hEc+SQp42xCn/5OV5rP7aN2ALiGxAXrFivmztiFcP00puLHOOqm+at7kbepiSrjj4XJBBQHtpFdomjiaM6A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774964109; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=hc7ZXy7iPAJ9l43ijItZ3lwM+XClvjkTosZx6H9KVOs=;
 b=HMGWt68qXJTtYjlXS2AaYs61bBvo6FTWvBXNszZR88aykgtwvK6DM2/7+hGR8+7q
 ZfTFfgEoRAOsECvC5++vxlVaojPT5782r2yKFHO1LOiA/xy81vIhHi1xsOKEStTBlP8
 4uX64q8fpIekJahB1H+aU17/TDeOlN3Bpsv1uFeI=
Received: by mx.zohomail.com with SMTPS id 1774964107929434.5571937826678;
 Tue, 31 Mar 2026 06:35:07 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: intel-gfx@lists.freedesktop.org,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/9] drm/i915/dp: Restructure the sink/output format
 selection
Date: Tue, 31 Mar 2026 15:35:04 +0200
Message-ID: <2479715.CQOukoFCf9@workhorse>
In-Reply-To: <20260330235339.29479-5-ville.syrjala@linux.intel.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
 <20260330235339.29479-5-ville.syrjala@linux.intel.com>
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A8DB836A53B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tuesday, 31 March 2026 01:53:34 Central European Summer Time Ville Syrja=
la wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> Restructure intel_dp_compute_output_format() to resemble the new
> intel_hdmi_compute_output_formats().
>=20
> Again, we basically have two main code paths:
> - YCbCr 4:2:0 only modes
> - everything else including YCbCr 4:2:0 also modes
>=20
> Take the exact same approach with the DP code, making the
> format selection much less convoluted.
>=20
> Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 98 +++++++++++++++++--------
>  1 file changed, 69 insertions(+), 29 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 4955bd8b11d7..230b45acde29 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1371,6 +1371,28 @@ intel_dp_mode_valid_downstream(struct intel_connec=
tor *connector,
>  	return MODE_OK;
>  }
> =20
> +static enum drm_mode_status
> +intel_dp_sink_format_valid(struct intel_connector *connector,
> +			   const struct drm_display_mode *mode,
> +			   enum intel_output_format sink_format)
> +{
> +	const struct drm_display_info *info =3D &connector->base.display_info;
> +
> +	switch (sink_format) {
> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> +		if (!connector->base.ycbcr_420_allowed ||
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
> +

I think here we'll want another
=2D--
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915=
/display/intel_dp.c
index e23162fc3f8b..a1dc089c54f5 100644
=2D-- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1373,6 +1373,11 @@ intel_dp_sink_format_valid(struct intel_connector *c=
onnector,
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

though this time, no bpc related changes. With that fixed, I get
YCbCr444 at 10bpc as well as 8bpc. Can't test 4:2:0 for what appears
to be unrelated userspace reasons, though the KMS property's enum
value is exposed properly.

>  int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
>  {
>  	return DISPLAY_VER(display) >=3D 30 ? 6144 : 5120;
> @@ -3330,41 +3352,59 @@ static int
>  intel_dp_compute_output_format(struct intel_encoder *encoder,
>  			       struct intel_crtc_state *crtc_state,
>  			       struct drm_connector_state *conn_state,
> -			       bool respect_downstream_limits)
> +			       bool respect_downstream_limits,
> +			       enum intel_output_format sink_format)
>  {
> -	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct intel_connector *connector =3D intel_dp->attached_connector;
> -	const struct drm_display_info *info =3D &connector->base.display_info;
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
> -	bool ycbcr_420_only;
> -	int ret;
> =20
> -	ycbcr_420_only =3D drm_mode_is_420_only(info, adjusted_mode);
> -
> -	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
> -		drm_dbg_kms(display->drm,
> -			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling ba=
ck to RGB.\n");
> -		crtc_state->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> -	} else {
> -		crtc_state->sink_format =3D intel_dp_sink_format(connector, adjusted_m=
ode);
> -	}
> +	if (intel_dp_sink_format_valid(connector, adjusted_mode,
> +				       sink_format) !=3D MODE_OK)
> +		return -EINVAL;
> =20
> +	crtc_state->sink_format =3D sink_format;
>  	crtc_state->output_format =3D intel_dp_output_format(connector, crtc_st=
ate->sink_format);
> =20
> -	ret =3D intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> -					   respect_downstream_limits);
> -	if (ret) {
> -		if (crtc_state->sink_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 ||
> -		    !connector->base.ycbcr_420_allowed ||
> -		    !drm_mode_is_420_also(info, adjusted_mode))
> -			return ret;
> -
> -		crtc_state->sink_format =3D INTEL_OUTPUT_FORMAT_YCBCR420;
> -		crtc_state->output_format =3D intel_dp_output_format(connector,
> -								   crtc_state->sink_format);
> -		ret =3D intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> -						   respect_downstream_limits);
> +	return intel_dp_compute_link_config(encoder, crtc_state, conn_state,
> +					    respect_downstream_limits);

With the removal of intel_dp_sink_format in this function, I wonder
if we can get rid of it entirely now. It's only called in
intel_dp_mode_min_link_bpp_x16, which seems to be used for bandwidth
limitation calculations (where YCbCr444 vs RGB444 doesn't matter, so
we're fine in that regard).

Judging by the "min" in the function name, I assume it should be
using INTEL_OUTPUT_FORMAT_YCBCR420 in drm_mode_is_420_also cases,
whereas right now it only gets this from intel_dp_sink_format if
the mode is drm_mode_is_420_only. So I think removing
intel_dp_sink_format entirely as a follow-up, and folding a
corrected minimum bandwidth computation that uses 420 if
drm_mode_is_420 into intel_dp_mode_min_link_bpp_x16 would make
sense, unless I'm totally misunderstanding the code here.

> +}
> +
> +static int
> +intel_dp_compute_formats(struct intel_encoder *encoder,
> +			 struct intel_crtc_state *crtc_state,
> +			 struct drm_connector_state *conn_state,
> +			 bool respect_downstream_limits)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +	struct intel_connector *connector =3D intel_dp->attached_connector;
> +	const struct drm_display_info *info =3D &connector->base.display_info;
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
> +	int ret;
> +
> +	if (drm_mode_is_420_only(info, adjusted_mode)) {
> +		ret =3D intel_dp_compute_output_format(encoder, crtc_state, conn_state,
> +						     respect_downstream_limits,
> +						     INTEL_OUTPUT_FORMAT_YCBCR420);
> +
> +		if (ret) {
> +			drm_dbg_kms(display->drm,
> +				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling b=
ack to RGB.\n");
> +
> +			ret =3D intel_dp_compute_output_format(encoder, crtc_state, conn_stat=
e,
> +							     respect_downstream_limits,
> +							     INTEL_OUTPUT_FORMAT_RGB);
> +		}
> +	} else {
> +		ret =3D intel_dp_compute_output_format(encoder, crtc_state, conn_state,
> +						     respect_downstream_limits,
> +						     INTEL_OUTPUT_FORMAT_RGB);
> +
> +		if (ret && drm_mode_is_420_also(info, adjusted_mode))
> +			ret =3D intel_dp_compute_output_format(encoder, crtc_state, conn_stat=
e,
> +							     respect_downstream_limits,
> +							     INTEL_OUTPUT_FORMAT_YCBCR420);
>  	}
> =20
>  	return ret;
> @@ -3539,9 +3579,9 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  	 * Try to respect downstream TMDS clock limits first, if
>  	 * that fails assume the user might know something we don't.
>  	 */
> -	ret =3D intel_dp_compute_output_format(encoder, pipe_config, conn_state=
, true);
> +	ret =3D intel_dp_compute_formats(encoder, pipe_config, conn_state, true=
);
>  	if (ret)
> -		ret =3D intel_dp_compute_output_format(encoder, pipe_config, conn_stat=
e, false);
> +		ret =3D intel_dp_compute_formats(encoder, pipe_config, conn_state, fal=
se);
>  	if (ret)
>  		return ret;
> =20
>=20




