Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D142FA450
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 16:15:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4716A6E39B;
	Mon, 18 Jan 2021 15:15:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE5D6E39B
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 15:15:37 +0000 (UTC)
IronPort-SDR: A1xUP2eFV9Q5bQbblguiH36GMH57IewE8CBnCPf6lQxPHzfs0amZ76rOfqSuovfCLhF/Wxr8HD
 8q40qnd2T+/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="242885370"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="242885370"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:15:37 -0800
IronPort-SDR: EzPmxRm1MUGyFr45OqRLwiQCfIKWwUW7HXbUgZvoz3GwgIuBOkaB+eGLQXKoI9hulnBJgdLJ1h
 hryS2CFKN1hw==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="466392971"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:15:35 -0800
Date: Mon, 18 Jan 2021 17:15:32 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210118151532.GA1069640@ideak-desk.fi.intel.com>
References: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
 <20210114205046.8247-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210114205046.8247-7-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Fix the PHY compliance test
 vs. hotplug mishap
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

On Thu, Jan 14, 2021 at 10:50:45PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> I accidentally added the compliance test hacks only to
> intel_dp_hotplug() which doesn't even get used on any DDI
> platform. Put the same crap into intel_ddi_hotplug().
> =

> Cc: Imre Deak <imre.deak@intel.com>
> Fixes: 193af12cd681 ("drm/i915: Shove the PHY test into the hotplug work")
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 8 ++++++++
>  drivers/gpu/drm/i915/display/intel_dp.c  | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.h  | 1 +
>  3 files changed, 10 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 4443a4ab722f..d7df1828a740 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5204,12 +5204,20 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	struct intel_dp *intel_dp =3D &dig_port->dp;
>  	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>  	bool is_tc =3D intel_phy_is_tc(i915, phy);
>  	struct drm_modeset_acquire_ctx ctx;
>  	enum intel_hotplug_state state;
>  	int ret;
>  =

> +	if (intel_dp->compliance.test_active &&
> +	    intel_dp->compliance.test_type =3D=3D DP_TEST_LINK_PHY_TEST_PATTERN=
) {
> +		intel_dp_phy_test(encoder);
> +		/* just do the PHY test and nothing else */
> +		return INTEL_HOTPLUG_UNCHANGED;
> +	}
> +
>  	state =3D intel_encoder_hotplug(encoder, connector);
>  =

>  	drm_modeset_acquire_init(&ctx, 0);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 30713816bf9d..349647f6bbb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5522,7 +5522,7 @@ static int intel_dp_do_phy_test(struct intel_encode=
r *encoder,
>  	return 0;
>  }
>  =

> -static void intel_dp_phy_test(struct intel_encoder *encoder)
> +void intel_dp_phy_test(struct intel_encoder *encoder)
>  {
>  	struct drm_modeset_acquire_ctx ctx;
>  	int ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 6a2c759ad46f..d42860ef4521 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -137,5 +137,6 @@ const struct dpll *vlv_get_dpll(struct drm_i915_priva=
te *i915);
>  void intel_dp_check_frl_training(struct intel_dp *intel_dp);
>  void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
>  				 const struct intel_crtc_state *crtc_state);
> +void intel_dp_phy_test(struct intel_encoder *encoder);
>  =

>  #endif /* __INTEL_DP_H__ */
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
