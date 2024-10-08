Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C485899490B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 14:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 653E610E4E8;
	Tue,  8 Oct 2024 12:19:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fy66WNW3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98D5B10E4E1
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 12:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728389981; x=1759925981;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FE9qk+Zml4zvvT+x9P4C+tIINtxcIeEMlQ0jl1vIEJc=;
 b=Fy66WNW3xHa8sgUIfIut1dpX/2KmrEBorlHpyWJ4+Oa+q6Y+EPB+YMcb
 905TnYMGGt79VBqb7FYg4/0nYIgELH4pvXeCh4CWdIQJigbO5NKtxaaYw
 7KI3AG0y12EdLrRwzYuhzbNxFVPkFJHHoNnB9DI8HlTqEcC9B/H8eaUJc
 2d62eQWnzP7ug1VVBjfO2gFzpYtmY2l5NMdQ5W8fUTxeitUAOkSZcLfba
 w0lGVLS/sOuP1li3FdPYkmBt1YCT2IpCjP3tlu9n8LWXp28+b0/phQWzM
 DCbSMlhqVb0G/qFvYsLTdz3LI7Zzn6umFu53h3zP/cwWzvSj9CuZHbgJg A==;
X-CSE-ConnectionGUID: ruecIttUSWKakLYdyxMt2w==
X-CSE-MsgGUID: XQZg0mJxTA+88FWcMXeE1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="31468395"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="31468395"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 05:19:41 -0700
X-CSE-ConnectionGUID: OFP1c9jvQROiHdOXm/Ve5A==
X-CSE-MsgGUID: slaO/Ah7RS+xkGT9/Q8zJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="76081140"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.41])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 05:19:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH 1/9] drm/i915/display: get rid of encoder param  in
 intel_audio_compute_config
In-Reply-To: <20241008082327.342020-2-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
 <20241008082327.342020-2-vinod.govindapillai@intel.com>
Date: Tue, 08 Oct 2024 15:19:34 +0300
Message-ID: <87ploardm1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 08 Oct 2024, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> The parameter "encoder" is used only to get the drm_i915_private
> object. As we could get the drm_i915_private from connector, we
> dont need this encoder to be passed to this function. So get
> rid of the encoder parametet and update all the corrsponding
> intel_audio_compute_config calls. In the followup patches, we
> don't even need the drm_i915_private object in this function.

I've got mixed feelings about this. On the one hand, removing extra
params is good. On the other hand, I'm thinking we should just pass
along all the encoder->compute_config hook parameters all the way to all
functions named _compute_config(), because we just keep removing and
adding these parameters as the driver evolves. We go in circles with
this.

BR,
Jani.



>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 5 ++---
>  drivers/gpu/drm/i915/display/intel_audio.h | 3 +--
>  drivers/gpu/drm/i915/display/intel_dp.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c  | 2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c  | 2 +-
>  5 files changed, 6 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 32aa9ec1a204..1afd3b99e3ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -690,12 +690,11 @@ void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
>  			     crtc_state->sdp_split_enable ? AUD_ENABLE_SDP_SPLIT : 0);
>  }
>  
> -bool intel_audio_compute_config(struct intel_encoder *encoder,
> -				struct intel_crtc_state *crtc_state,
> +bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct drm_connector *connector = conn_state->connector;
> +	struct drm_i915_private *i915 = to_i915(connector->dev);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> index 576c061d72a4..9b327b677d89 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -14,8 +14,7 @@ struct intel_crtc_state;
>  struct intel_encoder;
>  
>  void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
> -bool intel_audio_compute_config(struct intel_encoder *encoder,
> -				struct intel_crtc_state *crtc_state,
> +bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state);
>  void intel_audio_codec_enable(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index fbb096be02ad..0fd9c1c51a43 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3001,7 +3001,7 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
>  {
>  	pipe_config->has_audio =
>  		intel_dp_has_audio(encoder, conn_state) &&
> -		intel_audio_compute_config(encoder, pipe_config, conn_state);
> +		intel_audio_compute_config(pipe_config, conn_state);
>  
>  	pipe_config->sdp_split_enable = pipe_config->has_audio &&
>  					intel_dp_is_uhbr(pipe_config);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 72ac910bf6ec..45ff2ee7cb70 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2333,7 +2333,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  
>  	pipe_config->has_audio =
>  		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
> -		intel_audio_compute_config(encoder, pipe_config, conn_state);
> +		intel_audio_compute_config(pipe_config, conn_state);
>  
>  	/*
>  	 * Try to respect downstream TMDS clock limits first, if
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index b83bf813677d..2fbb69ee7b45 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1430,7 +1430,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
>  
>  	pipe_config->has_audio =
>  		intel_sdvo_has_audio(encoder, pipe_config, conn_state) &&
> -		intel_audio_compute_config(encoder, pipe_config, conn_state);
> +		intel_audio_compute_config(pipe_config, conn_state);
>  
>  	pipe_config->limited_color_range =
>  		intel_sdvo_limited_color_range(encoder, pipe_config,

-- 
Jani Nikula, Intel
