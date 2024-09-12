Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 717E097651E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 11:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A9B710E663;
	Thu, 12 Sep 2024 09:04:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FbLdJ/gi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44F0310E663;
 Thu, 12 Sep 2024 09:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726131872; x=1757667872;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=E347KU7unBgYQ3cM64fBTwq5P7YWWji+ywmJvQAWF5o=;
 b=FbLdJ/giJy8NgRyvDWCon1STnB/UC460wA4aCMdoUxc9vq3pd4aMXdOd
 DyOqQFh38mEuv1DK3aRuyz7SlrXWsDHPt5TiuWOAbuozVj4jOupPWuV+q
 uLA2n/9B8bJnzc6AJjmBpoZHmNv02BCmWCINdWEBs43ovhGaNN0M8A8G0
 3ZRwvkmlkk8cWQXwql0OG5JG7PBuGdPUXeaRGi/biF1koQaTH4Ys3+LoH
 1G2r6eRNMCXHYJPlfpxCmPaJF036DCoVZvTwR8yPkNaRlT9XOiOECoX6Q
 klBdNaVzqU8idkaMGOlzo6gPW88jDojTS5YGD76DD5K/MM0Z4+zSLTJGJ A==;
X-CSE-ConnectionGUID: Jtrdh6T7Sb6ibdLtvPOxwA==
X-CSE-MsgGUID: frdHJ0yZSx+NVe1UdWpcGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25131089"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="25131089"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:04:31 -0700
X-CSE-ConnectionGUID: OY3tD3TDQrO16RG6WnmULg==
X-CSE-MsgGUID: JHFTm90dQjCnmjisKB9zpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72429149"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.253])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:04:30 -0700
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
Date: Thu, 12 Sep 2024 12:04:26 +0300
Message-ID: <87frq5i6p1.fsf@intel.com>
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

Please explain why.

BR,
Jani.

>
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
>  	}
>  
>  	if (try == max_tries) {

-- 
Jani Nikula, Intel
