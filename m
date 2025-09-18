Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B594B86410
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E9D10E27B;
	Thu, 18 Sep 2025 17:38:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dzxhJE0d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BEB710E27B;
 Thu, 18 Sep 2025 17:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758217114; x=1789753114;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SMTe+v1KVgRSvMcixiFkZL74nkWrsLhjLyCRr0VZHUg=;
 b=dzxhJE0duyqk+pxzGiqEy3HSRZtTNSqGrfgrRp3dmheeIXoJ3DXwE6uQ
 43xM0MMyPNJNt1IZ0Bm7tqWNL3b451W2um9K5KxtQdIV48LiitUN/ymb+
 8PxhImGcv6VRgkMtlEIBS3D8oTExVJJMBSqnBD8C1jyjPDO7t4e9UgC5R
 NZLqYCnDWa3YufpfAune6cOU+6OURgt21azW9jFEcJ4k6yohI9PkrLidv
 ydTuF9zBW7iSl6gBj/auAg15vXLX7SNQLifB29MoWUulC0l9VAQ1h8Imt
 UBWeuFXQcn9uWNpV+gz0VV8GfxLtFxPAlByDcal4ewBY+tqHMgadLuigA A==;
X-CSE-ConnectionGUID: 71ASNNVPQVS1+jewy8VzgQ==
X-CSE-MsgGUID: M31SLOJiQdOfIdU0I3lEOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="64196312"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="64196312"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:38:34 -0700
X-CSE-ConnectionGUID: ATL9cixwRASPoFt3zhCkCg==
X-CSE-MsgGUID: nnOSntn/RV63kKmy7Px1kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="175676453"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:38:32 -0700
Date: Thu, 18 Sep 2025 20:38:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 02/10] drm/i915/fbdev: make intel_framebuffer_create()
 error return handling explicit
Message-ID: <aMxDlYYsBXsibtiS@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
 <17631db227d527d6c67f5d6b67adec1ff8dc6f8d.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <17631db227d527d6c67f5d6b67adec1ff8dc6f8d.1758184771.git.jani.nikula@intel.com>
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

On Thu, Sep 18, 2025 at 11:40:52AM +0300, Jani Nikula wrote:
> It's sketchy to pass error pointers via to_intel_framebuffer(). It
> probably works as long as struct intel_framebuffer embeds struct
> drm_framebuffer at offset 0, but be explicit about it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index 210aee9ae88b..b9dfd00a7d05 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -67,9 +67,16 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
>  							  mode_cmd.pixel_format,
>  							  mode_cmd.modifier[0]),
>  				      &mode_cmd);
> +	if (IS_ERR(fb)) {
> +		i915_gem_object_put(obj);
> +		goto err;
> +	}
> +
>  	i915_gem_object_put(obj);
>  
>  	return to_intel_framebuffer(fb);
> +err:
> +	return ERR_CAST(fb);
>  }
>  
>  int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
