Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC3C578245
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jul 2022 14:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A589B18A4E2;
	Mon, 18 Jul 2022 12:26:12 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35BC518A420;
 Mon, 18 Jul 2022 12:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658147172; x=1689683172;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Z48vhDmOPonI5dm8vr8jGvElJpY3Ye+AI9VniF/0xhw=;
 b=gUmFoglpMSiyPFiWhobQDJpRUOd8YzuJpmHQeFYTxuOm2+te9fPtKKEF
 GkuDAjbNoXctcOO/HI6iOQGZcjrY3afaJ7TDK/WzcJa4rVLw/CKDljxCO
 5RRiLPHAKe5Aadj1TEwfewdnGjBKdUOYRF/wPeTSXtgtSKVvMar3cV8ed
 pbwntMKkSdYafVxoGP2O9Eb8dLXXneuIfOVwr+fVcKACrDFSmS7q7oqZl
 +hHLsLzUgbU9QfuPqF0LmIna0I8g2e8lctZeiYZJ/g8MQuhie0wAnSUi3
 oDz2GKlFMZVyALSohK2ToNSgNGFG1SMFJK5sSzANTl/lsMJnmnEmcigwP w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="266611582"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="266611582"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 05:26:11 -0700
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="723841410"
Received: from smyint-mobl1.amr.corp.intel.com (HELO [10.212.107.15])
 ([10.212.107.15])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 05:26:10 -0700
Message-ID: <2f9959ae-40fe-f14d-8e70-e94f03237769@linux.intel.com>
Date: Mon, 18 Jul 2022 13:26:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20220712233136.1044951-1-John.C.Harrison@Intel.com>
 <20220712233136.1044951-3-John.C.Harrison@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220712233136.1044951-3-John.C.Harrison@Intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915/guc: Don't call ring_is_idle
 in GuC submission
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/07/2022 00:31, John.C.Harrison@Intel.com wrote:
> From: Matthew Brost <matthew.brost@intel.com>
> 
> The engine registers really shouldn't be touched during GuC submission
> as the GuC owns the registers. Don't call ring_is_idle and tie

Touch being just read and it is somehow harmful?

> intel_engine_is_idle strictly to the engine pm.

Strictly seems wrong - it is just ring_is_idle check that is replaced 
and not the whole implementation of intel_engine_is_idle.

> Because intel_engine_is_idle tied to the engine pm, retire requests
> before checking intel_engines_are_idle in gt_drop_caches, and lastly
Why is re-ordering important? I at least can't understand it. I hope 
it's not working around IGT failures.

> increase the timeout in gt_drop_caches for the intel_engines_are_idle
> check.

Same here - why?

Regards,

Tvrtko

> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 13 +++++++++++++
>   drivers/gpu/drm/i915/i915_debugfs.c       |  6 +++---
>   drivers/gpu/drm/i915/i915_drv.h           |  2 +-
>   3 files changed, 17 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 283870c659911..959a7c92e8f4d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1602,6 +1602,9 @@ static bool ring_is_idle(struct intel_engine_cs *engine)
>   {
>   	bool idle = true;
>   
> +	/* GuC submission shouldn't access HEAD & TAIL via MMIO */
> +	GEM_BUG_ON(intel_engine_uses_guc(engine));
> +
>   	if (I915_SELFTEST_ONLY(!engine->mmio_base))
>   		return true;
>   
> @@ -1668,6 +1671,16 @@ bool intel_engine_is_idle(struct intel_engine_cs *engine)
>   	if (!i915_sched_engine_is_empty(engine->sched_engine))
>   		return false;
>   
> +	/*
> +	 * We shouldn't touch engine registers with GuC submission as the GuC
> +	 * owns the registers. Let's tie the idle to engine pm, at worst this
> +	 * function sometimes will falsely report non-idle when idle during the
> +	 * delay to retire requests or with virtual engines and a request
> +	 * running on another instance within the same class / submit mask.
> +	 */
> +	if (intel_engine_uses_guc(engine))
> +		return false;
> +
>   	/* Ring stopped? */
>   	return ring_is_idle(engine);
>   }
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 94e5c29d2ee3a..ee5334840e9cb 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -654,13 +654,13 @@ gt_drop_caches(struct intel_gt *gt, u64 val)
>   {
>   	int ret;
>   
> +	if (val & DROP_RETIRE || val & DROP_RESET_ACTIVE)
> +		intel_gt_retire_requests(gt);
> +
>   	if (val & DROP_RESET_ACTIVE &&
>   	    wait_for(intel_engines_are_idle(gt), I915_IDLE_ENGINES_TIMEOUT))
>   		intel_gt_set_wedged(gt);
>   
> -	if (val & DROP_RETIRE)
> -		intel_gt_retire_requests(gt);
> -
>   	if (val & (DROP_IDLE | DROP_ACTIVE)) {
>   		ret = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
>   		if (ret)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index c22f29c3faa0e..53c7474dde495 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -278,7 +278,7 @@ struct i915_gem_mm {
>   	u32 shrink_count;
>   };
>   
> -#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
> +#define I915_IDLE_ENGINES_TIMEOUT (500) /* in ms */
>   
>   unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
>   					 u64 context);
