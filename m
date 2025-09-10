Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A252B51CDD
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Sep 2025 18:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C66110E960;
	Wed, 10 Sep 2025 16:03:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oqp7E1R8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC31A10E960;
 Wed, 10 Sep 2025 16:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757520216; x=1789056216;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZW9IIhWvLrHjk/iEiXoTU0AORwZK/jdvpSe3sSnT/rw=;
 b=Oqp7E1R8ITtJagJr88C5qlr5VRBKigb2Akptwm31HRoboBADYfyEkT+9
 edN7YyockEK6/nPrUaVSqbeu7fXV4TvdZ6q1qyIQyCS8TsC/Nlbwb40k0
 LDXRAMhRM2Jx0EKWBwrONGzmQX9hDMe2d76nC15n6IiTQL8WXliQnJ9ke
 19l7ZLuE0K4PKbL6oKNMdDWmjkG21rHNcAXKsuqc0eGqMSOSS7crl6MY1
 49D+ORjvgTMm5bSzfmkJ8em/G6uQGdVfzMLQnvWOqln8gqHZnPuOWQFYp
 0CyPsCH+jgMAjkou2vzemVztZDL8EjO6VFIgbOJc80GFxbl4EEdrRisw4 A==;
X-CSE-ConnectionGUID: rO4hZNjGQ8unALV63WsNSg==
X-CSE-MsgGUID: jEhPrxVLQGGbXyPNJmCuBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="59530462"
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="59530462"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 09:03:35 -0700
X-CSE-ConnectionGUID: TE1n9LLVTM2a9XLpILUWcA==
X-CSE-MsgGUID: 3KvFcKR1SsidsiGPzBjAKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="172995381"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.88])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 09:03:34 -0700
Date: Wed, 10 Sep 2025 19:03:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Make intel_crtc_get_vblank_counter
 safe on PREEMPT_RT
Message-ID: <aMGhUneEgBA11Dyl@intel.com>
References: <20250829131701.15607-2-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250829131701.15607-2-dev@lankhorst.se>
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

On Fri, Aug 29, 2025 at 03:17:02PM +0200, Maarten Lankhorst wrote:
> drm_crtc_accurate_vblank_count takes a spinlock, which we should avoid
> in tracepoints and debug functions.
> 
> This also prevents taking the spinlock 2x during the critical
> section of pipe updates for DSI updates.
> 
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index a187db6df2d36..cee00aa2c79de 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -84,8 +84,12 @@ u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
>  	if (!crtc->active)
>  		return 0;
>  
> -	if (!vblank->max_vblank_count)
> -		return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
> +	if (!vblank->max_vblank_count) {
> +		if (!IS_ENABLED(CONFIG_PREEMPT_RT))

The ! seems rather pointless here when you could just swap the two
statements instead.

Could also use a comment to remind us why we're avoiding the use
of the correct function with RT kernels.

With that
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +			return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
> +		else
> +			return (u32)drm_crtc_vblank_count(&crtc->base);
> +	}
>  
>  	return crtc->base.funcs->get_vblank_counter(&crtc->base);
>  }
> -- 
> 2.50.0

-- 
Ville Syrjälä
Intel
