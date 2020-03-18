Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEF418A113
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 18:05:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B127F6E92F;
	Wed, 18 Mar 2020 17:05:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F3D6E92F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 17:05:19 +0000 (UTC)
IronPort-SDR: ywOxVD/RUuvH+O78MdevcdCHXDgPyTAt7CYpwx4anbMRUcjNfBISgE9Wi8tOyqAnDyF3GeRYrS
 E3CETVbBm5MA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 10:05:19 -0700
IronPort-SDR: FlQX+UQOSNy/so7q5CWsTJSeb3mpx8EXQAmo89fMIB0i9CefaqX1SLdhSeWpbXVCnCpDKHAjUX
 4j71Bb1bzBjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,568,1574150400"; d="scan'208";a="233902392"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 18 Mar 2020 10:05:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Mar 2020 19:05:15 +0200
Date: Wed, 18 Mar 2020 19:05:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Swati Sharma <swati2.sharma@intel.com>
Message-ID: <20200318170515.GD13686@intel.com>
References: <20200317135736.14305-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317135736.14305-1-swati2.sharma@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v9] drm/i915/color: Extract icl_read_luts()
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

On Tue, Mar 17, 2020 at 07:27:36PM +0530, Swati Sharma wrote:
> For icl+, have hw read out to create hw blob of gamma
> lut values. icl+ platforms supports multi segmented gamma
> mode by default, add hw lut creation for this mode.
> =

> This will be used to validate gamma programming using dsb
> (display state buffer) which is a tgl specific feature.
> =

> v2: -readout code for multisegmented gamma has to come
>      up with some intermediate entries that aren't preserved
>      in hardware (Jani N)
>     -linear interpolation (Ville)
>     -moved common code to check gamma_enable to specific funcs,
>      since icl doesn't support that
> v3: -use u16 instead of __u16 [Jani N]
>     -used single lut [Jani N]
>     -improved and more readable for loops [Jani N]
>     -read values directly to actual locations and then fill gaps [Jani N]
>     -moved cleaning to patch 1 [Jani N]
>     -renamed icl_read_lut_multi_seg() to icl_read_lut_multi_segment to
>      make it similar to icl_load_luts()
>     -renamed icl_compute_interpolated_gamma_blob() to
>      icl_compute_interpolated_gamma_lut_values() more sensible, I guess
> v4: -removed interpolated func for creating gamma lut values
>     -removed readouts of fine and coarse segments, failure to read PAL_PR=
EC_DATA
>      correctly
> v5: -added gamma_enable check inside read_luts()
> v6: -renamed intel_color_lut_entry_equal() to intel_color_lut_entries_equ=
al() [Ville]
>     -changed if-else to switch [Ville]
>     -removed intel_color_lut_entry_multi_equal() [Ville]
> v7: -checkpatch warnings
> v8: -rebased
> v9: -rebased, aligned with Ville's style of gamma cleanup
> =

> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>

Hmm. Did I not send out the mail saying that I pushed this? Maybe not.

Well, doing that now. Pushed to dinq. Thanks for the patch and review.

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 121 ++++++++++++++++++---
>  drivers/gpu/drm/i915/i915_reg.h            |   6 +
>  2 files changed, 109 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index c1cce93a1c25..98ece9cd7cdd 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -460,6 +460,16 @@ static void ilk_lut_10_pack(struct drm_color_lut *en=
try, u32 val)
>  	entry->blue =3D intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_BLUE_MA=
SK, val), 10);
>  }
>  =

> +static void icl_lut_multi_seg_pack(struct drm_color_lut *entry, u32 ldw,=
 u32 udw)
> +{
> +	entry->red =3D REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_UDW_MASK, udw) << 6=
 |
> +				   REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_LDW_MASK, ldw);
> +	entry->green =3D REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_UDW_MASK, udw) =
<< 6 |
> +				     REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_LDW_MASK, ldw);
> +	entry->blue =3D REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_UDW_MASK, udw) <<=
 6 |
> +				    REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);
> +}
> +
>  static void i9xx_color_commit(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -893,7 +903,7 @@ icl_load_gcmax(const struct intel_crtc_state *crtc_st=
ate,
>  	struct intel_dsb *dsb =3D intel_dsb_get(crtc);
>  	enum pipe pipe =3D crtc->pipe;
>  =

> -	/* Fixme: LUT entries are 16 bit only, so we can prog 0xFFFF max */
> +	/* FIXME LUT entries are 16 bit only, so we can prog 0xFFFF max */
>  	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 0), color->red);
>  	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 1), color->green);
>  	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 2), color->blue);
> @@ -1630,6 +1640,24 @@ static int glk_gamma_precision(const struct intel_=
crtc_state *crtc_state)
>  	}
>  }
>  =

> +static int icl_gamma_precision(const struct intel_crtc_state *crtc_state)
> +{
> +	if ((crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE) =3D=3D 0)
> +		return 0;
> +
> +	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
> +	case GAMMA_MODE_MODE_8BIT:
> +		return 8;
> +	case GAMMA_MODE_MODE_10BIT:
> +		return 10;
> +	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
> +		return 16;
> +	default:
> +		MISSING_CASE(crtc_state->gamma_mode);
> +		return 0;
> +	}
> +}
> +
>  int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *c=
rtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1641,7 +1669,9 @@ int intel_color_get_gamma_bit_precision(const struc=
t intel_crtc_state *crtc_stat
>  		else
>  			return i9xx_gamma_precision(crtc_state);
>  	} else {
> -		if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
> +		if (INTEL_GEN(dev_priv) >=3D 11)
> +			return icl_gamma_precision(crtc_state);
> +		else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
>  			return glk_gamma_precision(crtc_state);
>  		else if (IS_IRONLAKE(dev_priv))
>  			return ilk_gamma_precision(crtc_state);
> @@ -1658,9 +1688,9 @@ static bool err_check(struct drm_color_lut *lut1,
>  		((abs((long)lut2->green - lut1->green)) <=3D err);
>  }
>  =

> -static bool intel_color_lut_entry_equal(struct drm_color_lut *lut1,
> -					struct drm_color_lut *lut2,
> -					int lut_size, u32 err)
> +static bool intel_color_lut_entries_equal(struct drm_color_lut *lut1,
> +					  struct drm_color_lut *lut2,
> +					  int lut_size, u32 err)
>  {
>  	int i;
>  =

> @@ -1690,16 +1720,8 @@ bool intel_color_lut_equal(struct drm_property_blo=
b *blob1,
>  	lut_size2 =3D drm_color_lut_size(blob2);
>  =

>  	/* check sw and hw lut size */
> -	switch (gamma_mode) {
> -	case GAMMA_MODE_MODE_8BIT:
> -	case GAMMA_MODE_MODE_10BIT:
> -		if (lut_size1 !=3D lut_size2)
> -			return false;
> -		break;
> -	default:
> -		MISSING_CASE(gamma_mode);
> -			return false;
> -	}
> +	if (lut_size1 !=3D lut_size2)
> +		return false;
>  =

>  	lut1 =3D blob1->data;
>  	lut2 =3D blob2->data;
> @@ -1707,11 +1729,16 @@ bool intel_color_lut_equal(struct drm_property_bl=
ob *blob1,
>  	err =3D 0xffff >> bit_precision;
>  =

>  	/* check sw and hw lut entry to be equal */
> -	switch (gamma_mode) {
> +	switch (gamma_mode & GAMMA_MODE_MODE_MASK) {
>  	case GAMMA_MODE_MODE_8BIT:
>  	case GAMMA_MODE_MODE_10BIT:
> -		if (!intel_color_lut_entry_equal(lut1, lut2,
> -						 lut_size2, err))
> +		if (!intel_color_lut_entries_equal(lut1, lut2,
> +						   lut_size2, err))
> +			return false;
> +		break;
> +	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
> +		if (!intel_color_lut_entries_equal(lut1, lut2,
> +						   9, err))
>  			return false;
>  		break;
>  	default:
> @@ -1946,6 +1973,63 @@ static void glk_read_luts(struct intel_crtc_state =
*crtc_state)
>  		crtc_state->hw.gamma_lut =3D glk_read_lut_10(crtc, PAL_PREC_INDEX_VALU=
E(0));
>  }
>  =

> +static struct drm_property_blob *
> +icl_read_lut_multi_segment(struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	int i, lut_size =3D INTEL_INFO(dev_priv)->color.gamma_lut_size;
> +	enum pipe pipe =3D crtc->pipe;
> +	struct drm_property_blob *blob;
> +	struct drm_color_lut *lut;
> +
> +	blob =3D drm_property_create_blob(&dev_priv->drm,
> +					sizeof(struct drm_color_lut) * lut_size,
> +					NULL);
> +	if (IS_ERR(blob))
> +		return NULL;
> +
> +	lut =3D blob->data;
> +
> +	intel_de_write(dev_priv, PREC_PAL_MULTI_SEG_INDEX(pipe),
> +		       PAL_PREC_AUTO_INCREMENT);
> +
> +	for (i =3D 0; i < 9; i++) {
> +		u32 ldw =3D intel_de_read(dev_priv, PREC_PAL_MULTI_SEG_DATA(pipe));
> +		u32 udw =3D intel_de_read(dev_priv, PREC_PAL_MULTI_SEG_DATA(pipe));
> +
> +		icl_lut_multi_seg_pack(&lut[i], ldw, udw);
> +	}
> +
> +	intel_de_write(dev_priv, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
> +
> +	/*
> +	 * FIXME readouts from PAL_PREC_DATA register aren't giving
> +	 * correct values in the case of fine and coarse segments.
> +	 * Restricting readouts only for super fine segment as of now.
> +	 */
> +
> +	return blob;
> +}
> +
> +static void icl_read_luts(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if ((crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE) =3D=3D 0)
> +		return;
> +
> +	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
> +	case GAMMA_MODE_MODE_8BIT:
> +		crtc_state->hw.gamma_lut =3D ilk_read_lut_8(crtc);
> +		break;
> +	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
> +		crtc_state->hw.gamma_lut =3D icl_read_lut_multi_segment(crtc);
> +		break;
> +	default:
> +		crtc_state->hw.gamma_lut =3D glk_read_lut_10(crtc, PAL_PREC_INDEX_VALU=
E(0));
> +	}
> +}
> +
>  void intel_color_init(struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -1989,6 +2073,7 @@ void intel_color_init(struct intel_crtc *crtc)
>  =

>  		if (INTEL_GEN(dev_priv) >=3D 11) {
>  			dev_priv->display.load_luts =3D icl_load_luts;
> +			dev_priv->display.read_luts =3D icl_read_luts;
>  		} else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
>  			dev_priv->display.load_luts =3D glk_load_luts;
>  			dev_priv->display.read_luts =3D glk_read_luts;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 309cb7d96b35..758ce731c12c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10739,6 +10739,12 @@ enum skl_power_gate {
>  =

>  #define _PAL_PREC_MULTI_SEG_DATA_A	0x4A40C
>  #define _PAL_PREC_MULTI_SEG_DATA_B	0x4AC0C
> +#define  PAL_PREC_MULTI_SEG_RED_LDW_MASK   REG_GENMASK(29, 24)
> +#define  PAL_PREC_MULTI_SEG_RED_UDW_MASK   REG_GENMASK(29, 20)
> +#define  PAL_PREC_MULTI_SEG_GREEN_LDW_MASK REG_GENMASK(19, 14)
> +#define  PAL_PREC_MULTI_SEG_GREEN_UDW_MASK REG_GENMASK(19, 10)
> +#define  PAL_PREC_MULTI_SEG_BLUE_LDW_MASK  REG_GENMASK(9, 4)
> +#define  PAL_PREC_MULTI_SEG_BLUE_UDW_MASK  REG_GENMASK(9, 0)
>  =

>  #define PREC_PAL_MULTI_SEG_INDEX(pipe)	_MMIO_PIPE(pipe, \
>  					_PAL_PREC_MULTI_SEG_INDEX_A, \
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
