Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 906318718C1
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 09:59:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE5B910E2F8;
	Tue,  5 Mar 2024 08:59:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G+/G0QcG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6260A10E2F8
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 08:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709629190; x=1741165190;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2xdRYvXkP/NjajEdYIATjdPr7gfwiYyFqN9tADwi720=;
 b=G+/G0QcGIYUXamHo9Tub9fhVCYBb+66qHngSu9eqHZ3TtVbVwWImaUeP
 dI4Qj3I6/xcOhcEwoZ4HSRXNjsUkypIM2ilAcoWQlWpT0DVQwwYC8I8kH
 4+zbKW3VxRbEJA/hqDMyNV8w+DqhsPfQa5UZbKxKEW4cB/HN+zXmMgzDQ
 44bXFDtYQyj39Iq/ypRqcybqYR/ZnDm9Uf9hff2adsL4Tc8dQkMHGXemy
 6woeBT6jKxc+cUpJB6dpfl+/KObbM5MvWIYb7HTzDqi0VGWmWpMSjHWNG
 NDh8mn5ZeW09Fq1PiK5l9e1YqokjeggNNQvSIjP3J7faOZQ0MDsGlgxf1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4029273"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="4029273"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:59:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="46831839"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:59:48 -0800
Date: Tue, 5 Mar 2024 10:59:45 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 7/8] drm/i915: Simplify intel_old_crtc_state_disables()
 calling convention
Message-ID: <ZebfAYau+RAbZ7uy@intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
 <20240301143600.1334-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240301143600.1334-8-ville.syrjala@linux.intel.com>
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

On Fri, Mar 01, 2024 at 04:35:59PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Stop passing in so much redundant stuff to
> intel_old_crtc_state_disables(). Top level atomic state + crtc
> is all we need.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 01d7e91cb1bc..1df3923cc30d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6753,11 +6753,11 @@ static void intel_update_crtc(struct intel_atomic_state *state,
>  }
>  
>  static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
> -					  struct intel_crtc_state *old_crtc_state,
> -					  struct intel_crtc_state *new_crtc_state,
>  					  struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	const struct intel_crtc_state *new_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
>  
>  	/*
>  	 * We need to disable pipe CRC before disabling the pipe,
> @@ -6776,7 +6776,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
>  static void intel_commit_modeset_disables(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> -	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> +	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>  	struct intel_crtc *crtc;
>  	u8 disable_pipes = 0;
>  	int i;
> @@ -6806,8 +6806,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
>  	}
>  
>  	/* Only disable port sync and MST slaves */
> -	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -					    new_crtc_state, i) {
> +	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i) {
>  		if ((disable_pipes & BIT(crtc->pipe)) == 0)
>  			continue;
>  
> @@ -6821,20 +6820,17 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
>  		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
>  			continue;
>  
> -		intel_old_crtc_state_disables(state, old_crtc_state,
> -					      new_crtc_state, crtc);
> +		intel_old_crtc_state_disables(state, crtc);
>  
>  		disable_pipes &= ~BIT(crtc->pipe);
>  	}
>  
>  	/* Disable everything else left on */
> -	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -					    new_crtc_state, i) {
> +	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i) {
>  		if ((disable_pipes & BIT(crtc->pipe)) == 0)
>  			continue;
>  
> -		intel_old_crtc_state_disables(state, old_crtc_state,
> -					      new_crtc_state, crtc);
> +		intel_old_crtc_state_disables(state, crtc);
>  
>  		disable_pipes &= ~BIT(crtc->pipe);
>  	}
> -- 
> 2.43.0
> 
