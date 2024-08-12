Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F6C94EC23
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 13:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6585410E1BA;
	Mon, 12 Aug 2024 11:53:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b/OWcX0A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CD6410E1BA;
 Mon, 12 Aug 2024 11:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723463633; x=1754999633;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FU9hApwljTtfL5M1PiZwMlMEA2aDWIFNXYdsPkH7aBY=;
 b=b/OWcX0ABmBm1DyFdtBa/p4VbbHmu76bonSjzhTTb+k++a6/zdgI/frn
 p9Zb0Is6XKh45/tiZP9pdVSreU1hz80GUXRjOB+ehTN3Js5ZM1Zw8K7J2
 y0HxP7qrExBTz9B7Xk1YGqNM3RLhT1j7eKvgrJvLIWLkXXjqvDgmhNsBE
 9nOW4ien5snf/plCCZHELt3IXkVC4bWqv4VCPRt/Aoj8HlEyMLNl+6lEk
 qBJwsxpYo673WkseX2UYbMuXQrF8SJUxG5+cJzlI+KUfdsHSQGVRcRbDy
 dANnsVUYrCUQBEosxVeA8QwADpzIBKT+R91JOyR1sZmjYMrdJEDMPN6JE Q==;
X-CSE-ConnectionGUID: IFZbqWt+SwaZb3o5TbM7LQ==
X-CSE-MsgGUID: rtZyl6NlS+Gloa+dC5BSUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="21698587"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="21698587"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 04:53:50 -0700
X-CSE-ConnectionGUID: xVPaf+AnS1G5LIzPs29R8Q==
X-CSE-MsgGUID: Z+yeeesKSKS3K+H+zd+yhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="89080962"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.117])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 04:53:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, chaitanya.kumar.borah@intel.com
Subject: Re: [PATCH] drm/i915: Preserve value of fec_enable calculated
 before DSC compute config
In-Reply-To: <20240812082446.3459081-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240812082446.3459081-1-chaitanya.kumar.borah@intel.com>
Date: Mon, 12 Aug 2024 14:53:44 +0300
Message-ID: <87v8060xfb.fsf@intel.com>
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

On Mon, 12 Aug 2024, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> Before DSC compute config, fec_enable value is set in other functions
> (e.g. intel_dp_mst_find_vcpi_slots_for_bpp). We are ignoring the value by
> OR'ing its value in DSC compute config. One unintended effect of this is
> setting fec_enable in UHBR use-cases which is not needed for Intel
> hardware. Therefore, change operator to AND.
>
> While at it, add a comment explaining why we don't enable FEC in eDP v1.5.
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 49a37b996530..3fbf9f33c3e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2298,7 +2298,12 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		&pipe_config->hw.adjusted_mode;
>  	int ret;
>  
> -	pipe_config->fec_enable = pipe_config->fec_enable ||
> +	/*
> +	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
> +	 * Since, FEC is a bandwidth overhead, continue to not enable it for
> +	 * eDP. Until, there is a good reason to do so.
> +	 */
> +	pipe_config->fec_enable = pipe_config->fec_enable &&
>  		(!intel_dp_is_edp(intel_dp) &&
>  		 intel_dp_supports_fec(intel_dp, connector, pipe_config));

With this change, FEC will only be enabled for non-UHBR MST DP and
nothing else. This is the place where SST DP DSC gets FEC enabled.

BR,
Jani.


-- 
Jani Nikula, Intel
