Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A00101C8A24
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 14:10:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C78A6E0E9;
	Thu,  7 May 2020 12:10:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC9976E0E9
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 12:10:35 +0000 (UTC)
IronPort-SDR: bBSpgj7f2EeU+Beookwiwj4Ta+4KUmOgKGPWc1HyIhV+suGFOWyyoD0KWLvR5yRrvZ240mcqUx
 KXsDGIklFMiA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 05:10:35 -0700
IronPort-SDR: o6v9m3mNYzL0sLzyfO2sJVe8YLHx2Yq7r9vsfVD83kvnbc4ppDpYmW6Z3FcmyCiyUYQSKOwriC
 wQ4t6zk/rbrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="278579580"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 07 May 2020 05:10:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 May 2020 15:10:32 +0300
Date: Thu, 7 May 2020 15:10:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200507121032.GE6112@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-8-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504225227.464666-8-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 07/22] drm/i915/rkl: Limit number of
 universal planes to 5
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

On Mon, May 04, 2020 at 03:52:12PM -0700, Matt Roper wrote:
> RKL only has five universal planes, plus a cursor.  Since the
> bottom-most universal plane is considered the primary plane, set the
> number of sprites available on this platform to 4.
> =

> In general, the plane capabilities of the remaining planes stay the same
> as TGL.  However the NV12 Y-plane support moves down to the new top two
> planes and now only the bottom three planes can be used for NV12 UV.
> =

> Bspec: 49181
> Bspec: 49251
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  6 +++++-
>  drivers/gpu/drm/i915/display/intel_sprite.c  | 17 ++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_sprite.h  | 11 ++---------
>  drivers/gpu/drm/i915/i915_irq.c              |  4 +++-
>  drivers/gpu/drm/i915/i915_reg.h              |  5 +++++
>  drivers/gpu/drm/i915/intel_device_info.c     |  5 ++++-
>  6 files changed, 35 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index fd6d63b03489..7d7a5b66f2cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -12500,7 +12500,7 @@ static int icl_check_nv12_planes(struct intel_crt=
c_state *crtc_state)
>  			continue;
>  =

>  		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, linked) {
> -			if (!icl_is_nv12_y_plane(linked->id))
> +			if (!icl_is_nv12_y_plane(dev_priv, linked->id))
>  				continue;
>  =

>  			if (crtc_state->active_planes & BIT(linked->id))
> @@ -12546,6 +12546,10 @@ static int icl_check_nv12_planes(struct intel_cr=
tc_state *crtc_state)
>  				plane_state->cus_ctl |=3D PLANE_CUS_PLANE_7;
>  			else if (linked->id =3D=3D PLANE_SPRITE4)
>  				plane_state->cus_ctl |=3D PLANE_CUS_PLANE_6;
> +			else if (linked->id =3D=3D PLANE_SPRITE3)
> +				plane_state->cus_ctl |=3D PLANE_CUS_PLANE_5_RKL;
> +			else if (linked->id =3D=3D PLANE_SPRITE2)
> +				plane_state->cus_ctl |=3D PLANE_CUS_PLANE_4_RKL;
>  			else
>  				MISSING_CASE(linked->id);
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 0000ec7055f7..571c36f929bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -333,6 +333,21 @@ int intel_plane_check_src_coordinates(struct intel_p=
lane_state *plane_state)
>  	return 0;
>  }
>  =

> +static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
> +{
> +	if (IS_ROCKETLAKE(i915))
> +		return BIT(PLANE_SPRITE2) | BIT(PLANE_SPRITE3);
> +	else

I'd probably move the gen11+ check here too.

Starting to wonder if we shouldn't just stuff a few plane
masks into the device info (and replace all num_sprites
stuff with those).

Anyways, looks reasonable:
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Also wondering what happened to some of the stuff I did to these
functions... Oh right, it was all part of some colorkey stuff
which by now needs to rebased.

> +		return BIT(PLANE_SPRITE4) | BIT(PLANE_SPRITE5);
> +}
> +
> +bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
> +			 enum plane_id plane_id)
> +{
> +	return INTEL_GEN(dev_priv) >=3D 11 &&
> +		icl_nv12_y_plane_mask(dev_priv) & BIT(plane_id);
> +}
> +
>  bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id p=
lane_id)
>  {
>  	return INTEL_GEN(dev_priv) >=3D 11 &&
> @@ -3003,7 +3018,7 @@ static const u32 *icl_get_plane_formats(struct drm_=
i915_private *dev_priv,
>  	if (icl_is_hdr_plane(dev_priv, plane_id)) {
>  		*num_formats =3D ARRAY_SIZE(icl_hdr_plane_formats);
>  		return icl_hdr_plane_formats;
> -	} else if (icl_is_nv12_y_plane(plane_id)) {
> +	} else if (icl_is_nv12_y_plane(dev_priv, plane_id)) {
>  		*num_formats =3D ARRAY_SIZE(icl_sdr_y_plane_formats);
>  		return icl_sdr_y_plane_formats;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/dr=
m/i915/display/intel_sprite.h
> index 5eeaa92420d1..cd2104ba1ca1 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.h
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.h
> @@ -32,21 +32,14 @@ struct intel_plane *
>  skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  			   enum pipe pipe, enum plane_id plane_id);
>  =

> -static inline bool icl_is_nv12_y_plane(enum plane_id id)
> -{
> -	/* Don't need to do a gen check, these planes are only available on gen=
11 */
> -	if (id =3D=3D PLANE_SPRITE4 || id =3D=3D PLANE_SPRITE5)
> -		return true;
> -
> -	return false;
> -}
> -
>  static inline u8 icl_hdr_plane_mask(void)
>  {
>  	return BIT(PLANE_PRIMARY) |
>  		BIT(PLANE_SPRITE0) | BIT(PLANE_SPRITE1);
>  }
>  =

> +bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
> +			 enum plane_id plane_id);
>  bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id p=
lane_id);
>  =

>  int ivb_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index bd722d0650c8..622986759ec6 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2221,7 +2221,9 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_pr=
ivate *dev_priv)
>  =

>  static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>  {
> -	if (INTEL_GEN(dev_priv) >=3D 11)
> +	if (IS_ROCKETLAKE(dev_priv))
> +		return RKL_DE_PIPE_IRQ_FAULT_ERRORS;
> +	else if (INTEL_GEN(dev_priv) >=3D 11)
>  		return GEN11_DE_PIPE_IRQ_FAULT_ERRORS;
>  	else if (INTEL_GEN(dev_priv) >=3D 9)
>  		return GEN9_DE_PIPE_IRQ_FAULT_ERRORS;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index fd9f2904d93c..59c1d527cf13 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6907,6 +6907,8 @@ enum {
>  #define _PLANE_CUS_CTL_1_A			0x701c8
>  #define _PLANE_CUS_CTL_2_A			0x702c8
>  #define  PLANE_CUS_ENABLE			(1 << 31)
> +#define  PLANE_CUS_PLANE_4_RKL			(0 << 30)
> +#define  PLANE_CUS_PLANE_5_RKL			(1 << 30)
>  #define  PLANE_CUS_PLANE_6			(0 << 30)
>  #define  PLANE_CUS_PLANE_7			(1 << 30)
>  #define  PLANE_CUS_HPHASE_SIGN_NEGATIVE		(1 << 19)
> @@ -7573,6 +7575,9 @@ enum {
>  	 GEN11_PIPE_PLANE7_FAULT | \
>  	 GEN11_PIPE_PLANE6_FAULT | \
>  	 GEN11_PIPE_PLANE5_FAULT)
> +#define RKL_DE_PIPE_IRQ_FAULT_ERRORS \
> +	(GEN9_DE_PIPE_IRQ_FAULT_ERRORS | \
> +	 GEN11_PIPE_PLANE5_FAULT)
>  =

>  #define GEN8_DE_PORT_ISR _MMIO(0x44440)
>  #define GEN8_DE_PORT_IMR _MMIO(0x44444)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index 9862c1185059..a5a92c2728db 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -934,7 +934,10 @@ void intel_device_info_runtime_init(struct drm_i915_=
private *dev_priv)
>  =

>  	BUILD_BUG_ON(BITS_PER_TYPE(intel_engine_mask_t) < I915_NUM_ENGINES);
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 11)
> +	if (IS_ROCKETLAKE(dev_priv))
> +		for_each_pipe(dev_priv, pipe)
> +			runtime->num_sprites[pipe] =3D 4;
> +	else if (INTEL_GEN(dev_priv) >=3D 11)
>  		for_each_pipe(dev_priv, pipe)
>  			runtime->num_sprites[pipe] =3D 6;
>  	else if (IS_GEN(dev_priv, 10) || IS_GEMINILAKE(dev_priv))
> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
