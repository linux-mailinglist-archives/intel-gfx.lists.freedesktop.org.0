Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAB04A9083
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 23:13:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37ED610ED4A;
	Thu,  3 Feb 2022 22:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC1F410ED4A
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 22:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643926427; x=1675462427;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CN2La+j+L+XPnMQzRmXy8J4mkuJ8Jq+geM2fV2U0xuw=;
 b=af7WKhoYw4sMRvu7js+RA8f8eihPiIFyb5D2z6vetJgYkMM4/XpDowCT
 HYklhnT//kfU5OR1WwuIOmOLbNLDXdsof4dz5JB2qHzfuvOMU1dCxt7qS
 ySyi95JdVqIhIp3pGZn05sfHDP2S0ILfSLJbU7aT/SuBMORAJo7TGmqVf
 fBZ2dplpiFxDM6jClTY5DoyJYrlwQ3lMC/L1mSabnd3jg1qCAuBpHCRAo
 YhQ5XGKcOxXyHeH8fA8yXE6998OqqCPJS98vbKVV7bkAbuxU+ZbYPzR7G
 OBxHVnrHz3T/4k1rfGGIms0OZuA3XmZXBIQlxSE6Pp+rtfdoXkOZYQyJp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="235664532"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="235664532"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 14:13:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="483408929"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 14:13:47 -0800
Date: Thu, 3 Feb 2022 14:13:41 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220203221340.GB17816@labuser-Z97X-UD5H>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
 <20220203183823.22890-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220203183823.22890-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915: Fix bigjoiner state copy
 fails
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

On Thu, Feb 03, 2022 at 08:38:15PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We seem to be missing a few things from the bigjoiner state copy.
> Namely hw.mode isn't getting copied (which probably causes PIPESRC
> to be misconfigured), CTM/LUTs aren't getting copied (which could
> cause the pipe to produced incorrect output), and we also forgot
> to copy over the color_mgmt_changed flag so potentially we fail
> to do the actual CTM/LUT programming (assuming we aren't doing
> a full modeset or fastset). Fix it all.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 85dce8a093d4..2006eec6e166 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5827,8 +5827,10 @@ intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
>  	master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
>  
>  	/* No need to copy state if the master state is unchanged */
> -	if (master_crtc_state)
> +	if (master_crtc_state) {
> +		crtc_state->uapi.color_mgmt_changed = master_crtc_state->uapi.color_mgmt_changed;

Since in this function we are copying from uapi_to_hw_state, is this the right function to copy to uapi state ?


>  		intel_crtc_copy_color_blobs(crtc_state, master_crtc_state);
> +	}
>  }
>  
>  static void
> @@ -5890,13 +5892,23 @@ copy_bigjoiner_crtc_state(struct intel_crtc_state *crtc_state,
>  	memset(&crtc_state->hw, 0, sizeof(saved_state->hw));
>  	crtc_state->hw.enable = from_crtc_state->hw.enable;
>  	crtc_state->hw.active = from_crtc_state->hw.active;
> +	crtc_state->hw.mode = from_crtc_state->hw.mode;
>  	crtc_state->hw.pipe_mode = from_crtc_state->hw.pipe_mode;
>  	crtc_state->hw.adjusted_mode = from_crtc_state->hw.adjusted_mode;
> +	crtc_state->hw.scaling_filter = from_crtc_state->hw.scaling_filter;
> +
> +	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
> +				  from_crtc_state->hw.degamma_lut);
> +	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
> +				  from_crtc_state->hw.gamma_lut);
> +	drm_property_replace_blob(&crtc_state->uapi.ctm,
> +				  from_crtc_state->hw.ctm);
>  
>  	/* Some fixups */
>  	crtc_state->uapi.mode_changed = from_crtc_state->uapi.mode_changed;
>  	crtc_state->uapi.connectors_changed = from_crtc_state->uapi.connectors_changed;
>  	crtc_state->uapi.active_changed = from_crtc_state->uapi.active_changed;
> +	crtc_state->uapi.color_mgmt_changed = from_crtc_state->uapi.color_mgmt_changed;
>  	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;
>  	crtc_state->bigjoiner_linked_crtc = to_intel_crtc(from_crtc_state->uapi.crtc);
>  	crtc_state->bigjoiner_slave = true;

This looks good

Manasi

> -- 
> 2.34.1
> 
