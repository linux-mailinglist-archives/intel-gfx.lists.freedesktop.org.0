Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 528EA7EA038
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:39:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE2710E3BC;
	Mon, 13 Nov 2023 15:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A52B210E3BC
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699889992; x=1731425992;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=u0mUq28XL370RYHxA4jfNtWnuUguBuDL2cSAMvIUBco=;
 b=IeEfSlq2jQ7AcOcObJ2Fng5WedvZhRbjZYcQNMIxVmTOU81DnDIq78V9
 FAVynIfbl9bjLnMb5NdYJTitiW2+KFqx0WPKsaAYSLkJA3Lacc2lJLENf
 nOyt8GnvkfKjHQYSTcAovDVOfCgTHZ0NL5Kx+ByUuXtAP2sYeSJyO4OTu
 e3r1X/jxVLp6VGIwbdpLlcQz/SIC68cKAHhBOsAr/CgJZgihKlzsuJe19
 lBKKev4mDX1xqp4ACELqNoqpZG2jwFaOU8HPzuGCjBrw4dWxJxU4F2T0q
 ahmWCz5+UEJqKMnK7myzXaWzO9zI/KopoQdd5/b+76S9bdGqmqx0to86U A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="421556904"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="421556904"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:39:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="854988558"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="854988558"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:39:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231106211915.13406-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-7-ville.syrjala@linux.intel.com>
Date: Mon, 13 Nov 2023 17:39:48 +0200
Message-ID: <87zfzhu0fv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915: Split g4x+ DP audio
 presence detect from port enable
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

On Mon, 06 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Follow the hsw+ approach toggle the audio presence detect
> when we set up the ELD, instead of doing it when turning the
> port on/off.
>
> This will facilitate audio enable/disable to happen during
> fastsets instead of requiring a full modeset.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index ecc2ec866424..266cb594d793 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -432,7 +432,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
>  	intel_de_posting_read(dev_priv, intel_dp->output_reg);
>=20=20
> -	intel_dp->DP &=3D ~(DP_PORT_EN | DP_AUDIO_OUTPUT_ENABLE);
> +	intel_dp->DP &=3D ~DP_PORT_EN;
>  	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
>  	intel_de_posting_read(dev_priv, intel_dp->output_reg);
>=20=20
> @@ -479,9 +479,16 @@ static void g4x_dp_audio_enable(struct intel_encoder=
 *encoder,
>  				const struct intel_crtc_state *crtc_state,
>  				const struct drm_connector_state *conn_state)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
>  	if (!crtc_state->has_audio)
>  		return;
>=20=20
> +	/* Enable audio presence detect */
> +	intel_dp->DP |=3D DP_AUDIO_OUTPUT_ENABLE;
> +	intel_de_write(i915, intel_dp->output_reg, intel_dp->DP);
> +
>  	intel_audio_codec_enable(encoder, crtc_state, conn_state);
>  }
>=20=20
> @@ -489,10 +496,17 @@ static void g4x_dp_audio_disable(struct intel_encod=
er *encoder,
>  				 const struct intel_crtc_state *old_crtc_state,
>  				 const struct drm_connector_state *old_conn_state)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
>  	if (!old_crtc_state->has_audio)
>  		return;
>=20=20
>  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> +
> +	/* Disable audio presence detect */
> +	intel_dp->DP &=3D ~DP_AUDIO_OUTPUT_ENABLE;
> +	intel_de_write(i915, intel_dp->output_reg, intel_dp->DP);
>  }
>=20=20
>  static void intel_disable_dp(struct intel_atomic_state *state,
> @@ -651,8 +665,6 @@ static void intel_dp_enable_port(struct intel_dp *int=
el_dp,
>  	 * fail when the power sequencer is freshly used for this port.
>  	 */
>  	intel_dp->DP |=3D DP_PORT_EN;
> -	if (crtc_state->has_audio)
> -		intel_dp->DP |=3D DP_AUDIO_OUTPUT_ENABLE;
>=20=20
>  	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
>  	intel_de_posting_read(dev_priv, intel_dp->output_reg);

--=20
Jani Nikula, Intel
