Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E16DD736DF8
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 15:55:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CB6F89109;
	Tue, 20 Jun 2023 13:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B21F089109
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 13:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687269348; x=1718805348;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cEzD6mcFgqpe85rGb25fRr1Xw+tXQcl49yLuSMWrmmo=;
 b=b83rapa9bCfWkS8jlu+1WMAdjkGVSDTXC9wx0KPAkCAdkoFtID9nhxMx
 w9SokkV6no9HuBPJT0WH2GpZ6dRekRqz/tv/zsO4dKuXeYVPf/HLzyZ0V
 S0YwkS9j6+B9eiYW1u+KMKkaIygSQfvo7L5mGjMnPhIZfYzKkkVI2Nz5y
 XaPgEQEolzRsMJmiWOPPvaR7K0hJVobi1y7GihyhOxUYwW2lc3jilv8GF
 Va2g66k2vKrhpQDFaH5hMWyKm/qjJEJ8Gri+YZxKPP325RxKhPZF1Gk66
 P/eXRLnI4kFDYTk1VH5JiVYzpVx5ztpGJBMqyifxlPVeApVriqHNyqJYx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357353173"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="357353173"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 06:55:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="888245778"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="888245778"
Received: from dshvarts-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.204])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 06:55:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230620074400.1054530-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620074400.1054530-1-arun.r.murthy@intel.com>
Date: Tue, 20 Jun 2023 16:55:42 +0300
Message-ID: <878rcegrvl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Add fallback on LT
 failure for DP2.0
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

On Tue, 20 Jun 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> For DP2.0 as per the Spec on LT failure we need to reduce the lane count
> if the lane count is not equal to 1. If lane count is 1 then need to
> retry with reducing the link rate.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54ddc953e5bc..2b12ca45596d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -657,8 +657,20 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  				    "Retrying Link training for eDP with same parameters\n");
>  			return 0;
>  		}
> -		intel_dp->max_link_rate = intel_dp_common_rate(intel_dp, index - 1);
> -		intel_dp->max_link_lane_count = lane_count;
> +		if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] & DP_CAP_ANSI_128B132B) {

This doesn't mean we're actually using UHBR. And we don't get here for
UHBR because it's always mst. And this doesn't handle mst (it
should). There are a lot of gaps here.

The whole thing has been discussed before, and my previous idea was that
we'd generate a list of {link rate, link lane count} pairs up front, in
the correct order, and just have one an index to that list for the
fallback. Because the logic here is complicated to follow.

Eventually we'd need to be able to switch between UHBR and non-UHBR in
the fallback too, which we aren't capable of doing at the moment.


BR,
Jani.


> +			if (lane_count > 1) {
> +				/* Reduce the lane count */
> +				intel_dp->max_link_lane_count = lane_count >> 1;
> +				intel_dp->max_link_rate = intel_dp_common_rate(intel_dp, index);
> +			} else {
> +				/* Reduce the link rate */
> +				intel_dp->max_link_rate = intel_dp_common_rate(intel_dp, index - 1);
> +				intel_dp->max_link_lane_count = intel_dp_max_common_lane_count(intel_dp);
> +			}
> +		} else {
> +			intel_dp->max_link_rate = intel_dp_common_rate(intel_dp, index - 1);
> +			intel_dp->max_link_lane_count = lane_count;
> +		}
>  	} else if (lane_count > 1) {
>  		if (intel_dp_is_edp(intel_dp) &&
>  		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> @@ -675,6 +687,10 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  		return -1;
>  	}
>  
> +	drm_dbg_kms(&i915->drm,
> +		    "Retrying Link training with link rate %d and lane count %d\n",
> +		    intel_dp->max_link_rate, intel_dp->max_link_lane_count);
> +
>  	return 0;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
