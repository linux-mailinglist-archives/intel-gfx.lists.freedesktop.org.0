Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B729B40A738
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 09:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098B46E41B;
	Tue, 14 Sep 2021 07:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952A46E41B
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 07:18:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="244239142"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="244239142"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 00:18:27 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="469996639"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 00:18:25 -0700
Date: Tue, 14 Sep 2021 10:19:09 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 manasi.d.navare@intel.com
Message-ID: <20210914071909.GA27173@intel.com>
References: <20210913143923.21119-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210913143923.21119-1-vandita.kulkarni@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable second VDSC engine
 for higher moderates
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

On Mon, Sep 13, 2021 at 08:09:23PM +0530, Vandita Kulkarni wrote:
> Each VDSC operates with 1ppc throughput, hence enable the second
> VDSC engine when moderate is higher that the current cdclk.
> 
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 161c33b2c869..55878f65f724 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -70,6 +70,7 @@
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  #include "intel_vrr.h"
> +#include "intel_cdclk.h"
>  
>  #define DP_DPRX_ESI_LEN 14
>  
> @@ -1291,10 +1292,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				       struct drm_connector_state *conn_state,
>  				       struct link_config_limits *limits)
>  {
> +	struct intel_cdclk_state *cdclk_state;
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>  	const struct drm_display_mode *adjusted_mode =
>  		&pipe_config->hw.adjusted_mode;
> +	struct intel_atomic_state *state =
> +				to_intel_atomic_state(pipe_config->uapi.state);
>  	int pipe_bpp;
>  	int ret;
>  
> @@ -1373,12 +1377,16 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		}
>  	}
>  
> +	cdclk_state = intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(cdclk_state))
> +		return PTR_ERR(cdclk_state);
> +
>  	/*
>  	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
> -	 * is greater than the maximum Cdclock and if slice count is even
> +	 * is greater than the current Cdclock and if slice count is even
>  	 * then we need to use 2 VDSC instances.
>  	 */
> -	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
> +	if (adjusted_mode->crtc_clock > cdclk_state->actual.cdclk ||

So in the end, we didn't have to bump CDCLK up to get rid of that?

Anyways, checked with BSpec 49259, seems to make sense, was no point in
comparing to max CDCLK, which is not even currently used.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  	    pipe_config->bigjoiner) {
>  		if (pipe_config->dsc.slice_count < 2) {
>  			drm_dbg_kms(&dev_priv->drm,
> -- 
> 2.32.0
> 
