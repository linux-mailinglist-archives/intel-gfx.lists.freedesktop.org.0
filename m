Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BBB96443E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 14:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 756D410E65F;
	Thu, 29 Aug 2024 12:19:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gRSoCDcZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8EF510E65F;
 Thu, 29 Aug 2024 12:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724933983; x=1756469983;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=f3tHTTdscgIArj7RHjVMwVZriN/Vg8ErIxclkColSE8=;
 b=gRSoCDcZcYnwZWlGPxiv40s9YLKacZQrZpCXzd/5P9YWs+eswJYulAUC
 ptKFVDiVG8k5W8qYRqA1uys+dqhYb687cuiZ7GHBA1SObDsKQf7+/j0//
 Whq+w0ZhcZJhpSKLpuiAubsRTi7NSCndSEV0FiJoyoO+d0edHBvLSlUv3
 FVEczV7cyjds2QTVj8zkTcJV6fK6eePpngROFoaq7AVcQT137C3bWTJJj
 Ww7ZXjaxJq2EX3jBpoBmWUdKOeJZSFayXNzVCRChKWsUivrOIAmJX0f0b
 EQU5qg+ahXyL1dWj6iDLmDG7hmRLqn080nOs27DzmcoWLWmLI2d71LcEH A==;
X-CSE-ConnectionGUID: EmG1+vO3QzWYQ6NBEtBzZw==
X-CSE-MsgGUID: pT9nxyVjRv+mQ6NlTibRuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="26420756"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="26420756"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 05:19:43 -0700
X-CSE-ConnectionGUID: +pwTtlKOSFKJ+H9u3EhMyg==
X-CSE-MsgGUID: oSC4DvS5T7WNnEVaGscEaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63387002"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.14])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 05:19:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCHv2] drm/i915/display: BMG supports UHBR13.5
In-Reply-To: <20240827081205.136569-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240827081205.136569-1-arun.r.murthy@intel.com>
Date: Thu, 29 Aug 2024 15:19:37 +0300
Message-ID: <87le0fwmg6.fsf@intel.com>
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

On Tue, 27 Aug 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> UHBR20 is not supported by battlemage and the maximum link rate
> supported is UHBR13.5
>
> v2: Replace IS_DGFX with IS_BATTLEMAGE (Jani)
>
> HSD: 16023263677
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

Also,

Fixes: 98b1c87a5e51 ("drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5")

because that one doesn't DTRT.

BR,
Jani.




> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 789c2f78826d..99a365a945ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -528,6 +528,10 @@ static void
>  intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  {
>  	/* The values must be in increasing order */
> +	static const int bmg_rates[] = {
> +		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
> +		810000,	1000000, 1350000,
> +	};
>  	static const int mtl_rates[] = {
>  		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
>  		810000,	1000000, 2000000,
> @@ -558,8 +562,13 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  		    intel_dp->source_rates || intel_dp->num_source_rates);
>  
>  	if (DISPLAY_VER(dev_priv) >= 14) {
> -		source_rates = mtl_rates;
> -		size = ARRAY_SIZE(mtl_rates);
> +		if (IS_BATTLEMAGE(dev_priv)) {
> +			source_rates = bmg_rates;
> +			size = ARRAY_SIZE(bmg_rates);
> +		} else {
> +			source_rates = mtl_rates;
> +			size = ARRAY_SIZE(mtl_rates);
> +		}
>  		max_rate = mtl_max_source_rate(intel_dp);
>  	} else if (DISPLAY_VER(dev_priv) >= 11) {
>  		source_rates = icl_rates;

-- 
Jani Nikula, Intel
