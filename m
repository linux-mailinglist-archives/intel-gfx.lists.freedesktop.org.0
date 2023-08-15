Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F15F77D10C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 19:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F54F10E256;
	Tue, 15 Aug 2023 17:32:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C41F710E256
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692120742; x=1723656742;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=/F1jyyQtmwJnK3lrtoJfmHBs7BMSX/uDZu+nRLBBikU=;
 b=GBaj5Fh2XjIOZ6jE3Ny6nTPJdhYStblyZ6dwF7yUXKjqHkxtpTANCt6q
 kIUsKDTnzTDsX7XkHxZ85XyW3+isoP6HGnd9hLEszeDsbb8RYKzt481mp
 dm9ERBQnuVcMmK1z7AsozOw0/hakwDqC9UDj/Gzu7yyatafXUR/UR14PW
 FVlxpP5TWsvVBfoed5olIGvNqG5fDol20gs/ORGtPmn9wV1cjt9G14OBY
 U+f4NvjUnkaoQkg9HyJLuxkN2SjGmzlFqxtbv5dZIPfYU7lS4Drk37zZn
 JpvZFq6MWCoEyoa6jvzRQ3ZiWFAq7O8f9tJoHljgd06HIJrpG/63Ie3lT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="362492098"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="362492098"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:32:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="803896062"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="803896062"
Received: from zlukwins-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.48])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:32:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230815142921.404127-4-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230815142921.404127-1-vinod.govindapillai@intel.com>
 <20230815142921.404127-4-vinod.govindapillai@intel.com>
Date: Tue, 15 Aug 2023 20:32:16 +0300
Message-ID: <87o7j8b49r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/display: combine DP audio
 compute config steps
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

On Tue, 15 Aug 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Combine all DP audio configs into a single function

This should've been the first step.

>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 97a14afbcfe8..0eb072a78d44 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2236,11 +2236,16 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>  static void
>  intel_dp_audio_compute_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
> -			      struct drm_connector_state *conn_state)
> +			      struct drm_connector_state *conn_state,
> +			      struct intel_dp *intel_dp)

No need to pass intel_dp around. And usually if it's necessary, it's the
kind of context parameter that should be one of the first parameters.

>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct drm_connector *connector = conn_state->connector;
>  
> +	pipe_config->has_audio =
> +		intel_dp_has_audio(encoder, conn_state, intel_dp) &&
> +		intel_audio_compute_config(encoder, pipe_config, conn_state);
> +
>  	pipe_config->sdp_split_enable = pipe_config->has_audio &&
>  					intel_dp_is_uhbr(pipe_config);
>  
> @@ -2264,10 +2269,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
>  		pipe_config->has_pch_encoder = true;
>  
> -	pipe_config->has_audio =
> -		intel_dp_has_audio(encoder, conn_state, intel_dp) &&
> -		intel_audio_compute_config(encoder, pipe_config, conn_state);
> -
>  	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
>  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>  		ret = intel_panel_compute_config(connector, adjusted_mode);
> @@ -2334,7 +2335,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  		adjusted_mode->crtc_clock /= n;
>  	}
>  
> -	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
> +	intel_dp_audio_compute_config(encoder, pipe_config, conn_state, intel_dp);
>  
>  	intel_link_compute_m_n(output_bpp,
>  			       pipe_config->lane_count,

-- 
Jani Nikula, Intel Open Source Graphics Center
