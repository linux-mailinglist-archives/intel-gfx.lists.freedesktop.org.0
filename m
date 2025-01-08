Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C088A056D6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 10:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A709410E046;
	Wed,  8 Jan 2025 09:28:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ROkSR3ar";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C46310E046
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 09:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736328533; x=1767864533;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tYJ2tDFH4YtP4v7BA5tga4r7V5CDXKac8wFtvfvNNRw=;
 b=ROkSR3arMW/L3pdTRlYwgZzj0VCHtdW31rwouYkOgBnPphtMb9qAtlwo
 5HTWnmauYKG2q2cV2hCCT5Km6/aJHk0AXnkyNNcVXXu7Q1jCGz/1CG+SR
 47/HaaKT3uiv4N3nUz1HL5UQ74/2XJOMQ+TdXATGwW/X1uJsvR9LWoRqN
 McrEWGVHIjSxK0SBnpmHIM1KXRel3lc4sKsLon/WFeQ9gf9bcmPExpSSp
 ooVLuB8rfJg6KbIJAhQZ7ivrtQlG+TPIa1bAqZfSEAtEX5bjxs8oAlSl1
 oNbEKaH8pXZifeEITNgMZTZ3QOcfVWFuxxnbF724mUBOWK8WMQkfqNi64 w==;
X-CSE-ConnectionGUID: kELgK3HEShedMv/fq1BvVQ==
X-CSE-MsgGUID: JWUUk8WlTyKiby3K2qvuvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="35774331"
X-IronPort-AV: E=Sophos;i="6.12,297,1728975600"; d="scan'208";a="35774331"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 01:28:52 -0800
X-CSE-ConnectionGUID: G/qB009PSXqX1zsuoo5p9w==
X-CSE-MsgGUID: vwJP7ydkTzyHH+XLsVrhLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108141966"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 01:28:51 -0800
Date: Wed, 8 Jan 2025 11:28:47 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, andi.shyti@linux.intel.com,
 anshuman.gupta@intel.com
Subject: Re: [PATCH v1] drm/i915/selftest: Change throttle criteria for rps
Message-ID: <Z35FT4hkqGibrYaB@black.fi.intel.com>
References: <20250102110618.174415-1-raag.jadav@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250102110618.174415-1-raag.jadav@intel.com>
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

On Thu, Jan 02, 2025 at 04:36:18PM +0530, Raag Jadav wrote:
> Current live_rps_control() implementation errors out on throttling.
> This was done with the assumption that throttling to minimum frequency
> is a catastrophic failure, which is incorrect. Throttling can happen
> due to variety of reasons and often times out of our control. Also,
> the resulting frequency can be at any given point below the maximum
> allowed. Change throttle criteria to reflect this logic and drop the
> error, as it doesn't necessarily mean selftest failure.
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---

Rodrigo, does this look okay?

Raag

>  drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index dcef8d498919..7aac90c1679e 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -477,12 +477,13 @@ int live_rps_control(void *arg)
>  			limit, intel_gpu_freq(rps, limit),
>  			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
>  
> -		if (limit == rps->min_freq) {
> -			pr_err("%s: GPU throttled to minimum!\n",
> -			       engine->name);
> +		if (limit != rps->max_freq) {
> +			u32 throttle = intel_uncore_read(gt->uncore,
> +							 intel_gt_perf_limit_reasons_reg(gt));
> +
> +			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> +				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
>  			show_pstate_limits(rps);
> -			err = -ENODEV;
> -			break;
>  		}
>  
>  		if (igt_flush_test(gt->i915)) {
> -- 
> 2.34.1
> 
