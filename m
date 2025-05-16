Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36736AB9E23
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 16:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA9D10EAC9;
	Fri, 16 May 2025 14:05:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="laDUhfed";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05C1B10EAC9;
 Fri, 16 May 2025 14:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747404302; x=1778940302;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=AARtyQQn4x3pnO3w+0Flli0MLpF+OLmxeanXecRDEkM=;
 b=laDUhfedz534qVNH0EJ/srZFvKo+6aFozjrRyaIuL4mlqp8VLsMv+9uq
 HwYmL4yhhz7SD7sREAxQnCan/RoXB6EmU/1INcTYeJLScgKVUMWFTG9WN
 RvcUm0nyqPijdQdl7FUseozEFlnngDyW/rZucHvfh+QR/HXhjCck19m0B
 2XQsAgKumKYTtFk04Y1MdJL0DuMGxB/qA8ydWAtxzRgtOonkO2NESsv0s
 JjRcYO8ISAfPAdw59GAAYSMQLu7Hh6N3DBzgqv+OHFhiFsTjlhNomEkFc
 KeyS0vLb7B3Ewo50bBhQ2q9s19YbCzjjY20U9jOkqmosGrN2B9aH8a725 A==;
X-CSE-ConnectionGUID: i4BoTU/NRE6yperrhUL02Q==
X-CSE-MsgGUID: 8KBWvM3HRxiYGpSkvw8wXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="49533462"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49533462"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:05:01 -0700
X-CSE-ConnectionGUID: 468EPgi6QFabP7q5fiJGZA==
X-CSE-MsgGUID: 56MrHrFWQnmA1jJlusy6gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="142706963"
Received: from slindbla-desk.ger.corp.intel.com (HELO [10.245.245.176])
 ([10.245.245.176])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 07:04:59 -0700
Message-ID: <8c1002cd-e5bf-4d1b-880c-5e7ac7d08f70@intel.com>
Date: Fri, 16 May 2025 15:04:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] drm/i915/display: Add check for
 alloc_ordered_workqueue() and alloc_workqueue()
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Haoxiang Li <haoxiang_li2024@163.com>, stable@vger.kernel.org
References: <cover.1747397638.git.jani.nikula@intel.com>
 <20d3d096c6a4907636f8a1389b3b4dd753ca356e.1747397638.git.jani.nikula@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20d3d096c6a4907636f8a1389b3b4dd753ca356e.1747397638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 16/05/2025 13:16, Jani Nikula wrote:
> From: Haoxiang Li <haoxiang_li2024@163.com>
> 
> Add check for the return value of alloc_ordered_workqueue()
> and alloc_workqueue(). Furthermore, if some allocations fail,
> cleanup works are added to avoid potential memory leak problem.
> 
> Fixes: 40053823baad ("drm/i915/display: move modeset probe/remove functions to intel_display_driver.c")
> Cc: stable@vger.kernel.org
> Signed-off-by: Haoxiang Li <haoxiang_li2024@163.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>   .../drm/i915/display/intel_display_driver.c   | 30 +++++++++++++++----
>   1 file changed, 25 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 5c74ab5fd1aa..411fe7b918a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -244,31 +244,45 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
>   	intel_dmc_init(display);
>   
>   	display->wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
> +	if (!display->wq.modeset) {
> +		ret = -ENOMEM;
> +		goto cleanup_vga_client_pw_domain_dmc;
> +	}
> +
>   	display->wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
>   						WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
> +	if (!display->wq.flip) {
> +		ret = -ENOMEM;
> +		goto cleanup_wq_modeset;
> +	}
> +
>   	display->wq.cleanup = alloc_workqueue("i915_cleanup", WQ_HIGHPRI, 0);
> +	if (!display->wq.cleanup) {
> +		ret = -ENOMEM;
> +		goto cleanup_wq_flip;
> +	}
>   
>   	intel_mode_config_init(display);
>   
>   	ret = intel_cdclk_init(display);
>   	if (ret)
> -		goto cleanup_vga_client_pw_domain_dmc;
> +		goto cleanup_wq_cleanup;
>   
>   	ret = intel_color_init(display);
>   	if (ret)
> -		goto cleanup_vga_client_pw_domain_dmc;
> +		goto cleanup_wq_cleanup;
>   
>   	ret = intel_dbuf_init(display);
>   	if (ret)
> -		goto cleanup_vga_client_pw_domain_dmc;
> +		goto cleanup_wq_cleanup;
>   
>   	ret = intel_bw_init(display);
>   	if (ret)
> -		goto cleanup_vga_client_pw_domain_dmc;
> +		goto cleanup_wq_cleanup;
>   
>   	ret = intel_pmdemand_init(display);
>   	if (ret)
> -		goto cleanup_vga_client_pw_domain_dmc;
> +		goto cleanup_wq_cleanup;
>   
>   	intel_init_quirks(display);
>   
> @@ -276,6 +290,12 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
>   
>   	return 0;
>   
> +cleanup_wq_cleanup:
> +	destroy_workqueue(display->wq.cleanup);
> +cleanup_wq_flip:
> +	destroy_workqueue(display->wq.flip);
> +cleanup_wq_modeset:
> +	destroy_workqueue(display->wq.modeset);
>   cleanup_vga_client_pw_domain_dmc:
>   	intel_dmc_fini(display);
>   	intel_power_domains_driver_remove(display);

