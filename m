Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD597CDD0B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 15:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B882210E3E8;
	Wed, 18 Oct 2023 13:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3E1C10E3E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 13:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697635030; x=1729171030;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=gr1A+NM1k3mTvtJ7bZa6GIQsPknR7kpjg03JHCXiYqo=;
 b=eoeZA68LGlRzfK8qpFVRPqhN1cEYaKZOTAm2QMEYsUm7yoORZ5eSS6LE
 kFBFoIaprz3EwkG3ZiLgEuDApEpepWH2egiB/wsPuos8n+HLSz7rklHas
 7qi38JiXA42zY6Q93e4ft/rJTf7aeEvZM3aHrj4a+0CBDwmJyYKiJL2GW
 Y/hhidHK/Fug4B7tz0HhooWpQsFGC6G4snsk2z4AByOi6Qz6SIbcNmoaH
 m//0vjxSxQci7YfrrvttfB5ubQ7rPll3l6hGfQxPqvMd8AUGHZewSCN32
 IHBkZFRm540A6qvFx50pMy89Y4LsSB316VTIlIO1sYFI4yB8Cejf5bcH1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="389886631"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="389886631"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 06:17:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="900341366"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="900341366"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.19.191])
 ([10.213.19.191])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 06:15:03 -0700
Message-ID: <02d52c92-50d4-420d-959e-3a2447f49e28@intel.com>
Date: Wed, 18 Oct 2023 15:17:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230920210704.3624771-1-jonathan.cavitt@intel.com>
 <20230920210704.3624771-3-jonathan.cavitt@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230920210704.3624771-3-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v12 2/4] drm/i915: Reserve some kernel space
 per vm
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
Cc: andi.shyti@intel.com, matthew.d.roper@intel.com, tomasz.mistat@intel.com,
 rodrigo.vivi@intel.com, gregory.f.germano@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 20.09.2023 23:07, Jonathan Cavitt wrote:
> Reserve two pages in each vm for kernel space to use for things
> such as workarounds.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 7 +++++++
>   drivers/gpu/drm/i915/gt/intel_gtt.h  | 1 +
>   2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 84aa29715e0ac..6344d733fb2c4 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -230,6 +230,7 @@ static void gen8_ppgtt_cleanup(struct i915_address_space *vm)
>   				     gen8_pd_top_count(vm), vm->top);
>   
>   	free_scratch(vm);
> +	drm_mm_remove_node(&vm->rsvd);
>   }
>   
>   static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
> @@ -1014,6 +1015,12 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
>   	ppgtt->vm.foreach = gen8_ppgtt_foreach;
>   	ppgtt->vm.cleanup = gen8_ppgtt_cleanup;
>   
> +	ppgtt->vm.rsvd.start = ppgtt->vm.total - (SZ_4K * 2);
> +	ppgtt->vm.rsvd.size = (SZ_4K * 2);
> +	ppgtt->vm.rsvd.color = I915_COLOR_UNEVICTABLE;
> +	GEM_BUG_ON(drm_mm_reserve_node(&ppgtt->vm.mm, &ppgtt->vm.rsvd));
> +	ppgtt->vm.total -= (SZ_4K * 2);

I suspect you shouldn't decrease vm.total, otherwise api_intel_bb CI 
tests will complain and I guess vm.total means total, ie it should 
include reserved nodes as well.
Btw why not use i915_gem_gtt_reserve instead of hardcoding, I do not 
know this helper but it looks like good fit.

Regards
Andrzej


> +
>   	err = gen8_init_scratch(&ppgtt->vm);
>   	if (err)
>   		goto err_put;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 153ddfca0ae18..680ce27dda40c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -247,6 +247,7 @@ struct i915_address_space {
>   	struct work_struct release_work;
>   
>   	struct drm_mm mm;
> +	struct drm_mm_node rsvd;
>   	struct intel_gt *gt;
>   	struct drm_i915_private *i915;
>   	struct device *dma;

