Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C192AE99BA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 11:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFEA010E2B5;
	Thu, 26 Jun 2025 09:12:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SDkqiwyI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2423F10E2B5;
 Thu, 26 Jun 2025 09:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750929137; x=1782465137;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=zsmnffpbjrYcjOOdFudwF49wionT85nj91BDORuwcUE=;
 b=SDkqiwyIixstp+YzE1i0rouZySaEgglgu/jV+Heszi/E8IOvxnvEqgKm
 Zo8R3tvofFABBPBUcEDs+h2IM4+lGa3zhSovMo+eG9HmxXrpHT4FODpwV
 z+DD3QL1J+q6rxquMb7QiHOPLbcrOYvSvYwUCmuT0YfrzrhpEKDTuIUy2
 j/grt6OLzo8BSi60IQNnHMbaosPBDm4sicGOcFZpn9Y5MZMvjgKaY4Ras
 i+BJhYgppR2G5rnm4mLGdk1mlquq2XCiMT7ZdL+MemO6pjkmlIHVwnGCn
 svn/bA6o5PN/jwjm7GYwBmzq1MX69yMfZiRlsQRcMzJsN3up7rI6J6kaj A==;
X-CSE-ConnectionGUID: XLUm0a/4SYyTqrBycPb3dQ==
X-CSE-MsgGUID: xBMyyhZYTEmwV42fzvWw4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="52941027"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="52941027"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 02:12:17 -0700
X-CSE-ConnectionGUID: V3zFRV66QNW7RyeobLZDxA==
X-CSE-MsgGUID: 8DrNf1KwQLq+gIQnPLPsZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152977205"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 02:12:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Subject: Re: [PATCH 11/20] drm/i915/dp: Reprobe connector if getting/acking
 device IRQs fails
In-Reply-To: <20250626082053.219514-12-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-12-imre.deak@intel.com>
Date: Thu, 26 Jun 2025 12:12:11 +0300
Message-ID: <625ce1c9c46ba93027fecadae4803fc86450ad50@intel.com>
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

On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> From: Imre Deak <imre.deak@gmail.com>
>
> An AUX access failure during HPD IRQ handling should be handled by
> falling back to a full connector detection, ensure that if the failure
> happens while reading/acking a device service IRQ.
>
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++++------
>  1 file changed, 15 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7793a72983abd..7eb208d2c321b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5393,16 +5393,20 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
>  	intel_encoder_link_check_queue_work(encoder, 0);
>  }
>  
> -static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> +static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)

I don't think "check" is very intuitive in function names. Check
something, but then what? Is it like an assert or does it do something
active or what?

What does a boolean return from a check function mean?

It's not obvious to the reader at all.

>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	u8 val;
>  
>  	if (drm_dp_dpcd_readb(&intel_dp->aux,
> -			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
> -		return;
> +			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
> +		return true;

Looks like true means the check failed... while usually true for boolean
functions means success.

>  
> -	drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val);
> +	if (!val)
> +		return false;
> +
> +	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
> +		return true;
>  
>  	if (val & DP_AUTOMATED_TEST_REQUEST)
>  		intel_dp_test_request(intel_dp);

Whoa, it's not a *check* function at all?! It actually *handles* the
service irqs.

Can we rephrase the function name?

int intel_dp_handle_device_service_irq() and int returns maybe?


BR,
Jani.

> @@ -5412,6 +5416,8 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
>  
>  	if (val & DP_SINK_SPECIFIC_IRQ)
>  		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
> +
> +	return false;
>  }
>  
>  static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
> @@ -5476,8 +5482,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
>  		/* No need to proceed if we are going to do full detect */
>  		return false;
>  
> -	intel_dp_check_device_service_irq(intel_dp);
> -	reprobe_needed = intel_dp_check_link_service_irq(intel_dp);
> +	if (intel_dp_check_device_service_irq(intel_dp))
> +		reprobe_needed = true;
> +
> +	if (intel_dp_check_link_service_irq(intel_dp))
> +		reprobe_needed = true;
>  
>  	/* Handle CEC interrupts, if any */
>  	drm_dp_cec_irq(&intel_dp->aux);

-- 
Jani Nikula, Intel
