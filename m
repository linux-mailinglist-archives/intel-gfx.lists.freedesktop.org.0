Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 508E74C2818
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 10:32:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51BE010F812;
	Thu, 24 Feb 2022 09:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C71810F812
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 09:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645695133; x=1677231133;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=fbW2n4/JQEktTSlXMn4fG/vLov+RqBHdYQxMAXEFpKs=;
 b=GRjBwdiu+a0/FQ3rjb8dK0m3tw0rp2YQXCAW6FD7BENHqojFaYxwWEA7
 nQeMkuqxcHbGL9/Kr5Kz3u4xDv/y7KzKzL1a6Vmspkj5hDTGPuXSDlPJZ
 jeLbyxRgvwTqz+sHcrteJ0HlGjXtpabnV/efmNOKppgtIVOwg5Fg/t72f
 JD7u/qGX7jp7QcIsKjQ7a+UQmHVHQO3Wt6T6sg/I8WjSmlvBeTpxP0KxJ
 o7LS0nHXGit4bFpp/EK782iZeDdgWTBE5U+LxIrto4DU4mdLqTZZp5SrZ
 LsZWiH/QjifzfgT8Y/G73WdvnteRF2c/ABcXNPnSZlj1hgJZK952YeRns w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="252110975"
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="252110975"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 01:32:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="543644801"
Received: from cwadams-mobl2.ger.corp.intel.com (HELO [10.213.221.24])
 ([10.213.221.24])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 01:32:11 -0800
Message-ID: <274a61c6-9e70-f6be-d724-c02c3a88c396@linux.intel.com>
Date: Thu, 24 Feb 2022 09:32:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Chuansheng Liu <chuansheng.liu@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220223004246.59590-1-chuansheng.liu@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220223004246.59590-1-chuansheng.liu@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix one mem leak in
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com, chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 23/02/2022 00:42, Chuansheng Liu wrote:
> The below memory leak information is caught:
> 
> ===
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
> ===
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

Fix looks correct to me after a brief analysis. Matt or Thomas, could you please spare a 2nd pair of eyes on this?

Alternative could be to add drm_vma_node_revoke_all, which would drop all references to the node, which would perhaps be more in the spirit of the ref counting scheme used inside i915_gem_mman.c, but it would not be desirable as a fix which needs backporting. So I think this patch is the way to go and maybe tweak later, once minimal fix propagates to upstream.

> Cc: abdiel.janulgue@linux.intel.com
> Cc: matthew.auld@intel.com
> Cc: chris@chris-wilson.co.uk
> Signed-off-by: Chuansheng Liu <chuansheng.liu@intel.com>

Fixes: 786555987207 ("drm/i915/gem: Store mmap_offsets in an rbtree rather than a plain list")
Cc: <stable@vger.kernel.org> # v5.7+

Regards,

Tvrtko

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index efe69d6b86f4..d50b2f643a10 100644
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
