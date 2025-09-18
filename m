Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD23B86401
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 19:38:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35C4210E32F;
	Thu, 18 Sep 2025 17:38:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FRtc4kNM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F07A10E27B;
 Thu, 18 Sep 2025 17:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758217094; x=1789753094;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5QAhoMmIJ+ZoLHIBMMOxAsXA1oVfsQZPQCG6qF//l+8=;
 b=FRtc4kNM/dHeQ8pqMi+JoEpNZzkPcB5MiXPRgxUZdpJ9UyeFktjZrfyN
 2nveu9LJxoGqdDW8ZOt6nQlLo1jbH4bvycjsAQrNqkpsIwcpfJ9kRugia
 2DxYc1exoycXyfppaNjHdYHj1lLTnXJvoATg5QrUXr+l0HO6Jull+8bUQ
 bOGoAO4FP2kdFxFiIQDu0g8w4CpaMc3k3jIs18zusqBv3epd/AwT68lQD
 YtQ6zNQmrAF0M6ThEFRYXPn1fmYWlSyKNa47uTobUX5xafozLHQ7yT0GG
 1lHQq51Txea8XZRIqJjKq49gKgwtR1bWE1nKRc+dxgB8OVwfg0UGpOn6Y w==;
X-CSE-ConnectionGUID: FdINg5KdRSSVeCSNHUdc5g==
X-CSE-MsgGUID: f0gBfDACTPmsmXRtvMpQUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="64196293"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="64196293"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:38:14 -0700
X-CSE-ConnectionGUID: pkY+25sFRsujGYJNAoo3VA==
X-CSE-MsgGUID: 9v1IaSRyQ0yJQtcukmYF2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="175676371"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 10:38:12 -0700
Date: Thu, 18 Sep 2025 20:38:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 01/10] drm/xe/fbdev: use the same 64-byte stride
 alignment as i915
Message-ID: <aMxDgcCVArd_UFVN@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
 <7f4972104de8b179d5724ae83892ee294d3f3fd3.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7f4972104de8b179d5724ae83892ee294d3f3fd3.1758184771.git.jani.nikula@intel.com>
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

On Thu, Sep 18, 2025 at 11:40:51AM +0300, Jani Nikula wrote:
> For reasons unknown, xe uses XE_PAGE_SIZE alignment for
> stride. Presumably it's just a confusion between stride alignment and bo
> allocation size alignment. Switch to 64 byte alignment to, uh, align
> with i915.
> 
> This will also be helpful in deduplicating and unifying the xe and i915
> framebuffer allocation.
> 
> Link: https://lore.kernel.org/r/aLqsC87Ol_zCXOkN@intel.com
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index 8ea9a472113c..bce4cb16f682 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -33,7 +33,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
>  	mode_cmd.height = sizes->surface_height;
>  
>  	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
> -				    DIV_ROUND_UP(sizes->surface_bpp, 8), XE_PAGE_SIZE);
> +				    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
>  	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
>  							  sizes->surface_depth);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
