Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE825B898A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 15:56:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 910D510E91F;
	Wed, 14 Sep 2022 13:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C64610E91F
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 13:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663163768; x=1694699768;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hJMVT8He5QBfHCbDPQI4W+xVkf9+rJGxkcy73TJ3NZE=;
 b=MR/CPgWLvO77gLjusVeSrQqIsrIfMdDf3HrL2ZLqW9ryt/MFyNjnSc5F
 sTM6Sjoz9Sl3RMxISDNP1tYe5Sd+sbKQCK9g7uHNY/z4hFk+Mn6EdV8+i
 JhrHUGZXu/aqIutxSi95H+CbgF02aM/rK8cXCIzPCH1xwnOhLEDQFbHT9
 X8qUE4dU3NUYLhYJPb1eOWSP4ChR8zzrsEVn3W0cfg/KCREPA5jFkVBVs
 DMxhaxfJVdWOc4A8TjFpKoAbH5IIKdFIt6KPghkv+R5zktOFYHqwTSOQ7
 8mcfk2PB9cytzVH8Jae5yoEJiZ534d1tXmMmlrjXzEDyxzHLrwVmgqZyY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="299247296"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="299247296"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 06:56:07 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="647398377"
Received: from pvasili-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.74])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 06:56:06 -0700
Date: Wed, 14 Sep 2022 15:56:03 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <YyHdc21ao+K2tnnm@alfio.lan>
References: <20220913161039.155964-1-janusz.krzysztofik@linux.intel.com>
 <20220913161039.155964-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220913161039.155964-2-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Flush contexts on driver
 release
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
Cc: intel-gfx@lists.freedesktop.org, drm-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Krzysztofik,

On Tue, Sep 13, 2022 at 06:10:38PM +0200, Janusz Krzysztofik wrote:
> Due to i915_perf assuming that it can use the i915_gem_context reference
> to protect its i915->gem.contexts.list iteration, we need to defer removal
> of the context from the list until last reference to the context is put.
> However, there is a risk of triggering kernel warning on contexts list not
> empty at driver release time if we deleagate that task to a worker for
> i915_gem_context_release_work(), unless that work is flushed first.
> Unfortunately, it is not flushed on driver release.  Fix it.
> 
> Instead of additionally calling flush_workqueue(), either directly of via
> a new dedicated wrapper around it, replace last call to
> i915_gem_drain_freed_objects() with existing i915_gem_drain_workqueue()
> that performs both tasks.
> 
> Fixes: 75eefd82581f ("drm/i915: Release i915_gem_context from a worker")
> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: stable@kernel.org # v5.16+

Thanks for the fix and for taking this on you!

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

> ---
>  drivers/gpu/drm/i915/i915_gem.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index a3373699835d7..31c197f2d8cb9 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1191,7 +1191,8 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv)
>  
>  	intel_uc_cleanup_firmwares(&to_gt(dev_priv)->uc);
>  
> -	i915_gem_drain_freed_objects(dev_priv);
> +	/* Flush any outstanding work, including i915_gem_context.release_work. */
> +	i915_gem_drain_workqueue(dev_priv);
>  
>  	drm_WARN_ON(&dev_priv->drm, !list_empty(&dev_priv->gem.contexts.list));
>  }
> -- 
> 2.25.1
