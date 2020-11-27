Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5202C683A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 15:52:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6D536EE09;
	Fri, 27 Nov 2020 14:52:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70CC86EE09
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 14:52:26 +0000 (UTC)
IronPort-SDR: tLHzUXzdZn82Yq6je1TcURqWrMp6zi1zY+j/zGM39z0rBZzY2J4Eij4oQJCa/YztrfSyYVYp72
 wObLTJa6Hlxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="152235144"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="152235144"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 06:52:25 -0800
IronPort-SDR: uifLJI7vF9MqBboWTtKYQ9TI1XGzo5u9SnEPeYoX1EOW0xqwRNGnujM3nTj6VA1Fwy4JgnE/nv
 Vd9VNi4uaP5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="371449155"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 27 Nov 2020 06:52:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Nov 2020 16:52:23 +0200
Date: Fri, 27 Nov 2020 16:52:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201127145223.GO6112@intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
 <20201126210314.7882-15-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126210314.7882-15-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v12 14/15] drm/i915/lspcon: Do not send DRM
 infoframes to non-HDMI sinks
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

On Fri, Nov 27, 2020 at 02:33:13AM +0530, Uma Shankar wrote:
> Non-HDMI sinks shouldn't be sent Dynamic Range and Mastering infoframes.
> Check for that when using LSPCON.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 48da5dc59939..07bef90e149e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4118,6 +4118,7 @@ static void intel_enable_ddi_dp(struct intel_atomic=
_state *state,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	enum port port =3D encoder->port;
>  =

>  	if (port =3D=3D PORT_A && INTEL_GEN(dev_priv) < 9)
> @@ -4125,7 +4126,14 @@ static void intel_enable_ddi_dp(struct intel_atomi=
c_state *state,
>  =

>  	intel_edp_backlight_on(crtc_state, conn_state);
>  	intel_psr_enable(intel_dp, crtc_state, conn_state);
> -	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> +
> +	if (dig_port->lspcon.active) {
> +		if (dig_port->dp.has_hdmi_sink)
> +			intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> +	} else {
> +		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> +	}

Simplify to
if (!lspcon || has_hdmi_sink)
	intel_dp_set_infoframes()
?

Some time ago I was pondering if we should start to use
crtc_state->has_hdmi_sink for DP too, but since we have no
way to do readout for it I'm not sure it can be done in a sane way.
I guess in the meantime I guess we need something like this.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +
>  	intel_edp_drrs_enable(intel_dp, crtc_state);
>  =

>  	if (crtc_state->has_audio)
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
