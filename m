Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DFC620F84
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 12:50:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9C910E3FD;
	Tue,  8 Nov 2022 11:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B069E10E3FD
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 11:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667908239; x=1699444239;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=BqNMkAttK8tvS/90Mq3G/spmoD/EvvDTsTatE9jLjS0=;
 b=cxCYg+xIUrvYt15eztQt8tdcGIckZozvHcfisRhipzhFDBRvDnhJGiOb
 btVgWaP9XEgerLjpxJ3yJVEnaQHKpzYakAcCrWJyn/7QAMF07CW7bS24b
 9Ej2kCa7gpiw2oo+BxwgSufCBj0nF9ANYOihn2AMcoaBUXJDCXnPIP3rB
 dcZ+qLEZ6jNlfbtL+YQ/c73tibT00qkTmVVSRiBmRfViPvhPL54BiKCPm
 tPW/dxuWwOr1wh3A9V4Z1NoenpReQKrrv35OrUpPTF/jQlEk1KFQFTWhm
 S/uA4OqiPIhDr8Ag88rFo3+A9dqAFxyI3DBeU0+KoJzJ4hn9BbqHWH+wx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="290393295"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="290393295"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 03:50:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="667561901"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="667561901"
Received: from smoriord-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.110])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 03:50:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221107194604.15227-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
 <20221107194604.15227-2-ville.syrjala@linux.intel.com>
Date: Tue, 08 Nov 2022 13:50:30 +0200
Message-ID: <871qqdacmx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Introduce
 g4x_hdmi_compute_config()
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
> Start pulling some of the more platform specific things out from
> intel_hdmi_compute_config(). has_pch_encoder is clearly one
> such thing.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c   | 14 +++++++++++++-
>  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ---
>  2 files changed, 13 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 8aadf96fa5e9..3d09359d7337 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -78,6 +78,18 @@ static bool intel_hdmi_get_hw_state(struct intel_encod=
er *encoder,
>  	return ret;
>  }
>=20=20
> +static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
> +				   struct intel_crtc_state *crtc_state,
> +				   struct drm_connector_state *conn_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	if (HAS_PCH_SPLIT(i915))
> +		crtc_state->has_pch_encoder =3D true;
> +
> +	return intel_hdmi_compute_config(encoder, crtc_state, conn_state);
> +}
> +
>  static void intel_hdmi_get_config(struct intel_encoder *encoder,
>  				  struct intel_crtc_state *pipe_config)
>  {
> @@ -543,7 +555,7 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>  			 "HDMI %c", port_name(port));
>=20=20
>  	intel_encoder->hotplug =3D intel_hdmi_hotplug;
> -	intel_encoder->compute_config =3D intel_hdmi_compute_config;
> +	intel_encoder->compute_config =3D g4x_hdmi_compute_config;
>  	if (HAS_PCH_SPLIT(dev_priv)) {
>  		intel_encoder->disable =3D pch_disable_hdmi;
>  		intel_encoder->post_disable =3D pch_post_disable_hdmi;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 02f8374ea51f..f2a4431a7fbf 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2257,9 +2257,6 @@ int intel_hdmi_compute_config(struct intel_encoder =
*encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
>  		pipe_config->pixel_multiplier =3D 2;
>=20=20
> -	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv))
> -		pipe_config->has_pch_encoder =3D true;
> -
>  	pipe_config->has_audio =3D
>  		intel_hdmi_has_audio(encoder, pipe_config, conn_state);

--=20
Jani Nikula, Intel Open Source Graphics Center
