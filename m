Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAEA8718BB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 09:59:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3757A10E0EC;
	Tue,  5 Mar 2024 08:59:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FN/ATnDt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C11E10E0EC
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 08:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709629138; x=1741165138;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=q0tYqbm+Zw4JKRcwcPOd6Am86IuYgzTCz5p1Q2B5oTc=;
 b=FN/ATnDtihwv+BBTtzcCGi5NPAkyWXU2QUOiEKCXZlykbG5Zb8xwZ8zb
 5kpsXr5SH1AqMgIl/Q0xEPLuyt4Ejy1/iE2iwd/a2oxVTMBHpQATua0AQ
 9tJP9rp57i1Q5Y09SlOCGhTiXYzJrd1DdyVw+zRq9tVtROu/Co3om2TRN
 12Xkn6oNqNJuHfN9ET7K2EMCdslWEuE12e7gTJDp6xykwLZ8Zqqa1jl9d
 EXSgs+yUp5pi+CS6Pxzr0elCmdQBUrd+o7hMnzAq7i1b7GLmp7TXaUxRz
 eSJoj6vuddMOaMbK0LZqkw8wCH/+Yqt1pHgLkFbQmW3701qlJMWa6phqQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7935893"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="7935893"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:58:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9369956"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:58:57 -0800
Date: Tue, 5 Mar 2024 10:58:53 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/8] drm/i915: Disable planes more atomically during
 modesets
Message-ID: <ZebezWuOZNmkzqhb@intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
 <20240301143600.1334-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240301143600.1334-7-ville.syrjala@linux.intel.com>
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

On Fri, Mar 01, 2024 at 04:35:58PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Follow in the footsteps of commit c610e841f19d ("drm/i915:
> Do plane/etc. updates more atomically across pipes") and
> do the plane disables back to back for all pipes also when
> we are disabling pipes.
> 
> This should provide for a potentially more atomic user
> experience, which might be especially nice when using
> joiner or tiled displays.

Okay, so the difference is that previously we did call 
intel_pre_plane_update/intel_crtc_disable_planes per crtc, but
now we first call first intel_pre_plane_update for each crtc
and then call intel_crtc_disable_planes per crtc.

So in cases when there are some cross pipe dependencies, that might be
more proper way. Just to clarify that I understood this right.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 2351ee52d16e..01d7e91cb1bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6795,11 +6795,16 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
>  		if (!old_crtc_state->hw.active)
>  			continue;
>  
> -		intel_crtc_disable_planes(state, crtc);
> -
>  		disable_pipes |= BIT(crtc->pipe);
>  	}
>  
> +	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i) {
> +		if ((disable_pipes & BIT(crtc->pipe)) == 0)
> +			continue;
> +
> +		intel_crtc_disable_planes(state, crtc);
> +	}
> +
>  	/* Only disable port sync and MST slaves */
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
> -- 
> 2.43.0
> 
