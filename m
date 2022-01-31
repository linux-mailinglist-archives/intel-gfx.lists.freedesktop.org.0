Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2504A4B82
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 17:12:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98B0C10E1FD;
	Mon, 31 Jan 2022 16:12:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB64210E346;
 Mon, 31 Jan 2022 16:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643645555; x=1675181555;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=npiV13dYZPOAGDX7I60F+d7oMB8G4c6cSAv7dB0hTYc=;
 b=PFv71UUFTKg9dpc/cDvlqJD7bwUt2u9K7ZZ9uOtzr5MC0oH3itn6sSJL
 S9xPH8ZNSgAFYB7kp2XaZTrp7IXTtXwnrnR9YtK5Q8GEI7ja2aCOaACeE
 Iga7b3VgPnQn0bWYu1rbW5yhilYmxHhh6pRPi6pKpC0qrrHU10Z+HyvCr
 ltq/9NfzolZQbRLjL/BQWH1h1fNwtGLgaZCtFCy7w8R7djapREqG+8m8f
 cTcEmnuQhxugnam/uWxyEaX6oHmM0QTEoNoCo4ENcEjfcnva7F4J/MPfy
 1cZiQguBZhzPgeCbbLaD3vE1v7sJcUEoHCUlnxeBTxlTGXh1vjGl/h/49 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="308224459"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="308224459"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 08:12:26 -0800
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="626413480"
Received: from yeidelbe-mobl1.ger.corp.intel.com (HELO [10.249.254.103])
 ([10.249.254.103])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 08:12:25 -0800
Message-ID: <41c18d90-825c-0db5-b694-7a631ec6f9b2@linux.intel.com>
Date: Mon, 31 Jan 2022 17:12:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220126152155.3070602-1-matthew.auld@intel.com>
 <20220126152155.3070602-8-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220126152155.3070602-8-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 07/20] drm/i915/buddy: track available
 visible size
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/26/22 16:21, Matthew Auld wrote:
> Track the total amount of available visible memory, and also track
> per-resource the amount of used visible memory. For now this is useful
> for our debug output, and deciding if it is even worth calling into the
> buddy allocator. In the future tracking the per-resource visible usage
> will be useful for when deciding if we should attempt to evict certain
> buffers.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 55 ++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_ttm_buddy_manager.h |  8 ++-
>   drivers/gpu/drm/i915/intel_region_ttm.c       |  1 +
>   3 files changed, 62 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> index 53eb100688a6..6e5842155898 100644
> --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> @@ -19,6 +19,8 @@ struct i915_ttm_buddy_manager {
>   	struct drm_buddy mm;
>   	struct list_head reserved;
>   	struct mutex lock;
> +	unsigned long visible_size;
> +	unsigned long visible_avail;
>   	u64 default_page_size;
>   };
>   
> @@ -87,6 +89,13 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
>   	n_pages = size >> ilog2(mm->chunk_size);
>   
>   	mutex_lock(&bman->lock);
> +	if (place->lpfn && place->lpfn <= bman->visible_size &&
> +	    n_pages > bman->visible_avail) {
> +		mutex_unlock(&bman->lock);
> +		err = -ENOSPC;
> +		goto err_free_res;
> +	}
> +
>   	err = drm_buddy_alloc_blocks(mm, (u64)place->fpfn << PAGE_SHIFT,
>   				    (u64)lpfn << PAGE_SHIFT,
>   				    (u64)n_pages << PAGE_SHIFT,
> @@ -107,6 +116,30 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
>   		mutex_unlock(&bman->lock);
>   	}
>   
> +	if (place->lpfn && place->lpfn <= bman->visible_size) {
> +		bman_res->used_visible_size = bman_res->base.num_pages;
> +	} else {
> +		struct drm_buddy_block *block;
> +
> +		list_for_each_entry(block, &bman_res->blocks, link) {
> +			unsigned long start =
> +				drm_buddy_block_offset(block) >> PAGE_SHIFT;
> +			unsigned long end = start +
> +				(drm_buddy_block_size(mm, block) >> PAGE_SHIFT);
> +

Move this inside the if statement below? Or perhaps the compiler is 
smart enough to figure that out.


> +			if (start < bman->visible_size) {
> +				bman_res->used_visible_size +=
> +					min(end, bman->visible_size) - start;
> +			}
> +		}
> +	}

Reviewed-by: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>


