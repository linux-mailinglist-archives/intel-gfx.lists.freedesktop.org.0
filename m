Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B1A7B9D3D
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 15:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45D5F10E3F1;
	Thu,  5 Oct 2023 13:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EA3610E3F1
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 13:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696511646; x=1728047646;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=B08PQKSSrcMz0qQAege1g9fVfkkz+1OrSKPPi2qXpPc=;
 b=Ak9x75sJIn/7js0O3JkRcwMePsM4e9TKIKH7HFvkgTKcVEx8U4iyndvr
 wA7ThbFJJeNGGqGbs0liL61wk2LkfjjrQCqXemif2kGIBGL2xtwYWO2vV
 FYXlRXosbS3eDEGHNoHdlotYGOu/F1lpAMzN9kTKmKovzWGwbfSWY9guf
 zHDWaFsyjwj1e4DxqdoV3g/3xy0SLePc/iOxYSYfLv77FgiEzGDHQsR5z
 n9SVHFYGJRKSLwj8a1Fd9ia9ExC47hRRgUUeNpVcRt2+3tAkr4a0vy/ue
 eGHSkvv95oM2I15YUi5XNgBU2bDsBBOkuci2yLCs9QGDSMzSYZ395hEdO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="2093291"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="2093291"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:13:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="842373408"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="842373408"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:13:17 -0700
Date: Thu, 5 Oct 2023 16:13:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZR62heiKE8MM68Si@ideak-desk.fi.intel.com>
References: <20230913150356.9477-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230913150356.9477-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Check lane count when
 determining FEC support
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
Cc: intel-gfx@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 13, 2023 at 06:03:55PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> ICL doesn't support FEC with a x1 DP link. Make sure
> we don't try to enable FEC in such cases.
> 
> Requires a bit of reordering to make sure we've computed lane_count
> before checking it.
> 
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 55ba6eeaa810..2cde8ac513bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1363,7 +1363,8 @@ static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
>  	if (DISPLAY_VER(dev_priv) >= 12)
>  		return true;
>  
> -	if (DISPLAY_VER(dev_priv) == 11 && encoder->port != PORT_A)
> +	if (DISPLAY_VER(dev_priv) == 11 &&
> +	    encoder->port != PORT_A && pipe_config->lane_count != 1)
>  		return true;
>  
>  	return false;
> @@ -2105,15 +2106,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		&pipe_config->hw.adjusted_mode;
>  	int ret;
>  
> -	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
> -		intel_dp_supports_fec(intel_dp, pipe_config);
> -
> -	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
> -		return -EINVAL;
> -
> -	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
> -		return -EINVAL;
> -
>  	/*
>  	 * compute pipe bpp is set to false for DP MST DSC case
>  	 * and compressed_bpp is calculated same time once
> @@ -2134,6 +2126,15 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		}
>  	}
>  
> +	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
> +		intel_dp_supports_fec(intel_dp, pipe_config);
> +
> +	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
> +		return -EINVAL;
> +
> +	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
> +		return -EINVAL;
> +
>  	/* Calculate Slice count */
>  	if (intel_dp_is_edp(intel_dp)) {
>  		pipe_config->dsc.slice_count =
> -- 
> 2.41.0
> 
