Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E158403E6
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 12:34:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF111128B4;
	Mon, 29 Jan 2024 11:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2A55112887;
 Mon, 29 Jan 2024 11:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706528040; x=1738064040;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=tWsBI/tPpzsOM/AMPzqmeLc4Es00Xf7KKajUBasY/qU=;
 b=m7dx0H0u7N3RadPIRB7rthnDRV5mUrw9/rKvuNqtt48tE+MDIQfOe9c7
 /FUOaUOiM5+51gRcoYhTAxuuXoRbG44JFK0n2vLMs+9EJV7nMau/9+ZiE
 vYtriTHwidWkE1VMQ0uSRxVScEn9ZMSHYg4EZEX4T2bPnmEqcudNQr5Az
 hGMWM3a8Q8kqbp761EEjEDGPcdfEGsz6G53NYoBUHJCjPxPv3+6dzuenJ
 a0uaC5tn7rr8Vk7lrCR02t6ivwVO41AFHqHapDWCzOziMCLV/po/dio7Q
 W9yr/ezN4sB/guG595Uj07hHyC3QiMl4GA7gxZxFpRs28yS7n82y0i+y2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="434090090"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="434090090"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 03:34:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="22075664"
Received: from cbowler-mobl.ger.corp.intel.com (HELO [10.252.19.51])
 ([10.252.19.51])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 03:33:59 -0800
Message-ID: <87f6ed0b-0fe2-4cbb-ae77-bdcfdd687ccc@intel.com>
Date: Mon, 29 Jan 2024 11:33:57 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/xe: store bind time pat index to xe_bo
Content-Language: en-GB
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
 <20240126210807.320671-4-juhapekka.heikkila@gmail.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20240126210807.320671-4-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 26/01/2024 21:08, Juha-Pekka Heikkila wrote:
> Store pat index from xe_vma to xe_bo and check if bo was pinned
> as framebuffer and verify pat index is not changing for pinned
> framebuffers.
> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>   drivers/gpu/drm/xe/xe_pt.c | 23 +++++++++++++++++++----
>   1 file changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
> index de1030a47588..0a5d7c7543b1 100644
> --- a/drivers/gpu/drm/xe/xe_pt.c
> +++ b/drivers/gpu/drm/xe/xe_pt.c
> @@ -1208,10 +1208,11 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
>   	struct dma_fence *fence;
>   	struct invalidation_fence *ifence = NULL;
>   	struct xe_range_fence *rfence;
> +	struct xe_bo *bo = xe_vma_bo(vma);
>   	int err;
>   
>   	bind_pt_update.locked = false;
> -	xe_bo_assert_held(xe_vma_bo(vma));
> +	xe_bo_assert_held(bo);
>   	xe_vm_assert_held(vm);
>   
>   	vm_dbg(&xe_vma_vm(vma)->xe->drm,
> @@ -1252,8 +1253,22 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
>   		return ERR_PTR(-ENOMEM);
>   	}
>   
> +	/*
> +	 * BO which has XE_BO_SCANOUT_BIT set and was pinned as framebuffer
> +	 * before with different PAT index cannot be bound with different PAT
> +	 * index. This is to prevent switching CCS on/off from framebuffers
> +	 * on the fly.
> +	 */
> +	if (bo) {
> +		if (bo->flags & XE_BO_SCANOUT_BIT && bo->pat_index_scanout &&

Note that pat_index = 0 is usually a valid index...

> +		    bo->pat_index_scanout != vma->pat_index)
> +			return ERR_PTR(-EINVAL);
> +
> +		bo->pat_index = vma->pat_index;
> +	}

...what about something like:

if (bo.has_sealed_pat_index && bo.sealed_pat_index != vma->pat_index)
     return ERR_PTR();
else if (SCANOUT) {
     bo.has_sealed_pat_index = true;
     bo.sealed_pat_index = vma->pat_index;
}

Also, this and the previous patch should probably be squashed together? 
Other question is if we should only apply this on xe2?

> +
>   	fence = xe_migrate_update_pgtables(tile->migrate,
> -					   vm, xe_vma_bo(vma), q,
> +					   vm, bo, q,
>   					   entries, num_entries,
>   					   syncs, num_syncs,
>   					   &bind_pt_update.base);
> @@ -1287,8 +1302,8 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
>   				   DMA_RESV_USAGE_KERNEL :
>   				   DMA_RESV_USAGE_BOOKKEEP);
>   
> -		if (!xe_vma_has_no_bo(vma) && !xe_vma_bo(vma)->vm)
> -			dma_resv_add_fence(xe_vma_bo(vma)->ttm.base.resv, fence,
> +		if (!xe_vma_has_no_bo(vma) && !bo->vm)
> +			dma_resv_add_fence(bo->ttm.base.resv, fence,
>   					   DMA_RESV_USAGE_BOOKKEEP);
>   		xe_pt_commit_bind(vma, entries, num_entries, rebind,
>   				  bind_pt_update.locked ? &deferred : NULL);
