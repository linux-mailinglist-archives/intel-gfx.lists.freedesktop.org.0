Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B36087188D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 09:49:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE90B10E1D6;
	Tue,  5 Mar 2024 08:49:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LHeGvYbh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F8C610E1D6
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 08:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709628552; x=1741164552;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=786SfpX4BXxL78d6u2xwpim5Ln4gyao23AOW9gKqbXc=;
 b=LHeGvYbh9H3FHlNYJLIs3aJnDx3iF3wXz0dqVlfi0xNNeptlmDPb2GwK
 9TzBvOrJREd4DW73DB9c8OkZ/FGbOC23Mf5+H6JXVbXvxzrJny84mcGYc
 0aw6QX7OcddqCW37ESP8v9SgMWZWfaOoVcwU8QIAOZgr/XqxViwE0C47s
 bZNuMZ6BzWLJLwOpUNy38+Nr5VKJsmX1WCv1+6zd4cNsBEyIrj8ntYWnQ
 6xONmSRFYl6MQUNa2Ww6J3fG/UGHxQpUoypLegu4g7gqlzLcF9JflSNP8
 OYNHL812woKZMwT1AsASynzzfv4VEUOuRVAGDlkDoS0GMiTlACjqQdkKg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="29591189"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="29591189"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:49:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="13892946"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:49:11 -0800
Date: Tue, 5 Mar 2024 10:49:07 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/8] drm/i915: Precompute disable_pipes bitmask in
 intel_commit_modeset_disables()
Message-ID: <Zebcg+brJ4N36VbT@intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
 <20240301143600.1334-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240301143600.1334-6-ville.syrjala@linux.intel.com>
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

On Fri, Mar 01, 2024 at 04:35:57PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Copy the pipe bitmask based approach skl_commit_modeset_enables()
> into intel_commit_modeset_disables(). This avoids doing so many
> duplicated checks in all the loops, and also let's us WARN at the
> end if we screwed up somewhere and forgot to disable some pipe.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 27 ++++++++++++--------
>  1 file changed, 16 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8cc5de31c1dd..2351ee52d16e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6775,9 +6775,10 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
>  
>  static void intel_commit_modeset_disables(struct intel_atomic_state *state)
>  {
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>  	struct intel_crtc *crtc;
> -	u32 handled = 0;
> +	u8 disable_pipes = 0;
>  	int i;
>  
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> @@ -6785,21 +6786,24 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
>  		if (!intel_crtc_needs_modeset(new_crtc_state))
>  			continue;
>  
> +		/*
> +		 * Needs to be done even for pipes
> +		 * that weren't enabled previously.
> +		 */
>  		intel_pre_plane_update(state, crtc);
>  
>  		if (!old_crtc_state->hw.active)
>  			continue;
>  
>  		intel_crtc_disable_planes(state, crtc);
> +
> +		disable_pipes |= BIT(crtc->pipe);
>  	}
>  
>  	/* Only disable port sync and MST slaves */
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
> -		if (!intel_crtc_needs_modeset(new_crtc_state))
> -			continue;
> -
> -		if (!old_crtc_state->hw.active)
> +		if ((disable_pipes & BIT(crtc->pipe)) == 0)
>  			continue;
>  
>  		/* In case of Transcoder port Sync master slave CRTCs can be
> @@ -6814,22 +6818,23 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
>  
>  		intel_old_crtc_state_disables(state, old_crtc_state,
>  					      new_crtc_state, crtc);
> -		handled |= BIT(crtc->pipe);
> +
> +		disable_pipes &= ~BIT(crtc->pipe);
>  	}
>  
>  	/* Disable everything else left on */
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
> -		if (!intel_crtc_needs_modeset(new_crtc_state) ||
> -		    (handled & BIT(crtc->pipe)))
> -			continue;
> -
> -		if (!old_crtc_state->hw.active)
> +		if ((disable_pipes & BIT(crtc->pipe)) == 0)
>  			continue;
>  
>  		intel_old_crtc_state_disables(state, old_crtc_state,
>  					      new_crtc_state, crtc);
> +
> +		disable_pipes &= ~BIT(crtc->pipe);
>  	}
> +
> +	drm_WARN_ON(&i915->drm, disable_pipes);
>  }
>  
>  static void intel_commit_modeset_enables(struct intel_atomic_state *state)
> -- 
> 2.43.0
> 
