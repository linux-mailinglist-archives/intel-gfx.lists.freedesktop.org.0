Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 087B59BC8AD
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 10:09:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A428E10E40C;
	Tue,  5 Nov 2024 09:09:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ye8bv/Jc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 443B710E3FE;
 Tue,  5 Nov 2024 09:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730797772; x=1762333772;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rHTgjJRc6ooVo+mhUoFuiOIZ7Y8TMzzzJ0y/yoRtoBc=;
 b=Ye8bv/JcH3AlTnpQTIBk9J7u/TSKMZmG1aWKxrYp21cUReH676+1boZu
 vY5cAWtJU42epq1dJSEIRYXxYwzOT3PZLgMQ6id8eDu663spTqStijX3c
 wkakT3XaOQNxVjFzErwgYHcjz1f2Lh/16IX9i+Eeo+03PDZhCHd0xDg95
 bCI1quBCsc5culUAitqCl4FVp7+xMCkCIBi9ViOI482uf8Lp3grEyoY82
 vcpe4I503l5N3xY0nljY3Q01ef/TDfuw2JXbnoHQSwqrkLKUldHnt4L3f
 8W+X/Z0Iwbkdi9okBxPtl+WXFPsgn/cQvfTjMTv/SjTeZxHjC2vMVCYjI g==;
X-CSE-ConnectionGUID: cfVdhryWQuCVW8MKjqt3Rw==
X-CSE-MsgGUID: 8t5+5U3eTcyxHV1F+dC++w==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="48039017"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="48039017"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 01:09:32 -0800
X-CSE-ConnectionGUID: kOpkNVxJTAGy0IHfCj+swQ==
X-CSE-MsgGUID: C2bLzkE4So+cQAgORh8zkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="87880608"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.82])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 01:09:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 5/8] drm/i915/display: update skl_plane_wm_equals to use
 intel_display
In-Reply-To: <20241105071600.235338-6-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
 <20241105071600.235338-6-vinod.govindapillai@intel.com>
Date: Tue, 05 Nov 2024 11:09:27 +0200
Message-ID: <87plnagi7s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 05 Nov 2024, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Use intel_display object instead of struct drm_i915_private in
> skl_plane_wm_equals(). This is in preparation for the rest of
> the patches in this series where hw support for the minimum and
> interim ddb allocations for async flip is added
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 2018abc35c8a..a01b1dc01348 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2384,13 +2384,13 @@ static bool skl_wm_level_equals(const struct skl_wm_level *l1,
>  		l1->blocks == l2->blocks;
>  }
>  
> -static bool skl_plane_wm_equals(struct drm_i915_private *i915,
> +static bool skl_plane_wm_equals(struct intel_display *display,
>  				const struct skl_plane_wm *wm1,
>  				const struct skl_plane_wm *wm2)
>  {
>  	int level;
>  
> -	for (level = 0; level < i915->display.wm.num_levels; level++) {
> +	for (level = 0; level < display->wm.num_levels; level++) {
>  		/*
>  		 * We don't check uv_wm as the hardware doesn't actually
>  		 * use it. It only gets used for calculating the required
> @@ -2650,7 +2650,7 @@ skl_print_wm_changes(struct intel_atomic_state *state)
>  			old_wm = &old_pipe_wm->planes[plane_id];
>  			new_wm = &new_pipe_wm->planes[plane_id];
>  
> -			if (skl_plane_wm_equals(i915, old_wm, new_wm))
> +			if (skl_plane_wm_equals(&i915->display, old_wm, new_wm))

Please don't use "&i915->display" inline.c

>  				continue;
>  
>  			drm_dbg_kms(&i915->drm,

-- 
Jani Nikula, Intel
