Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 272C84E8FAB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 10:03:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18FBB10E113;
	Mon, 28 Mar 2022 08:03:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EA6510E5CC
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 08:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648454608; x=1679990608;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=NdlIXS71fWKzeAV7LQFOwP4FvtpHHY9K5/NK45CtblA=;
 b=CXLZhAyiUDQrqIKYRN3ScRAInzFNza5H0TxK1Q6ayGVpamxZPD+kzMmt
 E4aQ9AjonYTXneB8rQZu3qWujVA9GmPRvNTTd/54Eifl6JSps/dFuQMP0
 WvpN2zyaWqojahmDTwBISD1rhRupTSYKCSgyNREsnNPli9i6emkqUZ6KU
 cbKQt5fdgpbnrYDyLZpwQ7RfQVnPsmrRY4m7gz7cDkxLD8KeweqiBZ27v
 RkVYgz3sWqgIxOIRdLl3xJj6AtJpHEQrMRLZFoIMNI8eUv/5EdaGYJmtv
 ZNeRDXGtnjz83960DD+tOBmx5RZOkDYB5JnendaiJ6ZMtnPIH45JX5MzY g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="246428578"
X-IronPort-AV: E=Sophos;i="5.90,216,1643702400"; d="scan'208";a="246428578"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 01:03:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,216,1643702400"; d="scan'208";a="545866460"
Received: from mphancoc-mobl.ger.corp.intel.com (HELO [10.213.232.242])
 ([10.213.232.242])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 01:03:26 -0700
Message-ID: <782575e0-8462-20c8-6170-d0395ec12447@linux.intel.com>
Date: Mon, 28 Mar 2022 09:03:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Chuansheng Liu <chuansheng.liu@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220325010328.32963-1-chuansheng.liu@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220325010328.32963-1-chuansheng.liu@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: fix one mem leak in
 mmap_offset_attach()
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/03/2022 01:03, Chuansheng Liu wrote:
> The below memory leak information is caught:
> 
> unreferenced object 0xffff997dd4e3b240 (size 64):
>    comm "gem_tiled_fence", pid 10332, jiffies 4294959326 (age
> 220778.420s)
>    hex dump (first 32 bytes):
>      01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>      00 00 00 00 00 00 00 00 00 be f2 d4 7d 99 ff ff  ............}...
>    backtrace:
>      [<ffffffffa0f04365>] kmem_cache_alloc_trace+0x2e5/0x450
>      [<ffffffffc062f3ac>] drm_vma_node_allow+0x2c/0xe0 [drm]
>      [<ffffffffc13149ea>] __assign_mmap_offset_handle+0x1da/0x4a0 [i915]
>      [<ffffffffc1315235>] i915_gem_mmap_offset_ioctl+0x55/0xb0 [i915]
>      [<ffffffffc06207e4>] drm_ioctl_kernel+0xb4/0x140 [drm]
>      [<ffffffffc0620ac7>] drm_ioctl+0x257/0x410 [drm]
>      [<ffffffffa0f553ae>] __x64_sys_ioctl+0x8e/0xc0
>      [<ffffffffa1821128>] do_syscall_64+0x38/0xc0
> [<ffffffffa1a0007c>] entry_SYSCALL_64_after_hwframe+0x44/0xae
> 
> The issue is always reproduced with the test:
> gem_tiled_fence_blits --run-subtest basic
> 
> It tries to mmap_gtt the same object several times, it is like:
> create BO
> mmap_gtt BO
> unmap BO
> mmap_gtt BO <== second time mmap_gtt
> unmap
> close BO
> 
> The leak happens at the second time mmap_gtt in function
> mmap_offset_attach(),it will simply increase the reference
> count to 2 by calling drm_vma_node_allow() directly since
> the mmo has been created at the first time.
> 
> However the driver just revokes the vma_node only one time
> when closing the object, it leads to memory leak easily.
> 
> This patch is to fix the memory leak by calling drm_vma_node_allow() one
> time also.
> 
> V2: add "Fixes and Cc stable". (Tvrtko Ursulin)
> 
> Fixes: 786555987207 ("drm/i915/gem: Store mmap_offsets in an rbtree
> rather than a plain list")
> Cc: <stable@vger.kernel.org> # v5.7+
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Chuansheng Liu <chuansheng.liu@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index c3ea243d414d..fda346d687fd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -680,7 +680,7 @@ mmap_offset_attach(struct drm_i915_gem_object *obj,
>   	mmo = insert_mmo(obj, mmo);
>   	GEM_BUG_ON(lookup_mmo(obj, mmap_type) != mmo);
>   out:
> -	if (file)
> +	if (file && !drm_vma_node_is_allowed(&mmo->vma_node, file))
>   		drm_vma_node_allow(&mmo->vma_node, file);
>   	return mmo;
>   

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
