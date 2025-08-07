Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B15BCB1D9C0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 16:14:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 466CD10E863;
	Thu,  7 Aug 2025 14:14:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lwwN9YXH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD13C10E339;
 Thu,  7 Aug 2025 14:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754576055; x=1786112055;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cZ2M8KxBzt8+Cit/wHIhoNgLfh5LS32nfSo+O9Sm9hw=;
 b=lwwN9YXH//cdaHJYV+uFSqzRDUL8tEb9Pa4VkiyeX9QhCMNdYFC8j7TM
 oyK+mGb89x5eZH+5jyaft+YzWeGfgXgAW5+CJSVru2XhcwTpmEzcnZrpm
 Gr6cVfawNEP/QiX8mem5d5wNDjh/HfphrMcTuO2q3hwhJnblju0TIIwwe
 5ZmY9PiFG/sRhoqWdpoAtljyRZ9GFYlfHBd8j2pH1/y5aQ/Rd+aR8e140
 aGIMXEtYn+thPUX6Ij3RFSU6dM0eZvty6Fka/hWXPc+LQhtRRbzJqje4N
 hCWtpeQJl1oXBd9INInlws0eOYTYgBWO/HEMXcVUnzKAturLOCCPQ4U5E Q==;
X-CSE-ConnectionGUID: 60PnO4+iT6SuBhPA5KHqRg==
X-CSE-MsgGUID: 3YfXCjfITV+EoKLalnjyaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="57047806"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="57047806"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 07:14:14 -0700
X-CSE-ConnectionGUID: SCJa/Ce8SNei0lIiEmyA7w==
X-CSE-MsgGUID: VZWemR0MQPOPj1f7uM7Zhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164306228"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.96])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 07:14:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/i915/intel_crtc: Warn and clamp if num_scalers
 exceeds SKL_NUM_SCALERS
In-Reply-To: <20250807132935.1493028-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250807132935.1493028-1-ankit.k.nautiyal@intel.com>
Date: Thu, 07 Aug 2025 17:14:09 +0300
Message-ID: <386b1444b7c696f62c3bf1695c3b8b5c4bdbba4f@intel.com>
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

On Thu, 07 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Add a drm_WARN_ON() in intel_crtc_init() to catch cases where
> crtc->num_scalers exceeds the expected SKL_NUM_SCALERS limit.
>
> This condition should not occur, as the number of scalers per pipe does not
> exceed two for current platforms, making SKL_NUM_SCALERS (2) a safer upper
> limit. However, if a platform ever gains more scalers per pipe than
> SKL_NUM_SCALERS, it could lead to issues when crtc->num_scalers is used to
> iterate over scaler_state->scalers.
>
> To prevent this, warn and clamp the value to SKL_NUM_SCALERS.
>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index a187db6df2d3..e262e686dc2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -317,6 +317,9 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
>  	crtc->pipe = pipe;
>  	crtc->num_scalers = DISPLAY_RUNTIME_INFO(display)->num_scalers[pipe];
>  
> +	if (drm_WARN_ON(display->drm, crtc->num_scalers > SKL_NUM_SCALERS))
> +		crtc->num_scalers = SKL_NUM_SCALERS;
> +
>  	if (DISPLAY_VER(display) >= 9)
>  		primary = skl_universal_plane_create(display, pipe, PLANE_1);
>  	else

-- 
Jani Nikula, Intel
