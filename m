Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C95969E15
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8664510E586;
	Tue,  3 Sep 2024 12:45:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BcOg3VoQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A0D810E586
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725367529; x=1756903529;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vVTAsFC5ELiN+MLRUnXzghMNwTvg7TbwgNB4QQ6CQms=;
 b=BcOg3VoQ4FLqwdUjDX/Zs1l8YsOQjap1VwmZqmOmzeCx8VM271fmIYgb
 NsamAkg+iY8pC6xQtx40h6vuv2QGPh0b9WtuPwH9nnAfEeYFRXbdp1NXx
 bBksBkHmYM1nGZMByH3ec5Zkyo1GDnUgBMPu/GbF9L8GR3ymd2XJMdWqJ
 P3jeNXXyDAE4yjZ5NBQ1CzgoRQgpMMUNmOwTmgyEl38LQ5r2+1NcB4zuw
 g8cwTS/nosSyzBegHP2XvFSppU4/kdIoxgWDhMjL5lVAIES+Zl2xJel+4
 RQYa81mqszmIL9bZV8xV0E1rnpgLca389G5nG4UPIagEhZcpBdAgzrxnw A==;
X-CSE-ConnectionGUID: 6qSUnmxERtOX6pgEeyUuvw==
X-CSE-MsgGUID: 7Zb4SyVRR+qf5JLiQNvchw==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="24080166"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="24080166"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 05:45:28 -0700
X-CSE-ConnectionGUID: qsjhTmymSuOei5M5zTmlHQ==
X-CSE-MsgGUID: hNM68HIbT76iDNfovdFJpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="64919731"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Sep 2024 05:45:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Sep 2024 15:45:24 +0300
Date: Tue, 3 Sep 2024 15:45:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 06/13] drm/i915/vrr: Compute vrr vsync if platforms
 support it
Message-ID: <ZtcE5CS-TwWxcgxV@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
 <20240902080635.2946858-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240902080635.2946858-7-ankit.k.nautiyal@intel.com>
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

On Mon, Sep 02, 2024 at 01:36:27PM +0530, Ankit Nautiyal wrote:
> Previously, TRANS_VRR_VSYNC was exclusively used for panels with
> adaptive-sync SDP support in VRR scenarios. However, to drive fixed refresh
> rates using the VRR Timing generator, we now need to program
> TRANS_VRR_VSYNC regardless of adaptive sync SDP support. Therefore, let's
> remove the adaptive sync SDP check and program TRANS_VRR_VSYNC for
> platforms where VRR timing generator is used.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 9a51f5bac307..03af50b9f9eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -231,7 +231,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  	}
>  
> -	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
> +	if (HAS_AS_SDP(display) && crtc_state->vrr.enable) {

That vrr.enable check should be nuked as well. We are supposed to
compute the full state whether VRR is actually enabled or not.

>  		crtc_state->vrr.vsync_start =
>  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>  			 crtc_state->hw.adjusted_mode.vsync_start);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
