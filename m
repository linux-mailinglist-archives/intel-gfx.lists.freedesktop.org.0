Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C924A23F49
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 15:51:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A33AC10EAD1;
	Fri, 31 Jan 2025 14:51:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GDM207H4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01D6210EAD1;
 Fri, 31 Jan 2025 14:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738335080; x=1769871080;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=QY33ECqvaW8J6tjMILw5/zzRRH7/4t/sy6VF+a1HRds=;
 b=GDM207H4g9yPSG5ND0AdCXSbafvkn7AKRUOytkl8KQ3qU86db/RhUnho
 MBjDnE4ZmDQBvBP+w5OVUd7pe2b+tTxVKfuh3Cdn8NeYODas7wTQLspa9
 awF0cxWkzWpSmVo1kw2StpUDk/0rv+7GhDL7kfcHoFUOUw5nlCusYtVis
 XcKOQeHwtyWLvh+BdZ02JGDOkLlzIId+jEWJABFPDETzLmPipjbw/LY7L
 Ts8NfnFjYy/Uop2PofyDL5nH+qt6nKGeqV5rKI4A0PrIbqKJd/I25PZBn
 q3Eh8pS1k165BgAF7aWvwXoIOaBw2ZwxMuOjTnbqSVeSyzm++LtGkIuPS A==;
X-CSE-ConnectionGUID: Z0PfRM6vQ9aL4EyiVBPsnA==
X-CSE-MsgGUID: aFR8KqigQJeKMxE5cwrrkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="41736738"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="41736738"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:51:19 -0800
X-CSE-ConnectionGUID: peGtpaOaT0uYCSWXcSbCow==
X-CSE-MsgGUID: GvxQAV9URVGqxAZE/LOWFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110097117"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:51:18 -0800
Date: Fri, 31 Jan 2025 16:52:14 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/14] drm/i915/dp: Simplify input BPP checks in
 intel_dp_dsc_compute_pipe_bpp()
Message-ID: <Z5zjnvO7PFYKcCZ8@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <5559b14d6af4e001677f23454d6bd8b3606b3d7a.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5559b14d6af4e001677f23454d6bd8b3606b3d7a.1738327620.git.jani.nikula@intel.com>
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

On Fri, Jan 31, 2025 at 02:50:03PM +0200, Jani Nikula wrote:
> Drop the extra local variables and simplify the conditions. We don't
> have to try to special case the loop condition and break in the validity
> checks.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 185c9f7e8538..7a8a4df1bf1e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2202,8 +2202,6 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  {
>  	const struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
> -	int dsc_max_bpp;
> -	int dsc_min_bpp;
>  	u8 dsc_bpc[3] = {};
>  	int forced_bpp, pipe_bpp;
>  	int num_bpc, i, ret;
> @@ -2219,9 +2217,6 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  		}
>  	}
>  
> -	dsc_max_bpp = limits->pipe.max_bpp;
> -	dsc_min_bpp = limits->pipe.min_bpp;
> -
>  	/*
>  	 * Get the maximum DSC bpc that will be supported by any valid
>  	 * link configuration and compressed bpp.
> @@ -2229,10 +2224,9 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd, dsc_bpc);
>  	for (i = 0; i < num_bpc; i++) {
>  		pipe_bpp = dsc_bpc[i] * 3;
> -		if (pipe_bpp < dsc_min_bpp)
> -			break;
> -		if (pipe_bpp > dsc_max_bpp)
> +		if (pipe_bpp < limits->pipe.min_bpp || pipe_bpp > limits->pipe.max_bpp)
>  			continue;
> +
>  		ret = dsc_compute_compressed_bpp(intel_dp, connector, pipe_config,
>  						 limits, pipe_bpp, timeslots);
>  		if (ret == 0) {
> -- 
> 2.39.5
> 
