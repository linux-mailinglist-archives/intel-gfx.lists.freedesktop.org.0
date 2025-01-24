Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3116A1BDB6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 22:01:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B656810E00F;
	Fri, 24 Jan 2025 21:01:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SKraM+fH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A53910E04A;
 Fri, 24 Jan 2025 21:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737752468; x=1769288468;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+HDELWvEf5Vzcp+W3rbLIiJdsWCCRCb7sMIucOuCQOw=;
 b=SKraM+fHA1T1S6MeWNceZMO/BHQIRS8f51JhZkxiJznzL6eiZMjMH1im
 yMsbS7w1ZjHr7sgRBAKKrlJK7Y65bgtfSZFk3L0ZGpPxwzWA3CJXL/Wov
 3WJhAWzG9eo2ElZNUA70wKto4WolL8yF/5enjWzU/YThnZBTjpKcxq8bX
 2m0Da3DkUfxjfHEwzdDLi9PDcsxNwVTEgqNOfFB9QVVv69X/1GF19Qj9i
 qjRHuHJVRMH2Ht6V7+AYgowSs1547XauSmn6+UgOHKE7Jk6JhyPi0jh4G
 IyBbnChnY7fXE0qXx2xk4pNHHf4J8DlrF2yA4B+N7cDZAoGXT+Yn5uo5o A==;
X-CSE-ConnectionGUID: bpwn473dQdWffWsoWDmVTQ==
X-CSE-MsgGUID: 2TacAzU6RRSidDlK0C/kdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="37501679"
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="37501679"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 13:01:08 -0800
X-CSE-ConnectionGUID: aon1v8q5QV6isHxdMn38CQ==
X-CSE-MsgGUID: xmr9Tit8Tc+3jPi8/6NIow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="107989976"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 13:01:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 23:01:04 +0200
Date: Fri, 24 Jan 2025 23:01:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 24/35] drm/i915/vrr: Adjust Vtotal for MSA for fixed
 timings
Message-ID: <Z5P_kL0H97Nynnbw@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-25-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124150020.2271747-25-ankit.k.nautiyal@intel.com>
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

On Fri, Jan 24, 2025 at 08:30:09PM +0530, Ankit Nautiyal wrote:
> DP sink uses MSA timings for the fixed refresh rate mode.
> For using VRR timing generator for fixed refresh rate mode, the HW prepares
> the Vtotal for the MSA from the VMAX register. Since the MSA Vtotal is
> one-based while Vmax is zero-based we need to take care of this while
> setting Vtotal value for the fixed refresh rate mode.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index f485c3e35d68..5a1b0d61c483 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -264,6 +264,18 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin
>  	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  }
>  
> +static
> +int adjust_vtotal_for_msa(int vtotal)
> +{
> +	/*
> +	 * DP sink uses MSA timings for the fixed refresh rate mode.
> +	 * The HW prepares the Vtotal for the MSA from the VMAX register.
> +	 * Since the MSA Vtotal is one-based while Vmax is zero-based we need to
> +	 * take care of this while setting Vtotal value.

Hang on. If the hardware is broken enough that it forgets to put the +1
into MSA then that means we should be increasing vmax if we want the
proper number to appear there. But that would actually just increase
the length of the frame and the MSA would still be off by one.

> +	 */
> +	return vtotal - 1;
> +}
> +
>  static
>  int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
>  {
> @@ -274,7 +286,7 @@ int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
>  	 * For this set the vmin as crtc_vtotal. With this we never need to
>  	 * change anything to do with the guardband.
>  	 */
> -	return crtc_state->hw.adjusted_mode.crtc_vtotal;
> +	return adjust_vtotal_for_msa(crtc_state->hw.adjusted_mode.crtc_vtotal);
>  }
>  
>  static
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
