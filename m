Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9834BD9EF
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 14:36:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D72110E344;
	Mon, 21 Feb 2022 13:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A83B010E317;
 Mon, 21 Feb 2022 13:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645450607; x=1676986607;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ARqJmaDlo21rcMScAaIqVWbKxjby/BAi23J0kEZgcvw=;
 b=I90kawQReESE0ICi8rBTgnm+E1ZhHVHFFf/FpdwXwO48io1xQ6XBj30l
 ook+Ig6F6YOD9jn7m3iIshbvORSZnZiUETysgjsp8WmZW06fTEY2OuHr6
 /EpiZFwnXs6goIz1MPyGxt5f7uW1ukB0e1TLZpSHnRP4kDyus+yvUvrUz
 WIIm3PFOcM6qskIwDoU07TJTdhhoWTfD25lcqcrGshaLmRxQkTb4W3Hqf
 dNHduDYu1W0pj5li1xrNxNnvDhRAdFBP/iitqeJLikzIy8IEdWrR52Ywa
 M7qhv0BgH2UtL6JBPMmAphYQA1Jtgzwr6BkUHTptfSQEQyGQrrDURg76D A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="238923639"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="238923639"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 05:36:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="638557494"
Received: from asparren-mobl2.ger.corp.intel.com (HELO [10.249.254.160])
 ([10.249.254.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 05:36:45 -0800
Message-ID: <82a6da925a9a8f3d41acb6762111b0dc42350a7c.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 21 Feb 2022 14:36:43 +0100
In-Reply-To: <20220221121103.2473831-1-matthew.auld@intel.com>
References: <20220221121103.2473831-1-matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/ttm: fixup the mock_bo
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
Cc: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2022-02-21 at 12:11 +0000, Matthew Auld wrote:
> When running the mock selftests we currently blow up with:
> 
> <6> [299.836278] i915: Running
> i915_gem_huge_page_mock_selftests/igt_mock_memory_region_huge_pages
> <1> [299.836356] BUG: kernel NULL pointer dereference, address:
> 00000000000000c8
> <1> [299.836361] #PF: supervisor read access in kernel mode
> <1> [299.836364] #PF: error_code(0x0000) - not-present page
> <6> [299.836367] PGD 0 P4D 0
> <4> [299.836369] Oops: 0000 [#1] PREEMPT SMP NOPTI
> <4> [299.836372] CPU: 1 PID: 1429 Comm: i915_selftest Tainted: G    
> U            5.17.0-rc4-CI-CI_DRM_11227+ #1
> <4> [299.836376] Hardware name: Intel(R) Client Systems
> NUC11TNHi5/NUC11TNBi5, BIOS TNTGL357.0042.2020.1221.1743 12/21/2020
> <4> [299.836380] RIP: 0010:ttm_resource_init+0x57/0x90 [ttm]
> <4> [299.836392] RSP: 0018:ffffc90001e4f680 EFLAGS: 00010203
> <4> [299.836395] RAX: 0000000000000000 RBX: ffffc90001e4f708 RCX:
> 0000000000000000
> <4> [299.836398] RDX: ffff888116172528 RSI: ffffc90001e4f6f8 RDI:
> 0000000000000000
> <4> [299.836401] RBP: ffffc90001e4f6f8 R08: 00000000000001b0 R09:
> ffff888116172528
> <4> [299.836403] R10: 0000000000000001 R11: 00000000a4cb2e51 R12:
> ffffc90001e4fa90
> <4> [299.836406] R13: ffff888116172528 R14: ffff888130d7f4b0 R15:
> ffff888130d7f400
> <4> [299.836409] FS:  00007ff241684500(0000)
> GS:ffff88849fe80000(0000) knlGS:0000000000000000
> <4> [299.836412] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [299.836416] CR2: 00000000000000c8 CR3: 0000000107b80001 CR4:
> 0000000000770ee0
> <4> [299.836418] PKRU: 55555554
> <4> [299.836420] Call Trace:
> <4> [299.836422]  <TASK>
> <4> [299.836423]  i915_ttm_buddy_man_alloc+0x68/0x240 [i915]
> 
> ttm_resource_init() now needs to access the bo->bdev, and also wants
> to
> store the bo reference. Try to keep both working. The mock_bo is a
> hack
> so we can interface directly with the ttm managers alloc() and free()
> hooks for
> our mock testing, without invoking other TTM features like eviction,
> moves, etc.
> 
> v2: make sure we only touch res->bo if the alloc() returns
> successfully
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5123
> Fixes: 0e05fc49c358 ("drm/ttm: add common accounting to the resource
> mgr v3")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Christian König <christian.koenig@amd.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Acked-by: Christian König <christian.koenig@amd.com>


Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/intel_region_ttm.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c
> b/drivers/gpu/drm/i915/intel_region_ttm.c
> index f2b888c16958..7dea07c579aa 100644
> --- a/drivers/gpu/drm/i915/intel_region_ttm.c
> +++ b/drivers/gpu/drm/i915/intel_region_ttm.c
> @@ -200,11 +200,14 @@ intel_region_ttm_resource_alloc(struct
> intel_memory_region *mem,
>         int ret;
>  
>         mock_bo.base.size = size;
> +       mock_bo.bdev = &mem->i915->bdev;
>         place.flags = flags;
>  
>         ret = man->func->alloc(man, &mock_bo, &place, &res);
>         if (ret == -ENOSPC)
>                 ret = -ENXIO;
> +       if (!ret)
> +               res->bo = NULL; /* Rather blow up, then some uaf */
>         return ret ? ERR_PTR(ret) : res;
>  }
>  
> @@ -219,6 +222,11 @@ void intel_region_ttm_resource_free(struct
> intel_memory_region *mem,
>                                     struct ttm_resource *res)
>  {
>         struct ttm_resource_manager *man = mem->region_private;
> +       struct ttm_buffer_object mock_bo = {};
> +
> +       mock_bo.base.size = res->num_pages << PAGE_SHIFT;
> +       mock_bo.bdev = &mem->i915->bdev;
> +       res->bo = &mock_bo;
>  
>         man->func->free(man, res);
>  }


