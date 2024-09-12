Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FFA976632
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 11:59:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE81B10E210;
	Thu, 12 Sep 2024 09:59:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AhGgnGOg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14DBD10E210
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 09:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726135191; x=1757671191;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RTJuDbIAEmNM3c6AFJ0OYH86FeFakP0AiMi7qhxxHaM=;
 b=AhGgnGOgkxPaS3ovS46u0bNzno1V8P31AR/7ybSxRYda5R4L1EHXd4+f
 ww+zpSsOwXX2IMgBncbwAEaboS8zEYkEzKu99BILMUkRQoOnRI0+D5HBy
 0gVXpfMixkoUZyJyehW72nWDG9WjHo/6cOCbT5yzEzTl8ogOW0doqfubv
 6y7G9eH2w6IMyjm/YXh0eihEFIScQ6a2fdN3hFQpDzqCqLe9DDH8A6FOj
 n6mOSHb+IU7TnHOdwt3xMziDJDwMGS+PyaYdYl1I/y4fj71rjdpwy/xed
 LAKe1aoCr7y1uSzS5dFZbDoBeyuxt1sKOvFZ5Et2zOiwT5ohhlER2ck24 Q==;
X-CSE-ConnectionGUID: H3X/kC0kRzGydwroK3QYHw==
X-CSE-MsgGUID: sNfTYqeFRX+1JDLnfo4Btw==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="35547058"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="35547058"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:59:51 -0700
X-CSE-ConnectionGUID: OFGbflKpQUqC9uBCi/JspA==
X-CSE-MsgGUID: LG52M5OSShSr9+VOD9D6Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67578825"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.253])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:59:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
 Display LNL+
In-Reply-To: <20240821102349.3961986-6-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-6-arun.r.murthy@intel.com>
Date: Thu, 12 Sep 2024 12:59:46 +0300
Message-ID: <87mskdgpkd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 21 Aug 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> In LNL+, histogram/IE data and index registers are added which was
> included in the control registers in the legacy platforms. The new
> registers are used for reading histogram and writing the IET LUT data.
>
> v2: Removed duplicate code (Jani)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_histogram.c    | 138 ++++++++++++------
>  .../gpu/drm/i915/display/intel_histogram.h    |  25 ++++
>  2 files changed, 122 insertions(+), 41 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu/drm/i915/display/intel_histogram.c
> index 189f7ccd6df8..9c31a7d83362 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -26,38 +26,41 @@ struct intel_histogram {
>  	u32 bindata[HISTOGRAM_BIN_COUNT];
>  };
>  
> -static void intel_histogram_handle_int_work(struct work_struct *work)
> +static void intel_histogram_read_data(struct intel_histogram *histogram)

Please refactor the stuff in patches 1-4 so the LNL changes just drop in
cleanly, so we don't have to refactor stuff here anymore.

>  {
> -	struct intel_histogram *histogram = container_of(work,
> -		struct intel_histogram, handle_histogram_int_work.work);
>  	struct drm_i915_private *i915 = histogram->i915;
>  	struct intel_crtc *intel_crtc = histogram->crtc;
> -	char *histogram_event[] = {"HISTOGRAM=1", NULL};
>  	u32 dpstbin;
>  	int i, try = 0;
>  
> -	/* Wa: 14014889975 */
> -	if (IS_DISPLAY_VER(i915, 12, 13))
> +retry:
> +	if (DISPLAY_VER(i915) >= 20) {
> +		/* Set index to zero */
> +		intel_de_rmw(i915, DPST_HIST_INDEX(intel_crtc->pipe),
> +			     DPST_HIST_BIN_INDEX_MASK, DPST_HIST_BIN_INDEX(0));
> +	} else {
>  		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> -			     DPST_CTL_RESTORE, 0);
> +			     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK, 0);
> +	}
>  
> -	/*
> -	 * TODO: PSR to be exited while reading the Histogram data
> -	 * Set DPST_CTL Bin Reg function select to TC
> -	 * Set DPST_CTL Bin Register Index to 0
> -	 */
> -retry:
> -	intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK, 0);
>  	for (i = 0; i < HISTOGRAM_BIN_COUNT; i++) {
> -		dpstbin = intel_de_read(i915, DPST_BIN(intel_crtc->pipe));
> +		dpstbin = intel_de_read(i915, DPST_HIST_BIN(intel_crtc->pipe));
>  		if (dpstbin & DPST_BIN_BUSY) {
>  			/*
>  			 * If DPST_BIN busy bit is set, then set the
>  			 * DPST_CTL bin reg index to 0 and proceed
>  			 * from beginning.
>  			 */
> -			if (try++ >= 5) {
> +			if (DISPLAY_VER(i915) >= 20) {
> +				intel_de_rmw(i915, DPST_HIST_INDEX(intel_crtc->pipe),
> +					     DPST_HIST_BIN_INDEX_MASK,
> +					     DPST_HIST_BIN_INDEX(0));
> +			} else {
> +				intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> +					     DPST_CTL_BIN_REG_MASK, 0);
> +			}
> +
> +			if (try++ == 5) {
>  				drm_err(&i915->drm,
>  					"Histogram block is busy, failed to read\n");
>  				intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe),
> @@ -66,10 +69,37 @@ static void intel_histogram_handle_int_work(struct work_struct *work)
>  			}
>  			goto retry;
>  		}
> -		histogram->bindata[i] = dpstbin & DPST_BIN_DATA_MASK;
> +		histogram->bindata[i] = dpstbin & DPST_HIST_BIN_DATA_MASK;
>  		drm_dbg_atomic(&i915->drm, "Histogram[%d]=%x\n",
>  			       i, histogram->bindata[i]);
>  	}
> +}
> +
> +static void intel_histogram_get_data(struct intel_histogram *histogram)
> +{
> +
> +	/*
> +	 * TODO: PSR to be exited while reading the Histogram data
> +	 * Set DPST_CTL Bin Reg function select to TC
> +	 * Set DPST_CTL Bin Register Index to 0
> +	 */
> +	intel_histogram_read_data(histogram);
> +}
> +
> +static void intel_histogram_handle_int_work(struct work_struct *work)
> +{
> +	struct intel_histogram *histogram = container_of(work,
> +		struct intel_histogram, handle_histogram_int_work.work);
> +	struct drm_i915_private *i915 = histogram->i915;
> +	struct intel_crtc *intel_crtc = histogram->crtc;
> +	char *histogram_event[] = {"HISTOGRAM=1", NULL};
> +
> +	/* Wa: 14014889975 */
> +	if (IS_DISPLAY_VER(i915, 12, 13))
> +		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> +			     DPST_CTL_RESTORE, 0);
> +
> +	intel_histogram_get_data(histogram);
>  
>  	drm_property_replace_global_blob(&i915->drm,
>  			&intel_crtc->config->histogram,
> @@ -161,12 +191,19 @@ static int intel_histogram_enable(struct intel_crtc *intel_crtc)
>  	 * enable DPST_CTL Histogram mode
>  	 * Clear DPST_CTL Bin Reg function select to TC
>  	 */
> -	intel_de_rmw(i915, DPST_CTL(pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
> -		     DPST_CTL_HIST_MODE | DPST_CTL_IE_TABLE_VALUE_FORMAT,
> -		     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
> -		     DPST_CTL_HIST_MODE_HSV |
> -		     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
> +	if (DISPLAY_VER(i915) >= 20)
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_IE_HIST_EN |
> +			     DPST_CTL_HIST_MODE,
> +			     DPST_CTL_IE_HIST_EN |
> +			     DPST_CTL_HIST_MODE_HSV);
> +	else
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
> +			     DPST_CTL_HIST_MODE | DPST_CTL_IE_TABLE_VALUE_FORMAT,
> +			     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
> +			     DPST_CTL_HIST_MODE_HSV |
> +			     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
>  
>  	/* Re-Visit: check if wait for one vblank is required */
>  	drm_crtc_wait_one_vblank(&intel_crtc->base);
> @@ -252,24 +289,43 @@ int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data)
>  	 * Set DPST_CTL Bin Reg function select to IE
>  	 * Set DPST_CTL Bin Register Index to 0
>  	 */
> -	intel_de_rmw(i915, DPST_CTL(pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK,
> -		     DPST_CTL_BIN_REG_FUNC_IE | DPST_CTL_BIN_REG_CLEAR);
> -
> -	for (i = 0; i < HISTOGRAM_IET_LENGTH; i++) {
> -		intel_de_rmw(i915, DPST_BIN(pipe),
> -			     DPST_BIN_DATA_MASK, data[i]);
> -		drm_dbg_atomic(&i915->drm, "iet_lut[%d]=%x\n", i, data[i]);
> +	if (DISPLAY_VER(i915) >= 20) {
> +		/* Set index to zero */
> +		intel_de_rmw(i915, DPST_IE_INDEX(pipe),
> +			     DPST_IE_BIN_INDEX_MASK, DPST_IE_BIN_INDEX(0));
> +		for (i = 0; i < HISTOGRAM_IET_LENGTH; i++) {
> +			intel_de_rmw(i915, DPST_IE_BIN(pipe),
> +				     DPST_IE_BIN_DATA_MASK,
> +				     DPST_IE_BIN_DATA(data[i]));
> +			drm_dbg_atomic(&i915->drm, "iet_lut[%d]=%x\n",
> +				       i, data[i]);
> +		}
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_ENHANCEMENT_MODE_MASK |
> +			     DPST_CTL_IE_MODI_TABLE_EN,
> +			     DPST_CTL_EN_MULTIPLICATIVE |
> +			     DPST_CTL_IE_MODI_TABLE_EN);
> +	} else {
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK,
> +			     DPST_CTL_BIN_REG_FUNC_IE | DPST_CTL_BIN_REG_CLEAR);
> +		for (i = 0; i < HISTOGRAM_IET_LENGTH; i++) {
> +			intel_de_rmw(i915, DPST_BIN(pipe),
> +				     DPST_BIN_DATA_MASK, data[i]);
> +			drm_dbg_atomic(&i915->drm, "iet_lut[%d]=%x\n",
> +				       i, data[i]);
> +		}
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_ENHANCEMENT_MODE_MASK |
> +			     DPST_CTL_IE_MODI_TABLE_EN,
> +			     DPST_CTL_EN_MULTIPLICATIVE |
> +			     DPST_CTL_IE_MODI_TABLE_EN);
> +
> +		/* Once IE is applied, change DPST CTL to TC */
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_BIN_REG_FUNC_SEL,
> +			     DPST_CTL_BIN_REG_FUNC_TC);
>  	}
> -
> -	intel_de_rmw(i915, DPST_CTL(pipe),
> -		     DPST_CTL_ENHANCEMENT_MODE_MASK | DPST_CTL_IE_MODI_TABLE_EN,
> -		     DPST_CTL_EN_MULTIPLICATIVE | DPST_CTL_IE_MODI_TABLE_EN);
> -
> -	/* Once IE is applied, change DPST CTL to TC */
> -	intel_de_rmw(i915, DPST_CTL(pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL, DPST_CTL_BIN_REG_FUNC_TC);
> -
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h b/drivers/gpu/drm/i915/display/intel_histogram.h
> index 5e24d3c5c28b..436e0b8e9ffd 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.h
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -48,8 +48,33 @@ enum pipe;
>  #define _DPST_BIN_B					0x491C4
>  #define DPST_BIN(pipe)					_MMIO_PIPE(pipe, _DPST_BIN_A, _DPST_BIN_B)
>  #define DPST_BIN_DATA_MASK				REG_GENMASK(23, 0)
> +#define DPST_BIN_DATA					REG_FIELD_PREP(DPST_BIN_DATA_MASK, val)
>  #define DPST_BIN_BUSY					REG_BIT(31)
>  
> +#define _DPST_HIST_INDEX_A				0x490D8
> +#define _DPST_HIST_INDEX_B				0x491D8
> +#define DPST_HIST_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_INDEX_A, _DPST_HIST_INDEX_B)
> +#define DPST_HIST_BIN_INDEX_MASK			REG_GENMASK(4, 0)
> +#define DPST_HIST_BIN_INDEX(val)			REG_FIELD_PREP(DPST_HIST_BIN_INDEX_MASK, val)
> +
> +#define _DPST_HIST_BIN_A				0x490C4
> +#define _DPST_HIST_BIN_B				0x491C4
> +#define DPST_HIST_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_HIST_BIN_A, _DPST_HIST_BIN_B)
> +#define DPST_HIST_BIN_BUSY				REG_BIT(31)
> +#define DPST_HIST_BIN_DATA_MASK				REG_GENMASK(30, 0)
> +
> +#define _DPST_IE_BIN_A					0x490CC
> +#define _DPST_IE_BIN_B					0x491CC
> +#define DPST_IE_BIN(pipe)				_MMIO_PIPE(pipe, _DPST_IE_BIN_A, _DPST_IE_BIN_B)
> +#define	DPST_IE_BIN_DATA_MASK				REG_GENMASK(9, 0)
> +#define DPST_IE_BIN_DATA(val)				REG_FIELD_PREP(DPST_IE_BIN_DATA_MASK, val)
> +
> +#define _DPST_IE_INDEX_A				0x490DC
> +#define _DPST_IE_INDEX_B				0x491DC
> +#define DPST_IE_INDEX(pipe)				_MMIO_PIPE(pipe, _DPST_IE_INDEX_A, _DPST_IE_INDEX_B)
> +#define DPST_IE_BIN_INDEX_MASK				REG_GENMASK(6, 0)
> +#define DPST_IE_BIN_INDEX(val)				REG_FIELD_PREP(DPST_IE_BIN_INDEX_MASK, val)
> +
>  #define INTEL_HISTOGRAM_PIPEA			0x90000000
>  #define INTEL_HISTOGRAM_PIPEB			0x90000002
>  #define INTEL_HISTOGRAM_EVENT(pipe)		PIPE(pipe, \

-- 
Jani Nikula, Intel
