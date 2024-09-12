Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED16D976519
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 11:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D502510EB17;
	Thu, 12 Sep 2024 09:01:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TCjLTtH7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0BEA10EB17;
 Thu, 12 Sep 2024 09:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726131717; x=1757667717;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=a4vaLYtMl2wx0StKgSwil096+ynmXpLYE2dG2eY6E4c=;
 b=TCjLTtH7XIZu3MxEMKRCSfCJlwrd0TWj3AueDnMTcsO05Z6VSq6KmYE+
 6wrfwWa2OINR6k3+XLeNNO5t7wMshXnNrXye8bSY/9NTIn7mbIrVTpH/6
 3M45qhiluTs756ul92+eKcBi9MwaXjZBe8hU++IrAWgtXz9dBCybw1Jcj
 iIFc3XrPbnQ+Y1YznS3oROZEfEvNDyKOU0e4b5vTGlKRtIAbowZSq91ws
 7YOrr4V1h12aO0CQjNfyNZTokt2BKgUQV4no6j8/Ca4kTpcELXZ6WLybL
 vxlmtEqVKZKF7ZhYA7/NkDt5N9WOj8lBkfw4i+2ta8s80+lo6xvX8y51f A==;
X-CSE-ConnectionGUID: AhovMyqaSa6jGRgjOalDig==
X-CSE-MsgGUID: vJGK4cEKSmOgkSGS4TVuzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="50387069"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="50387069"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:01:57 -0700
X-CSE-ConnectionGUID: dyLIFL5JSP+Xru9hvwlY3w==
X-CSE-MsgGUID: CYR08mWVQ2KdsDU+fH4/MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72232636"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.253])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:01:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>, Srikanth V NagaVenkata
 <nagavenkata.srikanth.v@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage for LT
In-Reply-To: <20240912050552.779356-2-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-2-arun.r.murthy@intel.com>
Date: Thu, 12 Sep 2024 12:01:51 +0300
Message-ID: <87ikv1i6tc.fsf@intel.com>
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
> Aux RD Interval value depends on the value read from the dpcd register
> which is updated from the sink device use flseep thereby we adhere to
> the Documentation/timers/timers-howto.rst

Please explain why instead of just referencing a file.

BR,
Jani.

> Signed-off-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 397cc4ebae52..f41b69840ad9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -898,7 +898,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
>  
>  	voltage_tries = 1;
>  	for (cr_tries = 0; cr_tries < max_cr_tries; ++cr_tries) {
> -		usleep_range(delay_us, 2 * delay_us);
> +		fsleep(delay_us);
>  
>  		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
>  						     link_status) < 0) {
> @@ -1040,7 +1040,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
>  	}
>  
>  	for (tries = 0; tries < 5; tries++) {
> -		usleep_range(delay_us, 2 * delay_us);
> +		fsleep(delay_us);
>  
>  		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
>  						     link_status) < 0) {
> @@ -1417,7 +1417,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
>  	deadline = jiffies + msecs_to_jiffies_timeout(400);
>  
>  	for (try = 0; try < max_tries; try++) {
> -		usleep_range(delay_us, 2 * delay_us);
> +		fsleep(delay_us);
>  
>  		/*
>  		 * The delay may get updated. The transmitter shall read the

-- 
Jani Nikula, Intel
