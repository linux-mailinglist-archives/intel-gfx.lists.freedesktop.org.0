Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9534425297
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 14:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 149F56F45A;
	Thu,  7 Oct 2021 12:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 906916F45A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 12:08:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="249550389"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="249550389"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 05:08:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="478538190"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 07 Oct 2021 05:08:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Oct 2021 15:08:40 +0300
Date: Thu, 7 Oct 2021 15:08:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YV7jSPCIROxnh4HJ@intel.com>
References: <20211007115629.4531-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211007115629.4531-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: fix snps buf trans for uhbr
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 07, 2021 at 02:56:29PM +0300, Jani Nikula wrote:
> The UHBR check was using > instead of >=. Use the helper instead to
> avoid mistakes. Also always use the non-UHBR values for HDMI.
> 
> Fixes: 2817efaeb608 ("drm/i915/dg2: add SNPS PHY translations for UHBR link rates")
> Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index a2d39131ea53..a87a688d8475 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -8,6 +8,7 @@
>  #include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_dp.h"
>  
>  /* HDMI/DVI modes ignore everything but the last 2 items. So we share
>   * them for both DP and FDI transports, allowing those ports to
> @@ -1611,10 +1612,11 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
>  		       const struct intel_crtc_state *crtc_state,
>  		       int *n_entries)
>  {
> -	if (crtc_state->port_clock > 1000000)
> -		return intel_get_buf_trans(&dg2_snps_trans_uhbr, n_entries);
> -	else
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) ||
> +	    !intel_dp_is_uhbr(crtc_state))

Might be more clear flipped around to 'has_dp_encoder && is_uhbr'?

Either way
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
> +	else
> +		return intel_get_buf_trans(&dg2_snps_trans_uhbr, n_entries);
>  }
>  
>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
