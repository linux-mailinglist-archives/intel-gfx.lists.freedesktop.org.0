Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B867BEB76
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 22:19:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FFD710E2E7;
	Mon,  9 Oct 2023 20:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8902310E2E7
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 20:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696882786; x=1728418786;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZBmmlcE04vOn44ApMaaeUqzevwfTxIPq1NGC6kQiAPc=;
 b=dc4ELHOaGIbUlQ96igsd3BPFyODxooNMrj20x+vq0P1Oi9bFP0JIMblp
 1fluMqxos3nTJ7KHN6xkRdiS4IZTUc8hANu08jEXmaaxlfbLI06v6nIFF
 PHjHG5qwhWRTs0CYgf5FhwYp6TL14sTSanT15srxs/JLh5icqQdZJf7c0
 8T/mw/GMBRI2L5hW37j4ovGSxJszTgB+is3piYSLqzF0z4FB9Tt5IbFg1
 2tQkqrO6LMu09nrxlgl4OhAppffpajDsEFl60A+oiiK3bMiPWjTuRhAiV
 SKe1lB3kAXDNjZE1WD/3bkwzdESdmuHod9lO3gg3jE0+eoZjKumIllFBj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="388106050"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="388106050"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 13:19:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="1000347426"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="1000347426"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 13:19:45 -0700
Date: Mon, 9 Oct 2023 23:19:42 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZSRgXghbIo858IpQ@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
 <20231006133727.1822579-10-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006133727.1822579-10-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/19] drm/i915/dp: Use connector DSC DPCD
 in intel_dp_dsc_max_sink_compressed_bppx16()
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

On Fri, Oct 06, 2023 at 04:37:17PM +0300, Imre Deak wrote:
> Use the connector's DSC DPCD capabilities in
> intel_dp_dsc_max_sink_compressed_bppx16().
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 437bd972fb040..ff4090a602b4b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1767,11 +1767,11 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
>  }
>  
>  static
> -u16 intel_dp_dsc_max_sink_compressed_bppx16(struct intel_dp *intel_dp,
> +u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
>  					    struct intel_crtc_state *pipe_config,
>  					    int bpc)
>  {
> -	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd);
> +	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
>  
>  	if (max_bppx16)
>  		return max_bppx16;
> @@ -1810,11 +1810,11 @@ static int dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
>  	return 0;
>  }
>  
> -static int dsc_sink_max_compressed_bpp(struct intel_dp *intel_dp,
> +static int dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
>  				       struct intel_crtc_state *pipe_config,
>  				       int bpc)
>  {
> -	return intel_dp_dsc_max_sink_compressed_bppx16(intel_dp,
> +	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
>  						       pipe_config, bpc) >> 4;
>  }
>  
> @@ -1913,6 +1913,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  }
>  
>  static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
> +				      const struct intel_connector *connector,
>  				      struct intel_crtc_state *pipe_config,
>  				      struct link_config_limits *limits,
>  				      int pipe_bpp,
> @@ -1930,7 +1931,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>  	dsc_min_bpp = max(dsc_min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
>  
>  	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
> -	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(intel_dp, pipe_config, pipe_bpp / 3);
> +	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(connector, pipe_config, pipe_bpp / 3);
>  	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
>  
>  	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
> @@ -2002,6 +2003,8 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  					 int timeslots)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	const struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
>  	u8 max_req_bpc = conn_state->max_requested_bpc;
>  	u8 dsc_max_bpc, dsc_max_bpp;
>  	u8 dsc_min_bpc, dsc_min_bpp;
> @@ -2012,7 +2015,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, conn_state, limits);
>  
>  	if (forced_bpp) {
> -		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
> +		ret = dsc_compute_compressed_bpp(intel_dp, connector, pipe_config,
>  						 limits, forced_bpp, timeslots);
>  		if (ret == 0) {
>  			pipe_config->pipe_bpp = forced_bpp;
> @@ -2041,7 +2044,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  			break;
>  		if (pipe_bpp > dsc_max_bpp)
>  			continue;
> -		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
> +		ret = dsc_compute_compressed_bpp(intel_dp, connector, pipe_config,
>  						 limits, pipe_bpp, timeslots);
>  		if (ret == 0) {
>  			pipe_config->pipe_bpp = pipe_bpp;
> @@ -2088,7 +2091,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	dsc_min_bpp = max(dsc_min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
>  
>  	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
> -	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(intel_dp, pipe_config, pipe_bpp / 3);
> +	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(connector, pipe_config, pipe_bpp / 3);
>  	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
>  	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
>  
> -- 
> 2.39.2
> 
