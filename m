Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B230C70C233
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 17:20:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D420E10E358;
	Mon, 22 May 2023 15:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 260A710E35A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 15:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684768814; x=1716304814;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rbkY23JHmkNzVRyx1odrsa2a+/Ly2yelYWTpu2Y/6ug=;
 b=NsHN4U2XslY6OqNGPF+YgjQCKtJEcVPiZ3ccLDZDOys/LbOGC1ehie6i
 /8+5CtIroqskVswLNpWDFfM7pdCLGHrVdcJvele5L2JmBMP1tV0Rzv5LN
 O/tgehLaGmWZNqveMuy2PBd1MOUWiIFS3+CLzJIZayz/RsK7zgaNo4rOl
 g7V6NrYJacPTO9VQ7YeQBFXYzy8jvck4jdB5hMGx7V1gSLF4vwV4u5AU8
 XKJJl+jHOr2ls/1RNQKENzRn5KrRu/nBif9TEQbQw9SdNnOEHTPTt83vQ
 kzel8OTXTfgbhZtsn5BMaoZIKCe61nL88I79F7rvur/cHxyYMlrY3SAqZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="352971772"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="352971772"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:20:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="706583989"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="706583989"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:20:11 -0700
Date: Mon, 22 May 2023 18:20:08 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZGuIBs5ArtnOuSm1@intel.com>
References: <20230511231750.313467-1-vinod.govindapillai@intel.com>
 <20230511231750.313467-6-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230511231750.313467-6-vinod.govindapillai@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 5/8] drm/i915: modify max_bw to return
 index to intel_bw_info
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 12, 2023 at 02:17:47AM +0300, Vinod Govindapillai wrote:
> MTL uses the peak BW of a QGV point to lock the required QGV
> point instead of the QGV index. Instead of passing the deratedbw
> of the selected bw_info, return the index to the selected
> bw_info so that either deratedbw or peakbw can be used based on
> the platform.
> 
> v2: use idx to store index returned by max_bw_index functions
> 
> v3: return UINT_MAX in icl_max_bw_index in case no match found
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 27 ++++++++++++++++---------
>  1 file changed, 17 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index d83aafd0cc2b..f466b4e087bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -593,8 +593,8 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
>  	i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
>  }
>  
> -static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
> -			       int num_planes, int qgv_point)
> +static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
> +				     int num_planes, int qgv_point)
>  {
>  	int i;
>  
> @@ -615,14 +615,14 @@ static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
>  			return UINT_MAX;
>  
>  		if (num_planes >= bi->num_planes)
> -			return bi->deratedbw[qgv_point];
> +			return i;
>  	}
>  
> -	return 0;
> +	return UINT_MAX;
>  }
>  
> -static unsigned int tgl_max_bw(struct drm_i915_private *dev_priv,
> -			       int num_planes, int qgv_point)
> +static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
> +				     int num_planes, int qgv_point)
>  {
>  	int i;
>  
> @@ -643,10 +643,10 @@ static unsigned int tgl_max_bw(struct drm_i915_private *dev_priv,
>  			return UINT_MAX;
>  
>  		if (num_planes <= bi->num_planes)
> -			return bi->deratedbw[qgv_point];
> +			return i;
>  	}
>  
> -	return dev_priv->display.bw.max[0].deratedbw[qgv_point];
> +	return 0;
>  }
>  
>  static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
> @@ -823,12 +823,19 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
>  		return ret;
>  
>  	for (i = 0; i < num_qgv_points; i++) {
> +		unsigned int idx;
>  		unsigned int max_data_rate;
>  
>  		if (DISPLAY_VER(i915) > 11)
> -			max_data_rate = tgl_max_bw(i915, num_active_planes, i);
> +			idx = tgl_max_bw_index(i915, num_active_planes, i);
>  		else
> -			max_data_rate = icl_max_bw(i915, num_active_planes, i);
> +			idx = icl_max_bw_index(i915, num_active_planes, i);
> +
> +		if (idx > ARRAY_SIZE(i915->display.bw.max))
> +			continue;
> +
> +		max_data_rate = i915->display.bw.max[idx].deratedbw[i];
> +
>  		/*
>  		 * We need to know which qgv point gives us
>  		 * maximum bandwidth in order to disable SAGV
> -- 
> 2.34.1
> 
