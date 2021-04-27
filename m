Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 854DB36CB5B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 20:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D17756E54C;
	Tue, 27 Apr 2021 18:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A516E21A
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 18:56:01 +0000 (UTC)
IronPort-SDR: JB9gRlRAY283ukdylGOTpgW05S68BCnIkLpMlHL2MeEeqOp1Az0+yiyLtjAXEWUd1YKKX3IfWN
 tvgqEU9CaCTg==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="196633254"
X-IronPort-AV: E=Sophos;i="5.82,255,1613462400"; d="scan'208";a="196633254"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 11:56:00 -0700
IronPort-SDR: lrlSpacWklTQhg/3dlzlxs7uZF9mi8xyFNd+zdoKsALg/KvbcmhnXwgH1E/4X8ySRRRkRsNe9i
 zxJ9dSJSNHhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,255,1613462400"; d="scan'208";a="429929558"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 27 Apr 2021 11:55:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Apr 2021 21:55:57 +0300
Date: Tue, 27 Apr 2021 21:55:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <YIhePcRcpKEoBmAE@intel.com>
References: <20210328225709.18541-16-daniele.ceraolospurio@intel.com>
 <20210427104504.2720-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210427104504.2720-1-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 15/16] drm/i915/pxp: black pixels on pxp
 disabled
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
Cc: Gaurav Kumar <kumar.gaurav@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 27, 2021 at 04:15:04PM +0530, Anshuman Gupta wrote:
> When protected sufaces has flipped and pxp session is disabled,
> display black pixels by using plane color CTM correction.
> =

> v2:
> - Display black pixels in aysnc flip too.

We can't change any of that with an async flip.

> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Gaurav Kumar <kumar.gaurav@intel.com>
> Cc: Shankar Uma <uma.shankar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  .../drm/i915/display/skl_universal_plane.c    | 51 ++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h               | 46 +++++++++++++++++
>  2 files changed, 95 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 74489217e580..a666b86df726 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -934,6 +934,33 @@ static u32 glk_plane_color_ctl(const struct intel_cr=
tc_state *crtc_state,
>  	return plane_color_ctl;
>  }
>  =

> +static void intel_load_plane_csc_black(struct intel_plane *intel_plane)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_plane->base.dev);
> +	enum pipe pipe =3D intel_plane->pipe;
> +	enum plane_id plane =3D intel_plane->id;
> +	u16 postoff =3D 0;
> +
> +	drm_dbg_kms(&dev_priv->drm, "plane color CTM to black  %s:%d\n",
> +		    intel_plane->base.name, plane);
> +	intel_de_write_fw(dev_priv, PLANE_CSC_COEFF(pipe, plane, 0), 0);
> +	intel_de_write_fw(dev_priv, PLANE_CSC_COEFF(pipe, plane, 1), 0);
> +
> +	intel_de_write_fw(dev_priv, PLANE_CSC_COEFF(pipe, plane, 2), 0);
> +	intel_de_write_fw(dev_priv, PLANE_CSC_COEFF(pipe, plane, 3), 0);
> +
> +	intel_de_write_fw(dev_priv, PLANE_CSC_COEFF(pipe, plane, 4), 0);
> +	intel_de_write_fw(dev_priv, PLANE_CSC_COEFF(pipe, plane, 5), 0);
> +
> +	intel_de_write_fw(dev_priv, PLANE_CSC_PREOFF(pipe, plane, 0), 0);
> +	intel_de_write_fw(dev_priv, PLANE_CSC_PREOFF(pipe, plane, 1), 0);
> +	intel_de_write_fw(dev_priv, PLANE_CSC_PREOFF(pipe, plane, 2), 0);
> +
> +	intel_de_write_fw(dev_priv, PLANE_CSC_POSTOFF(pipe, plane, 0), postoff);
> +	intel_de_write_fw(dev_priv, PLANE_CSC_POSTOFF(pipe, plane, 1), postoff);
> +	intel_de_write_fw(dev_priv, PLANE_CSC_POSTOFF(pipe, plane, 2), postoff);
> +}
> +
>  static void
>  skl_program_plane(struct intel_plane *plane,
>  		  const struct intel_crtc_state *crtc_state,
> @@ -1039,13 +1066,22 @@ skl_program_plane(struct intel_plane *plane,
>  	 */
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
>  	plane_surf =3D intel_plane_ggtt_offset(plane_state) + surf_addr;
> +	plane_color_ctl =3D intel_de_read_fw(dev_priv, PLANE_COLOR_CTL(pipe, pl=
ane_id));
>  =

>  	if (intel_pxp_is_active(&dev_priv->gt.pxp) &&
> -	    plane_state->plane_decryption)
> +	    plane_state->plane_decryption) {
>  		plane_surf |=3D PLANE_SURF_DECRYPTION_ENABLED;
> -	else
> +		plane_color_ctl &=3D ~PLANE_COLOR_PLANE_CSC_ENABLE;
> +	} else if (plane_state->plane_decryption) {
> +		intel_load_plane_csc_black(plane);
> +		plane_color_ctl |=3D PLANE_COLOR_PLANE_CSC_ENABLE;
> +	} else {
>  		plane_surf &=3D ~PLANE_SURF_DECRYPTION_ENABLED;
> +		plane_color_ctl &=3D ~PLANE_COLOR_PLANE_CSC_ENABLE;
> +	}
>  =

> +	intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
> +			  plane_color_ctl);
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
>  =

>  	if (plane_state->scaler_id >=3D 0)
> @@ -1066,6 +1102,7 @@ skl_plane_async_flip(struct intel_plane *plane,
>  	enum pipe pipe =3D plane->pipe;
>  	u32 surf_addr =3D plane_state->view.color_plane[0].offset;
>  	u32 plane_ctl =3D plane_state->ctl;
> +	u32 plane_color_ctl =3D 0;
>  =

>  	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state);
>  =

> @@ -1075,6 +1112,16 @@ skl_plane_async_flip(struct intel_plane *plane,
>  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  =

>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
> +
> +	if (!intel_pxp_is_active(&dev_priv->gt.pxp) &&
> +	    plane_state->plane_decryption) {
> +		plane_color_ctl =3D intel_de_read_fw(dev_priv, PLANE_COLOR_CTL(pipe, p=
lane_id));
> +		intel_load_plane_csc_black(plane);
> +		plane_color_ctl |=3D PLANE_COLOR_PLANE_CSC_ENABLE;
> +		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
> +				  plane_color_ctl);
> +	}
> +
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
>  			  intel_plane_ggtt_offset(plane_state) + surf_addr);
>  =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index fbaf9199001d..0a4deca1098b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7119,6 +7119,7 @@ enum {
>  #define _PLANE_COLOR_CTL_3_A			0x703CC /* GLK+ */
>  #define   PLANE_COLOR_PIPE_GAMMA_ENABLE		(1 << 30) /* Pre-ICL */
>  #define   PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE	(1 << 28)
> +#define   PLANE_COLOR_PLANE_CSC_ENABLE			(1 << 21) /* ICL+ */
>  #define   PLANE_COLOR_INPUT_CSC_ENABLE		(1 << 20) /* ICL+ */
>  #define   PLANE_COLOR_PIPE_CSC_ENABLE		(1 << 23) /* Pre-ICL */
>  #define   PLANE_COLOR_CSC_MODE_BYPASS			(0 << 17)
> @@ -11191,6 +11192,51 @@ enum skl_power_gate {
>  					_PAL_PREC_MULTI_SEG_DATA_A, \
>  					_PAL_PREC_MULTI_SEG_DATA_B)
>  =

> +#define _MMIO_PLANE_GAMC(plane, i, a, b)  _MMIO(_PIPE(plane, a, b) + (i)=
 * 4)
> +
> +/* Plane CSC Registers */
> +#define _PLANE_CSC_RY_GY_1_A	0x70210
> +#define _PLANE_CSC_RY_GY_2_A	0x70310
> +
> +#define _PLANE_CSC_RY_GY_1_B	0x71210
> +#define _PLANE_CSC_RY_GY_2_B	0x71310
> +
> +#define _PLANE_CSC_RY_GY_1(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_1_A, \
> +					      _PLANE_CSC_RY_GY_1_B)
> +#define _PLANE_CSC_RY_GY_2(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_RY_GY_2_A,=
 \
> +					      _PLANE_INPUT_CSC_RY_GY_2_B)
> +#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
> +							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
> +							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)
> +
> +#define _PLANE_CSC_PREOFF_HI_1_A		0x70228
> +#define _PLANE_CSC_PREOFF_HI_2_A		0x70328
> +
> +#define _PLANE_CSC_PREOFF_HI_1_B		0x71228
> +#define _PLANE_CSC_PREOFF_HI_2_B		0x71328
> +
> +#define _PLANE_CSC_PREOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_CSC_PREOFF_HI_1_=
A, \
> +					      _PLANE_CSC_PREOFF_HI_1_B)
> +#define _PLANE_CSC_PREOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_CSC_PREOFF_HI_2_=
A, \
> +					      _PLANE_CSC_PREOFF_HI_2_B)
> +#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_C=
SC_PREOFF_HI_1(pipe) + \
> +							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
> +							    (index) * 4)
> +
> +#define _PLANE_CSC_POSTOFF_HI_1_A		0x70234
> +#define _PLANE_CSC_POSTOFF_HI_2_A		0x70334
> +
> +#define _PLANE_CSC_POSTOFF_HI_1_B		0x71234
> +#define _PLANE_CSC_POSTOFF_HI_2_B		0x71334
> +
> +#define _PLANE_CSC_POSTOFF_HI_1(pipe)	_PIPE(pipe, _PLANE_CSC_POSTOFF_HI_=
1_A, \
> +					      _PLANE_CSC_POSTOFF_HI_1_B)
> +#define _PLANE_CSC_POSTOFF_HI_2(pipe)	_PIPE(pipe, _PLANE_CSC_POSTOFF_HI_=
2_A, \
> +					      _PLANE_CSC_POSTOFF_HI_2_B)
> +#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_=
CSC_POSTOFF_HI_1(pipe) + \
> +							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
> +							    (index) * 4)
> +
>  /* pipe CSC & degamma/gamma LUTs on CHV */
>  #define _CGM_PIPE_A_CSC_COEFF01	(VLV_DISPLAY_BASE + 0x67900)
>  #define _CGM_PIPE_A_CSC_COEFF23	(VLV_DISPLAY_BASE + 0x67904)
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
