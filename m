Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8421894A4C1
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 11:53:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048D510E058;
	Wed,  7 Aug 2024 09:53:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e6TE6CuZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD5A510E058
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723024389; x=1754560389;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3WG9kpphrmAOy8LPf4D1CTVtUHRVhSkpudBUHA7oJsg=;
 b=e6TE6CuZbT3fohpR9JAgYR319Zl+uyEP6stbIvb9j9Dc0FGNn50Iw20a
 PoL4Z/18I/Oh06WPFWUyZhWfZ/RxRrVkSa7INrGdFQ7+1YAn8lzc+eOQ4
 Nz/XlMUL/csWEa9gjPLm2Im8FtbfaSJnue/G1wR57NNwko3kF9Uuoc/XI
 2ePUTPu9cMIDYHVW+7oiArDObRNZoWmHKZxDB5sVbcdKwRZ+t+hQRKI5L
 UId6piPv1Zf60oE+owUrKbN2o4bRPntFhux6qpg+C0wk54e85cUw/803x
 wXEWX4Ri8gZfQOfAzzTPzA21YlrwC1/ZO/+QOriLGQCx5GAKJt58ez4Po g==;
X-CSE-ConnectionGUID: A6OE6NOIRuC0HWjQ4gCmtw==
X-CSE-MsgGUID: NdMIJ7p4RECO4M5ltyGyOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20749483"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="20749483"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 02:53:08 -0700
X-CSE-ConnectionGUID: xcannCanRW+wcxVT32Bjwg==
X-CSE-MsgGUID: dQPRFLBTSiCjVR5SwFpRWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="61736512"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 02:53:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH 5/5] drm/i915/display/histogram: Histogram changes for
 Display LNL+
In-Reply-To: <20240705095551.1244154-6-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-6-arun.r.murthy@intel.com>
Date: Wed, 07 Aug 2024 12:53:03 +0300
Message-ID: <87ttfw4q2o.fsf@intel.com>
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

On Fri, 05 Jul 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> In LNL+, histogram/IE data and index registers are added which was
> included in the control registers in the legacy platforms. The new
> registers are used for reading histogram and writing the IET LUT data.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_histogram.c    | 174 +++++++++++++-----
>  .../gpu/drm/i915/display/intel_histogram.h    |  25 +++
>  2 files changed, 153 insertions(+), 46 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu/drm/i915/display/intel_histogram.c
> index 61a8cd623f19..46832ca78ee3 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -11,29 +11,47 @@
>  #include "intel_de.h"
>  #include "intel_histogram.h"
>  
> -static void intel_histogram_handle_int_work(struct work_struct *work)
> +static void intel_histogram_read_data(struct intel_histogram *histogram)
>  {
> -	struct intel_histogram *histogram = container_of(work,
> -		struct intel_histogram, handle_histogram_int_work.work);
>  	struct drm_i915_private *i915 = histogram->i915;
> -	struct intel_crtc *intel_crtc =
> -		to_intel_crtc(drm_crtc_from_index(&i915->drm, histogram->pipe));
> -	char *histogram_event[] = {"HISTOGRAM=1", NULL};
>  	u32 dpstbin;
>  	int i, try = 0;
>  
> -	/* Wa: 14014889975 */
> -	if (IS_DISPLAY_VER(i915, 12, 13))
> -		intel_de_rmw(i915, DPST_CTL(histogram->pipe),
> -			     DPST_CTL_RESTORE, 0);
> +	/* Set index to zero */
> +	intel_de_rmw(i915, DPST_HIST_INDEX(histogram->pipe),
> +		     DPST_HIST_BIN_INDEX_MASK, DPST_HIST_BIN_INDEX(0));
>  
> -	/*
> -	 * TODO: PSR to be exited while reading the Histogram data
> -	 * Set DPST_CTL Bin Reg function select to TC
> -	 * Set DPST_CTL Bin Register Index to 0
> -	 */
> -	intel_de_rmw(i915, DPST_CTL(histogram->pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK, 0);
> +	for (i = 0; i < HISTOGRAM_BIN_COUNT; i++) {
> +		dpstbin = intel_de_read(i915, DPST_HIST_BIN(histogram->pipe));
> +		if (dpstbin & DPST_BIN_BUSY) {
> +			/*
> +			 * If DPST_BIN busy bit is set, then set the
> +			 * DPST_CTL bin reg index to 0 and proceed
> +			 * from beginning.
> +			 */
> +			intel_de_rmw(i915, DPST_HIST_INDEX(histogram->pipe),
> +				     DPST_HIST_BIN_INDEX_MASK,
> +				     DPST_HIST_BIN_INDEX(0));
> +			i = 0;
> +			if (try++ == 5) {
> +				drm_err(&i915->drm,
> +					"Histogram block is busy, failed to read\n");
> +				intel_de_rmw(i915, DPST_GUARD(histogram->pipe),
> +					     DPST_GUARD_HIST_EVENT_STATUS, 1);
> +				return;
> +			}
> +		}
> +		histogram->bindata[i] = dpstbin & DPST_HIST_BIN_DATA_MASK;
> +		drm_dbg_atomic(&i915->drm, "Histogram[%d]=%x\n",
> +			       i, histogram->bindata[i]);
> +	}
> +}

Please figure out a way to not duplicate the logic. Now you have the
infinite loop in two places.

> +
> +static void intel_histogram_read_data_legacy(struct intel_histogram *histogram)
> +{
> +	struct drm_i915_private *i915 = histogram->i915;
> +	u32 dpstbin;
> +	int i, try = 0;
>  
>  	for (i = 0; i < HISTOGRAM_BIN_COUNT; i++) {
>  		dpstbin = intel_de_read(i915, DPST_BIN(histogram->pipe));
> @@ -58,6 +76,41 @@ static void intel_histogram_handle_int_work(struct work_struct *work)
>  		drm_dbg_atomic(&i915->drm, "Histogram[%d]=%x\n",
>  			       i, histogram->bindata[i]);
>  	}
> +}
> +
> +static void intel_histogram_get_data(struct intel_histogram *histogram)
> +{
> +	struct drm_i915_private *i915 = histogram->i915;
> +
> +	/*
> +	 * TODO: PSR to be exited while reading the Histogram data
> +	 * Set DPST_CTL Bin Reg function select to TC
> +	 * Set DPST_CTL Bin Register Index to 0
> +	 */
> +	if (DISPLAY_VER(i915) >= 20) {
> +		intel_histogram_read_data(histogram);
> +	} else {
> +		intel_de_rmw(i915, DPST_CTL(histogram->pipe),
> +			     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK, 0);
> +		intel_histogram_read_data_legacy(histogram);
> +	}
> +}
> +
> +static void intel_histogram_handle_int_work(struct work_struct *work)
> +{
> +	struct intel_histogram *histogram = container_of(work,
> +		struct intel_histogram, handle_histogram_int_work.work);
> +	struct drm_i915_private *i915 = histogram->i915;
> +	struct intel_crtc *intel_crtc =
> +		to_intel_crtc(drm_crtc_from_index(&i915->drm, histogram->pipe));
> +	char *histogram_event[] = {"HISTOGRAM=1", NULL};
> +
> +	/* Wa: 14014889975 */
> +	if (IS_DISPLAY_VER(i915, 12, 13))
> +		intel_de_rmw(i915, DPST_CTL(histogram->pipe),
> +			     DPST_CTL_RESTORE, 0);
> +
> +	intel_histogram_get_data(histogram);
>  
>  	/* Notify user for Histogram rediness */
>  	if (kobject_uevent_env(&i915->drm.primary->kdev->kobj, KOBJ_CHANGE,
> @@ -70,13 +123,16 @@ static void intel_histogram_handle_int_work(struct work_struct *work)
>  		intel_de_write(i915, DPST_CTL(histogram->pipe), intel_de_read(i915,
>  			       DPST_CTL(histogram->pipe)) | DPST_CTL_RESTORE);
>  
> -	/* Enable histogram interrupt */
> -	intel_de_rmw(i915, DPST_GUARD(histogram->pipe), DPST_GUARD_HIST_INT_EN,
> -		     DPST_GUARD_HIST_INT_EN);
> +	if (DISPLAY_VER(i915) <= 14) {
> +		/* Enable histogram interrupt */
> +		intel_de_rmw(i915, DPST_GUARD(histogram->pipe),
> +			     DPST_GUARD_HIST_INT_EN,
> +			     DPST_GUARD_HIST_INT_EN);
>  
> -	/* Clear histogram interrupt by setting histogram interrupt status bit*/
> -	intel_de_rmw(i915, DPST_GUARD(histogram->pipe),
> -		     DPST_GUARD_HIST_EVENT_STATUS, 1);
> +		/* Clear histogram interrupt by setting histogram interrupt status bit*/
> +		intel_de_rmw(i915, DPST_GUARD(histogram->pipe),
> +			     DPST_GUARD_HIST_EVENT_STATUS, 1);
> +	}
>  
>  	drm_property_replace_global_blob(&i915->drm,
>  			&intel_crtc->config->histogram,
> @@ -148,12 +204,19 @@ static int intel_histogram_enable(struct intel_crtc *intel_crtc)
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
> @@ -233,24 +296,43 @@ int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data)
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
> +		intel_de_rmw(i915, DPST_IE_INDEX(histogram->pipe),
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
> index 88942564fdc0..7583b421164a 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.h
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -47,8 +47,33 @@
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
