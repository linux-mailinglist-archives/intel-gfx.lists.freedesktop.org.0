Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5754B97E9E2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 12:24:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F00B810E3D3;
	Mon, 23 Sep 2024 10:24:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UST3A7Z0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AC5310E3D3;
 Mon, 23 Sep 2024 10:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727087072; x=1758623072;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=D0ik1WCaNNd34TPnR6FkdiulEWghgo12ApgjFXtYYDs=;
 b=UST3A7Z0awWCdZjLvlQT/EQEcCb1yL1ANePc8hhhcIHf7j0f8MttRAy7
 798Cp1Rr3l/QZN7gQx9RA+y1fVISesnoL0LC633Ua0Gua7CfsJc5mKqIv
 4aMkks8LwG3JO4Y7VBCuSk9Z75ak1W/umnMnoAs36KfWI8JCvADxATq+o
 s8kaEvxzdrAqGM/ynxkMrcA7zi9MHhEBc1DO/y2b9oyFewg0TfBJyOweN
 FTMkg3LDxR03OuabqFec1fWP/qvPCwGJC48J4HWytrdxJnXrjimc9pZvh
 Wc36YZhzxLqJU59IDLoZyg59zpYHldmoQN8J3PYu0QG2Q5Gc8bJIsNWpt g==;
X-CSE-ConnectionGUID: jXqwqKetTkiuGdmzEzSETQ==
X-CSE-MsgGUID: fl2FVyj3TLOOLKh/Mlu6LA==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="26119884"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="26119884"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 03:24:32 -0700
X-CSE-ConnectionGUID: m2uzIadQQOC8o2Mawj2ORA==
X-CSE-MsgGUID: Dtx+NCoHQA6Vz0dexrHldg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71853466"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 03:24:30 -0700
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
Date: Mon, 23 Sep 2024 13:24:27 +0300
Message-ID: <87tte6652c.fsf@intel.com>
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
>
> Signed-off-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

With the commit message updated to explain why,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

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
