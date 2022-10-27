Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BA760FA8E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 16:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2561610E653;
	Thu, 27 Oct 2022 14:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263C810E657
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 14:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666881544; x=1698417544;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=3PrHTCCUskJvDjW3UQTojbk+LOCikwBZxbnHzkjxatA=;
 b=SoVAGH9mYtqXxydUzKfpOxw73zzTnNBHbSjRXOLC2DdrZ7ZyHyjQWuYw
 +cf6rBqgNBxpz5CDe6o8FFaMU1lgummozp36ddVNro1MOAw05TXK/4xCK
 RsxAwyGZ0z2n5518YFx5WeJVLKEmJtaOOYS/Dh1SFU4/kqvbdqijJl1Cn
 xdV1NLn8+uVAl+EkX0oqaOB1pAogCU2rnlidSzmStb8fJ5jrfFRAr4Y7z
 Z+kaHpaeaySjXyHulUcl4QdFNxzlwDESag3jfA+xkc8qTrUvz4H85YkKD
 nD2H4roSBTsJpm40W5pb95vFQVgMeYZwki3SBrdK1QGzswhpaVi+3tZFa g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="287955772"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="287955772"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:36:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="737706372"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="737706372"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.147])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:36:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221026101134.20865-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
 <20221026101134.20865-3-ville.syrjala@linux.intel.com>
Date: Thu, 27 Oct 2022 17:36:24 +0300
Message-ID: <87pmedcp07.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/sdvo: Setup DDC fully before
 output init
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 26 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Call intel_sdvo_select_ddc_bus() before initializing any
> of the outputs. And before that is functional (assuming no VBT)
> we have to set up the controlled_outputs thing. Otherwise DDC
> won't be functional during the output init but LVDS really
> needs it for the fixed mode setup.
>
> Note that the whole multi output support still looks very
> bogus, and more work will be needed to make it correct.
> But for now this should at least fix the LVDS EDID fixed mode
> setup.
>
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7301
> Fixes: aa2b88074a56 ("drm/i915/sdvo: Fix multi function encoder stuff")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 31 +++++++++--------------
>  1 file changed, 12 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index c6200a91a777..ccf81d616cb4 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2746,13 +2746,10 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo=
, int device)
>  	if (!intel_sdvo_connector)
>  		return false;
>=20=20
> -	if (device =3D=3D 0) {
> -		intel_sdvo->controlled_output |=3D SDVO_OUTPUT_TMDS0;
> +	if (device =3D=3D 0)
>  		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_TMDS0;
> -	} else if (device =3D=3D 1) {
> -		intel_sdvo->controlled_output |=3D SDVO_OUTPUT_TMDS1;
> +	else if (device =3D=3D 1)
>  		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_TMDS1;
> -	}
>=20=20
>  	intel_connector =3D &intel_sdvo_connector->base;
>  	connector =3D &intel_connector->base;
> @@ -2807,7 +2804,6 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, i=
nt type)
>  	encoder->encoder_type =3D DRM_MODE_ENCODER_TVDAC;
>  	connector->connector_type =3D DRM_MODE_CONNECTOR_SVIDEO;
>=20=20
> -	intel_sdvo->controlled_output |=3D type;
>  	intel_sdvo_connector->output_flag =3D type;
>=20=20
>  	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
> @@ -2848,13 +2844,10 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_s=
dvo, int device)
>  	encoder->encoder_type =3D DRM_MODE_ENCODER_DAC;
>  	connector->connector_type =3D DRM_MODE_CONNECTOR_VGA;
>=20=20
> -	if (device =3D=3D 0) {
> -		intel_sdvo->controlled_output |=3D SDVO_OUTPUT_RGB0;
> +	if (device =3D=3D 0)
>  		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_RGB0;
> -	} else if (device =3D=3D 1) {
> -		intel_sdvo->controlled_output |=3D SDVO_OUTPUT_RGB1;
> +	else if (device =3D=3D 1)
>  		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_RGB1;
> -	}
>=20=20
>  	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
>  		kfree(intel_sdvo_connector);
> @@ -2884,13 +2877,10 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdv=
o, int device)
>  	encoder->encoder_type =3D DRM_MODE_ENCODER_LVDS;
>  	connector->connector_type =3D DRM_MODE_CONNECTOR_LVDS;
>=20=20
> -	if (device =3D=3D 0) {
> -		intel_sdvo->controlled_output |=3D SDVO_OUTPUT_LVDS0;
> +	if (device =3D=3D 0)
>  		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_LVDS0;
> -	} else if (device =3D=3D 1) {
> -		intel_sdvo->controlled_output |=3D SDVO_OUTPUT_LVDS1;
> +	else if (device =3D=3D 1)
>  		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_LVDS1;
> -	}
>=20=20
>  	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
>  		kfree(intel_sdvo_connector);
> @@ -2945,8 +2935,14 @@ static u16 intel_sdvo_filter_output_flags(u16 flag=
s)
>  static bool
>  intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(intel_sdvo->base.base.dev);
> +
>  	flags =3D intel_sdvo_filter_output_flags(flags);
>=20=20
> +	intel_sdvo->controlled_output =3D flags;
> +
> +	intel_sdvo_select_ddc_bus(i915, intel_sdvo);

AFAICT the ->controlled_outputs member could now be removed and just
passed by value here.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
>  	if (flags & SDVO_OUTPUT_TMDS0)
>  		if (!intel_sdvo_dvi_init(intel_sdvo, 0))
>  			return false;
> @@ -2987,7 +2983,6 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sd=
vo, u16 flags)
>  	if (flags =3D=3D 0) {
>  		unsigned char bytes[2];
>=20=20
> -		intel_sdvo->controlled_output =3D 0;
>  		memcpy(bytes, &intel_sdvo->caps.output_flags, 2);
>  		DRM_DEBUG_KMS("%s: Unknown SDVO output type (0x%02x%02x)\n",
>  			      SDVO_NAME(intel_sdvo),
> @@ -3399,8 +3394,6 @@ bool intel_sdvo_init(struct drm_i915_private *dev_p=
riv,
>  	 */
>  	intel_sdvo->base.cloneable =3D 0;
>=20=20
> -	intel_sdvo_select_ddc_bus(dev_priv, intel_sdvo);
> -
>  	/* Set the input timing to the screen. Assume always input 0. */
>  	if (!intel_sdvo_set_target_input(intel_sdvo))
>  		goto err_output;

--=20
Jani Nikula, Intel Open Source Graphics Center
