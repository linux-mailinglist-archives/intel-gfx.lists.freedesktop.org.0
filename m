Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E655B5AAB
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 14:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29A9910E466;
	Mon, 12 Sep 2022 12:56:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8301C10E45E
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 12:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662987380; x=1694523380;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tosF0Civq92ihOder46+6T1PWUQFcE2GDKfUMkCVlMk=;
 b=HZk3G8fNeaxQSxlty/YKfPGCcCM/hrezhc4j2RcXpiVdqp4imYXsAJCS
 AuoeOt1rDPjRSNMH+qwq7x2218jdESMhmvc2urFGwZKfY1vBA12CmvtGN
 0oCXKQdOloC+5mO+f1g7XtscZVTo19KziU+srh9n8W/+Sn6BWxeV0cDjw
 KVnwGYH44/yT9cfDMuqWe1AOSS7Hlly2FF9Am9SlAp8kY1hV3Eh6vn6wK
 kyoUD0KmZeQUuXajk4nWWaENxLS14jgNSuxU+8wABz8syPJx8bCQiwdD6
 9D3unf4V7lzfL5dkXgv0tny1kahCR3+SwcnfR7uTEFa6PtJs30Rb89I2d A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="359580609"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="359580609"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 05:56:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678080172"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 05:56:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220909205932.32537-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220909205932.32537-1-ville.syrjala@linux.intel.com>
Date: Mon, 12 Sep 2022 15:56:14 +0300
Message-ID: <87a67469ap.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix TV encoder clock computation
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

On Fri, 09 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The TV encoder has its own special clocking strategy,
> which means we can't just use intel_crtc_dotclock() to
> figure out what the resulting dotclock will be given
> the actual DPLL port_clock. Additionally the DPLL can't
> always generate exactly the frequency we initially asked
> for. This results in us computing a bogus dotclock/etc.,
> and it won't match the readout which is handled by the
> encoder itself properly. Naturally the state checker
> becomes unhappy with the mismatch.
>
> To do this sanely we'll need to move the DPLL computation
> into encoder->compute_config() so that all the derived
> state gets correctly computed based on the actual DPLL
> output frequency. Start doing that just for the TV encoder
> initally as intel_crtc_dotclock() should be able to handle
> other encoder types well enough. Though eventually this
> should be done for all encoder types rather than
> doing it from intel_crtc_compute_config().
>
> With this we actually do some of the DPLL state computation
> twice, but we can skip the second actual .find_dpll() search
> by flagging .clock_set=3Dtrue after we've done it once. We also
> still need to avoid clobbering the correct
> adjusted_mode.crtc_clock set up by encoder->compute_config()
> when called a second time from intel_crtc_compute_config().
>
> Fixes: 665a7b04092c ("drm/i915: Feed the DPLL output freq back into crtc_=
state")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I'll take your word for it, and I don't think we're going to find anyone
to review the details here...

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c |  8 ++++++--
>  drivers/gpu/drm/i915/display/intel_tv.c   | 23 +++++++++++++++++------
>  2 files changed, 23 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 52f2fe1735da..b15ba78d64d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1302,7 +1302,9 @@ static int g4x_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  			  &crtc_state->dpll);
>=20=20
>  	crtc_state->port_clock =3D crtc_state->dpll.dot;
> -	crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_st=
ate);
> +	/* FIXME this is a mess */
> +	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_TVOUT))
> +		crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_s=
tate);
>=20=20
>  	return 0;
>  }
> @@ -1374,7 +1376,9 @@ static int i9xx_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  			  &crtc_state->dpll);
>=20=20
>  	crtc_state->port_clock =3D crtc_state->dpll.dot;
> -	crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_st=
ate);
> +	/* FIXME this is a mess */
> +	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_TVOUT))
> +		crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(crtc_s=
tate);
>=20=20
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i9=
15/display/intel_tv.c
> index 9379f3463344..dcf89d701f0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -39,6 +39,7 @@
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_dpll.h"
>  #include "intel_hotplug.h"
>  #include "intel_tv.h"
>=20=20
> @@ -982,10 +983,10 @@ intel_tv_mode_vdisplay(const struct tv_mode *tv_mod=
e)
>=20=20
>  static void
>  intel_tv_mode_to_mode(struct drm_display_mode *mode,
> -		      const struct tv_mode *tv_mode)
> +		      const struct tv_mode *tv_mode,
> +		      int clock)
>  {
> -	mode->clock =3D tv_mode->clock /
> -		(tv_mode->oversample >> !tv_mode->progressive);
> +	mode->clock =3D clock / (tv_mode->oversample >> !tv_mode->progressive);
>=20=20
>  	/*
>  	 * tv_mode horizontal timings:
> @@ -1143,7 +1144,7 @@ intel_tv_get_config(struct intel_encoder *encoder,
>  	xsize =3D tmp >> 16;
>  	ysize =3D tmp & 0xffff;
>=20=20
> -	intel_tv_mode_to_mode(&mode, &tv_mode);
> +	intel_tv_mode_to_mode(&mode, &tv_mode, pipe_config->port_clock);
>=20=20
>  	drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
>  		    DRM_MODE_ARG(&mode));
> @@ -1184,6 +1185,9 @@ intel_tv_compute_config(struct intel_encoder *encod=
er,
>  			struct intel_crtc_state *pipe_config,
>  			struct drm_connector_state *conn_state)
>  {
> +	struct intel_atomic_state *state =3D
> +		to_intel_atomic_state(pipe_config->uapi.state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_tv_connector_state *tv_conn_state =3D
>  		to_intel_tv_connector_state(conn_state);
> @@ -1192,6 +1196,7 @@ intel_tv_compute_config(struct intel_encoder *encod=
er,
>  		&pipe_config->hw.adjusted_mode;
>  	int hdisplay =3D adjusted_mode->crtc_hdisplay;
>  	int vdisplay =3D adjusted_mode->crtc_vdisplay;
> +	int ret;
>=20=20
>  	if (!tv_mode)
>  		return -EINVAL;
> @@ -1206,7 +1211,13 @@ intel_tv_compute_config(struct intel_encoder *enco=
der,
>=20=20
>  	pipe_config->port_clock =3D tv_mode->clock;
>=20=20
> -	intel_tv_mode_to_mode(adjusted_mode, tv_mode);
> +	ret =3D intel_dpll_crtc_compute_clock(state, crtc);
> +	if (ret)
> +		return ret;
> +
> +	pipe_config->clock_set =3D true;
> +
> +	intel_tv_mode_to_mode(adjusted_mode, tv_mode, pipe_config->port_clock);
>  	drm_mode_set_crtcinfo(adjusted_mode, 0);
>=20=20
>  	if (intel_tv_source_too_wide(dev_priv, hdisplay) ||
> @@ -1804,7 +1815,7 @@ intel_tv_get_modes(struct drm_connector *connector)
>  		 * about the actual timings of the mode. We
>  		 * do ignore the margins though.
>  		 */
> -		intel_tv_mode_to_mode(mode, tv_mode);
> +		intel_tv_mode_to_mode(mode, tv_mode, tv_mode->clock);
>  		if (count =3D=3D 0) {
>  			drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
>  				    DRM_MODE_ARG(mode));

--=20
Jani Nikula, Intel Open Source Graphics Center
