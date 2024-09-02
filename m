Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A987968A98
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 17:05:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE6010E30E;
	Mon,  2 Sep 2024 15:05:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L5yvOk8E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FEB710E30B;
 Mon,  2 Sep 2024 15:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725289518; x=1756825518;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=7yJoXdxfLptH9x6a72lOfZcD6VcoqoQwvdHt+gOz5B4=;
 b=L5yvOk8Eg5ff04aTGaZzxM+W2yyquD/I4AdGHnfsSrzHjvJVT/HxtDvn
 rGWLkmlbIoew1NZFN08iKeIfIHor1uqRY5jBZ1JkJmZvRU85Hzm+sTzhP
 Nzb7kLVBzlrRmlMyCEdEZ+lqx5iUTwuo+ZQna3JyLbwyPXymWc1nyxNMr
 In1pHaKgoP8nO4Hy2pmtC4GyBIFm9sRHkDgeaORZU8PAkgbuhZO7b6afv
 5oUiWBWQZgZachtfTN4vhleu3q/p+lm8mN4nqtWS8aCYquB+D5BksBq7i
 fBaNzsF5U5BcMCDLqDaPoCuhEpGSVohyyWBkz+LG3U1KWf4NxqO5ID6r2 g==;
X-CSE-ConnectionGUID: VaCAMcpoTzy8zXZ5jitFFw==
X-CSE-MsgGUID: 4LK7qE2pSPCSyV4PsN9Rlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="35267615"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="35267615"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 08:05:18 -0700
X-CSE-ConnectionGUID: Ws/plex7S8iS0822dV1wqA==
X-CSE-MsgGUID: 8UF0xfaPTWSHjX3W8x+Dpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64315439"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 08:05:17 -0700
Date: Mon, 2 Sep 2024 18:05:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@intel.com
Subject: Re: [PATCH] drm/i915: Do not explicilty enable FEC in DP_TP_CTL for
 UHBR rates
Message-ID: <ZtXUQ7-I_hR0miwa@ideak-desk.fi.intel.com>
References: <20240822061448.4085693-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240822061448.4085693-1-chaitanya.kumar.borah@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 22, 2024 at 11:44:48AM +0530, Chaitanya Kumar Borah wrote:
> In case of UHBR rates, we do not need to explicitly enable FEC by writing
> to DP_TP_CTL register.
> For MST use-cases, intel_dp_mst_find_vcpi_slots_for_bpp() takes care of
> setting fec_enable to false. However, it gets overwritten in
> intel_dp_dsc_compute_config(). This change keeps fec_enable false across
> MST and SST use-cases for UHBR rates.
> 
> While at it, add a comment explaining why we don't enable FEC in eDP v1.5.
> 
> v2: Correct logic to cater to SST use-cases (Jani)
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 49a37b996530..de30eaacd9b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2298,9 +2298,15 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		&pipe_config->hw.adjusted_mode;
>  	int ret;
>  
> +	/*
> +	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
> +	 * Since, FEC is a bandwidth overhead, continue to not enable it for
> +	 * eDP. Until, there is a good reason to do so.
> +	 */
>  	pipe_config->fec_enable = pipe_config->fec_enable ||
>  		(!intel_dp_is_edp(intel_dp) &&
> -		 intel_dp_supports_fec(intel_dp, connector, pipe_config));
> +		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
> +		 !intel_dp_is_uhbr(pipe_config));

I think this should be only computed by the DP encoder specific handler
(in intel_dp_compute_link_config()) instead of recomputing here for the
DP MST case as well. Also intel_dp_supports_dsc() just happens to work
now, since it doesn't check for this flag on MST, so that may need to be
updated. Both of these can be done as a follow up, so for this patch:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  
>  	if (!intel_dp_supports_dsc(connector, pipe_config))
>  		return -EINVAL;
> -- 
> 2.25.1
> 
