Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 307C937FDEB
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 21:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A2AA6EDA1;
	Thu, 13 May 2021 19:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38C7C6EDA1
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 May 2021 19:12:18 +0000 (UTC)
IronPort-SDR: jhNYre3I/y1Ao34uwXQCIkwhc3ilmauuLrQtt2o51N6rYbk2Y6lREgCMeEz1l6AT3Yhn382ydZ
 61kKykTqNq+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="180296660"
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="180296660"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 12:12:17 -0700
IronPort-SDR: vhbALoc97aHXAFM0hlEKOnzlcMMlA0Ml8tRTwPlYBYB0gSP7dPogPz/iwsce3M3OafF7xlkjHE
 kQxvYwlNiSkw==
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="610484635"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 12:12:17 -0700
Date: Thu, 13 May 2021 12:20:07 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210513192007.GF23292@labuser-Z97X-UD5H>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-12-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508022820.780227-12-matthew.d.roper@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 11/48] drm/i915: Get slice height before
 computing rc params
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 07, 2021 at 07:27:43PM -0700, Matt Roper wrote:
> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
> 
> We need slice height to calculate few RC parameters
> hence assign slice height first.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8ccb3c3888f7..b9b8a0b9889a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1154,10 +1154,6 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>  	 */
>  	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
>  
> -	ret = intel_dsc_compute_params(encoder, crtc_state);
> -	if (ret)
> -		return ret;
> -
>  	/*
>  	 * Slice Height of 8 works for all currently available panels. So start
>  	 * with that if pic_height is an integral multiple of 8. Eventually add
> @@ -1170,6 +1166,10 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>  	else
>  		vdsc_cfg->slice_height = 2;
>  
> +	ret = intel_dsc_compute_params(encoder, crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	vdsc_cfg->dsc_version_major =
>  		(intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
>  		 DP_DSC_MAJOR_MASK) >> DP_DSC_MAJOR_SHIFT;
> -- 
> 2.25.4
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
