Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DC4533BB1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 13:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79FD410E822;
	Wed, 25 May 2022 11:24:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAB9110E822
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 11:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653477881; x=1685013881;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=DDXfDB+/JwKNX4/v+gpwk/L9sZEzOUUA5EWB0TXzkL0=;
 b=neJIDMxo3VitR5lOj/bTfJAcN/Jlih5nBRa64W6EVKN/cY14xEMVt0av
 fnO6jyNvlsTXOMpWv3MncUoT6P4014j2tMPgAnVxpXtWSjUoUb2uISYNS
 riFqDYZTgAGipc1nmKkxllEMXygd+MIBMntLtCFH9zA5Qyuxuh6X1D/dB
 65/mnRtqMEV0o6Hil3HAoKRS0o2biXQMY72ry09/hVT23AOjvb+yxBYPt
 VHTX22ZTGtKSxLLO4lHp9T34AFbABzsU11hzJ3pOKQcvByDTQImzKN1re
 5oiF9IURe8MvItRHccM3vLwci0tpaxIKe7CtDyCNG0FyDmqCf2+OimwSt Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="360178428"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="360178428"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:24:41 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="573189919"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:24:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-23-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-23-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 14:24:36 +0300
Message-ID: <87ilptua6j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 22/26] drm/i915: Allow M/N change during
 fastset on bdw+
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> On BDW+ M/N are double buffered and so we can easily reprogram them
> during a fastset. So for eDP panels that support seamless DRRS we
> can just change these without a full modeset.
>
> For earlier platforms we'd need to play tricks with M1/N1 vs.
> M2/N2 during the fastset to make sure we do the switch atomically.
> Not sure the added complexity is worth the hassle, so leave it
> alone for now.

I guess the commit message should mention this bumps the bandwidth
requirement for eDP to the native mode with the max refresh rate.

It's also not obvious to me this takes link training fallback into
account. AFAICT the modes get pruned, but the userspace switching to a
different mode does not help?

One nitpick inline below.

BR,
Jani.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 13 +++++++---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 26 +++++++++++++++----
>  3 files changed, 32 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 2acc5f3a2c0e..f30bdcdd4c84 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6174,7 +6174,8 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv)) {
> -		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
> +		if (!fastset || !pipe_config->seamless_m_n)
> +			PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
>  	} else {
>  		PIPE_CONF_CHECK_M_N(dp_m_n);
>  		PIPE_CONF_CHECK_M_N(dp_m2_n2);
> @@ -6306,8 +6307,10 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >=3D 5)
>  		PIPE_CONF_CHECK_I(pipe_bpp);
>=20=20
> -	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
> -	PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
> +	if (!fastset || !pipe_config->seamless_m_n) {
> +		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
> +		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
> +	}
>  	PIPE_CONF_CHECK_I(port_clock);
>=20=20
>  	PIPE_CONF_CHECK_I(min_voltage_level);
> @@ -7890,6 +7893,10 @@ static void intel_pipe_fastset(const struct intel_=
crtc_state *old_crtc_state,
>  	if (DISPLAY_VER(dev_priv) >=3D 9 ||
>  	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
>  		hsw_set_linetime_wm(new_crtc_state);
> +
> +	if (new_crtc_state->seamless_m_n)
> +		intel_cpu_transcoder_set_m1_n1(crtc, new_crtc_state->cpu_transcoder,
> +					       &new_crtc_state->dp_m_n);
>  }
>=20=20
>  static void commit_pipe_pre_planes(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 408152f9f46a..fb58893510a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1057,6 +1057,7 @@ struct intel_crtc_state {
>  	/* m2_n2 for eDP downclock */
>  	struct intel_link_m_n dp_m2_n2;
>  	bool has_drrs;
> +	bool seamless_m_n;
>=20=20
>  	/* PSR is supported but might not be enabled due the lack of enabled pl=
anes */
>  	bool has_psr;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index e4a79c11fd25..9385178c7fd6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1270,21 +1270,33 @@ intel_dp_adjust_compliance_config(struct intel_dp=
 *intel_dp,
>  	}
>  }
>=20=20
> +static int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
> +			       const struct drm_connector_state *conn_state)
> +{
> +	struct intel_connector *connector =3D to_intel_connector(conn_state->co=
nnector);
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
> +
> +	/* FIXME a bit of a mess wrt clock vs. crtc_clock */
> +	if (intel_panel_drrs_type(connector) =3D=3D DRRS_TYPE_SEAMLESS)
> +		return intel_panel_highest_mode(connector, adjusted_mode)->clock;
> +	else
> +		return adjusted_mode->crtc_clock;
> +}
> +
>  /* Optimize link config in order: max bpp, min clock, min lanes */
>  static int
>  intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>  				  struct intel_crtc_state *pipe_config,
> +				  const struct drm_connector_state *conn_state,
>  				  const struct link_config_limits *limits)
>  {
> -	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
> -	int bpp, i, lane_count;
> +	int bpp, i, lane_count, clock =3D intel_dp_mode_clock(pipe_config, conn=
_state);
>  	int mode_rate, link_rate, link_avail;
>=20=20
>  	for (bpp =3D limits->max_bpp; bpp >=3D limits->min_bpp; bpp -=3D 2 * 3)=
 {
>  		int output_bpp =3D intel_dp_output_bpp(pipe_config->output_format, bpp=
);
>=20=20
> -		mode_rate =3D intel_dp_link_required(adjusted_mode->crtc_clock,
> -						   output_bpp);
> +		mode_rate =3D intel_dp_link_required(clock, output_bpp);
>=20=20
>  		for (i =3D 0; i < intel_dp->num_common_rates; i++) {
>  			link_rate =3D intel_dp_common_rate(intel_dp, i);
> @@ -1584,7 +1596,7 @@ intel_dp_compute_link_config(struct intel_encoder *=
encoder,
>  	 * Optimize for slow and wide for everything, because there are some
>  	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
>  	 */
> -	ret =3D intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limit=
s);
> +	ret =3D intel_dp_compute_link_config_wide(intel_dp, pipe_config, conn_s=
tate, &limits);
>=20=20
>  	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
>  		drm_dbg_kms(&i915->drm, "Try DSC (fallback=3D%s, joiner=3D%s, force=3D=
%s)\n",
> @@ -1873,6 +1885,10 @@ intel_dp_drrs_compute_config(struct intel_connecto=
r *connector,
>  		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
>  	int pixel_clock;
>=20=20
> +	if ((DISPLAY_VER(i915) >=3D 9 || IS_BROADWELL(i915)) &&

Seems like this condition is duplicated in a few places.

> +	    intel_panel_drrs_type(connector) =3D=3D DRRS_TYPE_SEAMLESS)
> +		pipe_config->seamless_m_n =3D true;
> +
>  	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
>  		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
>  			intel_zero_m_n(&pipe_config->dp_m2_n2);

--=20
Jani Nikula, Intel Open Source Graphics Center
