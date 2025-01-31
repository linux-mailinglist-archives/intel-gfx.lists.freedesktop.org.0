Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E7FA23F25
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 15:30:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4238810E099;
	Fri, 31 Jan 2025 14:29:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AgdWCUeE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50AD510E1E4;
 Fri, 31 Jan 2025 14:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738333797; x=1769869797;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=JBe0eSyL8Rny9MBZnt5PYEV/V27I9WEM0Z7ng4yRgpM=;
 b=AgdWCUeEFm7w0yqjoatklSMxZRgD7+R6V4+LVZF3/UddFHmxQ5H07te2
 natiPsc36cRIZO1Qi2ZCBX3R3toeL+nuMMFCpUXT/YZgSCcHL8v7Jq04X
 fO74cEMdk9aeNOGh9tr3OuBoIetuvGyMPlIhjKet3vuGZhu5CLYe+/qnt
 +8ODzhdmCHVe8NxsO6b2iD2qB6xUMvXrXCbwER+fBdWo9a1aAsWNrskwz
 kzCCaEXT0a85w8uScFOu8V00iq7PWnHLXu8yyH6GNWZrI4H+43dR/PXlq
 B2vEzJifBSuXGrikRCVs74p4j+fJ8t4mv6JmcUk7bg6AuxeY/LS+5XxqE g==;
X-CSE-ConnectionGUID: 1Q24YPxbSbWQeNTeqwFG7g==
X-CSE-MsgGUID: esZKIhMpQC6PRH/ACZtYvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="49562820"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="49562820"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:29:57 -0800
X-CSE-ConnectionGUID: GvGs1PTnQPmP3GUp+uqXeg==
X-CSE-MsgGUID: p8mORE3rT9qFPYajxeo45Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109497110"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 06:29:55 -0800
Date: Fri, 31 Jan 2025 16:30:52 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/14] drm/i915/dp: Change icl_dsc_compute_link_config()
 DSC BPP iteration
Message-ID: <Z5zenCccYrAT45eY@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <bc1972391041a3ba84b3f68b9c0605ae142611e0.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bc1972391041a3ba84b3f68b9c0605ae142611e0.1738327620.git.jani.nikula@intel.com>
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

On Fri, Jan 31, 2025 at 02:49:59PM +0200, Jani Nikula wrote:
> Instead of iterating the valid BPP array directly, switch to the same
> approach as xelpd_dsc_compute_link_config(), with a separate function to
> check if the DSC BPP is valid. This prepares us for unifying the
> platform specific functions.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 33 +++++++++++++++++++------
>  1 file changed, 26 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4e7b3dd4067c..ac67f2d2f86a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2069,6 +2069,26 @@ static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
>  	return 16 / incr;
>  }
>  
> +/* Note: This is not universally usable! */
> +static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
> +{
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	int i;
> +
> +	if (DISPLAY_VER(display) >= 13)
> +		return true;
> +
> +	if (fxp_q4_to_frac(bpp_x16))
> +		return false;
> +
> +	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
> +		if (fxp_q4_to_int(bpp_x16) == valid_dsc_bpp[i])
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  /*
>   * From a list of valid compressed bpps try different compressed bpp and find a
>   * suitable link configuration that can support it.
> @@ -2082,21 +2102,20 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>  			    int bpp_step_x16,
>  			    int timeslots)
>  {
> -	int i, ret;
> +	int bpp_x16;
> +	int ret;
>  
> -	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
> -		if (valid_dsc_bpp[i] < fxp_q4_to_int(min_bpp_x16) ||
> -		    valid_dsc_bpp[i] > fxp_q4_to_int(max_bpp_x16))
> +	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
> +		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
>  			continue;
>  
>  		ret = dsc_compute_link_config(intel_dp,
>  					      pipe_config,
>  					      limits,
> -					      valid_dsc_bpp[i] << 4,
> +					      bpp_x16,
>  					      timeslots);
>  		if (ret == 0) {
> -			pipe_config->dsc.compressed_bpp_x16 =
> -				fxp_q4_from_int(valid_dsc_bpp[i]);
> +			pipe_config->dsc.compressed_bpp_x16 = bpp_x16;
>  			return 0;
>  		}
>  	}
> -- 
> 2.39.5
> 
