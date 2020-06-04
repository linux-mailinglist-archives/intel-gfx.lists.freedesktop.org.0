Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EC41EE902
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 18:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 869566E517;
	Thu,  4 Jun 2020 16:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF38B6E517
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 16:59:04 +0000 (UTC)
IronPort-SDR: 5O0KZSKnYvYA41pYvB2vB2XvE/9nKDs3vSTF1by65AhG/AjgG4DO7UyIoIi0GnokigSZZvrYo+
 TmF+LvqnCCRw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 09:59:03 -0700
IronPort-SDR: jEXXsC10BP6FyaY6020u7ze59JQK5+pK8q6YSWkOqSbHjTSogHP7N0hYcll5sYbZOjkSkfwuO5
 REd918l0L7dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="273168449"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 04 Jun 2020 09:59:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Jun 2020 19:59:00 +0300
Date: Thu, 4 Jun 2020 19:59:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200604165900.GX6112@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <20200603211529.3005059-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603211529.3005059-11-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 10/15] drm/i915/rkl: Don't try to read
 out DSI transcoders
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

On Wed, Jun 03, 2020 at 02:15:24PM -0700, Matt Roper wrote:
> From: Aditya Swarup <aditya.swarup@intel.com>
> =

> RKL doesn't have DSI outputs, so we shouldn't try to read out the DSI
> transcoder registers.
> =

> v2(MattR):
>  - Just set the 'extra panel mask' to edp | dsi0 | dsi1 and then mask
>    against the platform's cpu_transcoder_mask to filter out the ones
>    that don't exist on a given platform.  (Ville)
> =

> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 019fef8023ca..bcc6dc4e321b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10904,19 +10904,13 @@ static bool hsw_get_transcoder_state(struct int=
el_crtc *crtc,
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	enum intel_display_power_domain power_domain;
> -	unsigned long panel_transcoder_mask =3D 0;
> +	unsigned long panel_transcoder_mask =3D BIT(TRANSCODER_EDP) |
> +		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);

TRANSCODER_DSI_0/1 alias TRANSCODER_DSI_A/C which we do not
want in this mask.

>  	unsigned long enabled_panel_transcoders =3D 0;
>  	enum transcoder panel_transcoder;
>  	intel_wakeref_t wf;
>  	u32 tmp;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 11)
> -		panel_transcoder_mask |=3D
> -			BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);
> -
> -	if (HAS_TRANSCODER(dev_priv, TRANSCODER_EDP))
> -		panel_transcoder_mask |=3D BIT(TRANSCODER_EDP);
> -
>  	/*
>  	 * The pipe->transcoder mapping is fixed with the exception of the eDP
>  	 * and DSI transcoders handled below.
> @@ -10927,6 +10921,7 @@ static bool hsw_get_transcoder_state(struct intel=
_crtc *crtc,
>  	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
>  	 * consistency and less surprising code; it's in always on power).
>  	 */
> +	panel_transcoder_mask &=3D INTEL_INFO(dev_priv)->cpu_transcoder_mask;
>  	for_each_set_bit(panel_transcoder,
>  			 &panel_transcoder_mask,
>  			 ARRAY_SIZE(INTEL_INFO(dev_priv)->trans_offsets)) {

Can't we just use for_each_cpu_transcoder_masked() ?

> -- =

> 2.24.1
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
