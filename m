Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D532417F71
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Sep 2021 04:58:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAC056E2EF;
	Sat, 25 Sep 2021 02:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BA7C6E2D5;
 Sat, 25 Sep 2021 02:58:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10117"; a="223857322"
X-IronPort-AV: E=Sophos;i="5.85,321,1624345200"; d="scan'208";a="223857322"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 19:58:23 -0700
X-IronPort-AV: E=Sophos;i="5.85,321,1624345200"; d="scan'208";a="704387652"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 19:58:23 -0700
Date: Fri, 24 Sep 2021 19:58:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210925025822.GR3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210924163825.634606-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210924163825.634606-1-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Flush buffer pools on driver
 remove
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

On Fri, Sep 24, 2021 at 06:38:25PM +0200, Janusz Krzysztofik wrote:
> We currently do an explicit flush of the buffer pools within the call path
> of drm_driver.release(); this removes all buffers, regardless of their age,
> freeing the buffers' associated resources (objects, adress space areas).
> However there is other code that runs within the drm_driver.release() call
> chain that expects objects and their associated address space areas have
> already been flushed.
> 
> Since buffer pools auto-flush old buffers once per second in a worker
> thread, there's a small window where if we remove the driver while there
> are still objects in buffers with an age of less than one second, the
> assumptions of the other release code may be violated.
> 
> By moving the flush to driver remove (which executes earlier via the
> pci_driver.remove() flow) we're ensuring that all buffers are flushed and
> their associated objects freed before some other code in
> pci_driver.remove() flushes those objects so they are released before
> _any_ code in drm_driver.release() that check completness of those
> flushes executes.
> 
> v2: Reword commit descriptiom as suggested by Matt.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

and applied to drm-intel-gt-next (with a couple minor spelling fixes in
the commit message).  Thanks for the patch.


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c             | 2 ++
>  drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c | 2 --
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 4037c3778225..5b3acf2b064e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -741,6 +741,8 @@ void intel_gt_driver_remove(struct intel_gt *gt)
>  	intel_uc_driver_remove(&gt->uc);
>  
>  	intel_engines_release(gt);
> +
> +	intel_gt_flush_buffer_pool(gt);
>  }
>  
>  void intel_gt_driver_unregister(struct intel_gt *gt)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> index aa0a59c5b614..acc49c56a9f3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
> @@ -245,8 +245,6 @@ void intel_gt_fini_buffer_pool(struct intel_gt *gt)
>  	struct intel_gt_buffer_pool *pool = &gt->buffer_pool;
>  	int n;
>  
> -	intel_gt_flush_buffer_pool(gt);
> -
>  	for (n = 0; n < ARRAY_SIZE(pool->cache_list); n++)
>  		GEM_BUG_ON(!list_empty(&pool->cache_list[n]));
>  }
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
