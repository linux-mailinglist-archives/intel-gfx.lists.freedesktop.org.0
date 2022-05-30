Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F0B537A5D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 14:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71F4510E438;
	Mon, 30 May 2022 12:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD09810E2B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 12:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653912455; x=1685448455;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=liGkEAUa/XY6PD6gZgTkKzTyAN+NPQYDKuE5tXIKKbY=;
 b=ZMUjLDl3SLwFZHOZd6njC9EJfzU/XXwNM6havwnVcEjnVKOkuqsnyONu
 g0ikDa1xXOdUzyvzm6VUnZDPB1hGcYpZDGe4+DOa5rf6/oKwaZYQgOFiR
 g6/GAtFLRCZhY/PkzfQXaIdPZTeaPPQecRoeNAt4BEOdvWFWBQnHnJNQf
 wxuEPaYtQnkiw6uanVVcftAvDkpDg9bYiDcHrKDjwLe6Wp96qxj2Ubd/S
 g49nfvZebO45n4jVRIKz7934C10HV8izcTp28IwUROtjOy4Bcg5nLGjV/
 Txy1p4yJck6LpjqN73dChJxjfZGD8hZ0j81MzEUtXyOMJEdXlFnkeFSL9 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="274701236"
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="274701236"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:07:35 -0700
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="575906726"
Received: from jkuna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.150.228])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:07:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-25-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-25-ville.syrjala@linux.intel.com>
Date: Mon, 30 May 2022 15:07:30 +0300
Message-ID: <87zgizrzp9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 24/26] drm/i915: Use a fixed N value always
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
> Windows/BIOS always uses fixed N values. Let's match that
> behaviour.
>
> Allows us to also get rid of that constant_n quirk stuff.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 36 +++++++++-----------
>  drivers/gpu/drm/i915/display/intel_display.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 10 +++---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  3 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c     |  2 +-
>  5 files changed, 24 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f30bdcdd4c84..89a7c8c1be28 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2848,19 +2848,11 @@ intel_reduce_m_n_ratio(u32 *num, u32 *den)
>  	}
>  }
>=20=20
> -static void compute_m_n(unsigned int m, unsigned int n,
> -			u32 *ret_m, u32 *ret_n,
> -			bool constant_n)
> +static void compute_m_n(u32 *ret_m, u32 *ret_n,
> +			u32 m, u32 n, u32 constant_n)
>  {
> -	/*
> -	 * Several DP dongles in particular seem to be fussy about
> -	 * too large link M/N values. Give N value as 0x8000 that
> -	 * should be acceptable by specific devices. 0x8000 is the
> -	 * specified fixed N value for asynchronous clock mode,
> -	 * which the devices expect also in synchronous clock mode.
> -	 */
>  	if (constant_n)
> -		*ret_n =3D DP_LINK_CONSTANT_N_VALUE;
> +		*ret_n =3D constant_n;
>  	else
>  		*ret_n =3D min_t(unsigned int, roundup_pow_of_two(n), DATA_LINK_N_MAX);
>=20=20
> @@ -2872,22 +2864,28 @@ void
>  intel_link_compute_m_n(u16 bits_per_pixel, int nlanes,
>  		       int pixel_clock, int link_clock,
>  		       struct intel_link_m_n *m_n,
> -		       bool constant_n, bool fec_enable)
> +		       bool fec_enable)
>  {
>  	u32 data_clock =3D bits_per_pixel * pixel_clock;
>=20=20
>  	if (fec_enable)
>  		data_clock =3D intel_dp_mode_to_fec_clock(data_clock);
>=20=20
> +	/*
> +	 * Windows/BIOS uses fixed M/N values always. Follow suit.
> +	 *
> +	 * Also several DP dongles in particular seem to be fussy
> +	 * about too large link M/N values. Presumably the 20bit
> +	 * value used by Windows/BIOS is acceptable to everyone.
> +	 */
>  	m_n->tu =3D 64;
> -	compute_m_n(data_clock,
> -		    link_clock * nlanes * 8,
> -		    &m_n->data_m, &m_n->data_n,
> -		    constant_n);
> +	compute_m_n(&m_n->data_m, &m_n->data_n,
> +		    data_clock, link_clock * nlanes * 8,
> +		    0x8000000);
>=20=20
> -	compute_m_n(pixel_clock, link_clock,
> -		    &m_n->link_m, &m_n->link_n,
> -		    constant_n);
> +	compute_m_n(&m_n->link_m, &m_n->link_n,
> +		    pixel_clock, link_clock,
> +		    0x80000);
>  }
>=20=20
>  static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 187910d94ec6..862338b6c4fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -546,7 +546,7 @@ u8 intel_calc_active_pipes(struct intel_atomic_state =
*state,
>  void intel_link_compute_m_n(u16 bpp, int nlanes,
>  			    int pixel_clock, int link_clock,
>  			    struct intel_link_m_n *m_n,
> -			    bool constant_n, bool fec_enable);
> +			    bool fec_enable);
>  u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>  			      u32 pixel_format, u64 modifier);
>  enum drm_mode_status
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 9385178c7fd6..d10f05d40360 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1878,7 +1878,7 @@ static bool can_enable_drrs(struct intel_connector =
*connector,
>  static void
>  intel_dp_drrs_compute_config(struct intel_connector *connector,
>  			     struct intel_crtc_state *pipe_config,
> -			     int output_bpp, bool constant_n)
> +			     int output_bpp)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *downclock_mode =3D
> @@ -1906,7 +1906,7 @@ intel_dp_drrs_compute_config(struct intel_connector=
 *connector,
>=20=20
>  	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
>  			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
> -			       constant_n, pipe_config->fec_enable);
> +			       pipe_config->fec_enable);
>=20=20
>  	/* FIXME: abstract this better */
>  	if (pipe_config->splitter.enable)
> @@ -1981,7 +1981,6 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	const struct drm_display_mode *fixed_mode;
>  	struct intel_connector *connector =3D intel_dp->attached_connector;
> -	bool constant_n =3D drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CON=
STANT_N);
>  	int ret =3D 0, output_bpp;
>=20=20
>  	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port !=3D=
 PORT_A)
> @@ -2060,7 +2059,7 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  			       adjusted_mode->crtc_clock,
>  			       pipe_config->port_clock,
>  			       &pipe_config->dp_m_n,
> -			       constant_n, pipe_config->fec_enable);
> +			       pipe_config->fec_enable);
>=20=20
>  	/* FIXME: abstract this better */
>  	if (pipe_config->splitter.enable)
> @@ -2071,8 +2070,7 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>=20=20
>  	intel_vrr_compute_config(pipe_config, conn_state);
>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> -	intel_dp_drrs_compute_config(connector, pipe_config,
> -				     output_bpp, constant_n);
> +	intel_dp_drrs_compute_config(connector, pipe_config, output_bpp);
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn=
_state);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 061b277e5ce7..00e55555091a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -57,7 +57,6 @@ static int intel_dp_mst_compute_link_config(struct inte=
l_encoder *encoder,
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> -	bool constant_n =3D drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CON=
STANT_N);
>  	int bpp, slots =3D -EINVAL;
>=20=20
>  	crtc_state->lane_count =3D limits->max_lane_count;
> @@ -93,7 +92,7 @@ static int intel_dp_mst_compute_link_config(struct inte=
l_encoder *encoder,
>  			       adjusted_mode->crtc_clock,
>  			       crtc_state->port_clock,
>  			       &crtc_state->dp_m_n,
> -			       constant_n, crtc_state->fec_enable);
> +			       crtc_state->fec_enable);
>  	crtc_state->dp_m_n.tu =3D slots;
>=20=20
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i=
915/display/intel_fdi.c
> index 67d2484afbaa..0dc6414a56c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -256,7 +256,7 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
>  	pipe_config->fdi_lanes =3D lane;
>=20=20
>  	intel_link_compute_m_n(pipe_config->pipe_bpp, lane, fdi_dotclock,
> -			       link_bw, &pipe_config->fdi_m_n, false, false);
> +			       link_bw, &pipe_config->fdi_m_n, false);
>=20=20
>  	ret =3D ilk_check_fdi_lanes(dev, crtc->pipe, pipe_config);
>  	if (ret =3D=3D -EDEADLK)

--=20
Jani Nikula, Intel Open Source Graphics Center
