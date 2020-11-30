Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB5C2C916E
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 23:48:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7183B8925F;
	Mon, 30 Nov 2020 22:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F22308925F
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 22:48:45 +0000 (UTC)
IronPort-SDR: lViFn4MvEkzPkZpqVZKk5WOpHyYFsX/g/5zWh7wKccavE+DUQ+BeTVBOJ75W78zmGE8gITjSgT
 UG7n7bcRzCyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="171939747"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="171939747"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 14:48:45 -0800
IronPort-SDR: fsv/o4YLH8iJ6IOCSCiB3IFjpMxV4IuIJrDV+kqnt55bPVR6qxaDeuYU4UuzuoOhzjnV2Biilp
 s+BoVy/A8uIw==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="367292139"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 14:48:45 -0800
Date: Mon, 30 Nov 2020 14:51:39 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201130225139.GC17815@labuser-Z97X-UD5H>
References: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
 <20201124201156.17095-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201124201156.17095-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Add
 intel_atomic_add_affected_planes()
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

On Tue, Nov 24, 2020 at 10:11:54PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> drm_atomic_add_affected_planes() only considers planes which
> are logically enabled in the uapi state. For bigjoiner we need
> to consider planes logically enabled in the hw state. Add a
> helper for that.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c   |  3 +--
>  drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  2 ++
>  3 files changed, 16 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index c449d28d0560..9034a2093da0 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2415,8 +2415,7 @@ static int intel_modeset_all_pipes(struct intel_ato=
mic_state *state)
>  		if (ret)
>  			return ret;
>  =

> -		ret =3D drm_atomic_add_affected_planes(&state->base,
> -						     &crtc->base);
> +		ret =3D intel_atomic_add_affected_planes(state, crtc);
>  		if (ret)
>  			return ret;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 068892e4d2f0..fa6ca6191480 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15107,6 +15107,19 @@ static int intel_crtc_add_planes_to_state(struct=
 intel_atomic_state *state,
>  	return 0;
>  }
>  =

> +int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
> +				     struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	const struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	return intel_crtc_add_planes_to_state(state, crtc,
> +					      old_crtc_state->enabled_planes |
> +					      new_crtc_state->enabled_planes);
> +}
> +
>  static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev=
_priv)
>  {
>  	/* See {hsw,vlv,ivb}_plane_ratio() */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 5e0d42d82c11..a5771bfecba6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -499,6 +499,8 @@ enum phy_fia {
>  			     ((connector) =3D to_intel_connector((__state)->base.connectors[_=
_i].ptr), \
>  			     (new_connector_state) =3D to_intel_digital_connector_state((__st=
ate)->base.connectors[__i].new_state), 1))
>  =

> +int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
> +				     struct intel_crtc *crtc);
>  u8 intel_calc_active_pipes(struct intel_atomic_state *state,
>  			   u8 active_pipes);
>  void intel_link_compute_m_n(u16 bpp, int nlanes,
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
