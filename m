Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CD47D9C30
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 16:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC5610E9D4;
	Fri, 27 Oct 2023 14:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB5310E9D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 14:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698418370; x=1729954370;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JnG4Dyswy8lgynQKniabdfT7JuNS1uVG3grqJHH9Oxk=;
 b=C+8CqrH9n2iVI7La2AYLyrexq1DvqlMba1E9Onpj8yDN8br0FMOxRaF5
 BBy1XlY4gVHMx1Ukar7zUFFMVGwRsBthYOtPsXz5h/vUauXwzc0KanqOG
 9PedIqIfmQ47RoBOizdMPmg4tgjMJFbi8I719xwNtBWgbDN+rlK7VMubx
 Dfy56Se6vQ1UXVibn22pbPLWE3B/fQ4bN8LnAG8//XkCq7kMIFYFASIpw
 7gl7i2SgvOC3zFUEnufkvR5M28li2DwWBdlC+oC0AvoPISeYpSCQrjKHI
 g/ZYBghr5R66yBmTcD03BIW0sd2lOm9ShVvgE4F2XWyKlf/uVazAKSr04 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="474026581"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="474026581"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 07:52:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="850255422"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="850255422"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 07:52:49 -0700
Date: Fri, 27 Oct 2023 17:52:45 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTvOvXBWEoODupY8@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-26-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-26-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 25/29] drm/i915: Factor out function to
 clear pipe update flags
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

On Tue, Oct 24, 2023 at 04:09:21AM +0300, Imre Deak wrote:
> Factor out a helper to clear the pipe update flags, used by a follow-up
> patch to modeset an MST topology.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>


Was willing to do that myself :)) Spotted when doing bigjoiner related
refactoring, thanks for doing.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 52 ++++++++++----------
>  1 file changed, 27 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index de352d9c43439..22f88389035bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5551,6 +5551,16 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> +static void clear_pipe_update_flags_on_modeset_crtc(struct intel_crtc_state *crtc_state)
> +{
> +	if (!intel_crtc_needs_modeset(crtc_state))
> +		return;
> +
> +	crtc_state->update_pipe = false;
> +	crtc_state->update_m_n = false;
> +	crtc_state->update_lrr = false;
> +}
> +
>  /**
>   * intel_modeset_all_pipes_late - force a full modeset on all pipes
>   * @state: intel atomic state
> @@ -5584,9 +5594,8 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
>  		if (ret)
>  			return ret;
>  
> -		crtc_state->update_pipe = false;
> -		crtc_state->update_m_n = false;
> -		crtc_state->update_lrr = false;
> +		clear_pipe_update_flags_on_modeset_crtc(crtc_state);
> +
>  		crtc_state->update_planes |= crtc_state->active_planes;
>  		crtc_state->async_flip_planes = 0;
>  		crtc_state->do_async_flip = false;
> @@ -5699,13 +5708,13 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
>  	else
>  		new_crtc_state->uapi.mode_changed = false;
>  
> -	if (intel_crtc_needs_modeset(new_crtc_state) ||
> -	    intel_compare_link_m_n(&old_crtc_state->dp_m_n,
> +	clear_pipe_update_flags_on_modeset_crtc(new_crtc_state);
> +
> +	if (intel_compare_link_m_n(&old_crtc_state->dp_m_n,
>  				   &new_crtc_state->dp_m_n))
>  		new_crtc_state->update_m_n = false;
>  
> -	if (intel_crtc_needs_modeset(new_crtc_state) ||
> -	    (old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&
> +	if ((old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&
>  	     old_crtc_state->hw.adjusted_mode.crtc_vblank_end == new_crtc_state->hw.adjusted_mode.crtc_vblank_end))
>  		new_crtc_state->update_lrr = false;
>  
> @@ -6484,12 +6493,9 @@ int intel_atomic_check(struct drm_device *dev,
>  		if (intel_dp_mst_is_slave_trans(new_crtc_state)) {
>  			enum transcoder master = new_crtc_state->mst_master_transcoder;
>  
> -			if (intel_cpu_transcoders_need_modeset(state, BIT(master))) {
> -				new_crtc_state->uapi.mode_changed = true;
> -				new_crtc_state->update_pipe = false;
> -				new_crtc_state->update_m_n = false;
> -				new_crtc_state->update_lrr = false;
> -			}
> +			if (intel_cpu_transcoders_need_modeset(state, BIT(master)))
> +				intel_modeset_pipes_in_mask_early(state, "MST master transcoder",
> +								  BIT(crtc->pipe));
>  		}
>  
>  		if (is_trans_port_sync_mode(new_crtc_state)) {
> @@ -6498,22 +6504,18 @@ int intel_atomic_check(struct drm_device *dev,
>  			if (new_crtc_state->master_transcoder != INVALID_TRANSCODER)
>  				trans |= BIT(new_crtc_state->master_transcoder);
>  
> -			if (intel_cpu_transcoders_need_modeset(state, trans)) {
> -				new_crtc_state->uapi.mode_changed = true;
> -				new_crtc_state->update_pipe = false;
> -				new_crtc_state->update_m_n = false;
> -				new_crtc_state->update_lrr = false;
> -			}
> +			if (intel_cpu_transcoders_need_modeset(state, trans))
> +				intel_modeset_pipes_in_mask_early(state, "port sync",
> +								  BIT(crtc->pipe));
>  		}
>  
>  		if (new_crtc_state->bigjoiner_pipes) {
> -			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes)) {
> -				new_crtc_state->uapi.mode_changed = true;
> -				new_crtc_state->update_pipe = false;
> -				new_crtc_state->update_m_n = false;
> -				new_crtc_state->update_lrr = false;
> -			}
> +			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes))
> +				intel_modeset_pipes_in_mask_early(state, "bigjoiner pipes",
> +								  BIT(crtc->pipe));
>  		}
> +
> +		clear_pipe_update_flags_on_modeset_crtc(new_crtc_state);
>  	}
>  
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -- 
> 2.39.2
> 
