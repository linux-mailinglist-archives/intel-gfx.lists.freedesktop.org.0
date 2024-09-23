Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD9497EA7B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 13:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0604010E3DB;
	Mon, 23 Sep 2024 11:10:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AljZRoNT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E2110E3DB;
 Mon, 23 Sep 2024 11:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727089799; x=1758625799;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mXLdaGm9t8P34+zdhWEqo4CO8ioO1nXSD6KFhAqLjJc=;
 b=AljZRoNTGBzTAdkvmoHvLVhn7HSdzGJfz1f90PEjxMQ5NbJJi5smhNI/
 HOrznZGYPsXD+SCSojMaQ8qaKYFl5r0NdXgmH7F0j75yvxSEFSyIoDAvv
 uuP40Lv7a+oiGY/CdGYMaUtcEQ/capQ1HIPsjuQxS67FVOeq7xE+w4dXJ
 8W9fj06GM//14ItCQfgMBIT3FV1OklB5a1GDPCjjXGrT573S/4uhEZ5kC
 c4v8lPb0SLhV23DDVBWWaYxyFrIVHFxWY+wZyP0RuS9rIPyunJaSreqjs
 wKzF+VoSnvXfNpzEwII5AshUokFTZcqtelqq8L5fcUuBsSuSFqOhJIc2A w==;
X-CSE-ConnectionGUID: aUTfn7uQSEW4vyqch40OAw==
X-CSE-MsgGUID: Yg2CBrsHSDKapga6j86F4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="37168858"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="37168858"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 04:09:59 -0700
X-CSE-ConnectionGUID: UrtZ4JZXSsaaoI4TxBUXGQ==
X-CSE-MsgGUID: fIHL8IFyS/S9H74hmv8eBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="94368984"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 04:09:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>, Srikanth V NagaVenkata
 <nagavenkata.srikanth.v@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
In-Reply-To: <20240912050552.779356-3-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-3-arun.r.murthy@intel.com>
Date: Mon, 23 Sep 2024 14:09:53 +0300
Message-ID: <87o74e62ym.fsf@intel.com>
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

On Thu, 12 Sep 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> DP Source should be reading AUX_RD interval after we get adjusted
> TX_FFE_PRESET_VALUE from the DP Sink. (before actually adjusting
> in DP Source)

I don't think that's correct. See below.

> Signed-off-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index f41b69840ad9..ca179bed46ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1419,12 +1419,6 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
>  	for (try = 0; try < max_tries; try++) {
>  		fsleep(delay_us);
>  
> -		/*
> -		 * The delay may get updated. The transmitter shall read the
> -		 * delay before link status during link training.
> -		 */
> -		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> -
>  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
>  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link status\n");
>  			return false;
> @@ -1457,6 +1451,12 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
>  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX FFE settings\n");
>  			return false;
>  		}
> +
> +		/*
> +		 * The delay may get updated. The transmitter shall read the
> +		 * delay before link status during link training.
> +		 */
> +		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);

This is clearly an improvement, but Figure 3-52 of DP 2.1a has "Read
AUX_RD_INTERVAL value" before "Adjust requested the TX_FFE_PRESET_VALUE
by a DPRX/LTTPR_UFP setting". Yes, in the same box in the flow chart,
but before.

Sticking with the spec, the read should be placed above this comment:

	/* Update signal levels and training set as requested. */

Be sure to reference the spec in the commit message.


BR,
Jani.


>  	}
>  
>  	if (try == max_tries) {

-- 
Jani Nikula, Intel
