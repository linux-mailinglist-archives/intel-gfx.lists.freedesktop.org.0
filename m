Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA192D12B7
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 14:59:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297F86E847;
	Mon,  7 Dec 2020 13:58:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4B1C6E847
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 13:58:57 +0000 (UTC)
IronPort-SDR: OUobNl3/BSkoOdxxVyIgJJVs0ReWXkrIeRIoW0OA3kSZTz79t24+AIbY4DMwpqDVZnxI0AAajT
 dm57kUbHBkIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="191973167"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="191973167"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 05:58:57 -0800
IronPort-SDR: 5D1Vx+lNS3TeEz6EfQEZAu8I+uk4PhhhGVzrmUgsGYYp/76NzJYA8aRTdFKWaU5ZkfUWnvVcHz
 +Ygd5amHu6bQ==
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="332104569"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 05:58:55 -0800
Date: Mon, 7 Dec 2020 19:28:40 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201207135840.GC26545@intel.com>
References: <20201207130201.8492-1-chris@chris-wilson.co.uk>
 <20201207130346.11849-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201207130346.11849-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Improve error reporting
 for igt_mock_max_segment
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-12-07 at 13:03:46 +0000, Chris Wilson wrote:
> When we fail to find a single block large enough to require splitting,
> report the largest block we did find.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> ---
>  .../gpu/drm/i915/selftests/intel_memory_region.c  | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> index a0b518c255de..a55079a061dd 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> @@ -384,16 +384,15 @@ static int igt_mock_max_segment(void *arg)
>  		goto out_put;
>  	}
>  
> -	err = -EINVAL;
> +	size = 0;
>  	list_for_each_entry(block, &obj->mm.blocks, link) {
> -		if (i915_buddy_block_size(&mem->mm, block) > max_segment) {
> -			err = 0;
> -			break;
> -		}
> +		if (i915_buddy_block_size(&mem->mm, block) > size)
> +			size = i915_buddy_block_size(&mem->mm, block);
>  	}
> -	if (err) {
> -		pr_err("%s: Failed to create a huge contiguous block\n",
> -		       __func__);
> +	if (size < max_segment) {
> +		pr_err("%s: Failed to create a huge contiguous block [> %u], largest block %lld\n",
> +		       __func__, max_segment, size);
> +		err = -EINVAL;

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>

>  		goto out_close;
>  	}
>  
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
