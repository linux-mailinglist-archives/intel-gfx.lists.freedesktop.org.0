Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B027175F301
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jul 2023 12:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5666110E2CC;
	Mon, 24 Jul 2023 10:24:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E913A10E2CC
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 10:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690194266; x=1721730266;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=uTuQId3wqPpzD1G+1Vft+Gbc8eBGmDZu+83ZAFa0kz4=;
 b=QLq+C2qjXmEBGrgzGqAOJTmv4ME0nKAk7sJ69UhT0U1sfKzeecxcGUQZ
 KS2ZnGLCLzAuM0NtX55/bFFyrcMey2eiqiFcq/4wmq6dJo8NE8H2ZK74J
 gkm777YnoYLjC5wkqI8SKu4wSpkbu10EMrWnaLTMesmXQEAvNXBJESJWb
 dE7Grfe9NyCwSwJULRhNrxXQ90kQunP/WiwhG2jqDBO3FU4uXdANhjLXn
 9Lryc3H+4Nakc6eRrGAWqG9fqGevlyOmH/XenqAT9rH0MNfN0BnuE7Q+z
 WYQj8bjZ2Ht9viy0TlXxcKbOx/Xv1crkdcOWnN/KtPG08oTUVTWi3hXY6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="366294752"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="366294752"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 03:24:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="815766707"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="815766707"
Received: from srichara-mobl.amr.corp.intel.com (HELO [10.209.170.186])
 ([10.209.170.186])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 03:24:24 -0700
Message-ID: <c2151ea7-1fac-ab60-9f2a-2b6d1dd1be01@linux.intel.com>
Date: Mon, 24 Jul 2023 11:24:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230721140559.830660-1-jonathan.cavitt@intel.com>
 <20230721140559.830660-2-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230721140559.830660-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH dii-client 2/2] drm/i915/gt: Apply
 workaround 22016122933 correctly
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
Cc: matthew.d.roper@intel.com, nirmoy.das@intel.com, andi.shyti@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 21/07/2023 15:05, Jonathan Cavitt wrote:
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
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_pages.c | 5 +++--
>   drivers/gpu/drm/i915/gt/intel_gt.h        | 6 ++++++
>   drivers/gpu/drm/i915/gt/intel_lrc.c       | 7 ++++---
>   drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 4 ----
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c    | 7 ++++---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 4 ----
>   6 files changed, 17 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index 44d93ead96ff..4acdd008d1d3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -470,9 +470,10 @@ enum i915_map_type i915_coherent_map_type(struct intel_gt *gt,
>   					  bool always_coherent)
>   {
>   	/*
> -	 * Wa_22016122933: always return I915_MAP_WC for MTL
> +	 * Wa_22016122933: always return I915_MAP_WC for Media
> +	 * version 13.0 when the object is on the Media GT
>   	 */
> -	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(gt->i915))
> +	if (i915_gem_object_is_lmem(obj) || intel_gt_needs_wa_22016122933(gt))
>   		return I915_MAP_WC;
>   	if (HAS_LLC(gt->i915) || always_coherent)
>   		return I915_MAP_WB;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index d2f4fbde5f9f..4eb41a3b6e8b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -6,6 +6,7 @@
>   #ifndef __INTEL_GT__
>   #define __INTEL_GT__
>   
> +#include "i915_drv.h"
>   #include "intel_engine_types.h"
>   #include "intel_gt_types.h"
>   #include "intel_reset.h"
> @@ -24,6 +25,11 @@ static inline bool gt_is_root(struct intel_gt *gt)
>   	return !gt->info.id;
>   }
>   
> +static inline bool intel_gt_needs_wa_22016122933(struct intel_gt *gt)
> +{
> +	return MEDIA_VER_FULL(gt->i915) == IP_VER(13, 0) && gt->type == GT_MEDIA;

Ah this is something Matt was recntly telling me is coming.

Would it make sense to store ipver in the gt? And then we could have:

	return gt->type == GT_MEDIA && gt->info.ipver == IP_VER(13,0);

?

(Give or take the gt->info part, and macro or not.)

Reads a bit better to me to ask the same component about it's type and 
version.

Regards,

Tvrtko

> +}
> +
>   static inline struct intel_gt *uc_to_gt(struct intel_uc *uc)
>   {
>   	return container_of(uc, struct intel_gt, uc);
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index c45e6d8cbaac..668ed3fc7076 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1095,10 +1095,11 @@ __lrc_alloc_state(struct intel_context *ce, struct intel_engine_cs *engine)
>   	if (IS_ERR(obj)) {
>   		obj = i915_gem_object_create_shmem(engine->i915, context_size);
>   		/*
> -		 * Wa_22016122933: For MTL the shared memory needs to be mapped
> -		 * as WC on CPU side and UC (PAT index 2) on GPU side
> +		 * Wa_22016122933: For Media version 13.0, all Media GT shared
> +		 * memory needs to be mapped as WC on CPU side and UC (PAT
> +		 * index 2) on GPU side.
>   		 */
> -		if (IS_METEORLAKE(engine->i915))
> +		if (intel_gt_needs_wa_22016122933(engine->gt))
>   			i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>   	}
>   	if (IS_ERR(obj))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> index fb4933543f31..1093b47d3e06 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> @@ -284,10 +284,6 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
>   	memcpy_toio(gsc->local_vaddr, src, gsc->fw.size);
>   	memset_io(gsc->local_vaddr + gsc->fw.size, 0, gsc->local->size - gsc->fw.size);
>   
> -	/*
> -	 * Wa_22016122933: Making sure the data in dst is
> -	 * visible to GSC right away
> -	 */
>   	intel_guc_write_barrier(&gt->uc.guc);
>   
>   	i915_gem_object_unpin_map(gsc->fw.obj);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index effb37727093..0000846f6029 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -745,10 +745,11 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
>   		return ERR_CAST(obj);
>   
>   	/*
> -	 * Wa_22016122933: For MTL the shared memory needs to be mapped
> -	 * as WC on CPU side and UC (PAT index 2) on GPU side
> +	 * Wa_22016122933: For Media version 13.0, all Media GT shared
> +	 * memory needs to be mapped as WC on CPU side and UC (PAT
> +	 * index 2) on GPU side.
>   	 */
> -	if (IS_METEORLAKE(gt->i915))
> +	if (intel_gt_needs_wa_22016122933(gt))
>   		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
>   
>   	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index f28a3a83742d..97eadd08181d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -960,10 +960,6 @@ static int ct_read(struct intel_guc_ct *ct, struct ct_incoming_msg **msg)
>   	/* now update descriptor */
>   	WRITE_ONCE(desc->head, head);
>   
> -	/*
> -	 * Wa_22016122933: Making sure the head update is
> -	 * visible to GuC right away
> -	 */
>   	intel_guc_write_barrier(ct_to_guc(ct));
>   
>   	return available - len;
