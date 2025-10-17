Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AC9BE8809
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 14:03:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7527E10EBC9;
	Fri, 17 Oct 2025 12:03:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MLpN2XNQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5E1E10EBC9;
 Fri, 17 Oct 2025 12:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760702618; x=1792238618;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7WvWXX+JUbw0kEbQ/hfGFqcJUJQRekQOMxLvZyuj4vo=;
 b=MLpN2XNQcFxVfrXHpH6Z3+iWtVWsW3UbWMZVM5ZPNkWQPYzvZgx1wmrZ
 jJLV4mtUODu7xLv91MRFbcSjbLaK5CKCkLB9rw48SaoZRbo9Y4L+JCpNL
 y8pKEUdDPiq68BKCgp2G1I/Zw651KYPoN9zgvzLNQ7ckmX1n+YO8kqjjQ
 7FXXvsLjsu7wmlPZOVeUCWd//dt8V4c+y2Y3rA0hy6jR/vT97hnuxu9o5
 hzTD63Fv9ZtPU2dBN3bFF6Rw1Rsq91zuCwtTonloJ2B8vvRcqAhaMfSfR
 dEd9EFDS/ebDul81rDxDAggOG0+CxpdVsRvJ0iNOm2Sd9YVeJ1FdgbIw4 w==;
X-CSE-ConnectionGUID: OTjpZzlvQ3aqKjPk6gsekw==
X-CSE-MsgGUID: hYKxkR+9QBa4J+hjaLWc9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="74255719"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="74255719"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:03:02 -0700
X-CSE-ConnectionGUID: j+4PfWH+Q3OLmUOlI+7OCw==
X-CSE-MsgGUID: lR+AslesR6ijdf6ceADjLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="186979488"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:03:01 -0700
Date: Fri, 17 Oct 2025 15:02:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/5] drm/i915/dp: Check if guardband can accommodate sdp
 latencies
Message-ID: <aPIwcasPJ9PCU4yq@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251017050202.2211985-4-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Oct 17, 2025 at 10:32:00AM +0530, Ankit Nautiyal wrote:
> Check if guardband is sufficient for all DP SDP latencies.
> If its not, fail .compute_config_late().
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3f2c319e3d6f..8ae99cee79d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -93,6 +93,7 @@
>  #include "intel_psr.h"
>  #include "intel_quirks.h"
>  #include "intel_tc.h"
> +#include "intel_vblank.h"
>  #include "intel_vdsc.h"
>  #include "intel_vrr.h"
>  
> @@ -6980,14 +6981,35 @@ void intel_dp_mst_resume(struct intel_display *display)
>  	}
>  }
>  
> +static
> +int intel_dp_sdp_compute_config_late(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	int guardband = intel_crtc_vblank_length(crtc_state);

In theory we might have enough legacy TG vblank but not VRR guardband
(I suppose that can only happen on ICL/TGL due to the pipeline full
limit) so I was pondering whether we might need to check both. But I
think this is fine. We would just fail when trying to enable VRR in
those cases, but without VRR enabled we can still light up th display.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	int min_sdp_guardband = intel_dp_sdp_min_guardband(crtc_state, false);
> +
> +	if (guardband < min_sdp_guardband) {
> +		drm_dbg_kms(display->drm, "guardband %d < min sdp guardband %d\n",
> +			    guardband, min_sdp_guardband);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  int intel_dp_compute_config_late(struct intel_encoder *encoder,
>  				 struct intel_crtc_state *crtc_state,
>  				 struct drm_connector_state *conn_state)
>  {
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	int ret;
>  
>  	intel_psr_compute_config_late(intel_dp, crtc_state);
>  
> +	ret = intel_dp_sdp_compute_config_late(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	return 0;
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
