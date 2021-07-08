Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6408D3C13E1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 15:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 438BA6E233;
	Thu,  8 Jul 2021 13:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 492846E233
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 13:09:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="196777828"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="196777828"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 06:09:23 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="487597348"
Received: from victorge-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.44.91])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 06:09:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210708102549.27821-4-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210708102549.27821-1-vandita.kulkarni@intel.com>
 <20210708102549.27821-4-vandita.kulkarni@intel.com>
Date: Thu, 08 Jul 2021 16:09:18 +0300
Message-ID: <87sg0p54w1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v7 3/3] drm/i915/display/dsc: Force dsc BPP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 08 Jul 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> Set DSC BPP to the value forced through
> debugfs. It can go from bpc to bpp-1.
>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5b52beaddada..3e50cdd7e448 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1240,6 +1240,23 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	pipe_config->port_clock = intel_dp->common_rates[limits->max_clock];
>  	pipe_config->lane_count = limits->max_lane_count;
>  
> +	if (intel_dp->force_dsc_en) {
> +		/* As of today we support DSC for only RGB */
> +		if (intel_dp->force_dsc_bpp >= 8 &&
> +		    intel_dp->force_dsc_bpp < pipe_bpp) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "DSC BPP forced to %d",
> +				    intel_dp->force_dsc_bpp);
> +			pipe_config->dsc.compressed_bpp =
> +						intel_dp->force_dsc_bpp;
> +		} else {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "Invalid DSC BPP %d",
> +				    intel_dp->force_dsc_bpp);
> +			return -EINVAL;

I'd just let it use the normal compressed_bpp, with the debug message,
instead of returning -EINVAL.

> +		}
> +	}
> +

This should be *after* the below blocks, because otherwise
compressed_bpp will be overridden by the normal case, not by the force
case!

BR,
Jani.

>  	if (intel_dp_is_edp(intel_dp)) {
>  		pipe_config->dsc.compressed_bpp =
>  			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
