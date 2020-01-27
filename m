Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF3814A51E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 14:28:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7624C6EBA3;
	Mon, 27 Jan 2020 13:28:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E5F16EBA3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 13:27:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 05:27:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="222476908"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 27 Jan 2020 05:27:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2020 15:27:55 +0200
Date: Mon, 27 Jan 2020 15:27:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20200127132755.GD13686@intel.com>
References: <20200127113909.11263-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127113909.11263-1-kai.vehmanen@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add missing HDMI audio pixel
 clocks for gen12
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 27, 2020 at 01:39:09PM +0200, Kai Vehmanen wrote:
> Gen12 hardware supports HDMI audio pixel clocks of 296.7/297Mhz
> and 593.4/594Mhz. Add the missing rates and add logic to ignore
> them if running on older hardware.
> =

> Bspec: 49333
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 16 +++++++++++++---
>  drivers/gpu/drm/i915/i915_reg.h            |  4 ++++
>  2 files changed, 17 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index b18040793d9e..78f744d220da 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -148,6 +148,10 @@ static const struct {
>  	{ 74250, AUD_CONFIG_PIXEL_CLOCK_HDMI_74250 },
>  	{ 148352, AUD_CONFIG_PIXEL_CLOCK_HDMI_148352 },
>  	{ 148500, AUD_CONFIG_PIXEL_CLOCK_HDMI_148500 },
> +	{ 296703, AUD_CONFIG_PIXEL_CLOCK_HDMI_296703 },
> +	{ 297000, AUD_CONFIG_PIXEL_CLOCK_HDMI_297000 },
> +	{ 593407, AUD_CONFIG_PIXEL_CLOCK_HDMI_593407 },
> +	{ 594000, AUD_CONFIG_PIXEL_CLOCK_HDMI_594000 },
>  };
>  =

>  /* HDMI N/CTS table */
> @@ -231,13 +235,19 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36b=
pp[] =3D {
>  };
>  =

>  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
> -static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *=
crtc_state)
> +static u32 audio_config_hdmi_pixel_clock(struct drm_i915_private *dev_pr=
iv,
> +					 const struct intel_crtc_state *crtc_state)
>  {
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>  	int i;
>  =

>  	for (i =3D 0; i < ARRAY_SIZE(hdmi_audio_clock); i++) {
> +		if (INTEL_GEN(dev_priv) < 12 &&
> +		    hdmi_audio_clock[i].clock > 148500) {

Might be cleaner to do the check after the loop.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +			i =3D ARRAY_SIZE(hdmi_audio_clock);
> +			break;
> +		}
>  		if (adjusted_mode->crtc_clock =3D=3D hdmi_audio_clock[i].clock)
>  			break;
>  	}
> @@ -433,7 +443,7 @@ hsw_hdmi_audio_config_update(struct intel_encoder *en=
coder,
>  	tmp &=3D ~AUD_CONFIG_N_VALUE_INDEX;
>  	tmp &=3D ~AUD_CONFIG_PIXEL_CLOCK_HDMI_MASK;
>  	tmp &=3D ~AUD_CONFIG_N_PROG_ENABLE;
> -	tmp |=3D audio_config_hdmi_pixel_clock(crtc_state);
> +	tmp |=3D audio_config_hdmi_pixel_clock(dev_priv, crtc_state);
>  =

>  	n =3D audio_config_hdmi_get_n(crtc_state, rate);
>  	if (n !=3D 0) {
> @@ -673,7 +683,7 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>  	if (intel_crtc_has_dp_encoder(crtc_state))
>  		tmp |=3D AUD_CONFIG_N_VALUE_INDEX;
>  	else
> -		tmp |=3D audio_config_hdmi_pixel_clock(crtc_state);
> +		tmp |=3D audio_config_hdmi_pixel_clock(dev_priv, crtc_state);
>  	I915_WRITE(aud_config, tmp);
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 6cc55c103f67..61d9d045b2ff 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9241,6 +9241,10 @@ enum {
>  #define   AUD_CONFIG_PIXEL_CLOCK_HDMI_74250	(7 << 16)
>  #define   AUD_CONFIG_PIXEL_CLOCK_HDMI_148352	(8 << 16)
>  #define   AUD_CONFIG_PIXEL_CLOCK_HDMI_148500	(9 << 16)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_296703	(10 << 16)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_297000	(11 << 16)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_593407	(12 << 16)
> +#define   AUD_CONFIG_PIXEL_CLOCK_HDMI_594000	(13 << 16)
>  #define   AUD_CONFIG_DISABLE_NCTS		(1 << 3)
>  =

>  /* HSW Audio */
> -- =

> 2.17.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
