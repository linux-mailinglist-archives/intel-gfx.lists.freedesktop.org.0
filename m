Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B7A578370
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 15:16:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F15C511BE32;
	Mon, 18 Jul 2022 13:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBFB011AE68;
 Mon, 18 Jul 2022 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658150179; x=1689686179;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=VxmTG1G1BT3MUMMObd8x+1C//h3uDMoam9tOXoLeA0g=;
 b=QkPqKf4o9bNKXY8R7WQsNxs0Hk3Lx/nuLyHkYKvfiuPB2RncaLYstNQY
 dkarOPOCIaFfPW745EWlZaLDs53fCmcMVsER/ozHFF1P+p58lxSJKt/Qw
 KpCjlNTAJ2H+h6qgsebErgrOQp82qdrGO7iGqTGXudvxfilA7rwZzah2W
 Cw3nbrn16HrBDmSRg62Ae9G45nVt8qdu7Gk0+aT2LT4HZ+BDmqkgqOlD1
 xcEg1AKu3772EqxncJ4B9B1lk1ZUwMKhcUumvllQ3cf/M1J01b3+MF0gs
 CmJHjZ1cXS4pLRbZIK2/afu5SUWfb9UN4DWHURfBgve1acI+QQW4V8YyF g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="287363492"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="287363492"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 06:16:19 -0700
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="686731010"
Received: from smyint-mobl1.amr.corp.intel.com (HELO [10.212.107.15])
 ([10.212.107.15])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 06:16:15 -0700
Message-ID: <76318fe1-37dc-8a1e-317e-76333995b8ca@linux.intel.com>
Date: Mon, 18 Jul 2022 14:16:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Mauro Carvalho Chehab <mchehab@kernel.org>
References: <cover.1657800199.git.mchehab@kernel.org>
 <c014a1d743fa46a6b57f02bffb7badf438136442.1657800199.git.mchehab@kernel.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <c014a1d743fa46a6b57f02bffb7badf438136442.1657800199.git.mchehab@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 01/21] drm/i915/gt: Ignore TLB
 invalidations on idle engines
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Dave Airlie <airlied@redhat.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/07/2022 13:06, Mauro Carvalho Chehab wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> Check if the device is powered down prior to any engine activity,
> as, on such cases, all the TLBs were already invalidated, so an
> explicit TLB invalidation is not needed, thus reducing the
> performance regression impact due to it.
> 
> This becomes more significant with GuC, as it can only do so when
> the connection to the GuC is awake.
> 
> Cc: stable@vger.kernel.org
> Fixes: 7938d61591d3 ("drm/i915: Flush TLBs before releasing backing store")

Patch itself looks fine but I don't think we closed on the issue of 
stable/fixes on this patch?

My position here is that, if the functional issue is only with GuC 
invalidations, then the tags shouldn't be there (and the huge CC list).

Regards,

Tvrtko

> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Fei Yang <fei.yang@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> ---
> 
> To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
> See [PATCH v2 00/21] at: https://lore.kernel.org/all/cover.1657800199.git.mchehab@kernel.org/
> 
>   drivers/gpu/drm/i915/gem/i915_gem_pages.c | 10 ++++++----
>   drivers/gpu/drm/i915/gt/intel_gt.c        | 17 ++++++++++-------
>   drivers/gpu/drm/i915/gt/intel_gt_pm.h     |  3 +++
>   3 files changed, 19 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index 97c820eee115..6835279943df 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -6,14 +6,15 @@
>   
>   #include <drm/drm_cache.h>
>   
> +#include "gt/intel_gt.h"
> +#include "gt/intel_gt_pm.h"
> +
>   #include "i915_drv.h"
>   #include "i915_gem_object.h"
>   #include "i915_scatterlist.h"
>   #include "i915_gem_lmem.h"
>   #include "i915_gem_mman.h"
>   
> -#include "gt/intel_gt.h"
> -
>   void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
>   				 struct sg_table *pages,
>   				 unsigned int sg_page_sizes)
> @@ -217,10 +218,11 @@ __i915_gem_object_unset_pages(struct drm_i915_gem_object *obj)
>   
>   	if (test_and_clear_bit(I915_BO_WAS_BOUND_BIT, &obj->flags)) {
>   		struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +		struct intel_gt *gt = to_gt(i915);
>   		intel_wakeref_t wakeref;
>   
> -		with_intel_runtime_pm_if_active(&i915->runtime_pm, wakeref)
> -			intel_gt_invalidate_tlbs(to_gt(i915));
> +		with_intel_gt_pm_if_awake(gt, wakeref)
> +			intel_gt_invalidate_tlbs(gt);
>   	}
>   
>   	return pages;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 68c2b0d8f187..c4d43da84d8e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -12,6 +12,7 @@
>   
>   #include "i915_drv.h"
>   #include "intel_context.h"
> +#include "intel_engine_pm.h"
>   #include "intel_engine_regs.h"
>   #include "intel_ggtt_gmch.h"
>   #include "intel_gt.h"
> @@ -924,6 +925,7 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
>   	struct drm_i915_private *i915 = gt->i915;
>   	struct intel_uncore *uncore = gt->uncore;
>   	struct intel_engine_cs *engine;
> +	intel_engine_mask_t awake, tmp;
>   	enum intel_engine_id id;
>   	const i915_reg_t *regs;
>   	unsigned int num = 0;
> @@ -947,26 +949,31 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
>   
>   	GEM_TRACE("\n");
>   
> -	assert_rpm_wakelock_held(&i915->runtime_pm);
> -
>   	mutex_lock(&gt->tlb_invalidate_lock);
>   	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>   
>   	spin_lock_irq(&uncore->lock); /* serialise invalidate with GT reset */
>   
> +	awake = 0;
>   	for_each_engine(engine, gt, id) {
>   		struct reg_and_bit rb;
>   
> +		if (!intel_engine_pm_is_awake(engine))
> +			continue;
> +
>   		rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
>   		if (!i915_mmio_reg_offset(rb.reg))
>   			continue;
>   
>   		intel_uncore_write_fw(uncore, rb.reg, rb.bit);
> +		awake |= engine->mask;
>   	}
>   
>   	spin_unlock_irq(&uncore->lock);
>   
> -	for_each_engine(engine, gt, id) {
> +	for_each_engine_masked(engine, gt, awake, tmp) {
> +		struct reg_and_bit rb;
> +
>   		/*
>   		 * HW architecture suggest typical invalidation time at 40us,
>   		 * with pessimistic cases up to 100us and a recommendation to
> @@ -974,12 +981,8 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
>   		 */
>   		const unsigned int timeout_us = 100;
>   		const unsigned int timeout_ms = 4;
> -		struct reg_and_bit rb;
>   
>   		rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
> -		if (!i915_mmio_reg_offset(rb.reg))
> -			continue;
> -
>   		if (__intel_wait_for_register_fw(uncore,
>   						 rb.reg, rb.bit, 0,
>   						 timeout_us, timeout_ms,
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> index bc898df7a48c..a334787a4939 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> @@ -55,6 +55,9 @@ static inline void intel_gt_pm_might_put(struct intel_gt *gt)
>   	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
>   	     intel_gt_pm_put(gt), tmp = 0)
>   
> +#define with_intel_gt_pm_if_awake(gt, wf) \
> +	for (wf = intel_gt_pm_get_if_awake(gt); wf; intel_gt_pm_put_async(gt), wf = 0)
> +
>   static inline int intel_gt_pm_wait_for_idle(struct intel_gt *gt)
>   {
>   	return intel_wakeref_wait_for_idle(&gt->wakeref);
