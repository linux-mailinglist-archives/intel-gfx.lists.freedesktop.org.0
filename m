Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7657854DB68
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 09:21:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76A4E10E3D9;
	Thu, 16 Jun 2022 07:21:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AD0510E3D9;
 Thu, 16 Jun 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655364085; x=1686900085;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1mYg0twpCDJWukAX9HNrHpjTtlZ93/AhW3DWmO6Usa8=;
 b=FD7AoT249NIYqmd0L4+QnLWEFg3CtEjcy6a42dVTkPRo3Z/sScM0w7BC
 P3zuy2N3IyGidiJnQBfgyn9/2g1JwsOhK1Hg1lrktJtPPAinvc8n/WCM0
 vTVJPRHW9B8nWUWvbJTj+RBHRt1So9hNUJixma35pSy/1FQs2tl4oz6KX
 bl5vHUvMQHQPbhaxRrMTSRGwvdmv+mxSoIc/m3KkMKmoQlWqTeOGzQCps
 6a+ItgX10kIxVaOBwb2eNv/xfUQb67Kxev2ORE6GR9Bd6puWdVTvveY3H
 0XDaviTJD1vAj7nVD2BRkM6UH567qKF8+iYRyPg+94cUicbKXWyQ8unJJ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="259649897"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="259649897"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 00:21:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="912044783"
Received: from mstokes1-mobl.ger.corp.intel.com (HELO [10.213.198.82])
 ([10.213.198.82])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 00:21:19 -0700
Message-ID: <51e82b3b-b023-75dd-a039-e2941b426f1f@linux.intel.com>
Date: Thu, 16 Jun 2022 08:21:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Mauro Carvalho Chehab <mchehab@kernel.org>
References: <cover.1655306128.git.mchehab@kernel.org>
 <ce7ddc900a5421e577ef446b6834ee69663c2d9a.1655306128.git.mchehab@kernel.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ce7ddc900a5421e577ef446b6834ee69663c2d9a.1655306128.git.mchehab@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/gt: Ignore TLB invalidations
 on idle engines
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
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, mauro.chehab@linux.intel.com,
 =?UTF-8?Q?Micha=c5=82_Winiarski?= <michal.winiarski@intel.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/06/2022 16:27, Mauro Carvalho Chehab wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> As an extension of the current skip TLB invalidations,
> check if the device is powered down prior to any engine activity,
> 
> as, on such cases, all the TLBs were already invalidated, so an
> explicit TLB invalidation is not needed.
> 
> This becomes more significant  with GuC, as it can only do so when
> the connection to the GuC is awake.
> 
> Fixes: 7938d61591d3 ("drm/i915: Flush TLBs before releasing backing store")

Hmmm is this a fix or "an extension" as the commit text mentions both 
options?! GuC angle does not appear relevant for upstream yet so is cc: 
stable really required is the question.

Regards,

Tvrtko

> 
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Fei Yang <fei.yang@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: stable@vger.kernel.org
> Acked-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> ---
> 
> See [PATCH 0/6] at: https://lore.kernel.org/all/cover.1655306128.git.mchehab@kernel.org/
> 
>   drivers/gpu/drm/i915/gem/i915_gem_pages.c | 10 +++++----
>   drivers/gpu/drm/i915/gt/intel_gt.c        | 26 +++++++++++++++++------
>   drivers/gpu/drm/i915/gt/intel_gt_pm.h     |  3 +++
>   3 files changed, 28 insertions(+), 11 deletions(-)
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
> index f33290358c51..d5ed6a6ac67c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -11,6 +11,7 @@
>   
>   #include "i915_drv.h"
>   #include "intel_context.h"
> +#include "intel_engine_pm.h"
>   #include "intel_engine_regs.h"
>   #include "intel_gt.h"
>   #include "intel_gt_buffer_pool.h"
> @@ -1216,6 +1217,7 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
>   	struct drm_i915_private *i915 = gt->i915;
>   	struct intel_uncore *uncore = gt->uncore;
>   	struct intel_engine_cs *engine;
> +	intel_engine_mask_t awake, tmp;
>   	enum intel_engine_id id;
>   	const i915_reg_t *regs;
>   	unsigned int num = 0;
> @@ -1239,12 +1241,27 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
>   
>   	GEM_TRACE("\n");
>   
> -	assert_rpm_wakelock_held(&i915->runtime_pm);
> -
>   	mutex_lock(&gt->tlb_invalidate_lock);
>   	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>   
> +	awake = 0;
>   	for_each_engine(engine, gt, id) {
> +		struct reg_and_bit rb;
> +
> +		if (!intel_engine_pm_is_awake(engine))
> +			continue;
> +
> +		rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
> +		if (!i915_mmio_reg_offset(rb.reg))
> +			continue;
> +
> +		intel_uncore_write_fw(uncore, rb.reg, rb.bit);
> +		awake |= engine->mask;
> +	}
> +
> +	for_each_engine_masked(engine, gt, awake, tmp) {
> +		struct reg_and_bit rb;
> +
>   		/*
>   		 * HW architecture suggest typical invalidation time at 40us,
>   		 * with pessimistic cases up to 100us and a recommendation to
> @@ -1252,13 +1269,8 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
>   		 */
>   		const unsigned int timeout_us = 100;
>   		const unsigned int timeout_ms = 4;
> -		struct reg_and_bit rb;
>   
>   		rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
> -		if (!i915_mmio_reg_offset(rb.reg))
> -			continue;
> -
> -		intel_uncore_write_fw(uncore, rb.reg, rb.bit);
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
