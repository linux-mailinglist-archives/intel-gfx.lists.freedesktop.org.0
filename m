Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A92A6A23F44
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 15:48:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00F4110EACB;
	Fri, 31 Jan 2025 14:47:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hGqS8v2l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2157410EACB;
 Fri, 31 Jan 2025 14:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738334878; x=1769870878;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Akc9VTifuZBqW+CBnZ49cUFKpHLbYs3OJhl4r3qG+YQ=;
 b=hGqS8v2luVKuJgqROgY1qBTrKBN3w6r+JOQO2aIdljmXlBCIxzvGe9Al
 KTMRymLp9D6GnVHB6gWHJJ18F/LF9vY4dwklZPgEVTGnCOdKOP1Kkom0p
 tLW5M2sf9YGZSDIKcf9D/ulMBZpdYQfDD4otnDzujOY0ILXNlhIeQlDTD
 N8dtGt1idMfc8lDy/S/Qfenh+MFj6uPNjCgpJ2dR2QmUXFHiNqncl4oju
 f7y/zoaM6NOZA4nvdtBqFfSSMo7gLbOS7WmoPFDIylOQqGBJIj24jG0wq
 14FmooDZdLNdsXwLc/SAUbNDMr8uOjqtrv8twOo7QqH+ryJHbBINqPaSq g==;
X-CSE-ConnectionGUID: NCR60w8hQc+FUCWhiWQoLg==
X-CSE-MsgGUID: e99fM5b9QWCcddMsGP4AMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38807317"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38807317"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:47:58 -0800
X-CSE-ConnectionGUID: DPwF6sDPTDyeZiIGICvbDg==
X-CSE-MsgGUID: AnPjOKgzTzqyD81JbSvn2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="110225617"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:47:56 -0800
Date: Fri, 31 Jan 2025 16:48:53 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 09/14] drm/i915/dp: Inline do_dsc_compute_compressed_bpp()
Message-ID: <Z5zi1VMgCFFBltNs@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <91ae42cbdffe4938a665667955c577f887b92b9d.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <91ae42cbdffe4938a665667955c577f887b92b9d.1738327620.git.jani.nikula@intel.com>
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

On Fri, Jan 31, 2025 at 02:50:02PM +0200, Jani Nikula wrote:
> With just the one platform independent loop left in
> do_dsc_compute_compressed_bpp(), we don't really need the extra function
> that is simply becoming increasingly hard to even figure out a decent
> name for. Just merge the whole thing to
> dsc_compute_compressed_bpp(). Good riddance to the short lived
> do_dsc_compute_compressed_bpp().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

It also makes sense to keep all functions short, but here having to pass
a lot of parameters to do_dsc_compute_compressed_bpp() could argue
against that:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 60 ++++++++++---------------
>  1 file changed, 23 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 11a1ac28e21e..185c9f7e8538 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2097,41 +2097,6 @@ static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
>   * Find the max compressed BPP we can find a link configuration for. The BPPs to
>   * try depend on the source (platform) and sink.
>   */
> -static int
> -do_dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
> -			      struct intel_crtc_state *pipe_config,
> -			      const struct link_config_limits *limits,
> -			      int min_bpp_x16,
> -			      int max_bpp_x16,
> -			      int bpp_step_x16,
> -			      int timeslots)
> -{
> -	struct intel_display *display = to_intel_display(intel_dp);
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
> -			if (intel_dp->force_dsc_fractional_bpp_en &&
> -			    fxp_q4_to_frac(bpp_x16))
> -				drm_dbg_kms(display->drm,
> -					    "Forcing DSC fractional bpp\n");
> -
> -			return 0;
> -		}
> -	}
> -	return -EINVAL;
> -}
> -
>  static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  				      const struct intel_connector *connector,
>  				      struct intel_crtc_state *pipe_config,
> @@ -2147,6 +2112,8 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
>  	int dsc_joiner_max_bpp;
>  	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
> +	int bpp_x16;
> +	int ret;
>  
>  	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
>  
> @@ -2165,8 +2132,27 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
>  	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
>  
> -	return do_dsc_compute_compressed_bpp(intel_dp, pipe_config, limits,
> -					     min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);
> +	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
> +		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
> +			continue;
> +
> +		ret = dsc_compute_link_config(intel_dp,
> +					      pipe_config,
> +					      limits,
> +					      bpp_x16,
> +					      timeslots);
> +		if (ret == 0) {
> +			pipe_config->dsc.compressed_bpp_x16 = bpp_x16;
> +			if (intel_dp->force_dsc_fractional_bpp_en &&
> +			    fxp_q4_to_frac(bpp_x16))
> +				drm_dbg_kms(display->drm,
> +					    "Forcing DSC fractional bpp\n");
> +
> +			return 0;
> +		}
> +	}
> +
> +	return -EINVAL;
>  }
>  
>  int intel_dp_dsc_min_src_input_bpc(void)
> -- 
> 2.39.5
> 
