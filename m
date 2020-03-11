Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9731820D6
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 19:32:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 866176E457;
	Wed, 11 Mar 2020 18:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB0846E457
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 18:32:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 11:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,541,1574150400"; d="scan'208";a="289469746"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 11 Mar 2020 11:32:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Mar 2020 20:32:33 +0200
Date: Wed, 11 Mar 2020 20:32:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20200311183233.GD13686@intel.com>
References: <20200310162338.9387-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310162338.9387-1-kai.vehmanen@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Add missing HDMI audio pixel
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

On Tue, Mar 10, 2020 at 06:23:38PM +0200, Kai Vehmanen wrote:
> Gen12 hardware supports HDMI audio pixel clocks of 296.7/297Mhz
> and 593.4/594Mhz. Add the missing rates and add logic to ignore
> them if running on older hardware.
> =

> Bspec: 49333
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Thanks. Pushed to dinq.

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 8 ++++++++
>  drivers/gpu/drm/i915/i915_reg.h            | 4 ++++
>  2 files changed, 12 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 19bf206037c2..62f234f641de 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -149,6 +149,10 @@ static const struct {
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
> @@ -234,6 +238,7 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp=
[] =3D {
>  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
>  static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *=
crtc_state)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>  	int i;
> @@ -243,6 +248,9 @@ static u32 audio_config_hdmi_pixel_clock(const struct=
 intel_crtc_state *crtc_sta
>  			break;
>  	}
>  =

> +	if (INTEL_GEN(dev_priv) < 12 && adjusted_mode->crtc_clock > 148500)
> +		i =3D ARRAY_SIZE(hdmi_audio_clock);
> +
>  	if (i =3D=3D ARRAY_SIZE(hdmi_audio_clock)) {
>  		DRM_DEBUG_KMS("HDMI audio pixel clock setting for %d not found, fallin=
g back to defaults\n",
>  			      adjusted_mode->crtc_clock);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 79ae9654dac9..ee4a75ac9186 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9251,6 +9251,10 @@ enum {
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

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
