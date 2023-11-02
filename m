Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F5C7DF495
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 15:06:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD0910E0C5;
	Thu,  2 Nov 2023 14:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2F2710E0C5
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 14:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698934008; x=1730470008;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JiZwLTedkanUf8fmzTSIlxbrv7gGKYULO4DjBrh/Zic=;
 b=TVyXbXIf9Z2HybOsq9XjNZjopdWT6mUPBZ/pHjtRyRnKj9LYK2WNUoFk
 Zt96IjQ+v8iI4TbCPN7RTPTNBB1P2G3byTPxyJO5upJBnfLl4jc6uBxjd
 qUrJ8gXCUyDoLHStgrTj85jQGU16vZN9xrT3lYEyOvIWghUYTWL5iWXl8
 n023gFGH/OTzGtYUkozwN6dfBr9G4Y5I6iDyr5Wz8l464OTvjt0Uuj9P3
 +AMLz/hr6kl8r7vaUeS70vdkN2Ch9HCOclnVoBpP+wxmNrPCVwXqWYq9G
 zXOywxYGNbcdQUasUrKuhKZxXPcF41F3HzWtEHWkzCwKXqaqhzbUhfNeC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="455201250"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="455201250"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 07:06:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="754780823"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="754780823"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 02 Nov 2023 07:06:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Nov 2023 16:06:44 +0200
Date: Thu, 2 Nov 2023 16:06:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZUOsb4D0qi6Oq0oB@intel.com>
References: <20231102115935.2591979-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231102115935.2591979-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp_mst: Disable DSC on ICL+ MST
 outputs
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 02, 2023 at 01:59:35PM +0200, Imre Deak wrote:
> Enabling DSC on ICL MST outputs is broken leading to FIFO pipe /
> transcoder underruns and blank screen. On TGL+ platforms MST/DSC works -
> after fixing the known issues in [1] - however to make this work on ICL
> requires more work.
> 
> So far DSC on MST probably didn't get enabled for users - due to an issue
> fixed by [2] - but after fixing that, DSC could get enabled, leading to a
> blank screen in ICL/MST configurations which do work atm. To prevent
> this disable MST/DSC on ICL for now.
> 
> [1] https://lore.kernel.org/all/20231030155843.2251023-1-imre.deak@intel.com
> [2] https://lore.kernel.org/all/20231030155843.2251023-31-imre.deak@intel.com
> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 82f425ef15953..2cd3bccc0e650 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -43,6 +43,7 @@
>  #include "intel_dpio_phy.h"
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
> +#include "intel_vdsc.h"
>  #include "skl_scaler.h"
>  
>  static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
> @@ -297,6 +298,14 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
>  	return 0;
>  }
>  
> +static bool
> +intel_dp_mst_dsc_source_support(const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +
> +	return DISPLAY_VER(i915) > 11 && intel_dsc_source_support(crtc_state);

We typically say >=12 not >11. Also please include a small comment to
explaing why icl is excluded so people don't have to wonder what's going
on here.

Apart from that
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +}
> +
>  static bool
>  intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *crtc_state,
> @@ -375,6 +384,9 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  			    str_yes_no(ret),
>  			    str_yes_no(intel_dp->force_dsc_en));
>  
> +		if (!intel_dp_mst_dsc_source_support(pipe_config))
> +			return -EINVAL;
> +
>  		if (!intel_dp_mst_compute_config_limits(intel_dp,
>  							pipe_config,
>  							true,
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
