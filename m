Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 022217C55DA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 15:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C7A610E4E4;
	Wed, 11 Oct 2023 13:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF26C10E4E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 13:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697032093; x=1728568093;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/76JK+Wq76j7qyq9JLp9YbN46WaZbyD0JDmYbtGvb9Y=;
 b=K8Z98efMGXxCcZGDnXSIzt/zFjK43Q7xs+h8tXBryFHDi46Q/93dyuB0
 0oqDkTn/Wkn/jxBdjU07tgHbA4ILTwLnligxRJq+ri/kYugg2yN2EkiqC
 75L+RBxQIhjiM71Ocx/zL8+Ng7hlyw1F1WEfDjFNEyZcfBmWVPp7BLKOQ
 fbPmDrfIjE9zwzRAzfNSuXkjF6rvUnKXMdCEgOsISdyAqGB4JZstlR+WP
 wGotA08qVr18UKRLyA31diRsuxvUcPDn1lz27uaexaWx2TX3lF5S5pD4M
 LS2iC7Eh+QwdTRLI/uQTplxuWppGTAZxdU3swMm0B/aFd3n2QxJEsnfkq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="6225499"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; 
   d="scan'208";a="6225499"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 06:48:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="747458240"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="747458240"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 06:48:11 -0700
Date: Wed, 11 Oct 2023 16:48:08 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZSanmMxhi1za30wO@intel.com>
References: <20230907122541.32261-1-ville.syrjala@linux.intel.com>
 <20230907122541.32261-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230907122541.32261-4-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Do plane/etc. updates more
 atomically across pipes
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

On Thu, Sep 07, 2023 at 03:25:41PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Perform all the intel_pre_update_crtc() stuff for all pipes first,
> and only then do the intel_update_crtc() vblank evasion stuff for
> every pipe back to back. This should make it more likely that
> the plane updates from multiple pipes happen on the same frame
> (assuming the pipes are running in sync, eg. due to bigjoiner
> or port sync).

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 26 ++++++++++++++++++--
>  1 file changed, 24 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7c19a0f380ca..f96230232a47 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6711,6 +6711,12 @@ static void intel_commit_modeset_enables(struct intel_atomic_state *state)
>  
>  		intel_enable_crtc(state, crtc);
>  		intel_pre_update_crtc(state, crtc);
> +	}
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		if (!new_crtc_state->hw.active)
> +			continue;
> +
>  		intel_update_crtc(state, crtc);
>  	}
>  }
> @@ -6748,6 +6754,15 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  	 * So first lets enable all pipes that do not need a fullmodeset as
>  	 * those don't have any external dependency.
>  	 */
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		enum pipe pipe = crtc->pipe;
> +
> +		if ((update_pipes & BIT(pipe)) == 0)
> +			continue;
> +
> +		intel_pre_update_crtc(state, crtc);
> +	}
> +
>  	while (update_pipes) {
>  		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  						    new_crtc_state, i) {
> @@ -6763,7 +6778,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  			entries[pipe] = new_crtc_state->wm.skl.ddb;
>  			update_pipes &= ~BIT(pipe);
>  
> -			intel_pre_update_crtc(state, crtc);
>  			intel_update_crtc(state, crtc);
>  
>  			/*
> @@ -6819,6 +6833,15 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  	/*
>  	 * Finally we do the plane updates/etc. for all pipes that got enabled.
>  	 */
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		enum pipe pipe = crtc->pipe;
> +
> +		if ((update_pipes & BIT(pipe)) == 0)
> +			continue;
> +
> +		intel_pre_update_crtc(state, crtc);
> +	}
> +
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		enum pipe pipe = crtc->pipe;
>  
> @@ -6831,7 +6854,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  		entries[pipe] = new_crtc_state->wm.skl.ddb;
>  		update_pipes &= ~BIT(pipe);
>  
> -		intel_pre_update_crtc(state, crtc);
>  		intel_update_crtc(state, crtc);
>  	}
>  
> -- 
> 2.41.0
> 
