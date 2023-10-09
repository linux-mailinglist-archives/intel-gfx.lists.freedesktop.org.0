Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8FC7BEB72
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 22:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0567C10E2E6;
	Mon,  9 Oct 2023 20:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81CBE10E2E6
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 20:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696882724; x=1728418724;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tC7F9y9eT4cEIx1uuiM3qLZXG1BRlMyEQ5Cw9/RGIWM=;
 b=ZENU7lejrQMm1whEy2vioo8vK2Zqg3K9LqyLwNi6b2xMvBIpInyQMh21
 GtKSmS4rsHWrvtHfglbr9vOvsksoz4e6jCj5/Ao1vFaB2fL7qY+wlvIcX
 aBvOEAJtFPkeb0Qi1EdS7UCAx1Diesr1E/Jy3yRxgNS9XGE0di08s5LXA
 sn6nROb/zUT2s0cksopNm279ytO1s5AqNufxzugvEva0fdA7syZZ0Nvt7
 RSjhTrRYevzegwmBuUiNzpv5tfUzte6Wykyoorz1uQYY7mR7bbhOauPqh
 YLRe7wXGfrjCHwvHhenAl4yJxAZYOXcgbNk3uzIx3jlAThkhoxdado1es g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="369307523"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="369307523"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 13:18:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="818961870"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="818961870"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 13:18:42 -0700
Date: Mon, 9 Oct 2023 23:18:39 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZSRgHzJkfOu9dTAx@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
 <20231006133727.1822579-9-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006133727.1822579-9-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/19] drm/i915/dp: Use connector DSC DPCD
 in intel_dp_supports_dsc()
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

On Fri, Oct 06, 2023 at 04:37:16PM +0300, Imre Deak wrote:
> Use the connector's DSC DPCD capabilities in intel_dp_supports_dsc().
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8450856e5618d..437bd972fb040 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1377,14 +1377,14 @@ static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
>  		drm_dp_sink_supports_fec(connector->dp.fec_capability);
>  }
>  
> -static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
> +static bool intel_dp_supports_dsc(const struct intel_connector *connector,
>  				  const struct intel_crtc_state *crtc_state)
>  {
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && !crtc_state->fec_enable)
>  		return false;
>  
>  	return intel_dsc_source_support(crtc_state) &&
> -		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
> +		drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd);
>  }
>  
>  static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
> @@ -2120,7 +2120,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
>  		intel_dp_supports_fec(intel_dp, connector, pipe_config);
>  
> -	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
> +	if (!intel_dp_supports_dsc(connector, pipe_config))
>  		return -EINVAL;
>  
>  	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_format))
> -- 
> 2.39.2
> 
