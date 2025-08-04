Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF98B1A532
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 16:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C367710E373;
	Mon,  4 Aug 2025 14:46:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MGkPNKEu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D597C10E360;
 Mon,  4 Aug 2025 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754318813; x=1785854813;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=najYcGyXE9RTm+PfSpq9A5fwiGXXVq4CkUOrUUM4Ntw=;
 b=MGkPNKEufAuksslfKsZM40/HodMWU81t0N3wDVUNu/+FLqTCpD//1oKu
 ZG3x32HlDoR1JhWCRHLpXA1pf2NAfSyMUlUt4b3NPqGHjJ2rEOhH7u60K
 Fvjs8vu/jHmEGuzrbrWdGjEI4AqMuZNG+293rH273hKlCK+iCQK0J0JcZ
 pcaHZYNkyDmWvdZiIo5bxdfwkA7Ki9/rwH4276Qno4yDKXfEpTfNJL5BB
 ePjrRwOjciR+gJfrrRPsFn/BkXAdJkldUOvZBXQHXJ/a93CifBbApJqGy
 hegK6sTTWhLVY6lpnF17u/EdqxwOXo5UZLLZ7Ll3FEkVTRmC3qenCIE9I A==;
X-CSE-ConnectionGUID: t32O77jqRBSQvlIVYbe9gA==
X-CSE-MsgGUID: s+4y+fXGQz+5lt1kPg/5qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="67650522"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="67650522"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 07:46:52 -0700
X-CSE-ConnectionGUID: Gk7dhWvCRsWem2ctPT2ajw==
X-CSE-MsgGUID: le5L3j6fRryVFCIa+fsMBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163730736"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.236])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 07:46:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: Re: [PATCH] drm/i915/display: Use drm_crtc_vblank_count in
 intel_crtc_get_vblank_counter()
In-Reply-To: <20250724122616.1111673-1-dev@lankhorst.se>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250724122616.1111673-1-dev@lankhorst.se>
Date: Mon, 04 Aug 2025 17:46:47 +0300
Message-ID: <b4ee66fec61e424ae94024ba297b49e7586639d9@intel.com>
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

On Thu, 24 Jul 2025, Maarten Lankhorst <dev@lankhorst.se> wrote:
> drm_crtc_accurate_vblank_count takes a spinlock, which we should avoid
> in tracepoints and debug functions.
>
> This also prevents taking the spinlock 2x during the critical
> section of pipe updates.

Don't we have vblank->max_vblank_count != 0 in most cases, and don't we
want accuracy in the rest of the cases?

The commit message should explain why it's okay to make this change.

BR,
Jani.

>
> Link: https://lore.kernel.org/r/20250715101636.906092-9-dev@lankhorst.se
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index dbdc4d9b2a33c..65a57cadfa3bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -85,7 +85,7 @@ u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc)
>  		return 0;
>  
>  	if (!vblank->max_vblank_count)
> -		return (u32)drm_crtc_accurate_vblank_count(&crtc->base);
> +		return (u32)drm_crtc_vblank_count(&crtc->base);
>  
>  	return crtc->base.funcs->get_vblank_counter(&crtc->base);
>  }

-- 
Jani Nikula, Intel
