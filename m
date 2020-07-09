Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83036219F42
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 13:47:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B13FB6EA48;
	Thu,  9 Jul 2020 11:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF2806EA48
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 11:47:15 +0000 (UTC)
IronPort-SDR: HvF42zmm9YquMmjMe7KJjnH0ghd6fpOa6VCqTMdRybdLjUOTWo7xwWEE8u4km0D+SGIYBpcg0M
 ENVnhiCCo5qQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="209510972"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="209510972"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:47:15 -0700
IronPort-SDR: dSRnguM3UblXmjEfEfokk/ansh/cpJt57H12G1BtsgXQrPn1NZEJ5kYHjwN6RbyblU5VC9IjtN
 zF6C5eDW0WKw==
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="457879591"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:47:14 -0700
Date: Thu, 9 Jul 2020 14:47:10 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200709114710.GD16776@ideak-desk.fi.intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
 <20200108181242.13650-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108181242.13650-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/sdvo: Make SDVO deal with HDMI
 pixel repeat
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 08, 2020 at 08:12:40PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> With SDVO the pipe config pixel_multiplier only concerns itself with the
> data on the SDVO bus. Any HDMI specific pixel repeat must be handled by
> the SDVO device itself. To do that simply configure the SDVO pixel
> replication factor appropriately. We already set up the infoframe PRB
> values correctly via the infoframe helpers.
> =

> There is no cap we can check for this. The spec says that 1X,2X,4X are
> mandatory, anything else is optional. 1X and 2X are all we need so
> we should be able to assume they work.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

Shouldn't DRM_MODE_FLAG_DBLCLK be set for the read-out mode in
intel_sdvo_get_config()?

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 27 +++++++++++++++++++----
>  1 file changed, 23 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index a0bbd728aa54..34d5bd750de8 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -943,6 +943,13 @@ static bool intel_sdvo_set_colorimetry(struct intel_=
sdvo *intel_sdvo,
>  	return intel_sdvo_set_value(intel_sdvo, SDVO_CMD_SET_COLORIMETRY, &mode=
, 1);
>  }
>  =

> +static bool intel_sdvo_set_pixel_replication(struct intel_sdvo *intel_sd=
vo,
> +					     u8 pixel_repeat)
> +{
> +	return intel_sdvo_set_value(intel_sdvo, SDVO_CMD_SET_PIXEL_REPLI,
> +				    &pixel_repeat, 1);
> +}
> +
>  static bool intel_sdvo_set_audio_state(struct intel_sdvo *intel_sdvo,
>  				       u8 audio_state)
>  {
> @@ -1493,6 +1500,9 @@ static void intel_sdvo_pre_enable(struct intel_enco=
der *intel_encoder,
>  					   SDVO_COLORIMETRY_RGB220 :
>  					   SDVO_COLORIMETRY_RGB256);
>  		intel_sdvo_set_avi_infoframe(intel_sdvo, crtc_state);
> +		intel_sdvo_set_pixel_replication(intel_sdvo,
> +						 !!(adjusted_mode->flags &
> +						    DRM_MODE_FLAG_DBLCLK));
>  	} else
>  		intel_sdvo_set_encode(intel_sdvo, SDVO_ENCODE_DVI);
>  =

> @@ -1839,17 +1849,26 @@ intel_sdvo_mode_valid(struct drm_connector *conne=
ctor,
>  	struct intel_sdvo_connector *intel_sdvo_connector =3D
>  		to_intel_sdvo_connector(connector);
>  	int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
> +	bool has_hdmi_sink =3D intel_has_hdmi_sink(intel_sdvo, connector->state=
);
> +	int clock =3D mode->clock;
>  =

>  	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return MODE_NO_DBLESCAN;
>  =

> -	if (intel_sdvo->pixel_clock_min > mode->clock)
> -		return MODE_CLOCK_LOW;
>  =

> -	if (intel_sdvo->pixel_clock_max < mode->clock)
> +	if (clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>  =

> -	if (mode->clock > max_dotclk)
> +	if (mode->flags & DRM_MODE_FLAG_DBLCLK) {
> +		if (!has_hdmi_sink)
> +			return MODE_CLOCK_LOW;
> +		clock *=3D 2;
> +	}
> +
> +	if (intel_sdvo->pixel_clock_min > clock)
> +		return MODE_CLOCK_LOW;
> +
> +	if (intel_sdvo->pixel_clock_max < clock)
>  		return MODE_CLOCK_HIGH;
>  =

>  	if (IS_LVDS(intel_sdvo_connector)) {
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
