Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B269BE8D4F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 15:26:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AED5310EBF0;
	Fri, 17 Oct 2025 13:26:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a4qR/USj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E7E10EBF0;
 Fri, 17 Oct 2025 13:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760707592; x=1792243592;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mfIJLq2RYRyQJi/I/BqBdaWZ/tysD3D2wG2gCMKP40I=;
 b=a4qR/USjuueVFpJqg19dZGC5RCmSmMQb1u0Mmsg47M3DnD28qsyzL7JT
 OW3qA5rPgZ/HtMZdW+J37MPufT/t/DW/0R1Ea5cbygl/vRH99aZfjSoWG
 H+X8zNMVGt3tt5WVMpM0KFn198oyHaZVLIYPAZBbaUg3Vhik1MKUcJ/OV
 e4OmgrAcUmhki0Jr9yZzIqlLsKE6dI129nE+RDELcIHC2T1wq2ao5x4Qb
 sSGmM4+PcaqIY4jgnFAoMg6yPY1lEn2hFV7EpSJy5FX+vlaWz7tdRIcKV
 FujmZnLD3KCbbkFGmxGnx/B3gTOi+L928T/A5I1RDRIMuj5ZlNRBfMY4n g==;
X-CSE-ConnectionGUID: OPeKkv3vQfScQY37jKiozg==
X-CSE-MsgGUID: EjInrnZySNmykkmgmEV77Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="63064078"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="63064078"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 06:26:31 -0700
X-CSE-ConnectionGUID: HKHwRIYcRLmcbUwJzyAr3Q==
X-CSE-MsgGUID: IpIBf20ZQQihKEtQYr9weQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="181924297"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 06:26:30 -0700
Date: Fri, 17 Oct 2025 16:26:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [PATCH 5/5] drm/i915/vrr: Use optimized guardband whenever VRR
 TG is active
Message-ID: <aPJEAzXnYI1V1ARg@intel.com>
References: <20251017123504.2247954-1-ankit.k.nautiyal@intel.com>
 <20251017123504.2247954-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251017123504.2247954-6-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Oct 17, 2025 at 06:05:04PM +0530, Ankit Nautiyal wrote:
> Currently the guardband is optimized only for platforms where the
> VRR timing generator is always ON.
> 
> Extend the usage of optimized guardband to all VRR supporting platforms.
> 
> v2: Drop check for `crtc_state->vrr.enable` and just return true
>     unconditionally from intel_vrr_use_optimized_guardband(). (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3da84a247193..92fb72b56f16 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -468,8 +468,6 @@ int intel_vrr_compute_optimized_guardband(struct intel_crtc_state *crtc_state)
>  
>  static bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_display *display = to_intel_display(crtc_state);
> -
>  	/*
>  	 * #TODO: Enable optimized guardband for HDMI
>  	 * For HDMI lot of infoframes are transmitted a line or two after vsync.
> @@ -479,7 +477,7 @@ static bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crt
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		return false;
>  
> -	return intel_vrr_always_use_vrr_tg(display);
> +	return true;
>  }
>  
>  void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
