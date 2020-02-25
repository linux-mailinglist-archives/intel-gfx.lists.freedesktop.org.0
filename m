Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4FF16E959
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 16:06:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180EF6EB12;
	Tue, 25 Feb 2020 15:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 434B96EB12
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 15:06:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 07:06:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="241348555"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 25 Feb 2020 07:06:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Feb 2020 17:06:39 +0200
Date: Tue, 25 Feb 2020 17:06:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200225150639.GD13686@intel.com>
References: <20200224124004.26712-1-anshuman.gupta@intel.com>
 <20200224124004.26712-5-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224124004.26712-5-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 4/7] drm/i915: Fix wrongly populated
 plane possible_crtcs bit mask
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 24, 2020 at 06:10:01PM +0530, Anshuman Gupta wrote:
> As a disabled pipe in pipe_mask is not having a valid intel crtc,
> driver wrongly populates the possible_crtcs mask while initializing
> the plane for a CRTC. Fixing up the plane possible_crtcs mask.
> =

> changes since RFC:
> - Simplify the possible_crtcs initialization. [Ville]
> v2:
> - Removed the unnecessary stack garbage possible_crtcs to
>   drm_universal_plane_init. [Ville]
> v3:
> - Combine the intel_crtc assignment and declaration. [Ville]
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_sprite.c  |  5 +----
>  2 files changed, 14 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index aacbdc47fcea..41a0f2e9b6b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16628,6 +16628,18 @@ static void intel_crtc_free(struct intel_crtc *c=
rtc)
>  	kfree(crtc);
>  }
>  =

> +static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev=
_priv)
> +{
> +	struct intel_plane *plane;
> +
> +	for_each_intel_plane(&dev_priv->drm, plane) {
> +		struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(dev_priv,
> +								  plane->pipe);
> +
> +		plane->base.possible_crtcs =3D drm_crtc_mask(&crtc->base);
> +	}
> +}
> +
>  static int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe =
pipe)
>  {
>  	struct intel_plane *primary, *cursor;
> @@ -17843,6 +17855,7 @@ int intel_modeset_init(struct drm_i915_private *i=
915)
>  		}
>  	}
>  =

> +	intel_plane_possible_crtcs_init(i915);
>  	intel_shared_dpll_init(dev);
>  	intel_update_fdi_pll_freq(i915);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 7abeefe8dce5..b5c7b271a1a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -3011,7 +3011,6 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  	struct intel_plane *plane;
>  	enum drm_plane_type plane_type;
>  	unsigned int supported_rotations;
> -	unsigned int possible_crtcs;
>  	const u64 *modifiers;
>  	const u32 *formats;
>  	int num_formats;
> @@ -3066,10 +3065,8 @@ skl_universal_plane_create(struct drm_i915_private=
 *dev_priv,
>  	else
>  		plane_type =3D DRM_PLANE_TYPE_OVERLAY;
>  =

> -	possible_crtcs =3D BIT(pipe);
> -
>  	ret =3D drm_universal_plane_init(&dev_priv->drm, &plane->base,
> -				       possible_crtcs, plane_funcs,
> +				       0, plane_funcs,
>  				       formats, num_formats, modifiers,
>  				       plane_type,
>  				       "plane %d%c", plane_id + 1,

Looks like you missed all the other places that do this:
intel_primary_plane_create(), intel_sprite_plane_create(),
intel_cursor_plane_create().

Apart from that everything in the series looks ready.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
