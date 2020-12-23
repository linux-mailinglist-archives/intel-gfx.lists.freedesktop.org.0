Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C322E21FD
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 22:23:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DADB6E884;
	Wed, 23 Dec 2020 21:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27B846E884
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 21:23:14 +0000 (UTC)
IronPort-SDR: tvWWUvCQ3e/FWTvtj0z7qwKQkqNDaKhhHg2IMK6/+LZtf4EzRUj+A16mh0S4Hx5qfUZ5+9/pQT
 6globaGfiCEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="237633441"
X-IronPort-AV: E=Sophos;i="5.78,442,1599548400"; d="scan'208";a="237633441"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 13:23:04 -0800
IronPort-SDR: i/5r3WEIpGHc/A4KSx+/WQGHxpqFHxKf8GmQpCltpLPgnVxl6PAHdiknw6qq3KZ4PKLfZ5sFkU
 pEOIY5BWSQJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,442,1599548400"; d="scan'208";a="565527073"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2020 13:23:03 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 163BA5C2052; Wed, 23 Dec 2020 23:20:38 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201223122051.4624-1-chris@chris-wilson.co.uk>
References: <20201223122051.4624-1-chris@chris-wilson.co.uk>
Date: Wed, 23 Dec 2020 23:20:38 +0200
Message-ID: <877dp8md7d.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Prefer recycling an idle
 fence
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

> If we want to reuse a fence that is in active use by the GPU, we have to
> wait an uncertain amount of time, but if we reuse an inactive fence, we
> can change it right away. Loop through the list of available fences
> twice, ignoring any active fences on the first pass.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 22 ++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> index 7fb36b12fe7a..a357bb431815 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -320,13 +320,31 @@ void i915_vma_revoke_fence(struct i915_vma *vma)
>  		fence_write(fence);
>  }
>  
> +static bool fence_is_active(const struct i915_fence_reg *fence)
> +{
> +	return fence->vma && i915_vma_is_active(fence->vma);
> +}
> +
>  static struct i915_fence_reg *fence_find(struct i915_ggtt *ggtt)
>  {
> -	struct i915_fence_reg *fence;
> +	struct i915_fence_reg *active = NULL;
> +	struct i915_fence_reg *fence, *fn;
>  
> -	list_for_each_entry(fence, &ggtt->fence_list, link) {
> +	list_for_each_entry_safe(fence, fn, &ggtt->fence_list, link) {
>  		GEM_BUG_ON(fence->vma && fence->vma->fence != fence);
>  
> +		if (fence == active) /* now seen this fence twice */
> +			active = ERR_PTR(-EAGAIN);
> +
> +		/* Prefer idle fences so we do not have to wait on the GPU */
> +		if (active != ERR_PTR(-EAGAIN) && fence_is_active(fence)) {
> +			if (!active)
> +				active = fence;
> +
> +			list_move_tail(&fence->link, &ggtt->fence_list);
> +			continue;
> +		}
> +
>  		if (atomic_read(&fence->pin_count))
>  			continue;
>  
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
