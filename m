Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A5D76AA2A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 09:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98D1510E315;
	Tue,  1 Aug 2023 07:43:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 933C710E315
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 07:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690875782; x=1722411782;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=uDG3ZuV1HyKyhfDV+IQaIufqvSKs130x6Tvwlo8Ojps=;
 b=kdx2lKIF0db3svsFgDYUdJuzKYJpRlmCxUyE3sckyNaIzafAFkEnaHJZ
 xoI+EulzQVxnESCFKRf5Vn9KZsIoj7KLHLA/tafWa+enkJesTqWdGVUvz
 IhNrrXnb91j3rMimQY/g4KpBXvxUFSQLlihmuEIoIybO1fv502gkIDrIU
 cb6C0pSpRHNsgf3iaeVA69u5HJgTuuju91b6I+eK/2bIMucyt8MdIJHL8
 mbt+Agp4b+hILKP3rR986ZYdeNS2LZI18MuswqevJp89K2Sx7uI8HSFfq
 mO5cazGm7unIWTITaNOERVioGKhPQr1GAf14Ei8NEbcjOPSz0i/PMBD1t A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="359272050"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="359272050"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 00:43:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="852340810"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="852340810"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.39.50])
 ([10.249.39.50])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 00:42:59 -0700
Message-ID: <f0283070-0504-7bb8-96d1-b50b4d0fa279@linux.intel.com>
Date: Tue, 1 Aug 2023 09:42:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230614051731.745821-1-jouni.hogander@intel.com>
 <20230614051731.745821-4-jouni.hogander@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230614051731.745821-4-jouni.hogander@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/fbc: Moved fence related
 code away from intel_fbc
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


On 6/14/2023 7:17 AM, Jouni Högander wrote:
> As a preparation for Xe move HW fence details away from intel_fbc code.
> Add new functions to check support for legacy fencing and fence id and use
> these in fbc code. Xe doesn't support legacy fencing.
>
> v2: Fix intel_gt_support_legacy_fencing macro
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fbc.c | 12 ++++++------
>   drivers/gpu/drm/i915/gt/intel_gt_types.h |  2 ++
>   drivers/gpu/drm/i915/i915_vma.h          |  5 +++++
>   3 files changed, 13 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index da8166eedf93..25382022cd27 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -47,6 +47,7 @@
>   #include "i915_reg.h"
>   #include "i915_utils.h"
>   #include "i915_vgpu.h"
> +#include "i915_vma.h"
>   #include "intel_cdclk.h"
>   #include "intel_de.h"
>   #include "intel_display_trace.h"
> @@ -607,7 +608,7 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
>   	else if (DISPLAY_VER(i915) == 9)
>   		skl_fbc_program_cfb_stride(fbc);
>   
> -	if (to_gt(i915)->ggtt->num_fences)
> +	if (intel_gt_support_legacy_fencing(to_gt(i915)))
>   		snb_fbc_program_fence(fbc);
>   
>   	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
> @@ -991,11 +992,10 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
>   	fbc_state->fence_y_offset = intel_plane_fence_y_offset(plane_state);
>   
>   	drm_WARN_ON(&i915->drm, plane_state->flags & PLANE_HAS_FENCE &&
> -		    !plane_state->ggtt_vma->fence);
> +		    !intel_gt_support_legacy_fencing(to_gt(i915)));
>   
> -	if (plane_state->flags & PLANE_HAS_FENCE &&
> -	    plane_state->ggtt_vma->fence)
> -		fbc_state->fence_id = plane_state->ggtt_vma->fence->id;
> +	if (plane_state->flags & PLANE_HAS_FENCE)
> +		fbc_state->fence_id =  i915_vma_fence_id(plane_state->ggtt_vma);
>   	else
>   		fbc_state->fence_id = -1;
>   
> @@ -1022,7 +1022,7 @@ static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
>   	 */
>   	return DISPLAY_VER(i915) >= 9 ||
>   		(plane_state->flags & PLANE_HAS_FENCE &&
> -		 plane_state->ggtt_vma->fence);
> +		 i915_vma_fence_id(plane_state->ggtt_vma) != -1);
>   }
>   
>   static bool intel_fbc_is_cfb_ok(const struct intel_plane_state *plane_state)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index f08c2556aa25..121a53f908d1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -306,4 +306,6 @@ enum intel_gt_scratch_field {
>   	INTEL_GT_SCRATCH_FIELD_COHERENTL3_WA = 256,
>   };
>   
> +#define intel_gt_support_legacy_fencing(gt) (gt->ggtt->num_fences > 0)

With the checkpath warning fixed here, this is

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> +
>   #endif /* __INTEL_GT_TYPES_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index 9a9729205d5b..6fdf6205c290 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -418,6 +418,11 @@ i915_vma_unpin_fence(struct i915_vma *vma)
>   		__i915_vma_unpin_fence(vma);
>   }
>   
> +static inline int i915_vma_fence_id(const struct i915_vma *vma)
> +{
> +	return vma->fence ? vma->fence->id : -1;
> +}
> +
>   void i915_vma_parked(struct intel_gt *gt);
>   
>   static inline bool i915_vma_is_scanout(const struct i915_vma *vma)
