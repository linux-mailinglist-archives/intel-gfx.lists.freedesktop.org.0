Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D48AB976521
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 11:05:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D332C10EB1B;
	Thu, 12 Sep 2024 09:05:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kmuk3xvz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEDE410EB1B;
 Thu, 12 Sep 2024 09:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726131950; x=1757667950;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TrBEU5IzsSMbCG6uVeQwUP9NTdlRLEeCs8MCv4Y1cLA=;
 b=Kmuk3xvzeK01XosOT1pLzVrpeKgEfavuTcU4g1iX3eRvOpRb//ceU1+b
 D8hkUOkbmHZae6oILyB1wnx6WUnbzv1FK82A9nEH7YE/g6IXcLzDcsOpJ
 bZN2v/I0c+ecU9wTgxVMSWsulLa9IYKyHEblrwZoLXn/zIl5yIZaKjU3V
 iBubjIlSNdXVkfcglVdaq5MsOD0626ORydRldsutHreT2eAGNUfCap3n7
 +2I6EjNDskIUGxT0F88H/e7SrWV6FAt8WFjGmhqwCHAfm7+Pzff7PN2Yc
 JPUNh53xM5/yM9KBP4efXBrJ4AKO1alpRe5+YnT1Vdjs4GltTgh+H0Wmc A==;
X-CSE-ConnectionGUID: /IeYfZrxSGCJo+shFe8vrA==
X-CSE-MsgGUID: cuyo3fOVR4W7OWIYc2SpiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25131260"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="25131260"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:05:50 -0700
X-CSE-ConnectionGUID: KJ3IK7TCQxSdhlRs+7jkug==
X-CSE-MsgGUID: J+8BC5lnQMC8LsU5/UrUJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72429550"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.253])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:05:48 -0700
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
Date: Thu, 12 Sep 2024 12:05:44 +0300
Message-ID: <87bk0ti6mv.fsf@intel.com>
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

Why do all the patches have two Signed-off-by's?

BR,
Jani.

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
