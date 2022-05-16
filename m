Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C7E528462
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 14:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C01A010E8C4;
	Mon, 16 May 2022 12:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86BB210E8C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 12:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652705002; x=1684241002;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=M3S8OEVMdH7wXc+apUVxpEeKzvAFwDgk+9nTSXiiA9g=;
 b=luXyIPNoBK8KB7Yvd8tulRzJzhrRe1s+7UzX59vxOfzpVGt9SjyjcqDO
 LuUIPUvWt0GQn7zVC/K4Ii+/tSuoLGJBWr62QdA6l7LbLGbtptuMH5h/r
 f9SeF16iYP4DmXimHyd3MoPSpwe5q+dPYSwHsoQUC9QAsgQbTWeoTjdoZ
 p2rlVJ16OiICd4q8oFTha3xOonOL5GPazS8vfzbcYUOnDOYzv7TvtxF2B
 cLnf6kFFJSNRJHCJNgCVzcWPOpkyaRu3tY7IL/h7D6rmUPejg3IGCByYM
 9otfI80BtRoNFkstWLrSNAiQrhlxuECDDMg6M2kJhhw+hZvVmHkOD3XhB Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="252885525"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="252885525"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:43:22 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="699514152"
Received: from akuriata-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.145.127])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 05:43:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220504123350.13235-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-11-ville.syrjala@linux.intel.com>
 <20220504123350.13235-1-ville.syrjala@linux.intel.com>
Date: Mon, 16 May 2022 15:43:18 +0300
Message-ID: <87mtfhfy1l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 10/26] drm/i915: Extract
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

On Wed, 04 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract intel_crtc_dotclock() from ddi_dotclock_get(). We'll reuse
> this during state computation in order to determine the actual final
> dotclcok after the DPLL computation has been done (which may not give
> us the exact same port_clock that we fed in).
>
> v2: Add the prototype
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Okay, seems like intel_crtc_dotclock() might be in the wrong place now,
but okay for now.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 18 ++++++++++++------
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  2 files changed, 13 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 9e6fa59eabba..0cf2d4fba6a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -322,14 +322,10 @@ static int icl_calc_tbt_pll_link(struct drm_i915_pr=
ivate *dev_priv,
>  	}
>  }
>=20=20
> -static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
> +int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
>  {
>  	int dotclock;
>=20=20
> -	/* CRT dotclock is determined via other means */
> -	if (pipe_config->has_pch_encoder)
> -		return;
> -
>  	if (intel_crtc_has_dp_encoder(pipe_config))
>  		dotclock =3D intel_dotclock_calculate(pipe_config->port_clock,
>  						    &pipe_config->dp_m_n);
> @@ -345,7 +341,17 @@ static void ddi_dotclock_get(struct intel_crtc_state=
 *pipe_config)
>  	if (pipe_config->pixel_multiplier)
>  		dotclock /=3D pipe_config->pixel_multiplier;
>=20=20
> -	pipe_config->hw.adjusted_mode.crtc_clock =3D dotclock;
> +	return dotclock;
> +}
> +
> +static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
> +{
> +	/* CRT dotclock is determined via other means */
> +	if (pipe_config->has_pch_encoder)
> +		return;
> +
> +	pipe_config->hw.adjusted_mode.crtc_clock =3D
> +		intel_crtc_dotclock(pipe_config);
>  }
>=20=20
>  void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 187910d94ec6..7af6b5a413dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -635,6 +635,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc=
 *crtc,
>  void i9xx_crtc_clock_get(struct intel_crtc *crtc,
>  			 struct intel_crtc_state *pipe_config);
>  int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n =
*m_n);
> +int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config);
>  enum intel_display_power_domain intel_port_to_power_domain(struct intel_=
digital_port *dig_port);
>  enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port);

--=20
Jani Nikula, Intel Open Source Graphics Center
