Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0413BBC69
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 13:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7C289873;
	Mon,  5 Jul 2021 11:48:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A820E897EF;
 Mon,  5 Jul 2021 11:48:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10035"; a="189344133"
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="189344133"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 04:48:33 -0700
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="480707140"
Received: from dmalinva-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.23.39])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 04:48:31 -0700
MIME-Version: 1.0
In-Reply-To: <20210702201708.2075793-1-daniel.vetter@ffwll.ch>
References: <20210702201708.2075793-1-daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <162548570352.15289.12980604779254635228@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 05 Jul 2021 14:48:23 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Improve debug Kconfig texts a bit
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Daniel Vetter (2021-07-02 23:17:08)
> We're not consistently recommending these for developers only.
> 
> I stumbled over this due to DRM_I915_LOW_LEVEL_TRACEPOINTS, which was
> added in
> 
> commit 354d036fcf70654cff2e2cbdda54a835d219b9d2
> Author: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Date:   Tue Feb 21 11:01:42 2017 +0000
> 
>     drm/i915/tracepoints: Add request submit and execute tracepoints
> 
> to "alleviate the performance impact concerns."
> 
> Which is nonsense.

I think that was the original reason why the patch was developed and
it got merged primarily for the latter reason. Unfortunately the patch
commit messages don't always get rewritten.

> Tvrtko and Joonas pointed out on irc that the real (but undocumented
> reason) was stable abi concerns for tracepoints, see
> 
> https://lwn.net/Articles/705270/
> 
> and the specific change that was blocked around tracepoints:
> 
> https://lwn.net/Articles/442113/
> 
> Anyway to make it a notch clearer why we have this Kconfig option
> consistly add the "Recommended for driver developers only." to it and
> all the other debug options we have.
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas

> ---
>  drivers/gpu/drm/i915/Kconfig.debug | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
> index 2ca88072d30f..f27c0b5873f7 100644
> --- a/drivers/gpu/drm/i915/Kconfig.debug
> +++ b/drivers/gpu/drm/i915/Kconfig.debug
> @@ -215,6 +215,8 @@ config DRM_I915_LOW_LEVEL_TRACEPOINTS
>           This provides the ability to precisely monitor engine utilisation
>           and also analyze the request dependency resolving timeline.
>  
> +         Recommended for driver developers only.
> +
>           If in doubt, say "N".
>  
>  config DRM_I915_DEBUG_VBLANK_EVADE
> @@ -228,6 +230,8 @@ config DRM_I915_DEBUG_VBLANK_EVADE
>           is exceeded, even if there isn't an actual risk of missing
>           the vblank.
>  
> +         Recommended for driver developers only.
> +
>           If in doubt, say "N".
>  
>  config DRM_I915_DEBUG_RUNTIME_PM
> @@ -240,4 +244,6 @@ config DRM_I915_DEBUG_RUNTIME_PM
>           runtime PM functionality. This may introduce overhead during
>           driver loading, suspend and resume operations.
>  
> +         Recommended for driver developers only.
> +
>           If in doubt, say "N"
> -- 
> 2.32.0.rc2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
