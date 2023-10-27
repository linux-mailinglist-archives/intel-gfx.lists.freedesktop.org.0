Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D83167D9C2F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 16:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C70110E9D2;
	Fri, 27 Oct 2023 14:52:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4127910E9D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 14:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698418341; x=1729954341;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CrY94DHEe6cmGcAR/e8W3XQoFFEWNkMaKTS7GNZi4nk=;
 b=E+MeqDX4/m1E2szYRiNUAllnX5L0L3nUq8fAP68ueN5pPH9GhSHSWcTy
 FCwy4WsfSr6Mj4k7kbegvJW8DqvlLBUOjHoPRHF1roZ8dxOFkaEhCmt2B
 L1DURMZwZLSoYUifKCE9QSP2X3/s/hiBNN0ehRt6ANCGWeE+TulEyIRFM
 n1nJxvHM4tY3v0Y7M8vul6j8q08mPssBTZ3IrRlT6axDYUga2UmEDMd04
 ubi7wlbsAh8IAnsp2DIjhuvMqfgtEF7fR1cGnx/B4RF3FIqNT0hQhWdD5
 CBKInyRMNx1050ZjVm8PyI+cPN5TZrZZcazC/5RGUpM2E2h272ooDdMFW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="372836603"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="372836603"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 07:52:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="763229657"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="763229657"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmsmga007.fm.intel.com with SMTP; 27 Oct 2023 07:52:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Oct 2023 17:52:17 +0300
Date: Fri, 27 Oct 2023 17:52:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTvOoUQPrhnyMoLN@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-24-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231024010925.3949910-24-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 23/29] drm/i915/dp_mst: Enable DSC
 passthrough
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

On Tue, Oct 24, 2023 at 04:09:19AM +0300, Imre Deak wrote:
> Enable passing through DSC streams to the sink in last branch devices.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 26 ++++++++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a7eb31b489947..bb8951f89f61f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2950,6 +2950,24 @@ intel_dp_sink_set_dsc_decompression(struct intel_connector *connector,
>  			    str_enable_disable(enable));
>  }
>  
> +static void
> +intel_dp_sink_set_dsc_passthrough(const struct intel_connector *connector,
> +				  bool enable)
> +{
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct drm_dp_aux *aux = connector->port ?
> +				 connector->port->passthrough_aux : NULL;

I was worried that we're now setting conflicting compress+passthrough
bits at the same time, but looks like this magic passthrough_aux thing
gets sneakily populated by drm_dp_mst_dsc_aux_for_port() whereas the 
decompression_aux gets just returned directly and tracked by the driver.
Very confusing.

But I guess it kinda works
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
> +	if (!aux)
> +		return;
> +
> +	if (drm_dp_dpcd_writeb(aux, DP_DSC_PASSTHROUGH_EN,
> +			       enable ? DP_DSC_PASSTHROUGH_EN : 0) < 0)
> +		drm_dbg_kms(&i915->drm,
> +			    "Failed to %s sink compression passthrough state\n",
> +			    str_enable_disable(enable));
> +}
> +
>  void intel_dp_sink_set_decompression_state(struct intel_connector *connector,
>  					   const struct intel_crtc_state *crtc_state,
>  					   bool enable)
> @@ -2962,7 +2980,13 @@ void intel_dp_sink_set_decompression_state(struct intel_connector *connector,
>  	if (drm_WARN_ON(&i915->drm, !connector->dp.dsc_decompression_aux))
>  		return;
>  
> -	intel_dp_sink_set_dsc_decompression(connector, enable);
> +	if (enable) {
> +		intel_dp_sink_set_dsc_passthrough(connector, true);
> +		intel_dp_sink_set_dsc_decompression(connector, true);
> +	} else {
> +		intel_dp_sink_set_dsc_decompression(connector, false);
> +		intel_dp_sink_set_dsc_passthrough(connector, false);
> +	}
>  }
>  
>  static void
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
