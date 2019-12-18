Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0A9124772
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 13:59:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 901046E448;
	Wed, 18 Dec 2019 12:59:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BF696E448
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 12:59:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 04:59:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,329,1571727600"; d="scan'208";a="266881586"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 18 Dec 2019 04:59:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 14:59:17 +0200
Date: Wed, 18 Dec 2019 14:59:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191218125917.GI1208@intel.com>
References: <20191218014208.7916-1-lucas.demarchi@intel.com>
 <20191218014208.7916-6-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218014208.7916-6-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/display: prefer 3-letter
 acronym for ironlake
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

On Tue, Dec 17, 2019 at 05:42:08PM -0800, Lucas De Marchi wrote:
> We are currently using a mix of platform name and acronym to name the
> functions. Let's prefer the acronym as it should be clear what platform
> it's about and it's shorter, so it doesn't go over 80 columns in a few
> cases. This converts ironlake to ilk where appropriate.
> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 172 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  34 ++--
>  .../drm/i915/display/intel_fifo_underrun.c    |   6 +-
>  5 files changed, 110 insertions(+), 110 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 7a2d36905155..853068b9f909 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -343,7 +343,7 @@ intel_crt_mode_valid(struct drm_connector *connector,
>  =

>  	/* The FDI receiver on LPT only supports 8bpc and only has 2 lanes. */
>  	if (HAS_PCH_LPT(dev_priv) &&
> -	    (ironlake_get_lanes_required(mode->clock, 270000, 24) > 2))
> +	    ilk_get_lanes_required(mode->clock, 270000, 24) > 2)
>  		return MODE_CLOCK_HIGH;
>  =

>  	/* HSW/BDW FDI limited to 4k */
> @@ -419,7 +419,7 @@ static int hsw_crt_compute_config(struct intel_encode=
r *encoder,
>  	return 0;
>  }
>  =

> -static bool intel_ironlake_crt_detect_hotplug(struct drm_connector *conn=
ector)
> +static bool ilk_crt_detect_hotplug(struct drm_connector *connector)
>  {
>  	struct drm_device *dev =3D connector->dev;
>  	struct intel_crt *crt =3D intel_attached_crt(connector);
> @@ -527,7 +527,7 @@ static bool intel_crt_detect_hotplug(struct drm_conne=
ctor *connector)
>  	int i, tries =3D 0;
>  =

>  	if (HAS_PCH_SPLIT(dev_priv))
> -		return intel_ironlake_crt_detect_hotplug(connector);
> +		return ilk_crt_detect_hotplug(connector);
>  =

>  	if (IS_VALLEYVIEW(dev_priv))
>  		return valleyview_crt_detect_hotplug(connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d3a13737552a..a4f516bc850f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -145,8 +145,8 @@ static const u64 cursor_format_modifiers[] =3D {
>  =

>  static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
>  				struct intel_crtc_state *pipe_config);
> -static void ironlake_pch_clock_get(struct intel_crtc *crtc,
> -				   struct intel_crtc_state *pipe_config);
> +static void ilk_pch_clock_get(struct intel_crtc *crtc,
> +			      struct intel_crtc_state *pipe_config);
>  =

>  static int intel_framebuffer_init(struct intel_framebuffer *ifb,
>  				  struct drm_i915_gem_object *obj,
> @@ -157,7 +157,7 @@ static void intel_cpu_transcoder_set_m_n(const struct=
 intel_crtc_state *crtc_sta
>  					 const struct intel_link_m_n *m_n,
>  					 const struct intel_link_m_n *m2_n2);
>  static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
> -static void ironlake_set_pipeconf(const struct intel_crtc_state *crtc_st=
ate);
> +static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  static void hsw_set_pipeconf(const struct intel_crtc_state *crtc_state);
>  static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state);
>  static void vlv_prepare_pll(struct intel_crtc *crtc,
> @@ -167,8 +167,8 @@ static void chv_prepare_pll(struct intel_crtc *crtc,
>  static void intel_crtc_init_scalers(struct intel_crtc *crtc,
>  				    struct intel_crtc_state *crtc_state);
>  static void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
> -static void ironlake_pfit_disable(const struct intel_crtc_state *old_crt=
c_state);
> -static void ironlake_pfit_enable(const struct intel_crtc_state *crtc_sta=
te);
> +static void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_sta=
te);
> +static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
>  static void intel_modeset_setup_hw_state(struct drm_device *dev,
>  					 struct drm_modeset_acquire_ctx *ctx);
>  =

> @@ -404,7 +404,7 @@ static const struct intel_limit intel_limits_pineview=
_lvds =3D {
>   * We calculate clock using (register_value + 2) for N/M1/M2, so here
>   * the range value for them is (actual_value - 2).
>   */
> -static const struct intel_limit intel_limits_ironlake_dac =3D {
> +static const struct intel_limit intel_limits_ilk_dac =3D {

These could be further shortened to just ilk_limits_dac etc.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
