Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EFF1E11E9
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 17:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F1DA89A74;
	Mon, 25 May 2020 15:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5765489A74
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 15:40:45 +0000 (UTC)
IronPort-SDR: mWokobLImz43FbiEk39TjLisS2/R1KpgM4Y/YBdx4CyWMtQl1gUmPi93ft60UBybCfSW1Yvsnp
 qrmKmVAPKCeA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 08:40:45 -0700
IronPort-SDR: cRhEJfqEJTizXvcezqfukLQv1XKnlAydeW7onU9UF8tdrK7fus5tpZBhtVFsKNd+eAcClzgwr2
 qlApA27kvS9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,433,1583222400"; d="scan'208";a="256247374"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 25 May 2020 08:40:44 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4339F5C2C45; Mon, 25 May 2020 18:38:22 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200525075347.582-1-chris@chris-wilson.co.uk>
References: <20200525075347.582-1-chris@chris-wilson.co.uk>
Date: Mon, 25 May 2020 18:38:22 +0300
Message-ID: <87d06st47l.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915/gt: Stop cross-polluting
 PIN_GLOBAL with PIN_USER with no-ppgtt
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> In order to keep userptr distinct from ggtt mmaps in the eyes of
> lockdep, we need to avoid marking those userptr vma as PIN_GLOBAL. (So
> long as we comply with only using them as local PIN_USER!)
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/1880
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 66165b10256e..8c275f8588c3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -424,22 +424,17 @@ static int ggtt_bind_vma(struct i915_vma *vma,
>  	struct drm_i915_gem_object *obj = vma->obj;
>  	u32 pte_flags;
>  
> +	if (i915_vma_is_bound(vma, ~flags & I915_VMA_BIND_MASK))
> +		return 0;
> +
>  	/* Applicable to VLV (gen8+ do not support RO in the GGTT) */
>  	pte_flags = 0;
>  	if (i915_gem_object_is_readonly(obj))
>  		pte_flags |= PTE_READ_ONLY;
>  
>  	vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);
> -
>  	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
>  
> -	/*
> -	 * Without aliasing PPGTT there's no difference between
> -	 * GLOBAL/LOCAL_BIND, it's all the same ptes. Hence unconditionally
> -	 * upgrade to both bound if we bind either to avoid double-binding.
> -	 */
> -	atomic_or(I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND, &vma->flags);
> -
>  	return 0;
>  }
>  
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
