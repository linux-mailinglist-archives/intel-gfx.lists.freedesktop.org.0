Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D921379A995
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 17:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C736010E31D;
	Mon, 11 Sep 2023 15:25:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B58310E31D
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 15:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694445939; x=1725981939;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gkNK0bxOkYU1z8KNJ7AI9F7z7mL4pKf+g5aDDh7fITU=;
 b=DCduM3LdXgh6LW5NKO9gTBYOsceHdVBMmIpxk7eoAD6/QPF4doeXp8tj
 J0OcGpDFMuh42uO8387ao1PnBhJQ1dpZdQjOtc7L3dbxiNYKUOoC6tvQG
 Cv9QDqWQSvgkPN4gUwE7GzfprO0t7pyvCfmPTUGVr/y0+YsJq6a8jlxFt
 2CHgNq2ewB16dOXdTHlUHwxo4xhtuEhMjL6x+vtnfquv3bP0n7ZM+Hx06
 cqdmvgvBU6Cp7FK+njQrIlohSHWI9Gh86bksb5uMYC9lpJZjlN+ibaSFz
 hS1hbBbG0rvEhMkXX0/rGfGxiqAXAMTlk41m7CgCT2JQ8mSk8eMhi4Ylz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="444532749"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="444532749"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 08:25:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="990117287"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="990117287"
Received: from kschuele-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.119])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 08:25:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <wetll4dmmg36536akmjgdotyiai73nsljllumo7foyac4z5g6e@p2o6lxujxpfp>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230911123305.1682554-1-jani.nikula@intel.com>
 <wetll4dmmg36536akmjgdotyiai73nsljllumo7foyac4z5g6e@p2o6lxujxpfp>
Date: Mon, 11 Sep 2023 18:25:03 +0300
Message-ID: <87r0n4enqo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: rename DBG() to GTT_TRACE()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 11 Sep 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Mon, Sep 11, 2023 at 03:33:05PM +0300, Jani Nikula wrote:
>>intel_gtt.h is indirectly included absolutely everywhere in the
>>driver. DBG() is too short a name. Rename it GTT_TRACE() after
>>GEM_TRACE().
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 36 ++++++++++++++--------------
>
> I like the new name. However since this is the only file actually using
> it, why not move the define there too?

Heh, I did that at first, but then moved it back, undecided.

Maybe you can send a patch on top moving it. ;D

>
> Other than that,
>
> 	Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks,
Jani.

>
> thanks
> Lucas De Marchi
>
>> drivers/gpu/drm/i915/gt/intel_gtt.h  |  4 ++--
>> 2 files changed, 20 insertions(+), 20 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>index c8568e5d1147..9895e18df043 100644
>>--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>>@@ -242,9 +242,9 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
>> 	GEM_BUG_ON(end > vm->total >> GEN8_PTE_SHIFT);
>>
>> 	len = gen8_pd_range(start, end, lvl--, &idx);
>>-	DBG("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d }\n",
>>-	    __func__, vm, lvl + 1, start, end,
>>-	    idx, len, atomic_read(px_used(pd)));
>>+	GTT_TRACE("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d }\n",
>>+		  __func__, vm, lvl + 1, start, end,
>>+		  idx, len, atomic_read(px_used(pd)));
>> 	GEM_BUG_ON(!len || len >= atomic_read(px_used(pd)));
>>
>> 	do {
>>@@ -252,8 +252,8 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
>>
>> 		if (atomic_fetch_inc(&pt->used) >> gen8_pd_shift(1) &&
>> 		    gen8_pd_contains(start, end, lvl)) {
>>-			DBG("%s(%p):{ lvl:%d, idx:%d, start:%llx, end:%llx } removing pd\n",
>>-			    __func__, vm, lvl + 1, idx, start, end);
>>+			GTT_TRACE("%s(%p):{ lvl:%d, idx:%d, start:%llx, end:%llx } removing pd\n",
>>+				  __func__, vm, lvl + 1, idx, start, end);
>> 			clear_pd_entry(pd, idx, scratch);
>> 			__gen8_ppgtt_cleanup(vm, as_pd(pt), I915_PDES, lvl);
>> 			start += (u64)I915_PDES << gen8_pd_shift(lvl);
>>@@ -270,10 +270,10 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
>> 			u64 *vaddr;
>>
>> 			count = gen8_pt_count(start, end);
>>-			DBG("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d } removing pte\n",
>>-			    __func__, vm, lvl, start, end,
>>-			    gen8_pd_index(start, 0), count,
>>-			    atomic_read(&pt->used));
>>+			GTT_TRACE("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d } removing pte\n",
>>+				  __func__, vm, lvl, start, end,
>>+				  gen8_pd_index(start, 0), count,
>>+				  atomic_read(&pt->used));
>> 			GEM_BUG_ON(!count || count >= atomic_read(&pt->used));
>>
>> 			num_ptes = count;
>>@@ -325,9 +325,9 @@ static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
>> 	GEM_BUG_ON(end > vm->total >> GEN8_PTE_SHIFT);
>>
>> 	len = gen8_pd_range(*start, end, lvl--, &idx);
>>-	DBG("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d }\n",
>>-	    __func__, vm, lvl + 1, *start, end,
>>-	    idx, len, atomic_read(px_used(pd)));
>>+	GTT_TRACE("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d }\n",
>>+		  __func__, vm, lvl + 1, *start, end,
>>+		  idx, len, atomic_read(px_used(pd)));
>> 	GEM_BUG_ON(!len || (idx + len - 1) >> gen8_pd_shift(1));
>>
>> 	spin_lock(&pd->lock);
>>@@ -338,8 +338,8 @@ static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
>> 		if (!pt) {
>> 			spin_unlock(&pd->lock);
>>
>>-			DBG("%s(%p):{ lvl:%d, idx:%d } allocating new tree\n",
>>-			    __func__, vm, lvl + 1, idx);
>>+			GTT_TRACE("%s(%p):{ lvl:%d, idx:%d } allocating new tree\n",
>>+				  __func__, vm, lvl + 1, idx);
>>
>> 			pt = stash->pt[!!lvl];
>> 			__i915_gem_object_pin_pages(pt->base);
>>@@ -369,10 +369,10 @@ static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
>> 		} else {
>> 			unsigned int count = gen8_pt_count(*start, end);
>>
>>-			DBG("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d } inserting pte\n",
>>-			    __func__, vm, lvl, *start, end,
>>-			    gen8_pd_index(*start, 0), count,
>>-			    atomic_read(&pt->used));
>>+			GTT_TRACE("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d } inserting pte\n",
>>+				  __func__, vm, lvl, *start, end,
>>+				  gen8_pd_index(*start, 0), count,
>>+				  atomic_read(&pt->used));
>>
>> 			atomic_add(count, &pt->used);
>> 			/* All other pdes may be simultaneously removed */
>>diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>index 4d6296cdbcfd..346ec8ec2edd 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>>+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>@@ -35,9 +35,9 @@
>> #define I915_GFP_ALLOW_FAIL (GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
>>
>> #if IS_ENABLED(CONFIG_DRM_I915_TRACE_GTT)
>>-#define DBG(...) trace_printk(__VA_ARGS__)
>>+#define GTT_TRACE(...) trace_printk(__VA_ARGS__)
>> #else
>>-#define DBG(...)
>>+#define GTT_TRACE(...)
>> #endif
>>
>> #define NALLOC 3 /* 1 normal, 1 for concurrent threads, 1 for preallocation */
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
