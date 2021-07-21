Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E14263D1518
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 19:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 313EF6E0F6;
	Wed, 21 Jul 2021 17:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E77086E0F6;
 Wed, 21 Jul 2021 17:29:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="233287893"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="233287893"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 10:29:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="632711426"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga005.jf.intel.com with ESMTP; 21 Jul 2021 10:26:41 -0700
Received: from [10.249.140.99] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.140.99])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 16LHQedl030773; Wed, 21 Jul 2021 18:26:40 +0100
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210721161120.24610-1-vinay.belgaumkar@intel.com>
 <20210721161120.24610-6-vinay.belgaumkar@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <fa6e3691-d43b-1b42-f031-f3d533298eae@intel.com>
Date: Wed, 21 Jul 2021 19:26:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210721161120.24610-6-vinay.belgaumkar@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/14] drm/i915/guc/slpc: Allocate,
 initialize and release SLPC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 21.07.2021 18:11, Vinay Belgaumkar wrote:
> Allocate data structures for SLPC and functions for
> initializing on host side.
> 
> v2: Address review comments (Michal W)
> 
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> Signed-off-by: Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 11 ++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 36 ++++++++++++++++++-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |  1 +
>  .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |  3 ++
>  4 files changed, 50 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index fcccb103a21a..686cb978662d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -337,6 +337,12 @@ int intel_guc_init(struct intel_guc *guc)
>  			goto err_ct;
>  	}
>  
> +	if (intel_guc_slpc_is_used(guc)) {
> +		ret = intel_guc_slpc_init(&guc->slpc);
> +		if (ret)
> +			goto err_submission;
> +	}
> +
>  	/* now that everything is perma-pinned, initialize the parameters */
>  	guc_init_params(guc);
>  
> @@ -347,6 +353,8 @@ int intel_guc_init(struct intel_guc *guc)
>  
>  	return 0;
>  
> +err_submission:
> +	intel_guc_submission_fini(guc);
>  err_ct:
>  	intel_guc_ct_fini(&guc->ct);
>  err_ads:
> @@ -369,6 +377,9 @@ void intel_guc_fini(struct intel_guc *guc)
>  
>  	i915_ggtt_disable_guc(gt->ggtt);
>  
> +	if (intel_guc_slpc_is_used(guc))
> +		intel_guc_slpc_fini(&guc->slpc);
> +
>  	if (intel_guc_submission_is_used(guc))
>  		intel_guc_submission_fini(guc);
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index d9feb430ce35..a99d727b5bf0 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -12,6 +12,16 @@ static inline struct intel_guc *slpc_to_guc(struct intel_guc_slpc *slpc)
>  	return container_of(slpc, struct intel_guc, slpc);
>  }
>  
> +static inline struct intel_gt *slpc_to_gt(struct intel_guc_slpc *slpc)
> +{
> +	return guc_to_gt(slpc_to_guc(slpc));
> +}
> +
> +static inline struct drm_i915_private *slpc_to_i915(struct intel_guc_slpc *slpc)
> +{
> +	return (slpc_to_gt(slpc))->i915;

redundant ( )

> +}
> +
>  static bool __detect_slpc_supported(struct intel_guc *guc)
>  {
>  	/* GuC SLPC is unavailable for pre-Gen12 */
> @@ -35,9 +45,29 @@ void intel_guc_slpc_init_early(struct intel_guc_slpc *slpc)
>  	guc->slpc_selected = __guc_slpc_selected(guc);
>  }
>  
> +static int slpc_shared_data_init(struct intel_guc_slpc *slpc)
> +{
> +	struct intel_guc *guc = slpc_to_guc(slpc);
> +	struct drm_i915_private *i915 = slpc_to_i915(slpc);
> +	u32 size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
> +	int err;
> +
> +	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&slpc->vaddr);
> +	if (unlikely(err)) {
> +		drm_err(&i915->drm,
> +			"Failed to allocate SLPC struct (err=%pe)\n",
> +			ERR_PTR(err));
> +		return err;
> +	}
> +
> +	return err;
> +}
> +
>  int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
>  {
> -	return 0;
> +	GEM_BUG_ON(slpc->vma);
> +
> +	return slpc_shared_data_init(slpc);
>  }
>  
>  /*
> @@ -60,4 +90,8 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
>  
>  void intel_guc_slpc_fini(struct intel_guc_slpc *slpc)
>  {
> +	if (!slpc->vma)
> +		return;
> +
> +	i915_vma_unpin_and_release(&slpc->vma, I915_VMA_RELEASE_MAP);
>  }
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
> index c3b0ad7f0f93..f02249ff5f1b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
> @@ -8,6 +8,7 @@
>  
>  #include "intel_guc_submission.h"
>  #include "intel_guc_slpc_types.h"
> +#include "abi/guc_actions_slpc_abi.h"

is this is needed here ?
maybe abi.h could be included only in slcp.c ?

>  
>  static inline bool intel_guc_slpc_is_supported(struct intel_guc *guc)
>  {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
> index b85148265b1f..214a449e78f2 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
> @@ -7,9 +7,12 @@
>  #define _INTEL_GUC_SLPC_TYPES_H_
>  
>  #include <linux/types.h>
> +#include "abi/guc_actions_slpc_abi.h"

for below pointers you don't need this header(s) to be included

Michal

>  
>  struct intel_guc_slpc {
>  
> +	struct i915_vma *vma;
> +	struct slpc_shared_data *vaddr;
>  };
>  
>  #endif
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
