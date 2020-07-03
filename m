Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE7C213056
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 02:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB3F6E03A;
	Fri,  3 Jul 2020 00:07:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8FEF6E03A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 00:07:06 +0000 (UTC)
IronPort-SDR: 84xNla8usFi1XCMYwaBKI4JQjcZ5yHOcTKtnylUSQ29/oy2LJQzJqXWEe28sU6BXJwUJqq2lHt
 0VeF8tq7mSyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="147065772"
X-IronPort-AV: E=Sophos;i="5.75,306,1589266800"; d="scan'208";a="147065772"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 17:07:06 -0700
IronPort-SDR: 882IwMxP73SSanBBSjWgEtCNDBPoH2GpxUdvDN497yQp+Kz/7L+8gB45PfX9v+lQ8gBqV9nEQc
 /mbqfru+Hq1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,306,1589266800"; d="scan'208";a="313174063"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga008.jf.intel.com with ESMTP; 02 Jul 2020 17:07:06 -0700
Date: Thu, 2 Jul 2020 17:08:45 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20200703000845.GC1225@intel.com>
References: <20200702230957.30536-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702230957.30536-1-matthew.s.atwood@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2] Revert "drm/i915/dp: Correctly advertise
 HBR3 for GEN11+"
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

On Thu, Jul 02, 2020 at 04:09:57PM -0700, Matt Atwood wrote:
> The initial CI results did not include a TGL system which includes a
> panel that is having issues with patch. Revert while we triage.
> 
> This reverts commit 680c45c767f63e35f063d3ea04f388a9f7ae7079.
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 28 +++++++++++++++----------
>  1 file changed, 17 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a5ab405d3a12..d6295eb20b63 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -137,8 +137,6 @@ static const u8 valid_dsc_slicecount[] = {1, 2, 4};
>   *
>   * If a CPU or PCH DP output is attached to an eDP panel, this function
>   * will return true, and false otherwise.
> - *
> - * This function is not safe to use prior to encoder type being set.
>   */
>  bool intel_dp_is_edp(struct intel_dp *intel_dp)
>  {
> @@ -8159,6 +8157,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  		     intel_encoder->base.name))
>  		return false;
>  
> +	intel_dp_set_source_rates(intel_dp);
> +
>  	intel_dp->reset_link_params = true;
>  	intel_dp->pps_pipe = INVALID_PIPE;
>  	intel_dp->active_pipe = INVALID_PIPE;
> @@ -8174,22 +8174,28 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  		 */
>  		drm_WARN_ON(dev, intel_phy_is_tc(dev_priv, phy));
>  		type = DRM_MODE_CONNECTOR_eDP;
> -		intel_encoder->type = INTEL_OUTPUT_EDP;
> -
> -		/* eDP only on port B and/or C on vlv/chv */
> -		if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
> -				      IS_CHERRYVIEW(dev_priv)) &&
> -				port != PORT_B && port != PORT_C))
> -			return false;
>  	} else {
>  		type = DRM_MODE_CONNECTOR_DisplayPort;
>  	}
>  
> -	intel_dp_set_source_rates(intel_dp);
> -
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		intel_dp->active_pipe = vlv_active_pipe(intel_dp);
>  
> +	/*
> +	 * For eDP we always set the encoder type to INTEL_OUTPUT_EDP, but
> +	 * for DP the encoder type can be set by the caller to
> +	 * INTEL_OUTPUT_UNKNOWN for DDI, so don't rewrite it.
> +	 */
> +	if (type == DRM_MODE_CONNECTOR_eDP)
> +		intel_encoder->type = INTEL_OUTPUT_EDP;
> +
> +	/* eDP only on port B and/or C on vlv/chv */
> +	if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
> +			      IS_CHERRYVIEW(dev_priv)) &&
> +			intel_dp_is_edp(intel_dp) &&
> +			port != PORT_B && port != PORT_C))
> +		return false;
> +
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "Adding %s connector on [ENCODER:%d:%s]\n",
>  		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
> -- 
> 2.21.3
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
