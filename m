Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D028A23F2F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 15:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7468810EACC;
	Fri, 31 Jan 2025 14:35:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K2PieSV4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05A4C10EACB;
 Fri, 31 Jan 2025 14:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738334112; x=1769870112;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=laYl8H7pVnzJnaOfsFAp6JkCTIl6kyoEvNW3ux8jhKM=;
 b=K2PieSV4fjFeIJ1lnA1sFVw5zLhCQ0wG2MMFpJvrrUnfEhY/0SxVhe1k
 zd6hI6d4O/gebQQAGYGTLRVQZfhioWkaZI3c7tAinLup8gnkKK7FDtvPa
 Z73p6UkWazMJLeB1u42Qlx4GoBaxAYsvUUA1MalBAk/3AouCE0M496co2
 6EZIXjCN3HXYAXvfI/ilPrDZJOXltymzvUSYWpAuwYAe24VMhBe3EzpIK
 SJELIUhEg2gK/S9eHw5YvmGz91fEhIYexez6hJuLymotDvqN5i4MLLGr2
 Ldb2faTP0iuc5A0WtrZ5Kl+s3VYiLk9M4SUZdA3k9BYIGYULh//LXplFK Q==;
X-CSE-ConnectionGUID: x4KHVcslTsWvpyQP5ZeCFA==
X-CSE-MsgGUID: W7161ODUSxy93NSJQ+KlQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="49563421"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="49563421"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:35:02 -0800
X-CSE-ConnectionGUID: MrjkoLVJTN+DT9pAaEK2fw==
X-CSE-MsgGUID: h+wNVE6mQOC0QpPbbfue2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109500159"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:35:00 -0800
Date: Fri, 31 Jan 2025 16:35:57 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 08/14] drm/i915/dp: Unify DSC link config functions
Message-ID: <Z5zfzTC2XvQXnE7t@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <ca41ebb287fc51e1257d3c2b2790edf2cd661ab3.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ca41ebb287fc51e1257d3c2b2790edf2cd661ab3.1738327620.git.jani.nikula@intel.com>
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

On Fri, Jan 31, 2025 at 02:50:01PM +0200, Jani Nikula wrote:
> {icl,xelpd}_dsc_compute_link_config() are now effectively the same, and
> can be unified to a single platform independent function.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 49 +++----------------------
>  1 file changed, 5 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c7de9efcd740..11a1ac28e21e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2094,47 +2094,11 @@ static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
>  }
>  
>  /*
> - * From a list of valid compressed bpps try different compressed bpp and find a
> - * suitable link configuration that can support it.
> + * Find the max compressed BPP we can find a link configuration for. The BPPs to
> + * try depend on the source (platform) and sink.
>   */
>  static int
> -icl_dsc_compute_link_config(struct intel_dp *intel_dp,
> -			    struct intel_crtc_state *pipe_config,
> -			    const struct link_config_limits *limits,
> -			    int min_bpp_x16,
> -			    int max_bpp_x16,
> -			    int bpp_step_x16,
> -			    int timeslots)
> -{
> -	int bpp_x16;
> -	int ret;
> -
> -	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
> -		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
> -			continue;
> -
> -		ret = dsc_compute_link_config(intel_dp,
> -					      pipe_config,
> -					      limits,
> -					      bpp_x16,
> -					      timeslots);
> -		if (ret == 0) {
> -			pipe_config->dsc.compressed_bpp_x16 = bpp_x16;
> -			return 0;
> -		}
> -	}
> -
> -	return -EINVAL;
> -}
> -
> -/*
> - * From XE_LPD onwards we supports compression bpps in steps of 1 up to
> - * uncompressed bpp-1. So we start from max compressed bpp and see if any
> - * link configuration is able to support that compressed bpp, if not we
> - * step down and check for lower compressed bpp.
> - */
> -static int
> -xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
> +do_dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  			      struct intel_crtc_state *pipe_config,
>  			      const struct link_config_limits *limits,
>  			      int min_bpp_x16,
> @@ -2201,11 +2165,8 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
>  	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
>  
> -	if (DISPLAY_VER(display) >= 13)
> -		return xelpd_dsc_compute_link_config(intel_dp, pipe_config, limits,
> -						     min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);
> -	return icl_dsc_compute_link_config(intel_dp, pipe_config, limits,
> -					   min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);
> +	return do_dsc_compute_compressed_bpp(intel_dp, pipe_config, limits,
> +					     min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);
>  }
>  
>  int intel_dp_dsc_min_src_input_bpc(void)
> -- 
> 2.39.5
> 
