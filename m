Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE6A2C9182
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 23:51:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6FF898C2;
	Mon, 30 Nov 2020 22:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B49898C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 22:51:04 +0000 (UTC)
IronPort-SDR: 1YUD+nO3dUKZ3fqH358zohpS2pnC/yPpY7D1SmMWwKtW68jVBF0RO2qgj65H4jaTWFQENCmk58
 zG91US/iyKVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="169226134"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="169226134"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 14:51:04 -0800
IronPort-SDR: HHhoeCsNhqC5CsH61K7VJRgDjIPBubv10fyH2nk8o2+OIZNvdRnNp6hKnpuoEOmIUv2ivZvzyC
 2cs8sbcjd6KQ==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="480838814"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 14:51:03 -0800
Date: Mon, 30 Nov 2020 14:53:58 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201130225358.GD17815@labuser-Z97X-UD5H>
References: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Track logically enabled
 planes for hw state
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

On Tue, Nov 24, 2020 at 10:11:53PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Currently crtc_state->uapi.plane_mask only tracks logically
> enabled planes on the uapi level. For bigjoiner purposes
> we want to do the same for the hw state. Let's follow the
> pattern established by active_planes & co. here.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  |  3 +++
>  drivers/gpu/drm/i915/display/intel_display.c       | 13 +++++++++----
>  drivers/gpu/drm/i915/display/intel_display_types.h |  5 ++++-
>  3 files changed, 16 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index 7e9f84b00859..b5e1ee99535c 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -312,10 +312,13 @@ int intel_plane_atomic_check_with_state(const struc=
t intel_crtc_state *old_crtc_
>  	int ret;
>  =

>  	intel_plane_set_invisible(new_crtc_state, new_plane_state);
> +	new_crtc_state->enabled_planes &=3D ~BIT(plane->id);

Why not just add this a part of the intel_plane_set_invisible() function an=
d may be rename that
to indicate invisible and disable?

Not a hard and fast requirement just a suggestion but in either case

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

>  =

>  	if (!new_plane_state->hw.crtc && !old_plane_state->hw.crtc)
>  		return 0;
>  =

> +	new_crtc_state->enabled_planes |=3D BIT(plane->id);
> +
>  	ret =3D plane->check_plane(new_crtc_state, new_plane_state);
>  	if (ret)
>  		return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 595183f7b60f..068892e4d2f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3551,7 +3551,7 @@ intel_set_plane_visible(struct intel_crtc_state *cr=
tc_state,
>  		crtc_state->uapi.plane_mask &=3D ~drm_plane_mask(&plane->base);
>  }
>  =

> -static void fixup_active_planes(struct intel_crtc_state *crtc_state)
> +static void fixup_plane_bitmasks(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	struct drm_plane *plane;
> @@ -3561,11 +3561,14 @@ static void fixup_active_planes(struct intel_crtc=
_state *crtc_state)
>  	 * have been used on the same (or wrong) pipe. plane_mask uses
>  	 * unique ids, hence we can use that to reconstruct active_planes.
>  	 */
> +	crtc_state->enabled_planes =3D 0;
>  	crtc_state->active_planes =3D 0;
>  =

>  	drm_for_each_plane_mask(plane, &dev_priv->drm,
> -				crtc_state->uapi.plane_mask)
> +				crtc_state->uapi.plane_mask) {
> +		crtc_state->enabled_planes |=3D BIT(to_intel_plane(plane)->id);
>  		crtc_state->active_planes |=3D BIT(to_intel_plane(plane)->id);
> +	}
>  }
>  =

>  static void intel_plane_disable_noatomic(struct intel_crtc *crtc,
> @@ -3583,7 +3586,7 @@ static void intel_plane_disable_noatomic(struct int=
el_crtc *crtc,
>  		    crtc->base.base.id, crtc->base.name);
>  =

>  	intel_set_plane_visible(crtc_state, plane_state, false);
> -	fixup_active_planes(crtc_state);
> +	fixup_plane_bitmasks(crtc_state);
>  	crtc_state->data_rate[plane->id] =3D 0;
>  	crtc_state->min_cdclk[plane->id] =3D 0;
>  =

> @@ -12842,6 +12845,7 @@ static int icl_check_nv12_planes(struct intel_crt=
c_state *crtc_state)
>  =

>  		plane_state->planar_linked_plane =3D NULL;
>  		if (plane_state->planar_slave && !plane_state->uapi.visible) {
> +			crtc_state->enabled_planes &=3D ~BIT(plane->id);
>  			crtc_state->active_planes &=3D ~BIT(plane->id);
>  			crtc_state->update_planes |=3D BIT(plane->id);
>  		}
> @@ -12885,6 +12889,7 @@ static int icl_check_nv12_planes(struct intel_crt=
c_state *crtc_state)
>  =

>  		linked_state->planar_slave =3D true;
>  		linked_state->planar_linked_plane =3D plane;
> +		crtc_state->enabled_planes |=3D BIT(linked->id);
>  		crtc_state->active_planes |=3D BIT(linked->id);
>  		crtc_state->update_planes |=3D BIT(linked->id);
>  		drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
> @@ -19165,7 +19170,7 @@ static void readout_plane_state(struct drm_i915_p=
rivate *dev_priv)
>  		struct intel_crtc_state *crtc_state =3D
>  			to_intel_crtc_state(crtc->base.state);
>  =

> -		fixup_active_planes(crtc_state);
> +		fixup_plane_bitmasks(crtc_state);
>  	}
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index ce82d654d0f2..c93cf3ddebb6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1047,7 +1047,10 @@ struct intel_crtc_state {
>  		u32 cgm_mode;
>  	};
>  =

> -	/* bitmask of visible planes (enum plane_id) */
> +	/* bitmask of logically enabled planes (enum plane_id) */
> +	u8 enabled_planes;
> +
> +	/* bitmask of actually visible planes (enum plane_id) */
>  	u8 active_planes;
>  	u8 nv12_planes;
>  	u8 c8_planes;
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
