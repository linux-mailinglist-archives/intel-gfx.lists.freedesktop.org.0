Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD78765378
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 14:20:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E117010E573;
	Thu, 27 Jul 2023 12:20:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91F8B10E0E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 12:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690460422; x=1721996422;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Z4kfUg5HHqzl4ohvHQFq5Cu2yWufmGmTx/+LqhJCLaE=;
 b=DESVHhoMvEGqivTgSdTa5C2CAx5LSXGR8hIi26jA6Cb8MydcMbS9RJia
 zIe4iIXWaj2zKkK9oNTMx4vdjw1t89ewTfueIFalxiYnnm+v6KHCko9YQ
 R+ZG95k/cWVbxBHWNNN/gqgYGAlgDL0GwcZApMvLtxnyIzSx9buZiiSRF
 lCKSNaWK174TrZpYJq1rtNzj//eRVfcpRQkedrkFjiocTqlasFIbUY03j
 JN/eeZUwmyGRIq4jE53tc6MhUJx/NecxaD5e6Oxca2XGfPFQ1oEFhasBy
 tRSFwNy5tUkfLJBK319iK1qkK4kr70kTZeLe2sQynGNoHeazE7Gi+JR95 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="368309152"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="368309152"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 05:20:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="704160650"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="704160650"
Received: from sguija-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.252.35.185])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 05:20:18 -0700
Date: Thu, 27 Jul 2023 14:20:16 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZMJhAMoG1RHE6Hnq@ashyti-mobl2.lan>
References: <20230726155356.1652979-1-jonathan.cavitt@intel.com>
 <20230726155356.1652979-3-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230726155356.1652979-3-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Apply workaround
 22016122933 correctly
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Wed, Jul 26, 2023 at 08:53:56AM -0700, Jonathan Cavitt wrote:
> WA_22016122933 was recently applied to all MeteorLake engines, which is
> simultaneously too broad (should only apply to Media engines) and too
> specific (should apply to all platforms that use the same media engine
> as MeteorLake).  Correct this in cases where coherency settings are
> modified.
> 
> There were also two additional places where the workaround was applied
> unconditionally.  The change was confirmed as necessary for all
> platforms, so the workaround label was removed.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>

nitpick: the tag part is in chronological order. First Matt
suggested it and then you developed and sent.

> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c        | 5 +++--
>  drivers/gpu/drm/i915/gt/intel_gt.h        | 6 ++++++
>  drivers/gpu/drm/i915/gt/intel_lrc.c       | 7 ++++---
>  drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 4 ----
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c    | 7 ++++---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 4 ----
>  6 files changed, 17 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 62eda0ab9bfc..b0f029f2380d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1139,9 +1139,10 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>  					      bool always_coherent)
>  {
>  	/*
> -	 * Wa_22016122933: always return I915_MAP_WC for MTL
> +	 * Wa_22016122933: always return I915_MAP_WC for Media
> +	 * version 13.0 when the object is on the Media GT
>  	 */
> -	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
> +	if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(gt))
>  		return I915_MAP_WC;
>  	if (HAS_LLC(gt->i915) || always_coherent)
>  		return I915_MAP_WB;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index adb442aaa522..2444ceb42b1b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -6,6 +6,7 @@
>  #ifndef __INTEL_GT__
>  #define __INTEL_GT__
>  
> +#include "i915_drv.h"
>  #include "intel_engine_types.h"
>  #include "intel_gt_types.h"
>  #include "intel_reset.h"
> @@ -24,6 +25,11 @@ static inline bool gt_is_root(struct intel_gt *gt)
>  	return !gt->info.id;
>  }
>  
> +static inline bool intel_gt_needs_wa_22016122933(struct intel_gt *gt)
> +{
> +	return MEDIA_VER_FULL(gt->i915) == IP_VER(13, 0) && gt->type == GT_MEDIA;
> +}
> +

I like this format! I think we should make it a standard way to
handle workarounds.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi

[...]
