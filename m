Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EBD40DC8A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 16:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF796EDE6;
	Thu, 16 Sep 2021 14:14:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 541BA6EDE6
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 14:14:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="222228412"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="222228412"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 07:14:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="452937100"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 07:14:28 -0700
Date: Thu, 16 Sep 2021 07:14:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210916141427.GU3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210916062736.1733587-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210916062736.1733587-1-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Add "intel_" as prefix in
 set_mocs_index()
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

On Thu, Sep 16, 2021 at 11:57:36AM +0530, Ayaz A Siddiqui wrote:
> Adding missing "intel_" prefix in set_mocs_index().
> 
> Fixes: b62aa57e3c78 ("drm/i915/gt: Add support of mocs propagation")
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>

Thanks for fixing this up.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c   | 2 +-
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 2 +-
>  drivers/gpu/drm/i915/gt/intel_mocs.h | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 55e87aff51d2..04b83c9578d5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -682,7 +682,7 @@ int intel_gt_init(struct intel_gt *gt)
>  		goto err_pm;
>  	}
>  
> -	set_mocs_index(gt);
> +	intel_set_mocs_index(gt);
>  
>  	err = intel_engines_init(gt);
>  	if (err)
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index e4b97cd14cf9..15f9ada28a7a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -616,7 +616,7 @@ static u32 global_mocs_offset(void)
>  	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0));
>  }
>  
> -void set_mocs_index(struct intel_gt *gt)
> +void intel_set_mocs_index(struct intel_gt *gt)
>  {
>  	struct drm_i915_mocs_table table;
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.h b/drivers/gpu/drm/i915/gt/intel_mocs.h
> index 8a09d64b115f..76db827210c0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.h
> @@ -36,6 +36,6 @@ struct intel_gt;
>  
>  void intel_mocs_init(struct intel_gt *gt);
>  void intel_mocs_init_engine(struct intel_engine_cs *engine);
> -void set_mocs_index(struct intel_gt *gt);
> +void intel_set_mocs_index(struct intel_gt *gt);
>  
>  #endif
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
