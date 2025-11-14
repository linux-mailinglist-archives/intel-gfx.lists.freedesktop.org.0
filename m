Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C90C5D762
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 15:03:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55F8110EA76;
	Fri, 14 Nov 2025 14:03:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jtWYjo0U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7940B10EA76;
 Fri, 14 Nov 2025 14:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763129031; x=1794665031;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JS+eMz0+vjAsWYBeVSbQOYxUwzTE/3c0MbPlNzH6giE=;
 b=jtWYjo0ULeD5vvkLoLY7EKuE4xfN3F7PdImIUjY80ook4uIYc4YfJMZP
 yIbTLZVVxJqXa0dslyq1whIjyP8dfw8fximStzVBAbRddnKB/MUviCXpE
 SSbExzJcpsO3ev3q5J93zB8DCNjtcZm7Px+xYqJkjYvZXu92qtldJrAIN
 ioukdm9UlnPss76b8bbRQUNFhxOU5OhXlrbr05F+YCX3M6nCayIo0GPIT
 VBcy9QGzHYczOqkvCwYA1XkD8a9R+fyKbbFTvZJbDjWvyn/2JpbYvKtXL
 WGgL2zGiRTck+RDGGzZaOz/quf0KplOLaRuSD5SOQiEMq3QR6e3Ov7eBR Q==;
X-CSE-ConnectionGUID: IKzhlSwRSAmakMFoeXABaA==
X-CSE-MsgGUID: VLyy0zUBRRe6ZrtdKIhJPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="52788593"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="52788593"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 06:03:50 -0800
X-CSE-ConnectionGUID: fCCi6+ZvRGKLZ8ybJLOSFA==
X-CSE-MsgGUID: zknUyDDlSJO3/i2anjZHkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="194076628"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.70])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 06:03:49 -0800
Date: Fri, 14 Nov 2025 16:03:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/10] drm/i915/rps: store struct dma_fence in struct
 wait_rps_boost
Message-ID: <aRc2wgzdI8tzkX4O@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
 <78d844497dadd86500bac0921ecc2d652d34da7c.1763115899.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <78d844497dadd86500bac0921ecc2d652d34da7c.1763115899.git.jani.nikula@intel.com>
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

On Fri, Nov 14, 2025 at 12:26:45PM +0200, Jani Nikula wrote:
> Prefer the more generic pointer rather than i915 specific data
> type. Also use dma_fence_put() for symmetry with the dma_fence_get()
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_rps.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
> index 82ea1ec482e4..b6720f7c09d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_rps.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
> @@ -18,14 +18,14 @@ struct wait_rps_boost {
>  	struct wait_queue_entry wait;
>  
>  	struct drm_crtc *crtc;
> -	struct i915_request *request;
> +	struct dma_fence *fence;
>  };
>  
>  static int do_rps_boost(struct wait_queue_entry *_wait,
>  			unsigned mode, int sync, void *key)
>  {
>  	struct wait_rps_boost *wait = container_of(_wait, typeof(*wait), wait);
> -	struct i915_request *rq = wait->request;
> +	struct i915_request *rq = to_request(wait->fence);
>  
>  	/*
>  	 * If we missed the vblank, but the request is already running it
> @@ -34,7 +34,7 @@ static int do_rps_boost(struct wait_queue_entry *_wait,
>  	 */
>  	if (!i915_request_started(rq))
>  		intel_rps_boost(rq);
> -	i915_request_put(rq);
> +	dma_fence_put(wait->fence);
>  
>  	drm_crtc_vblank_put(wait->crtc);
>  
> @@ -64,7 +64,7 @@ void intel_display_rps_boost_after_vblank(struct drm_crtc *crtc,
>  		return;
>  	}
>  
> -	wait->request = to_request(dma_fence_get(fence));
> +	wait->fence = dma_fence_get(fence);
>  	wait->crtc = crtc;
>  
>  	wait->wait.func = do_rps_boost;
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
