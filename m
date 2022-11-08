Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8917C620F85
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 12:51:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E113710E3F6;
	Tue,  8 Nov 2022 11:51:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A906510E3F6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 11:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667908262; x=1699444262;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=pqUs75VPjhpKkVif3pJixXeLqjBiia7EXbeZm+i2nEU=;
 b=fp8vNsRLyqg1qeQMj6yg9sgwKmhxTydZU51VvBw2M4JpgzwzbWM4PCLr
 1xiN/QPE/y2U7iEpIwRUtjLPmOIo1TEarEV5sO2JnZkn3aLF+AET6TkL3
 C5AdPft0mwUhjZ3kdd2eYhko2x9niBsZtxweZfcmXXBxTEM8F38qNvAwy
 M8AWqk2MqdSRgvS4HOkPOJGExcdCRLBF0V5tRrlehac0hj/CMldfgXbuW
 XuSsTBjryuftWVxLRG0kMeN9IqRfqETpLrWjZiv9JRvitKbzHzHxatgCJ
 wBwyPhwEtXAx4KtTIeqMd22dIIlYKnSGsUO5Be72hJZ6RNGu2GK0SHAum Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="372817356"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="372817356"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 03:51:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="965562688"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="965562688"
Received: from smoriord-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.110])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 03:51:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221107194604.15227-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
 <20221107194604.15227-3-ville.syrjala@linux.intel.com>
Date: Tue, 08 Nov 2022 13:50:58 +0200
Message-ID: <87y1sl8y1p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Force RGB output for DVI sink
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
> YCbCr output requires infoframes and whatnot, so don't allow
> it when dealing with a DVI sink (or a HDMI sink we wishc to
> treat as DVI).

*wish

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index f2a4431a7fbf..d3692c9a1d80 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2190,9 +2190,13 @@ static bool intel_hdmi_has_audio(struct intel_enco=
der *encoder,
>  }
>=20=20
>  static enum intel_output_format
> -intel_hdmi_output_format(struct intel_connector *connector,
> +intel_hdmi_output_format(const struct intel_crtc_state *crtc_state,
> +			 struct intel_connector *connector,
>  			 bool ycbcr_420_output)
>  {
> +	if (!crtc_state->has_hdmi_sink)
> +		return INTEL_OUTPUT_FORMAT_RGB;
> +
>  	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
>  		return INTEL_OUTPUT_FORMAT_YCBCR420;
>  	else
> @@ -2211,7 +2215,8 @@ static int intel_hdmi_compute_output_format(struct =
intel_encoder *encoder,
>  	bool ycbcr_420_only =3D drm_mode_is_420_only(info, adjusted_mode);
>  	int ret;
>=20=20
> -	crtc_state->output_format =3D intel_hdmi_output_format(connector, ycbcr=
_420_only);
> +	crtc_state->output_format =3D
> +		intel_hdmi_output_format(crtc_state, connector, ycbcr_420_only);
>=20=20
>  	if (ycbcr_420_only && !intel_hdmi_is_ycbcr420(crtc_state)) {
>  		drm_dbg_kms(&i915->drm,
> @@ -2226,7 +2231,7 @@ static int intel_hdmi_compute_output_format(struct =
intel_encoder *encoder,
>  		    !drm_mode_is_420_also(info, adjusted_mode))
>  			return ret;
>=20=20
> -		crtc_state->output_format =3D intel_hdmi_output_format(connector, true=
);
> +		crtc_state->output_format =3D intel_hdmi_output_format(crtc_state, con=
nector, true);
>  		ret =3D intel_hdmi_compute_clock(encoder, crtc_state, respect_downstre=
am_limits);
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
