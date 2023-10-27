Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0C77D97E3
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 14:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB85C10E992;
	Fri, 27 Oct 2023 12:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CE7A10E992
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 12:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698409466; x=1729945466;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6eeaQ5j19GXFY1X1i6S2Lap3TasgYE5QbMmTQ4DRGvM=;
 b=iJaO3g5ni1vnGbpF/uwWSy5R5W20/s5oHz2DWhk5nmGU+sv8sUm+qDr3
 63C+XJRS68GXpzeLVRCPr9YcJqT1ASZXbWQWOsPkLOcgZnoYA290osCBF
 HjfS3O4JrjV9Zn9DPtqWFjI2y3mJGuyuBm34cKiEK/D1D9t3+ItEObnyi
 twvKKlKY05OZ8RAxZ1iQ/qIZcrZ2b0e0UD/RG4Cr2UhClW2pi+j6k2+Qs
 3uIFxyt5R5OUuGBn3dHGHsGOiCXS6j3GrOWASTw13j+AsvhsLsivK3Pp7
 j06LL8SVZ60jKZ0U9nXV7CKe13rgXtsSLJjs+fYQubT02XoihwXoQEdIH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="367110159"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="367110159"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 05:24:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="850232453"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="850232453"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 05:24:24 -0700
Date: Fri, 27 Oct 2023 15:24:21 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTur9VImiOo+45V8@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-22-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-22-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 21/29] drm/i915/dp_mst: Enable decompression
 in the sink from the MST encoder hooks
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

On Tue, Oct 24, 2023 at 04:09:17AM +0300, Imre Deak wrote:
> Enable/disable the DSC decompression in the sink/branch from the MST
> encoder hooks. This prepares for an upcoming patch toggling DSC for each
> stream as needed, but for now keeps the current behavior, as DSC is only
> enabled for the first MST stream.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    | 12 ++++++++----
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 ++++++++++++++-
>  2 files changed, 22 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 99d96762fa29c..bc438272d6d1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2538,7 +2538,9 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  
>  	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
> -	intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
> +	if (!is_mst)
> +		intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
> +
>  	/*
>  	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
>  	 * in the FEC_CONFIGURATION register to 1 before initiating link
> @@ -2689,7 +2691,8 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  
>  	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
> -	intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
> +	if (!is_mst)
> +		intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
>  	/*
>  	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
>  	 * in the FEC_CONFIGURATION register to 1 before initiating link
> @@ -2769,8 +2772,9 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	if (!is_mst)
>  		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
> -	intel_dp_sink_set_decompression_state(intel_dp, crtc_state,
> -					      true);
> +	if (!is_mst)
> +		intel_dp_sink_set_decompression_state(intel_dp, crtc_state,
> +						      true);
>  	intel_dp_sink_set_fec_ready(intel_dp, crtc_state, true);
>  	intel_dp_start_link_train(intel_dp, crtc_state);
>  	if ((port != PORT_A || DISPLAY_VER(dev_priv) >= 9) &&
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 9124e9cdf4c79..b0310f464c1cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -729,6 +729,13 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payload);
>  
>  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> +
> +	if (intel_dp->active_mst_links == 1) /* last stream ? */
> +		/*
> +		 * TODO: disable decompression for all streams/in any MST ports, not
> +		 * only in the first downstream branch device.
> +		 */
> +		intel_dp_sink_set_decompression_state(intel_dp, old_crtc_state, false);
>  }
>  
>  static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
> @@ -883,9 +890,15 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port, true);
>  
> -	if (first_mst_stream)
> +	if (first_mst_stream) {
> +		/*
> +		 * TODO: enable decompression for all streams/in any MST ports, not
> +		 * only in the first downstream branch device.
> +		 */
> +		intel_dp_sink_set_decompression_state(intel_dp, pipe_config, true);
>  		dig_port->base.pre_enable(state, &dig_port->base,
>  						pipe_config, NULL);
> +	}
>  
>  	intel_dp->active_mst_links++;
>  
> -- 
> 2.39.2
> 
