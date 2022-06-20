Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9B2551399
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 11:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B6A710EFC4;
	Mon, 20 Jun 2022 09:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D9F10EFC4
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 09:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655715715; x=1687251715;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=lIheO6bqcIOrMsMA6iDH2CHr1W6Drgg7K/w9/fGfs70=;
 b=YmcDwGGXGamV1m8fMKsgAbs7W6mhnD3P0sYqhSxf2XoyhZTC0A5w7HqR
 OjdhygSkX7kTlZPw2R7CZDlnGpnmv9utDZGVblqvaUL7qQct6Du/MqRqc
 3U52fDZVZlzqEwr6yRdCMctkPAMgQh460ibC8pdXu7rotCSofX2He7FHq
 q1IGKR3JiRmNwqthfFAgwX1QFT6mkSXqviLZ1mjq/3iZoM5ZoJoasN5J1
 rJkKBtUyhiBpXQI0SL6K+hx0ZKLCHlOscxch9cgqblz5M1XfG8QTfoqwU
 Rd00sAVCn/lqQHOGQfa2OlsHMXGzE+sK1JUYPf6XgJaFTIAZuCGNXJKog w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="260275948"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="260275948"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 02:01:49 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="643022311"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 02:01:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220617160510.2082-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
 <20220617160510.2082-2-ville.syrjala@linux.intel.com>
Date: Mon, 20 Jun 2022 12:01:43 +0300
Message-ID: <87mte7u2rs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 01/16] drm/i915: Relocate
 intel_crtc_dotclock()
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

On Fri, 17 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_crtc_dotclock() is a bit misplaced. In lieu of a better
> place let's just move it next to its friends in intel_display.c.

With hopes we'll find a better place than intel_display.c for this and
its friends in the future,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 22 --------------------
>  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++++++
>  2 files changed, 22 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 272e1bf6006b..51bf26dcb209 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -323,28 +323,6 @@ static int icl_calc_tbt_pll_link(struct drm_i915_pri=
vate *dev_priv,
>  	}
>  }
>=20=20
> -int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
> -{
> -	int dotclock;
> -
> -	if (intel_crtc_has_dp_encoder(pipe_config))
> -		dotclock =3D intel_dotclock_calculate(pipe_config->port_clock,
> -						    &pipe_config->dp_m_n);
> -	else if (pipe_config->has_hdmi_sink && pipe_config->pipe_bpp > 24)
> -		dotclock =3D pipe_config->port_clock * 24 / pipe_config->pipe_bpp;
> -	else
> -		dotclock =3D pipe_config->port_clock;
> -
> -	if (pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 &&
> -	    !intel_crtc_has_dp_encoder(pipe_config))
> -		dotclock *=3D 2;
> -
> -	if (pipe_config->pixel_multiplier)
> -		dotclock /=3D pipe_config->pixel_multiplier;
> -
> -	return dotclock;
> -}
> -
>  static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
>  {
>  	/* CRT dotclock is determined via other means */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 90bd26431e31..b24784c4522d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4569,6 +4569,28 @@ int intel_dotclock_calculate(int link_freq,
>  	return div_u64(mul_u32_u32(m_n->link_m, link_freq), m_n->link_n);
>  }
>=20=20
> +int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
> +{
> +	int dotclock;
> +
> +	if (intel_crtc_has_dp_encoder(pipe_config))
> +		dotclock =3D intel_dotclock_calculate(pipe_config->port_clock,
> +						    &pipe_config->dp_m_n);
> +	else if (pipe_config->has_hdmi_sink && pipe_config->pipe_bpp > 24)
> +		dotclock =3D pipe_config->port_clock * 24 / pipe_config->pipe_bpp;
> +	else
> +		dotclock =3D pipe_config->port_clock;
> +
> +	if (pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 &&
> +	    !intel_crtc_has_dp_encoder(pipe_config))
> +		dotclock *=3D 2;
> +
> +	if (pipe_config->pixel_multiplier)
> +		dotclock /=3D pipe_config->pixel_multiplier;
> +
> +	return dotclock;
> +}
> +
>  /* Returns the currently programmed mode of the given encoder. */
>  struct drm_display_mode *
>  intel_encoder_current_mode(struct intel_encoder *encoder)

--=20
Jani Nikula, Intel Open Source Graphics Center
