Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A25F4A5A1AB
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 19:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31B4010E4A4;
	Mon, 10 Mar 2025 18:08:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RaX0Y9Be";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5712810E4A6;
 Mon, 10 Mar 2025 18:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741630097; x=1773166097;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LFRlX31QAkfp1tkHztVQcDvYauBUwvqRTFbSnKMTwZA=;
 b=RaX0Y9BeyK1x4his6iLcl2N+TbBSRyKkbAfzmeXWlakwyCCYCltVgdds
 DTpja3OOJCNf2k0J2LfVaHmrAeQPAM5gW9G4OFfH/fzZeZ/Rd23/JwVMt
 HMjtYhW2U3eoBsWgCZjeRo6HwrljVij68gUMacPnWZTOULQkhvIXfzSL5
 cvgvFcxx1JOe3gd6Qyn625inZF8pg0I/8rOnqLl2mstGovsJ3ImY5Wam9
 XM07PmiIO4HrRonkaftRjyxRdVnJRJl+2Q0RjpX1hrEHZ2x8Q5JxmLO4F
 MoUxYX22LKoqq6gHOKB2biSF5BEZ3iE4ieY8mFK2QEZSfVXxr2bY0nuzY Q==;
X-CSE-ConnectionGUID: tmWBcFurRciPU5FqJXV8nA==
X-CSE-MsgGUID: AV78WsNzQTimXoN6xmPhgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="41887291"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="41887291"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 11:08:16 -0700
X-CSE-ConnectionGUID: gmVYILmlRHehzeSBCjc+yg==
X-CSE-MsgGUID: jxQYSL9OTeiOn/IMgzxhUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="125292850"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 10 Mar 2025 11:08:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Mar 2025 20:08:13 +0200
Date: Mon, 10 Mar 2025 20:08:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 17/21] drm/i915/display: Use fixed rr timings in
 intel_set_transcoder_timings_lrr()
Message-ID: <Z88qjS9p3Gotal9l@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
 <20250310121615.1077079-18-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250310121615.1077079-18-ankit.k.nautiyal@intel.com>
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

On Mon, Mar 10, 2025 at 05:46:11PM +0530, Ankit Nautiyal wrote:
> Update the intel_set_transcoder_timings_lrr() function to use
> fixed refresh rate timings.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 1 -
>  drivers/gpu/drm/i915/display/intel_vrr.h     | 1 +
>  3 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4a0083fdfb05..7ac504885869 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2768,6 +2768,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
> +
> +	intel_vrr_set_fixed_rr_timings(crtc_state);
> +	intel_vrr_transcoder_enable(crtc_state);
>  }
>  
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 2ebbd610c15d..57e9aef02b7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -284,7 +284,6 @@ int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
>  	return intel_vrr_fixed_rr_vtotal(crtc_state);
>  }
>  
> -static
>  void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index c4ee8a758e19..d857633bc02c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -37,5 +37,6 @@ int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_VRR_H__ */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
