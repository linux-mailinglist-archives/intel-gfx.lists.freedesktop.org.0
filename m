Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 344467EA045
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:41:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B848110E3BF;
	Mon, 13 Nov 2023 15:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB64810E3BF
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699890076; x=1731426076;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=6LduayVpiwu9fV7IfnwOZo6HSsEb43FsUudnS0+fMiU=;
 b=bMqEafYd1h+dTIMs/Q7+8VGJnN2fayaCgP77LDHfkhH/5N3qhrgp5lS6
 hZsZUODRYcRA7/z51i6LZ8fmpuGIdvbQn7OspjTDsmGF43VpLrC2L2wgt
 5GYI/WNFFpGCGQ/poD01MUhIuOVy627WWkd9Zyjg8AEMKiXEx7M8s3gCx
 z+TFZdzNIUDG1B147PjyQNnZJVAMGFSXTHLAdGvgpDHv/IRILiFSUqn10
 PL6iAgpd7kyuvwZ+koDznn6Xn6YJdUffI8sg7nN05Z5ovmMwuTPL9X5j3
 dL7mXcike6xAsBE4LWbbqUQB7w7o5ZyB243SI9ZdI7BHgF83Y0wT4joP8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="421557084"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="421557084"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:41:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="854988801"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="854988801"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:41:14 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231106211915.13406-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-8-ville.syrjala@linux.intel.com>
Date: Mon, 13 Nov 2023 17:41:12 +0200
Message-ID: <87wmulu0dj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915: Split g4x+ HDMI audio
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
>  drivers/gpu/drm/i915/display/g4x_hdmi.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 9c70245d8b0a..beda6b480bf1 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -228,8 +228,6 @@ static void g4x_hdmi_enable_port(struct intel_encoder=
 *encoder,
>  	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
>=20=20
>  	temp |=3D SDVO_ENABLE;
> -	if (pipe_config->has_audio)
> -		temp |=3D HDMI_AUDIO_ENABLE;
>=20=20
>  	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
>  	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
> @@ -240,12 +238,16 @@ static void g4x_hdmi_audio_enable(struct intel_enco=
der *encoder,
>  				  const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_hdmi *hdmi =3D enc_to_intel_hdmi(encoder);
>=20=20
>  	if (!crtc_state->has_audio)
>  		return;
>=20=20
>  	drm_WARN_ON(&i915->drm, !crtc_state->has_hdmi_sink);
>=20=20
> +	/* Enable audio presence detect */
> +	intel_de_rmw(i915, hdmi->hdmi_reg, 0, HDMI_AUDIO_ENABLE);
> +
>  	intel_audio_codec_enable(encoder, crtc_state, conn_state);
>  }
>=20=20
> @@ -253,10 +255,16 @@ static void g4x_hdmi_audio_disable(struct intel_enc=
oder *encoder,
>  				   const struct intel_crtc_state *old_crtc_state,
>  				   const struct drm_connector_state *old_conn_state)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_hdmi *hdmi =3D enc_to_intel_hdmi(encoder);
> +
>  	if (!old_crtc_state->has_audio)
>  		return;
>=20=20
>  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> +
> +	/* Disable audio presence detect */
> +	intel_de_rmw(i915, hdmi->hdmi_reg, HDMI_AUDIO_ENABLE, 0);
>  }
>=20=20
>  static void g4x_enable_hdmi(struct intel_atomic_state *state,
> @@ -282,8 +290,6 @@ static void ibx_enable_hdmi(struct intel_atomic_state=
 *state,
>  	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
>=20=20
>  	temp |=3D SDVO_ENABLE;
> -	if (pipe_config->has_audio)
> -		temp |=3D HDMI_AUDIO_ENABLE;
>=20=20
>  	/*
>  	 * HW workaround, need to write this twice for issue
> @@ -335,8 +341,6 @@ static void cpt_enable_hdmi(struct intel_atomic_state=
 *state,
>  	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
>=20=20
>  	temp |=3D SDVO_ENABLE;
> -	if (pipe_config->has_audio)
> -		temp |=3D HDMI_AUDIO_ENABLE;
>=20=20
>  	/*
>  	 * WaEnableHDMI8bpcBefore12bpc:snb,ivb
> @@ -396,7 +400,7 @@ static void intel_disable_hdmi(struct intel_atomic_st=
ate *state,
>=20=20
>  	temp =3D intel_de_read(dev_priv, intel_hdmi->hdmi_reg);
>=20=20
> -	temp &=3D ~(SDVO_ENABLE | HDMI_AUDIO_ENABLE);
> +	temp &=3D ~SDVO_ENABLE;
>  	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
>  	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);

--=20
Jani Nikula, Intel
