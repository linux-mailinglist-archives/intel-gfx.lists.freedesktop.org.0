Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD881BE8874
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 14:13:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED89710EBCF;
	Fri, 17 Oct 2025 12:13:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ULQEzrGk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F26B10EBCD;
 Fri, 17 Oct 2025 12:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760703204; x=1792239204;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6801RoHQCOAsOLOS5HjZP5I6QbORXRyzW3dz0hYTyzU=;
 b=ULQEzrGkVvYIdjV0jJBty0IG0VDro4O4FpyEC4P0yiOBNHC5JMDH+YPb
 aamjJbN4/KWeqc7MKPiC5oj5Je1HBsYYkjQZCmNIwndiueRrLnx64UnXD
 2W6VyjCoG/JGhQdFvIe9tykAjQj82enYmjV06xkMs6euy2K/2UAaeX5bK
 F9CFmsMbCtX2GjPBn3fqk4XyI7w1XeI7hRjy1a9Yy2oIMirdC9r+q1vrE
 cTKJfTW7QvMJ0Yvpno4bCKPuXIB2mPCBNJdERo4L9oQML3jhdmNN+wO7p
 nqCBDeg5bsWIxZ4CXYamlvqsyaGYewBxpdYKTM5WfHqh+gdPGsiAkAaH/ Q==;
X-CSE-ConnectionGUID: PPTgnJ03QHqmkNOc2tjN+g==
X-CSE-MsgGUID: w1Ao2TlAT9G8zLZrOoZKag==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="74257011"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="74257011"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:13:24 -0700
X-CSE-ConnectionGUID: 6V39nP8vRiSR3WSfWOpIww==
X-CSE-MsgGUID: 89Oahgw9TNCxKc2LUQnfQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="206432804"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 05:13:22 -0700
Date: Fri, 17 Oct 2025 15:13:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915/vrr: Use optimized guardband whenever VRR
 TG is active
Message-ID: <aPIy3zwAwJxA0PtA@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251017050202.2211985-6-ankit.k.nautiyal@intel.com>
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

On Fri, Oct 17, 2025 at 10:32:02AM +0530, Ankit Nautiyal wrote:
> Currently the guardband is optimized only for platforms where the
> VRR timing generator is always ON.
> 
> Extend the usage of optimized guardband to other platforms only when the
> VRR is enabled.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index cd7bed358984..eb5aa0d7fc49 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -483,7 +483,7 @@ static bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crt
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		return false;
>  
> -	return intel_vrr_always_use_vrr_tg(display);
> +	return intel_vrr_always_use_vrr_tg(display) || crtc_state->vrr.enable;

I was going to say this is fine, and I guess it kinda is because
intel_pipe_config_compare() will allow fastsets with a change in
guardband on !intel_vrr_always_use_vrr_tg() platforms. But I
don't think there's any real reason to compute the guardband
differently between vrr.enable==true vs. vrr.enable==false.

So I'm thinking we should just 'return true' unconditionally
here.

>  }
>  
>  void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
