Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE2E7E597B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 15:50:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2AEE10E794;
	Wed,  8 Nov 2023 14:50:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 382C010E796
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 14:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699455008; x=1730991008;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DsEahN0xGZTfvxNTzq1Vhg+HIJbYYICjRbS+nOC+f1M=;
 b=n1gczVLIvD9HTHJTmtlgF8CWpf94mmOintLMMvwWryIpPVoJBYJY/QyS
 uivMM+MisjTYpWWhDn1lvxQv8rdxjcqgvG7xLG5foV6Aq2Cv86MtwZDr/
 AiXUNMvLssF2FvpLjxAd45tg2LHK7RbGof5C4fHw5v3fTfck8IZcjkArO
 srQnqdtp5uDky8sdb9rzDEYwebaQYfIRG2zvOzGkQ7IR6v471KCIByZp7
 3RTPJZu4EiIDyAcx5vUbAt3PImVVDb1MMOrQYkf4ChKKofn++1Gp+9zE9
 HoKN4nHOTqJ2Txw89Dej+aPffFZ+IhUZVbCh378CeOXkDPiHYKgNWRVn9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="389586502"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="389586502"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 06:50:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="886686341"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="886686341"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 06:50:06 -0800
Date: Wed, 8 Nov 2023 16:49:58 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZUugFqcURIU5bftX@intel.com>
References: <20230907122541.32261-1-ville.syrjala@linux.intel.com>
 <20230907122541.32261-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230907122541.32261-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Split intel_update_crtc()
 into two parts
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

On Thu, Sep 07, 2023 at 03:25:40PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Split intel_update_crtc() into two parts such that the first
> part performs all the non-vblank evasion preparatory stuff,
> and the second part just does the vblank evasion stuff.
> 
> For now we just call these back to back so that there is
> no funcitonal change.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 526f38b502be..7c19a0f380ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6542,8 +6542,8 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
>  	intel_crtc_enable_pipe_crc(crtc);
>  }
>  
> -static void intel_update_crtc(struct intel_atomic_state *state,
> -			      struct intel_crtc *crtc)
> +static void intel_pre_update_crtc(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	const struct intel_crtc_state *old_crtc_state =
> @@ -6588,6 +6588,15 @@ static void intel_update_crtc(struct intel_atomic_state *state,
>  		intel_color_commit_noarm(new_crtc_state);
>  
>  	intel_crtc_planes_update_noarm(state, crtc);
> +}
> +
> +static void intel_update_crtc(struct intel_atomic_state *state,
> +			      struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *old_crtc_state =
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	struct intel_crtc_state *new_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  
>  	/* Perform vblank evasion around commit operation */
>  	intel_pipe_update_start(new_crtc_state);
> @@ -6701,6 +6710,7 @@ static void intel_commit_modeset_enables(struct intel_atomic_state *state)
>  			continue;
>  
>  		intel_enable_crtc(state, crtc);
> +		intel_pre_update_crtc(state, crtc);
>  		intel_update_crtc(state, crtc);
>  	}
>  }
> @@ -6753,6 +6763,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  			entries[pipe] = new_crtc_state->wm.skl.ddb;
>  			update_pipes &= ~BIT(pipe);
>  
> +			intel_pre_update_crtc(state, crtc);
>  			intel_update_crtc(state, crtc);
>  
>  			/*
> @@ -6820,6 +6831,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  		entries[pipe] = new_crtc_state->wm.skl.ddb;
>  		update_pipes &= ~BIT(pipe);
>  
> +		intel_pre_update_crtc(state, crtc);
>  		intel_update_crtc(state, crtc);
>  	}
>  
> -- 
> 2.41.0
> 
