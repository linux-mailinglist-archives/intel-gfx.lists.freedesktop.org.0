Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87433996805
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 13:07:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC6ED10E6D5;
	Wed,  9 Oct 2024 11:07:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V6JDLZ2I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7D3910E289;
 Wed,  9 Oct 2024 11:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728472033; x=1760008033;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=7oh+T1JbCRQ0l0ZNQnVyqbwd/j0ccd9+k4Joj+IDnm8=;
 b=V6JDLZ2Ie7hwza8r0E+mS37vaotmoRFaQM/L/KXsLBBloExMZBX9itEQ
 qGW1aMqCl44obi7CfrBSnjUjThpPLrecbQuDYz8Y9pfs7U3yla+FSpjZK
 pHWG+1SXl0A7KTNcTn/Q63dF+2WQdMFEk2j5M45GOA/w2+7r+xWOr8ZDV
 74GexuinQn8bHzOEYp69miyPTFde8qvP7Vby40KIoBbRMrBp6t2NHMLTo
 +z481Fg8GEddWVmauwebZlJkt5aiZAVHnaLwC/NQnowx98DiAIwxGT+kh
 wYCtHiYRFM64GNyel0Q7JKgg3fwk/LTFhQ0sCj5MQhag/FvgzRBVorBuM w==;
X-CSE-ConnectionGUID: kkk9UluVTPKqyOSLvyD48w==
X-CSE-MsgGUID: iP+WJ+pzQASeLTt2P/m2Xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27241003"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27241003"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:07:12 -0700
X-CSE-ConnectionGUID: p8U95hrUQFSULhFwb10cow==
X-CSE-MsgGUID: 9v0j+GD1RtOhYtSOnn0AUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76317359"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:07:11 -0700
Date: Wed, 9 Oct 2024 14:07:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com
Subject: Re: [PATCH] drm/i915/dp_mst: Fix dsc mst bw overhead calculation
Message-ID: <ZwZj-1Y3EKjy2iXP@ideak-desk.fi.intel.com>
References: <20241009054050.1796088-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241009054050.1796088-1-suraj.kandpal@intel.com>
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

On Wed, Oct 09, 2024 at 11:10:50AM +0530, Suraj Kandpal wrote:
> Fix the DSC flag assignment based on the dsc_slice_count returned
> to avoid divide by zero error.
> 
> Fixes: 4e0837a8d00a ("drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 4765bda154c1..bacd294d6bb6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -105,11 +105,16 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
>  	if (dsc) {
>  		int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
>  
> -		flags |= DRM_DP_BW_OVERHEAD_DSC;
>  		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
>  							       adjusted_mode->clock,
>  							       adjusted_mode->hdisplay,
>  							       num_joined_pipes);
> +		/*
> +		 * Try with dsc only if dsc_slice_count has a sane value i.e value is no
> +		 * 0
> +		 */
> +		if (dsc_slice_count)
> +			flags |= DRM_DP_BW_OVERHEAD_DSC;

This would enable DSC, but with the wrong BW alloced. We'd need instead:
https://lore.kernel.org/all/20241009110135.1216498-1-imre.deak@intel.com

>  	}
>  
>  	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
> -- 
> 2.43.2
> 
