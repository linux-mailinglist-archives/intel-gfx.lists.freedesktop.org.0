Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF337D97F6
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 14:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B363710E995;
	Fri, 27 Oct 2023 12:26:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7960010E996
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 12:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698409580; x=1729945580;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dHBgmcNF7Jm07Ir9DmYKGgpqCFH7fsMfvzIMLSVRXk4=;
 b=DhD8Q41m+YlaTXtNAqqtK8fn4PCuWfTDVUVuiWH/RRI5wsNefP0f7Kqf
 J+dIkiTntIMzqRCVbBtOPB0CITiF6D1lISg+mRxX716GcgqvYENnKPenP
 W+TI3fpYSq1mQZzqJK0+YIZh8xxDbuMkoK9taYWComkJwaFA+Bdj1AZE4
 PASODgue4w5n2mE0k3KLbsG6qG8EGlk6DK5IKV2aZkYuB0V70Ho7C4WWR
 BKe3lM+oSo5lT5lsB0zE/Mf0lNlgJlJdDozSIB17uO+/aUhuWMwaeSxGK
 eP/3iuGQ8nLNAQ4Qlll6wnVva373OdzAXxJmpxTvqOFmNGO5qRAKtBGVF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="367974887"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="367974887"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 05:26:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="876323310"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="876323310"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 05:26:19 -0700
Date: Fri, 27 Oct 2023 15:26:15 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTusZwuUcVcAwKkh@intel.com>
References: <20231024010925.3949910-24-imre.deak@intel.com>
 <20231024102219.4035939-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024102219.4035939-4-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 23/29] drm/i915/dp_mst: Enable DSC
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

On Tue, Oct 24, 2023 at 01:22:19PM +0300, Imre Deak wrote:
> Enable passing through DSC streams to the sink in last branch devices.
> 
> v2:
> - Fix the DPCD register address while setting/clearing the passthrough
>   flag.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 26 ++++++++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0101e17515b33..51d6ab170a894 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2968,6 +2968,24 @@ intel_dp_sink_set_dsc_decompression(struct intel_connector *connector,
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
> +
> +	if (!aux)
> +		return;
> +
> +	if (write_dsc_decompression_flag(aux,
> +					 DP_DSC_PASSTHROUGH_EN, enable) < 0)
> +		drm_dbg_kms(&i915->drm,
> +			    "Failed to %s sink compression passthrough state\n",
> +			    str_enable_disable(enable));
> +}
> +
>  void intel_dp_sink_set_decompression_state(struct intel_connector *connector,
>  					   const struct intel_crtc_state *crtc_state,
>  					   bool enable)
> @@ -2980,7 +2998,13 @@ void intel_dp_sink_set_decompression_state(struct intel_connector *connector,
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
> 
