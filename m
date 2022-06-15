Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C0354D037
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 19:42:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9245D1127B7;
	Wed, 15 Jun 2022 17:42:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD591127C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 17:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655314931; x=1686850931;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nZq4N1S4n/5AInu7n5RVgy3ZYRY4ub2FUuK2h3cFOG0=;
 b=ThA6xK7XhsGz2J3dS9ANkX3dh82O9Vu0w1Zym2ShgsGxSUK+KB6zbfva
 QjZYoRGlwruWtrypggBbG9aDF3dqjkZbQxK+O72acGw4Jsmn531LUhfK5
 rsAArYYyjqdCfZIqyUsPKHVok2NLQSUjPN3OkTjwDV43wsnFrx4ZHCkHi
 3m+gVjuz1uVNblXmEPdwOMJ5yfuTO+R48D4FhNRv8K0fhWQiEtjAoAe16
 n1g+Oc6hAq1oatb1xdBXfEegaXCXp2glbwpa/JbH9SKFw37psTl5ObTsb
 Z0MqH0T63djLHrbD57rIbY7HixbeewK8JvrQFjilm9XEidNbYsL4hHMK5 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="267740672"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="267740672"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 10:42:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="911784855"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 10:42:09 -0700
Date: Wed, 15 Jun 2022 10:42:08 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220615174208.GL48807@orsosgc001.jf.intel.com>
References: <20220614004616.45561-1-umesh.nerlige.ramappa@intel.com>
 <2d4f5fd5-a2d2-68ac-d7ae-bc81b14327bc@linux.intel.com>
 <20220614163257.GF48807@orsosgc001.jf.intel.com>
 <979dcbee-5c3e-e14f-f31e-ddcf3edd8a5f@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <979dcbee-5c3e-e14f-f31e-ddcf3edd8a5f@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] i915/pmu: Wire GuC backend to per-client
 busyness
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

On Wed, Jun 15, 2022 at 08:08:40AM +0100, Tvrtko Ursulin wrote:
>
>On 14/06/2022 17:32, Umesh Nerlige Ramappa wrote:
>>On Tue, Jun 14, 2022 at 02:30:42PM +0100, Tvrtko Ursulin wrote:
>>>
>>>On 14/06/2022 01:46, Nerlige Ramappa, Umesh wrote:
>>>>From: John Harrison <John.C.Harrison@Intel.com>
>>>>
>>>>GuC provides engine_id and last_switch_in ticks for an active 
>>>>context in the
>>>>pphwsp. The context image provides a 32 bit total ticks which is 
>>>>the accumulated
>>>>by the context (a.k.a. context[CTX_TIMESTAMP]). This information 
>>>>is used to
>>>>calculate the context busyness as follows:
>>>>
>>>>If the engine_id is valid, then busyness is the sum of 
>>>>accumulated total ticks
>>>>and active ticks. Active ticks is calculated with current gt 
>>>>time as reference.
>>>>
>>>>If engine_id is invalid, busyness is equal to accumulated total ticks.
>>>>
>>>>Since KMD (CPU) retrieves busyness data from 2 sources - GPU and GuC, a
>>>>potential race was highlighted in an earlier review that can 
>>>>lead to double
>>>>accounting of busyness. While the solution to this is a wip, 
>>>>busyness is still
>>>>usable for platforms running GuC submission.
>>>>
>>>>Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>>---
>>>> drivers/gpu/drm/i915/gt/intel_context.c       | 11 +++-
>>>> drivers/gpu/drm/i915/gt/intel_context.h       |  6 +-
>>>> drivers/gpu/drm/i915/gt/intel_context_types.h |  3 +
>>>> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  5 ++
>>>> .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 55 ++++++++++++++++++-
>>>> drivers/gpu/drm/i915/i915_drm_client.c        |  6 +-
>>>> 6 files changed, 75 insertions(+), 11 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_context.c 
>>>>b/drivers/gpu/drm/i915/gt/intel_context.c
>>>>index 4070cb5711d8..a49f313db911 100644
>>>>--- a/drivers/gpu/drm/i915/gt/intel_context.c
>>>>+++ b/drivers/gpu/drm/i915/gt/intel_context.c
>>>>@@ -576,16 +576,23 @@ void 
>>>>intel_context_bind_parent_child(struct intel_context *parent,
>>>>     child->parallel.parent = parent;
>>>> }
>>>>-u64 intel_context_get_total_runtime_ns(const struct intel_context *ce)
>>>>+u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>>>> {
>>>>     u64 total, active;
>>>>+    if (ce->ops->update_stats)
>>>>+        ce->ops->update_stats(ce);
>>>>+
>>>>     total = ce->stats.runtime.total;
>>>>     if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>>>>         total *= ce->engine->gt->clock_period_ns;
>>>>     active = READ_ONCE(ce->stats.active);
>>>>-    if (active)
>>>>+    /*
>>>>+     * GuC backend returns the actual time the context was 
>>>>active, so skip
>>>>+     * the calculation here for GuC.
>>>>+     */
>>>>+    if (active && !intel_engine_uses_guc(ce->engine))
>>>
>>>What is the point of looking at ce->stats.active in GuC mode? I 
>>>see that guc_context_update_stats/__guc_context_update_clks 
>>>touches it, but I can't spot that there is a purpose to it. This 
>>>is the only conditional reading it but it is short-circuited in 
>>>GuC case.
>>>
>>>Also, since a GuC only vfunc (update_stats) has been added, I 
>>>wonder why not just fork the whole runtime query 
>>>(ce->get_total_runtime_ns). I think that would end up cleaner.
>>>
>>>>         active = intel_context_clock() - active;
>>>>     return total + active;
>>
>>In case of GuC the active is used directly here since the active 
>>updated in update_stats is equal to the active time of the context 
>>already. I will look into separate vfunc.
>
>Ah right, I misread something. But yes, I think a separate vfunc will 
>look cleaner. Another option (instead of vfunc) is a similar flag to 
>control the express the flavour of active?

Flag does sound simpler. The guc context ops can have something like 
COPS_RUNTIME_ACTIVE_TOTAL that means total active time.

>
>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_context.h 
>>>>b/drivers/gpu/drm/i915/gt/intel_context.h
>>>>index b7d3214d2cdd..5fc7c19ab29b 100644
>>>>--- a/drivers/gpu/drm/i915/gt/intel_context.h
>>>>+++ b/drivers/gpu/drm/i915/gt/intel_context.h
>>>>@@ -56,7 +56,7 @@ static inline bool 
>>>>intel_context_is_parent(struct intel_context *ce)
>>>>     return !!ce->parallel.number_children;
>>>> }
>>
>>snip
>>
>>>>+static void __guc_context_update_clks(struct intel_context *ce)
>>>>+{
>>>>+    struct intel_guc *guc = ce_to_guc(ce);
>>>>+    struct intel_gt *gt = ce->engine->gt;
>>>>+    u32 *pphwsp, last_switch, engine_id;
>>>>+    u64 start_gt_clk = 0, active = 0;
>>>
>>>No need to init these two.
>>>
>>>>+    unsigned long flags;
>>>>+    ktime_t unused;
>>>>+
>>>>+    spin_lock_irqsave(&guc->timestamp.lock, flags);
>>>>+
>>>>+    pphwsp = ((void *)ce->lrc_reg_state) - LRC_STATE_OFFSET;
>>>>+    last_switch = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO]);
>>>>+    engine_id = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID]);
>>>>+
>>>>+    guc_update_pm_timestamp(guc, &unused);
>>>>+
>>>>+    if (engine_id != 0xffffffff && last_switch) {
>>>>+        start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
>>>>+        __extend_last_switch(guc, &start_gt_clk, last_switch);
>>>>+        active = intel_gt_clock_interval_to_ns(gt, 
>>>>guc->timestamp.gt_stamp - start_gt_clk);
>>>>+        WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
>>>>+        WRITE_ONCE(ce->stats.active, active);
>>>>+    } else {
>>>>+        lrc_update_runtime(ce);
>>>
>>>Why is this called from here? Presumably it was called already 
>>>from guc_context_unpin if here code things context is not active. 
>>>Or will be called shortly, once context save is done.
>>
>>guc_context_unpin is only called in the path of ce->sched_disable. 
>>The sched_disable is implemented in GuC (H2G message). Once the 
>>corresponding G2H response is received, the context is actually 
>>unpinned, eventually calling guc_context_unpin. Also the context may 
>>not necessarily be disabled after each context exit.
>
>So if I understand correctly, lrc runtime is only updated if someone 
>is reading the busyness and not as part of normal context state 
>transitions?

If you mean context_in/out events (like csb interrupts), only GuC can 
see those events. KMD has no visibility into that. These 3 paths call 
lrc_update_runtime.

user query: (engine_id != 0xffffffff && last_switch) translates to GuC 
being within context_in and context_out events, so updating it outside 
of this window is one way to report the correct busyness.

worker: guc_timestamp_ping()  also updates context stats (infrequently) 
for all contexts primarily to take care of overflows.

context unpin: Existing code calls lrc_update_runtime only when 
unpinning the context which takes care of accumulating busyness when 
requests are retired.

Thanks,
Umesh

>
>Regards,
>
>Tvrtko
