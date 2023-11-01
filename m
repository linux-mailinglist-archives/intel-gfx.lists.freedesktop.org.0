Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F17E7DDF40
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 11:17:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE37D10E6B0;
	Wed,  1 Nov 2023 10:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0E9A10E6B0
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698833853; x=1730369853;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qwPfvXcsb2k19qC9+eTvrJAxjKs3pgx9cgrhqzyZywI=;
 b=ZF6erm3SDb3AGIRfz3ke2AV1hU36viUvDmAmB+AH/SQUBrYTK5XL3ykU
 +XURvQ5CVndW+irXdWRZ4p4EN8CqFSZ07KgeFe8rfVFbUdSjtRoWsnZ/T
 ahkbHvV7Wx/rKsp4qi38+F9h2v3JMTjCkOLh+Yzkrq3zTTA0hctfhhotF
 cIY4Gl/0WVu+OBsRcUay9P0RjsKsjdE0IHiRS5HX31dZE8TDv0VWVbpRa
 bwA4XXw508ys+GtwjY9shBAs0AWLbNIFRf5e0W1AZyuoOgvMRtTsSFDGB
 Y3XkB5P7EhwqARc7elotW1mLguSqQ8IjnxFUwTosa0xWA/Scf/QQXFrQ5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="392330203"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="392330203"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:17:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="754434703"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="754434703"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 01 Nov 2023 03:17:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Nov 2023 12:17:30 +0200
Date: Wed, 1 Nov 2023 12:17:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZUIlurzDLXGD0bvR@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
 <20231030155843.2251023-27-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231030155843.2251023-27-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 26/30] drm/i915: Factor out function to
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

On Mon, Oct 30, 2023 at 05:58:39PM +0200, Imre Deak wrote:
> Factor out a helper to clear the pipe update flags, used by a follow-up
> patch to modeset an MST topology.
> 
> v2:
> - Move the intel_crtc_needs_modeset() check to the callers. (Ville)
> 
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 52 ++++++++++----------
>  1 file changed, 27 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1133c2893bb38..d27afda0cfaa6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5551,6 +5551,14 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> +static void
> +clear_pipe_update_flags_on_modeset_crtc(struct intel_crtc_state *crtc_state)

The 'on_modeset_crtc()' part doesn't make sense anymore.

Hmm. Another idea would be to move the mode_changed=true assignment
here and call this something like intel_crtc_flag_fmodeset(), which
might be a bit more descriptive.

> +{
> +	crtc_state->update_pipe = false;
> +	crtc_state->update_m_n = false;
> +	crtc_state->update_lrr = false;
> +}
> +
>  /**
>   * intel_modeset_all_pipes_late - force a full modeset on all pipes
>   * @state: intel atomic state
> @@ -5584,9 +5592,8 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
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
> @@ -5699,13 +5706,14 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
>  	else
>  		new_crtc_state->uapi.mode_changed = false;
>  
> -	if (intel_crtc_needs_modeset(new_crtc_state) ||
> -	    intel_compare_link_m_n(&old_crtc_state->dp_m_n,
> +	if (intel_crtc_needs_modeset(new_crtc_state))
> +		clear_pipe_update_flags_on_modeset_crtc(new_crtc_state);
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
> @@ -6484,12 +6492,9 @@ int intel_atomic_check(struct drm_device *dev,
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

These changes don't really belong in this refactoring patch.

>  		}
>  
>  		if (is_trans_port_sync_mode(new_crtc_state)) {
> @@ -6498,22 +6503,19 @@ int intel_atomic_check(struct drm_device *dev,
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
> +		if (intel_crtc_needs_modeset(new_crtc_state))
> +			clear_pipe_update_flags_on_modeset_crtc(new_crtc_state);
>  	}
>  
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
