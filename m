Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D17A7D49A1
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 10:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C062710E2EF;
	Tue, 24 Oct 2023 08:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAF6A10E2EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 08:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698135295; x=1729671295;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=on9yFOrc6NBMLiYJ/K+uAnUJSoCl5Jxuak43LOgQzuk=;
 b=Wj6pAQMP67V9rcd+eHwXdHC3fPhe0YvCWbe4e3lJ+8dI3wRWbP/AqpWK
 7JCBCC+/R/Gg4+zpTI8B+9CaD1Pp/wsYS+QQkNzYg48OqVG6VE/lHpac2
 6hV/Kr7/4dTV4NeORMu0JDC/QeXGMq5OPQvdmU6eKVgsnHQmvP7ThzYhg
 p5KToHpOxGiH1VsCMWlzDAERYBbXF/K28N3JQQS1Q9jEMJi5dde0l0gML
 1bm14ybNb58gO+WeQ0NwE8A0xGNW2Q/bpKJ16EjxaXquTwG46E7iKmn9O
 rhXI7EWW51qmLY6BM7OA/c6cTZAG9lSRD5C6twcbXhoa0MgmjiiN5tfP4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="367238412"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="367238412"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 01:14:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6095556"
Received: from apaczko-mobl3.ger.corp.intel.com (HELO [10.252.47.59])
 ([10.252.47.59])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 01:13:36 -0700
Message-ID: <945dcd19-b34f-4fcd-a6c3-4931acc50689@linux.intel.com>
Date: Tue, 24 Oct 2023 10:14:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
 <20231023-wabb-v4-1-f75dec962b7d@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231023-wabb-v4-1-f75dec962b7d@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 1/4] drm/i915: Reserve some kernel space
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/23/2023 10:21 PM, Andrzej Hajda wrote:
> Reserve one page in each vm for kernel space to use for things
> such as workarounds.
>
> v2: use real memory, do not decrease vm.total
> v4: reserve only one page and explain flag
>
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 38 ++++++++++++++++++++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_gtt.h  |  1 +
>   2 files changed, 39 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 9895e18df0435a..1ac619a02a8567 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -5,6 +5,7 @@
>   
>   #include <linux/log2.h>
>   
> +#include "gem/i915_gem_internal.h"
>   #include "gem/i915_gem_lmem.h"
>   
>   #include "gen8_ppgtt.h"
> @@ -950,6 +951,39 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
>   	return ERR_PTR(err);
>   }
>   
> +static int gen8_init_rsvd(struct i915_address_space *vm)
> +{
> +	struct drm_i915_private *i915 = vm->i915;
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma;
> +	int ret;
> +
> +	/* The memory will be used only by GPU. */
> +	obj = i915_gem_object_create_lmem(i915, PAGE_SIZE,
> +					  I915_BO_ALLOC_VOLATILE |
> +					  I915_BO_ALLOC_GPU_ONLY);
> +	if (IS_ERR(obj))
> +		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
> +	if (IS_ERR(obj))
> +		return PTR_ERR(obj);
> +
> +	vma = i915_vma_instance(obj, vm, NULL);
> +	if (IS_ERR(vma)) {
> +		ret = PTR_ERR(vma);
> +		goto unref;
> +	}
> +
> +	ret = i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
> +	if (ret)
> +		goto unref;
> +
> +	vm->rsvd = i915_vma_make_unshrinkable(vma);
> +
> +unref:
> +	i915_gem_object_put(obj);
> +	return ret;
> +}
> +
>   /*
>    * GEN8 legacy ppgtt programming is accomplished through a max 4 PDP registers
>    * with a net effect resembling a 2-level page table in normal x86 terms. Each
> @@ -1031,6 +1065,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
>   	if (intel_vgpu_active(gt->i915))
>   		gen8_ppgtt_notify_vgt(ppgtt, true);
>   
> +	err = gen8_init_rsvd(&ppgtt->vm);
> +	if (err)
> +		goto err_put;
> +
>   	return ppgtt;
>   
>   err_put:
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index b471edac269920..5ac079e5f12f67 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -249,6 +249,7 @@ struct i915_address_space {
>   	struct work_struct release_work;
>   
>   	struct drm_mm mm;
> +	struct i915_vma *rsvd;
>   	struct intel_gt *gt;
>   	struct drm_i915_private *i915;
>   	struct device *dma;
>
