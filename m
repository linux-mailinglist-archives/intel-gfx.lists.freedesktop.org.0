Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC690205440
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 16:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 846126E42C;
	Tue, 23 Jun 2020 14:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1A666E42C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 14:16:10 +0000 (UTC)
IronPort-SDR: JB8u7sqqWdJiP39QsA+dR6lWZO+dHVyqkqAEcVQBiXTMUMxa8jEaF2Ddxwyqbgz+4x05LcsTqU
 19kV3G3hjK/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="142325727"
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="142325727"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 07:16:10 -0700
IronPort-SDR: 9Ps8tfO0ZSxAQ7ZQctZHQUaHNcf/yi4omEh+i9M78y5CiB1yJJ21/jY6lceXRnOwGjurKdn1M3
 4cwt1QMeFHEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="286267775"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 23 Jun 2020 07:16:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Jun 2020 17:16:06 +0300
Date: Tue, 23 Jun 2020 17:16:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200623141606.GV6112@intel.com>
References: <20200622232821.3093-1-lucas.demarchi@intel.com>
 <20200622232821.3093-2-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200622232821.3093-2-lucas.demarchi@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: remove alias to
 dig_port
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

On Mon, Jun 22, 2020 at 04:28:20PM -0700, Lucas De Marchi wrote:
> We don't need intel_dig_port and dig_port to refer to the same thing.
> Prefer the latter.
> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index ca7bb2294d2b..58c9f3d3e7ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3382,11 +3382,10 @@ static void intel_ddi_pre_enable_hdmi(struct inte=
l_atomic_state *state,
>  				      const struct intel_crtc_state *crtc_state,
>  				      const struct drm_connector_state *conn_state)
>  {
> -	struct intel_digital_port *intel_dig_port =3D enc_to_dig_port(encoder);
> -	struct intel_hdmi *intel_hdmi =3D &intel_dig_port->hdmi;
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	struct intel_hdmi *intel_hdmi =3D &dig_port->hdmi;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	int level =3D intel_ddi_hdmi_level(encoder);
> -	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  =

>  	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
>  	intel_ddi_clk_select(encoder, crtc_state);
> @@ -3413,7 +3412,7 @@ static void intel_ddi_pre_enable_hdmi(struct intel_=
atomic_state *state,
>  =

>  	intel_ddi_enable_pipe_clock(encoder, crtc_state);
>  =

> -	intel_dig_port->set_infoframes(encoder,
> +	dig_port->set_infoframes(encoder,
>  				       crtc_state->has_infoframe,
>  				       crtc_state, conn_state);

Misalinged parameters staring me in the face here. Didn't trawl the
other patch for similar since it's so big.

>  }
> -- =

> 2.26.2
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
