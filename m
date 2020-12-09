Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 015822D453D
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 16:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6112F6EA83;
	Wed,  9 Dec 2020 15:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9FDA6EA83
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 15:23:19 +0000 (UTC)
IronPort-SDR: MSgLydGINz4+JqBal1u8yiW3sZs9BhkmpYOsnqegx6cGqdKgyOk41EBnGlcyydX4ESe0HebxKk
 Gz9bzFAruyhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="174237034"
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="174237034"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 07:23:18 -0800
IronPort-SDR: 1S1huRtCFlmDa6GeDquoK2EQIhcRktyUWEegVBDfLwWBrlyt9f/MjyJlv4IeWzrccI2ZpZnL+r
 cHj41CAbv8zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="318813010"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 09 Dec 2020 07:23:17 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 7A4E25C2003; Wed,  9 Dec 2020 17:21:02 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201208231834.24812-1-chris@chris-wilson.co.uk>
References: <20201208231834.24812-1-chris@chris-wilson.co.uk>
Date: Wed, 09 Dec 2020 17:21:02 +0200
Message-ID: <87zh2nkntt.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Remove livelock from
 "do_idle_maps" vtd w/a
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> A call to wait for the GT to idle from inside the put_pages fallback is
> prone to cause an uninterruptible livelock. As it does not provide
> adequate serialisation with new requests, simply fallback to a trial

s/trial/trivial
> sleep.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_gem_gtt.c | 25 ++++++++++---------------
>  1 file changed, 10 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
> index c5ee1567f3d1..d2350a4c6606 100644
> --- a/drivers/gpu/drm/i915/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
> @@ -55,22 +55,17 @@ int i915_gem_gtt_prepare_pages(struct drm_i915_gem_object *obj,
>  void i915_gem_gtt_finish_pages(struct drm_i915_gem_object *obj,
>  			       struct sg_table *pages)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
> -	struct device *kdev = &dev_priv->drm.pdev->dev;
> -	struct i915_ggtt *ggtt = &dev_priv->ggtt;
> -
> -	if (unlikely(ggtt->do_idle_maps)) {
> -		/* XXX This does not prevent more requests being submitted! */
> -		if (intel_gt_retire_requests_timeout(ggtt->vm.gt,
> -						     -MAX_SCHEDULE_TIMEOUT)) {
> -			drm_err(&dev_priv->drm,
> -				"Failed to wait for idle; VT'd may hang.\n");
> -			/* Wait a bit, in hopes it avoids the hang */
> -			udelay(10);
> -		}
> -	}
> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +	struct i915_ggtt *ggtt = &i915->ggtt;
> +
> +	/* XXX This does not prevent more requests being submitted! */
> +	if (unlikely(ggtt->do_idle_maps))
> +		/* Wait a bit, in hope it avoids the hang */
> +		usleep_range(100, 250);
>  
> -	dma_unmap_sg(kdev, pages->sgl, pages->nents, PCI_DMA_BIDIRECTIONAL);
> +	dma_unmap_sg(&i915->drm.pdev->dev,
> +		     pages->sgl, pages->nents,
> +		     PCI_DMA_BIDIRECTIONAL);
>  }
>  
>  /**
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
