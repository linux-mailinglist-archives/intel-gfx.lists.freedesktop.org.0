Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F253C975DD3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 02:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F0AB10E966;
	Thu, 12 Sep 2024 00:10:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P392eciN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58CE710E966
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 00:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726099832; x=1757635832;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FGtFsEWV1zVU8+qFaPIAFD+gHdmbzWIgJWdwvnqNsgo=;
 b=P392eciNt/wjbG0XuWN5A13QzNqcx47igTUGBmrnTleqBo/S8hl5UHsg
 A5Eh/xcCTNQEEJ0Ly9eTiu3hM4Z7sk3RgB9FsdZ2gfIGaDla94j0G3f7r
 0L1/sSF59F5ZIhoc1pJyuDaTqPH05jhBKk2QSfyW3N8ELvaZQu0eXcoD1
 YcE+bzZYhl+v7GXNgcY3cAEluTzQ9atZg8plydvjIzt8pFYufMsZuv8ko
 /4oZMJOdSZ9K3AV4lhCPwPw39pTJ/WixYuOxgDj0jWrAi2pu0r/ERdZU7
 w+IPUK/iTIFKVAeXWUuhZh2BOB8XRH9kYfga0ZEOEIE8nqAARs9dfhEj4 A==;
X-CSE-ConnectionGUID: ILu8SoLHQRSgW/g5En0pkQ==
X-CSE-MsgGUID: fUHLM7rmTii5099H4+OLDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="36068771"
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="36068771"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 17:10:32 -0700
X-CSE-ConnectionGUID: ewBnN8XOQjGbeHu72A78nw==
X-CSE-MsgGUID: cOPEGvpDRjqN9jIonTDtvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="67589934"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 17:10:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Sep 2024 03:10:28 +0300
Date: Thu, 12 Sep 2024 03:10:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH v10 3/4] drm/i915/vrr: Split vrr-compute-config in two
 phases
Message-ID: <ZuIxdIP6P437YvOH@intel.com>
References: <20240905051841.3012729-1-animesh.manna@intel.com>
 <20240905051841.3012729-4-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240905051841.3012729-4-animesh.manna@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Sep 05, 2024 at 10:48:40AM +0530, Animesh Manna wrote:
> As vrr guardband calculation is dependent on modified
> vblank start so better to compute late after all
> vblank adjustement.
> 
> v1: Initial version.
> v2: Split in a separate patch from panel-replay workaround. [Ankit]
> 
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 13 -------------
>  2 files changed, 16 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b4ef4d59da1a..7fb3d35f7124 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4794,10 +4794,26 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>  {
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	struct drm_connector_state *conn_state;
>  	struct drm_connector *connector;
>  	int i;
>  
> +	if (crtc_state->vrr.enable) {
> +		/*
> +		 * For XE_LPD+, we use guardband and pipeline override
> +		 * is deprecated.
> +		 */
> +		if (DISPLAY_VER(to_i915(crtc->base.dev)) >= 13) {
> +			crtc_state->vrr.guardband =
> +				crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> +		} else {
> +			crtc_state->vrr.pipeline_full =
> +				min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> +				crtc_state->framestart_delay - 1);
> +		}
> +	}

Pretty sure I asked that to be a proper function in some earlier reply.

> +
>  	for_each_new_connector_in_state(&state->base, connector,
>  					conn_state, i) {
>  		struct intel_encoder *encoder =
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 9a51f5bac307..de17a8ae831b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -239,19 +239,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>  			 crtc_state->hw.adjusted_mode.vsync_end);
>  	}
> -
> -	/*
> -	 * For XE_LPD+, we use guardband and pipeline override
> -	 * is deprecated.
> -	 */
> -	if (DISPLAY_VER(display) >= 13) {
> -		crtc_state->vrr.guardband =
> -			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> -	} else {
> -		crtc_state->vrr.pipeline_full =
> -			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> -			    crtc_state->framestart_delay - 1);
> -	}
>  }
>  
>  static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
