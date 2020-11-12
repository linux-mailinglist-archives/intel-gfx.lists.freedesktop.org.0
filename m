Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 453412B0F0A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 21:28:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A2486E430;
	Thu, 12 Nov 2020 20:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9919A6E434
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 20:28:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22977102-1500050 for multiple; Thu, 12 Nov 2020 20:28:39 +0000
MIME-Version: 1.0
In-Reply-To: <6bd3045daa74b5789881b690ff0908bb486f34ce.1605181350.git.jani.nikula@intel.com>
References: <cover.1605181350.git.jani.nikula@intel.com>
 <6bd3045daa74b5789881b690ff0908bb486f34ce.1605181350.git.jani.nikula@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 20:28:37 +0000
Message-ID: <160521291781.25046.8594037651371553722@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915/debugfs: replace
 I915_READ()+I915_WRITE() with intel_uncore_rmw()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-11-12 11:44:37)
> Remove the last I915_WRITE() use in i915_debugfs.c.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 7cbca268cb61..151734a1a496 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -1562,13 +1562,9 @@ i915_cache_sharing_set(void *data, u64 val)
>         drm_dbg(&dev_priv->drm,
>                 "Manually setting uncore sharing to %llu\n", val);
>         with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
> -               u32 snpcr;
> -
>                 /* Update the cache sharing policy here as well */
> -               snpcr = I915_READ(GEN6_MBCUNIT_SNPCR);
> -               snpcr &= ~GEN6_MBC_SNPCR_MASK;
> -               snpcr |= val << GEN6_MBC_SNPCR_SHIFT;
> -               I915_WRITE(GEN6_MBCUNIT_SNPCR, snpcr);
> +               intel_uncore_rmw(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR,
> +                                GEN6_MBC_SNPCR_MASK, val << GEN6_MBC_SNPCR_SHIFT);
>         }

Remove the braces, or remove the entire i915_cache_sharing file. A debug
interface with no validation or user.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
