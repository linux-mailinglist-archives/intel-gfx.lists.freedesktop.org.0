Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1612A46193
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 15:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7829710E844;
	Wed, 26 Feb 2025 14:01:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dh4LGf3+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 391CD10E83A;
 Wed, 26 Feb 2025 14:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740578512; x=1772114512;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=C/Tifu6EhzrMgAdgPFclcVB4OLJqHR8ERWWaCNSzcb0=;
 b=Dh4LGf3+wDyy+TKOupjnMx9okMvJnqSqt+SLBN0f+WEXsNVsLkGBICuY
 4CXX/TDLEy1oxSkfnwxvL6cUoctfOtkNJLNEogv59J1oW5ajuBGO1ohqM
 Dz7HhkFhmA3fU5Mz+CaTZ7KiwfDv57Ny3AfY3ASWf0Vzy7aa/jl63hSAA
 GXWyNev3jtnOgkxzUiyxm+GBL7hkQG0BrlcSNOKeAsBa4nGB4l+AViXId
 vdAN1kxTP9NOf284Up2WcxF+CyQNh75NQd7InExnkacqqp8yBI2iDGbae
 EybTZPQskts7RyMSQ96DqyncWpGlZ1Rc0rO37lG+I33e5zZBAKbHuuaZO Q==;
X-CSE-ConnectionGUID: kQ/z7ePRT/iOaMlTlmeo9w==
X-CSE-MsgGUID: KopQtD+URMio8bQdaLEFDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52813945"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52813945"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 06:01:52 -0800
X-CSE-ConnectionGUID: shBzL9F3TwyazmRBX3MEYg==
X-CSE-MsgGUID: lS2toDExQa+gpY+W9nBwMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121956961"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 06:01:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 16:01:48 +0200
Date: Wed, 26 Feb 2025 16:01:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 15/20] drm/i915/vrr: Always set vrr vmax/vmin/flipline in
 vrr_{enable/disable}
Message-ID: <Z78ezCygLCVlL4yY@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-16-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-16-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:12AM +0530, Ankit Nautiyal wrote:
> For platforms for which vrr timing generator is always set, VRR_CTL
> enable bit does not need to toggle, so modify the vrr_{enable/disable}
> for this.
> At the moment the helper intel_vrr_always_use_vrr_tg() return false for
> all cases. This will be set later when all other bits are in place.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 40 ++++++++++++++++--------
>  1 file changed, 27 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 024c3014670a..11b7edbdb116 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -549,6 +549,16 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>  	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
>  }
>  
> +static
> +bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
> +{
> +	if (!HAS_VRR(display))
> +		return false;
> +
> +	/* #TODO return true for platforms supporting fixed_rr */
> +	return false;
> +}
> +
>  void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> @@ -570,13 +580,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>  		       TRANS_PUSH_EN);
>  
> -	if (crtc_state->cmrr.enable) {
> -		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> -			       trans_vrr_ctl(crtc_state));
> -	} else {
> -		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +	if (!intel_vrr_always_use_vrr_tg(display)) {
> +		if (crtc_state->cmrr.enable) {
> +			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> +				       trans_vrr_ctl(crtc_state));
> +		} else {
> +			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +		}
>  	}
>  }
>  
> @@ -591,12 +603,14 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	if (intel_crtc_is_joiner_secondary(old_crtc_state))
>  		return;
>  
> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -		       trans_vrr_ctl(old_crtc_state));
> -	intel_de_wait_for_clear(display,
> -				TRANS_VRR_STATUS(display, cpu_transcoder),
> -				VRR_STATUS_VRR_EN_LIVE, 1000);
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +	if (!intel_vrr_always_use_vrr_tg(display)) {
> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +			       trans_vrr_ctl(old_crtc_state));
> +		intel_de_wait_for_clear(display,
> +					TRANS_VRR_STATUS(display, cpu_transcoder),
> +					VRR_STATUS_VRR_EN_LIVE, 1000);
> +		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +	}
>  
>  	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>  }
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
