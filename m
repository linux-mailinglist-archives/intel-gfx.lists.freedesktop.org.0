Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F479301AA
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 23:39:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 978EE10EDAE;
	Fri, 12 Jul 2024 21:39:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OnSF4gy1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 790B910EDAE;
 Fri, 12 Jul 2024 21:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720820362; x=1752356362;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LqiOT4yvUeFzDX9fqO96xc8ejuhIg0W/eJbYqKEwV3Q=;
 b=OnSF4gy1fcWgscaOqZWLIHNLzza6MDlrRkZ0f8/+KB/nbJmsBs3RUpCq
 Zy/n+l/o/VftYvHIuJVNKHdbhsUMLZSQabBbw+9jBtGU2ZE9AnxNhBjfO
 gKiKfdHSYpe6bT2Z/n97+auDc9cY4gJC88xYhdzgfVKDft7ZcoppnipSW
 DpPxpiB5BtPSdi/9QPo5xXdlZRm9/OG4T5iuLg4th9FOC4LoFnK+WyWXM
 bBDskckXrmiJ/e0sX7Hy2YIy66V7rvaGV+WIzEwZPjjI/DVPXVtB37r/8
 y8h3gCr7dDSLZfQkCGIKJO3K2QJOG5IZeyhM83cUg+5pED/17OSlh8Wae Q==;
X-CSE-ConnectionGUID: 4XC88Jp5R9mQ3H/fOzXIRg==
X-CSE-MsgGUID: 1vLO/2wSQlSdqYAIldjq6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="29671741"
X-IronPort-AV: E=Sophos;i="6.09,204,1716274800"; d="scan'208";a="29671741"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 14:39:22 -0700
X-CSE-ConnectionGUID: lMzUonOfTreDHHo0bnjMkg==
X-CSE-MsgGUID: 3cP+1PGpTOCqG1ojGCyd/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,204,1716274800"; d="scan'208";a="48982631"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Jul 2024 14:39:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 13 Jul 2024 00:39:18 +0300
Date: Sat, 13 Jul 2024 00:39:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/20] drm/{i915,xe}: FBC cleanups + tweak fbdev stolen
 usage
Message-ID: <ZpGihkcPfhNmf6Sj@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
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

On Fri, Jul 05, 2024 at 05:52:34PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Here's an idea for a slightly better heuristic to answer
> the "should fbdev use stolen or not?" question.
> 
> Ended up with a pile of refactoring and cleanups in
> the FBC code as a result.
> 
> Ville Syrjälä (20):
>   drm/i915/fbc: Extract intel_fbc_has_fences()
>   drm/i915/fbc: Convert to intel_display, mostly
>   drm/i915/fbc: s/_intel_fbc_cfb_stride()/intel_fbc_plane_cfb_stride()/
>   drm/i915/fbc: Extract intel_fbc_max_plane_size()
>   drm/i915/fbc: Extract intel_fbc_max_surface_size()
>   drm/i915/fbc:
>     s/intel_fbc_hw_tracking_covers_screen()/intel_fbc_surface_size_ok()/
>   drm/i915/fbc: Adjust g4x+ platform checks
>   drm/i915/fbc: Extract _intel_fbc_cfb_stride()
>   drm/i915/fbc: s/lines/height/
>   drm/i915/fbc: Reoder CFB max height platform checks
>   drm/i915/fbc: Extract intel_fbc_max_cfb_height()
>   drm/i915/fbc: Extract _intel_fbc_cfb_size()
>   drm/i915/fbc: Extract intel_fbc_cfb_cpp()

Pushed all the FBC code refactoring. Thanks for the reviews.

>   drm/i915/fbc: Introduce intel_fbc_preferred_cfb_size()
>   drm/xe/fbdev: Fix BIOS FB vs.s stolen size checke
>   drm/i915/fbdev: Extract intel_fbdev_fb_prefer_stolen()
>   drm/xe/fbdev: Extract intel_fbdev_fb_prefer_stolen()
>   drm/xe/fbdev: Use the same logic for fbdev stolen takever and fresh
>     allocation
>   drm/i915/fbdev: Adjust fbdev stolen mem usage heuristic
>   drm/xe/fbdev: Adjust fbdev stolen mem usage heuristic

Left out the rest for now. This should go in after the more
urgent LNL/etc. stolen issues are sorted.

> 
>  .../drm/i915/display/intel_display_debugfs.c  |   4 +-
>  .../drm/i915/display/intel_display_driver.c   |   4 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 564 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_fbc.h      |  14 +-
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  23 +-
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |   5 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
>  .../drm/i915/display/intel_modeset_setup.c    |   2 +-
>  .../drm/i915/display/intel_plane_initial.c    |  10 +-
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   |  22 +-
>  drivers/gpu/drm/xe/display/xe_plane_initial.c |   8 +-
>  11 files changed, 389 insertions(+), 269 deletions(-)
> 
> -- 
> 2.44.2

-- 
Ville Syrjälä
Intel
