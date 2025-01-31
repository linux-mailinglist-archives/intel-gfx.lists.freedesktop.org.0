Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D102A23F16
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 15:25:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 076C710E289;
	Fri, 31 Jan 2025 14:25:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ga9RVFNL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2168910E1EC;
 Fri, 31 Jan 2025 14:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738333529; x=1769869529;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=cuRHCwo0z7Fqy3TBD/RHQBJmcmhAlcfKYdGmOyyehpU=;
 b=Ga9RVFNLhoYR62lKq8jDKuEB15uVIEGGxGiS1bgbs0o7R+4HQ2XL/9Nr
 Qaq4Zg13yMexGpTFt3E7z+jeOy9tUE/Qzv3GfNq5xwObQ+0ox/C5PbEcd
 Hk7fTeMgUq6bu1MT83Ro8JukNwIxscImw6eFw8445hSt5p7l1QPfbzyDq
 mLr2+D1YGbZ8AxQnUg5kNuKi4Qf3ueyNrbKwuq32CFEaKmcVS/x/nBlHG
 ZR8d3I3aE62GZzjBsxymDwHbt9T+M62cq7Fl/sZ5e3cabJW8cZzDvfn8a
 HDO5/zSki0jNpQm9pm3kUOCzCoN39m3dlJlycQ923zEjXVMSwiZmqfQQq w==;
X-CSE-ConnectionGUID: 79SYylmtSF+GkcUyIUlvcQ==
X-CSE-MsgGUID: 0Rx/WLqJTO6lfg6ukJlUhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="42557405"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="42557405"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:25:29 -0800
X-CSE-ConnectionGUID: IFo0ZYW9QGGbuurHAcP/2g==
X-CSE-MsgGUID: VxKarN3RSAqxqqTtO7vuDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113664091"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:25:28 -0800
Date: Fri, 31 Jan 2025 16:26:24 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 05/14] drm/i915/dp: Move max DSC BPP reduction one level
 higher
Message-ID: <Z5zdkN58_u4gdozL@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <62fa7f18ea49dce24c5d0ee7b2f0cbde9e2b609c.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <62fa7f18ea49dce24c5d0ee7b2f0cbde9e2b609c.1738327620.git.jani.nikula@intel.com>
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

On Fri, Jan 31, 2025 at 02:49:58PM +0200, Jani Nikula wrote:
> Now that {icl,xelpd}_dsc_compute_link_config() take .4 fixed point as
> parameter, move the common max DSC BPP reduction one level higher. Use
> intel_dp_dsc_bpp_step() to compute the step, and pass on to both
> platform specific functions. (Though it's unused for now in
> icl_dsc_compute_link_config()).
> 
> We can drop the pipe_bpp and connector parameters.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 32 +++++++++++--------------
>  1 file changed, 14 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b13d806c9de7..4e7b3dd4067c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2079,14 +2079,10 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>  			    const struct link_config_limits *limits,
>  			    int min_bpp_x16,
>  			    int max_bpp_x16,
> -			    int pipe_bpp,
> +			    int bpp_step_x16,
>  			    int timeslots)
>  {
>  	int i, ret;
> -	int output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
> -
> -	/* Compressed BPP should be less than the Input DSC bpp */
> -	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp - 1));
>  
>  	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
>  		if (valid_dsc_bpp[i] < fxp_q4_to_int(min_bpp_x16) ||
> @@ -2116,24 +2112,17 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>   */
>  static int
>  xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
> -			      const struct intel_connector *connector,
>  			      struct intel_crtc_state *pipe_config,
>  			      const struct link_config_limits *limits,
>  			      int min_bpp_x16,
>  			      int max_bpp_x16,
> -			      int pipe_bpp,
> +			      int bpp_step_x16,
>  			      int timeslots)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	int output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
> -	int bpp_x16, bpp_step_x16;
> +	int bpp_x16;
>  	int ret;
>  
> -	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
> -
> -	/* Compressed BPP should be less than the Input DSC bpp */
> -	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
> -
>  	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
>  		if (intel_dp->force_dsc_fractional_bpp_en &&
>  		    !fxp_q4_to_frac(bpp_x16))
> @@ -2165,9 +2154,10 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
> +	int output_bpp;
>  	int dsc_min_bpp;
>  	int dsc_max_bpp;
> -	int min_bpp_x16, max_bpp_x16;
> +	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
>  	int dsc_joiner_max_bpp;
>  	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
>  
> @@ -2182,11 +2172,17 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  	min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
>  	max_bpp_x16 = fxp_q4_from_int(dsc_max_bpp);
>  
> +	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
> +
> +	/* Compressed BPP should be less than the Input DSC bpp */
> +	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
> +	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
> +
>  	if (DISPLAY_VER(display) >= 13)
> -		return xelpd_dsc_compute_link_config(intel_dp, connector, pipe_config, limits,
> -						     min_bpp_x16, max_bpp_x16, pipe_bpp, timeslots);
> +		return xelpd_dsc_compute_link_config(intel_dp, pipe_config, limits,
> +						     min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);
>  	return icl_dsc_compute_link_config(intel_dp, pipe_config, limits,
> -					   min_bpp_x16, max_bpp_x16, pipe_bpp, timeslots);
> +					   min_bpp_x16, max_bpp_x16, bpp_step_x16, timeslots);
>  }
>  
>  int intel_dp_dsc_min_src_input_bpc(void)
> -- 
> 2.39.5
> 
