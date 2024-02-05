Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E35DF8497A0
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 11:19:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DF8E10F2A6;
	Mon,  5 Feb 2024 10:19:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M209Hm0R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A79910F2A6
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 10:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707128354; x=1738664354;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dGgFBeoBNQdO6BoMqJlWogisPuEBXth9BrZo6VoQgI4=;
 b=M209Hm0RiwRFPPVn7sKco84CUx2h4cTZ8FhioKmg/fn+QkqPFV7NGb7D
 /kGmeaIiy/uZ7h2rQ/iuSEJrxpGkh+5BC8yj2rnqfKtKxIuDblgAUCEjy
 /iBnT0qIBi6eJzfQ7/YDXdyJM7H1ppqUKFPFlUbWm8HQHs1CgdtLFmuJn
 ji3wsDdvvPezqUJLRgNXb3N/Ht/g37O/26/vWvch2XZjvcv1rQtPidJq1
 Chtv29eN9DB5P9CdSgbAw4l3qdNLMcpydwZcF+J14xSJjSJd+O5OGZlTj
 KJ7cLIOG1DAoO10O6o8HxJz9XfQ+JmSyn4NaSNIrrthG5pocjGGFB4Iio w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="662144"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="662144"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 02:19:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="979203"
Received: from bgrigorc-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.24])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 02:19:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
In-Reply-To: <20240205080126.1159496-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240201085158.1000285-3-suraj.kandpal@intel.com>
 <20240205080126.1159496-1-suraj.kandpal@intel.com>
Date: Mon, 05 Feb 2024 12:19:06 +0200
Message-ID: <87le7zdxid.fsf@intel.com>
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

On Mon, 05 Feb 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Program the PKGC_LATENCY register with the highest latency from
> level 1 and above LP registers else program with all 1's.
> This is used to improve package C residency by sending the highest
> latency tolerance requirement (LTR) when the planes are done with the
> frame until the next frame programming window (set context latency,
> window 2) starts.
> Bspec: 68986
>
> --v2
> -Fix indentation [Chaitanya]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 31 ++++++++++++++++++++
>  1 file changed, 31 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 051a02ac01a4..1ce4b33a407a 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3394,6 +3394,34 @@ static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
>  	adjust_wm_latency(i915, wm, num_levels, read_latency);
>  }
>  
> +/*
> + * Program PKG_C_LATENCY Pkg C with highest valid latency from
> + * watermark level1 and up and above. If watermark level 1 is
> + * invalid program it with all 1's.
> + * Program PKG_C_LATENCY Added Wake Time = 0.
> + */
> +static void intel_program_pkgc_latency(struct drm_i915_private *i915,
> +				       u16 wm_latency[])
> +{
> +	u16 max_value = 0;
> +	u32 clear = 0, val = 0;
> +	int max_level = i915->display.wm.num_levels, i;

max_level seems useless, only used once.

> +
> +	for (i = 1; i <= max_level; i++) {

Array access goes out of bounds. Boom.

> +		if (wm_latency[i] == 0)
> +			break;
> +		else if (wm_latency[i] > max_value)
> +			max_value = wm_latency[i];
> +	}
> +
> +	if (max_value == 0)
> +		max_value = ~0 & LNL_PKG_C_LATENCY_MASK;

What does "~0 &" gain you here?

> +
> +	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
> +	val |= max_value;

If you have fields defined for the register, why not use it for setting
max value too?

> +	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
> +}
> +
>  static void skl_setup_wm_latency(struct drm_i915_private *i915)
>  {
>  	if (HAS_HW_SAGV_WM(i915))
> @@ -3407,6 +3435,9 @@ static void skl_setup_wm_latency(struct drm_i915_private *i915)
>  		skl_read_wm_latency(i915, i915->display.wm.skl_latency);
>  
>  	intel_print_wm_latency(i915, "Gen9 Plane", i915->display.wm.skl_latency);
> +
> +	if (DISPLAY_VER(i915) >= 20)
> +		intel_program_pkgc_latency(i915, i915->display.wm.skl_latency);

Before this, nothing in the skl_wm_init() path actually writes any
registers, it's all readout. Is this the right place to be doing this?

>  }
>  
>  static const struct intel_wm_funcs skl_wm_funcs = {

-- 
Jani Nikula, Intel
