Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DC911CE1D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 14:20:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 893316E0E7;
	Thu, 12 Dec 2019 13:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 063016E0E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 13:20:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 05:20:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="211120731"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by fmsmga008.fm.intel.com with ESMTP; 12 Dec 2019 05:20:00 -0800
Received: from irsmsx112.ger.corp.intel.com (10.108.20.5) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 12 Dec 2019 13:19:59 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 irsmsx112.ger.corp.intel.com ([169.254.1.125]) with mapi id 14.03.0439.000;
 Thu, 12 Dec 2019 13:19:59 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Sharma, Swati2" <swati2.sharma@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] [v8] drm/i915/color: Extract
 icl_read_luts()
Thread-Index: AQHVpS7qcctdD1nYB0G5G+GJXXliyqe2k1UA
Date: Thu, 12 Dec 2019 13:19:58 +0000
Message-ID: <d61f465f2b03f5b7a170d8a3a37f8e21777cdf5c.camel@intel.com>
References: <20191127141523.5075-1-swati2.sharma@intel.com>
 <20191127141523.5075-2-swati2.sharma@intel.com>
In-Reply-To: <20191127141523.5075-2-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <59393A10349F764F9FAD405E33D07972@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] [v8] drm/i915/color: Extract
 icl_read_luts()
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2019-11-27 at 19:45 +0530, Swati Sharma wrote:
> For icl+, have hw read out to create hw blob of gamma
> lut values. icl+ platforms supports multi segmented gamma
> mode by default, add hw lut creation for this mode.
> 
> This will be used to validate gamma programming using dsb
> (display state buffer) which is a tgl specific feature.
> 
> Major change done-removal of readouts of coarse and fine segments
> because PAL_PREC_DATA register isn't giving propoer values.
> State checker limited only to "fine segment"
> 
> v2: -readout code for multisegmented gamma has to come
>      up with some intermediate entries that aren't preserved
>      in hardware (Jani N)
>     -linear interpolation (Ville)
>     -moved common code to check gamma_enable to specific funcs,
>      since icl doesn't support that
> v3: -use u16 instead of __u16 [Jani N]
>     -used single lut [Jani N]
>     -improved and more readable for loops [Jani N]
>     -read values directly to actual locations and then fill gaps
> [Jani N]
>     -moved cleaning to patch 1 [Jani N]
>     -renamed icl_read_lut_multi_seg() to icl_read_lut_multi_segment
> to
>      make it similar to icl_load_luts()
>     -renamed icl_compute_interpolated_gamma_blob() to
>      icl_compute_interpolated_gamma_lut_values() more sensible, I
> guess
> v4: -removed interpolated func for creating gamma lut values
>     -removed readouts of fine and coarse segments, failure to read
> PAL_PREC_DATA
>      correctly
> v5: -added gamma_enable check inside read_luts()
> v6: -renamed intel_color_lut_entry_equal() to
> intel_color_lut_entries_equal() [Ville]
>     -changed if-else to switch [Ville]
>     -removed intel_color_lut_entry_multi_equal() [Ville]
> v7: -checkpatch warnings
> v8: -rebased
> 
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
The patch looks ok to me. Register readouts limited to one segment
only. Maybe later we can add others?

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 113 +++++++++++++++++
> ----
>  drivers/gpu/drm/i915/i915_reg.h            |   6 ++
>  2 files changed, 101 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index 3980e8b50c28..c7d0f37d8899 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -812,7 +812,7 @@ icl_load_gcmax(const struct intel_crtc_state
> *crtc_state,
>  	struct intel_dsb *dsb = intel_dsb_get(crtc);
>  	enum pipe pipe = crtc->pipe;
>  
> -	/* Fixme: LUT entries are 16 bit only, so we can prog 0xFFFF
> max */
> +	/* FIXME LUT entries are 16 bit only, so we can prog 0xFFFF max
> */
>  	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 0), color->red);
>  	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 1), color-
> >green);
>  	intel_dsb_reg_write(dsb, PREC_PAL_GC_MAX(pipe, 2), color-
> >blue);
> @@ -1538,6 +1538,24 @@ static int glk_gamma_precision(const struct
> intel_crtc_state *crtc_state)
>  	}
>  }
>  
> +static int icl_gamma_precision(const struct intel_crtc_state
> *crtc_state)
> +{
> +	if ((crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE) == 0)
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
>  int intel_color_get_gamma_bit_precision(const struct
> intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1549,7 +1567,9 @@ int intel_color_get_gamma_bit_precision(const
> struct intel_crtc_state *crtc_stat
>  		else
>  			return i9xx_gamma_precision(crtc_state);
>  	} else {
> -		if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
> +		if (INTEL_GEN(dev_priv) >= 11)
> +			return icl_gamma_precision(crtc_state);
> +		else if (IS_CANNONLAKE(dev_priv) ||
> IS_GEMINILAKE(dev_priv))
>  			return glk_gamma_precision(crtc_state);
>  		else if (IS_IRONLAKE(dev_priv))
>  			return ilk_gamma_precision(crtc_state);
> @@ -1566,9 +1586,9 @@ static bool err_check(struct drm_color_lut
> *lut1,
>  		((abs((long)lut2->green - lut1->green)) <= err);
>  }
>  
> -static bool intel_color_lut_entry_equal(struct drm_color_lut *lut1,
> -					struct drm_color_lut *lut2,
> -					int lut_size, u32 err)
> +static bool intel_color_lut_entries_equal(struct drm_color_lut
> *lut1,
> +					  struct drm_color_lut *lut2,
> +					  int lut_size, u32 err)
>  {
>  	int i;
>  
> @@ -1598,16 +1618,8 @@ bool intel_color_lut_equal(struct
> drm_property_blob *blob1,
>  	lut_size2 = drm_color_lut_size(blob2);
>  
>  	/* check sw and hw lut size */
> -	switch (gamma_mode) {
> -	case GAMMA_MODE_MODE_8BIT:
> -	case GAMMA_MODE_MODE_10BIT:
> -		if (lut_size1 != lut_size2)
> -			return false;
> -		break;
> -	default:
> -		MISSING_CASE(gamma_mode);
> -			return false;
> -	}
> +	if (lut_size1 != lut_size2)
> +		return false;
>  
>  	lut1 = blob1->data;
>  	lut2 = blob2->data;
> @@ -1615,11 +1627,16 @@ bool intel_color_lut_equal(struct
> drm_property_blob *blob1,
>  	err = 0xffff >> bit_precision;
>  
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
> @@ -1876,6 +1893,65 @@ static void glk_read_luts(struct
> intel_crtc_state *crtc_state)
>  		crtc_state->hw.gamma_lut = glk_read_lut_10(crtc_state,
> PAL_PREC_INDEX_VALUE(0));
>  }
>  
> +static struct drm_property_blob *
> +icl_read_lut_multi_segment(const struct intel_crtc_state
> *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	int lut_size = INTEL_INFO(dev_priv)->color.gamma_lut_size;
> +	enum pipe pipe = crtc->pipe;
> +	struct drm_property_blob *blob;
> +	struct drm_color_lut *blob_data;
> +	u32 i, val1, val2;
> +
> +	blob = drm_property_create_blob(&dev_priv->drm,
> +					sizeof(struct drm_color_lut) *
> lut_size,
> +					NULL);
> +	if (IS_ERR(blob))
> +		return NULL;
> +
> +	blob_data = blob->data;
> +
> +	I915_WRITE(PREC_PAL_MULTI_SEG_INDEX(pipe),
> PAL_PREC_AUTO_INCREMENT);
> +
> +	for (i = 0; i < 9; i++) {
> +		val1 = I915_READ(PREC_PAL_MULTI_SEG_DATA(pipe));
> +		val2 = I915_READ(PREC_PAL_MULTI_SEG_DATA(pipe));
> +
> +		blob_data[i].red =
> REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_UDW_MASK, val2) << 6 |
> +				   REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED
> _LDW_MASK, val1);
> +		blob_data[i].green =
> REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_UDW_MASK, val2) << 6 |
> +				     REG_FIELD_GET(PAL_PREC_MULTI_SEG_G
> REEN_LDW_MASK, val1);
> +		blob_data[i].blue =
> REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_UDW_MASK, val2) << 6 |
> +				    REG_FIELD_GET(PAL_PREC_MULTI_SEG_BL
> UE_LDW_MASK, val1);
> +	}
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
> +	if ((crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE) == 0)
> +		return;
> +
> +	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
> +	case GAMMA_MODE_MODE_8BIT:
> +		crtc_state->hw.gamma_lut = i9xx_read_lut_8(crtc_state);
> +		break;
> +	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
> +		crtc_state->hw.gamma_lut =
> icl_read_lut_multi_segment(crtc_state);
> +		break;
> +	default:
> +		crtc_state->hw.gamma_lut = glk_read_lut_10(crtc_state,
> PAL_PREC_INDEX_VALUE(0));
> +	}
> +}
> +
>  void intel_color_init(struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> @@ -1919,6 +1995,7 @@ void intel_color_init(struct intel_crtc *crtc)
>  
>  		if (INTEL_GEN(dev_priv) >= 11) {
>  			dev_priv->display.load_luts = icl_load_luts;
> +			dev_priv->display.read_luts = icl_read_luts;
>  		} else if (IS_CANNONLAKE(dev_priv) ||
> IS_GEMINILAKE(dev_priv)) {
>  			dev_priv->display.load_luts = glk_load_luts;
>  			dev_priv->display.read_luts = glk_read_luts;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> index 94d0f593eeb7..6afd4f591f2d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10721,6 +10721,12 @@ enum skl_power_gate {
>  
>  #define _PAL_PREC_MULTI_SEG_DATA_A	0x4A40C
>  #define _PAL_PREC_MULTI_SEG_DATA_B	0x4AC0C
> +#define  PAL_PREC_MULTI_SEG_RED_LDW_MASK   REG_GENMASK(29, 24)
> +#define  PAL_PREC_MULTI_SEG_RED_UDW_MASK   REG_GENMASK(29, 20)
> +#define  PAL_PREC_MULTI_SEG_GREEN_LDW_MASK REG_GENMASK(19, 14)
> +#define  PAL_PREC_MULTI_SEG_GREEN_UDW_MASK REG_GENMASK(19, 10)
> +#define  PAL_PREC_MULTI_SEG_BLUE_LDW_MASK  REG_GENMASK(9, 4)
> +#define  PAL_PREC_MULTI_SEG_BLUE_UDW_MASK  REG_GENMASK(9, 0)
>  
>  #define PREC_PAL_MULTI_SEG_INDEX(pipe)	_MMIO_PIPE(pipe, \
>  					_PAL_PREC_MULTI_SEG_INDEX_A, \
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
