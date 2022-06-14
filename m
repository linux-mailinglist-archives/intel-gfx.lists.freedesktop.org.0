Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6272D54B634
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 18:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE03112852;
	Tue, 14 Jun 2022 16:32:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED21112855
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 16:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655224377; x=1686760377;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SHOjZ4nR4dxSvSemHuLcQqX/5TLBOJ+99+MeIR9IGbE=;
 b=QrJ8YpSYOTxaxIAKaBeclyQ3RNqj3tC3HGaGSISrOfCiUUWsbABj3qJq
 9zTXd5WYzyABJtHKqYghS8tHmEeH6n4l4dmpEcEdK6ZHK8LrchwI2C9+e
 ZqBHqiOZnBLqoz9ZSm84UtrgRwncEtND0QZpCED14623tHAOdsuozP3qy
 ybM+nEOsEn0FUwH9vm9c8cWAJwc6B79c3hfsb7o+bltLjyqLedOraGz6J
 G66GEyKaNhPtLv+ItQ1kotVg9BIu1JAaalKMrMCpx4Xb3ApX4xq1fNduQ
 Lp3LBZCd7qlkC+U1+YQtZbnm2Fo219HIQgjlrODzRxr1iPqxLusnpBpFq A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="279707491"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="279707491"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 09:32:57 -0700
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="558415140"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 09:32:57 -0700
Date: Tue, 14 Jun 2022 09:32:57 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220614163257.GF48807@orsosgc001.jf.intel.com>
References: <20220614004616.45561-1-umesh.nerlige.ramappa@intel.com>
 <2d4f5fd5-a2d2-68ac-d7ae-bc81b14327bc@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <2d4f5fd5-a2d2-68ac-d7ae-bc81b14327bc@linux.intel.com>
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

On Tue, Jun 14, 2022 at 02:30:42PM +0100, Tvrtko Ursulin wrote:
>
>On 14/06/2022 01:46, Nerlige Ramappa, Umesh wrote:
>>From: John Harrison <John.C.Harrison@Intel.com>
>>
>>GuC provides engine_id and last_switch_in ticks for an active context in the
>>pphwsp. The context image provides a 32 bit total ticks which is the accumulated
>>by the context (a.k.a. context[CTX_TIMESTAMP]). This information is used to
>>calculate the context busyness as follows:
>>
>>If the engine_id is valid, then busyness is the sum of accumulated total ticks
>>and active ticks. Active ticks is calculated with current gt time as reference.
>>
>>If engine_id is invalid, busyness is equal to accumulated total ticks.
>>
>>Since KMD (CPU) retrieves busyness data from 2 sources - GPU and GuC, a
>>potential race was highlighted in an earlier review that can lead to double
>>accounting of busyness. While the solution to this is a wip, busyness is still
>>usable for platforms running GuC submission.
>>
>>Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>---
>>  drivers/gpu/drm/i915/gt/intel_context.c       | 11 +++-
>>  drivers/gpu/drm/i915/gt/intel_context.h       |  6 +-
>>  drivers/gpu/drm/i915/gt/intel_context_types.h |  3 +
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  5 ++
>>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 55 ++++++++++++++++++-
>>  drivers/gpu/drm/i915/i915_drm_client.c        |  6 +-
>>  6 files changed, 75 insertions(+), 11 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
>>index 4070cb5711d8..a49f313db911 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_context.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_context.c
>>@@ -576,16 +576,23 @@ void intel_context_bind_parent_child(struct intel_context *parent,
>>  	child->parallel.parent = parent;
>>  }
>>-u64 intel_context_get_total_runtime_ns(const struct intel_context *ce)
>>+u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>>  {
>>  	u64 total, active;
>>+	if (ce->ops->update_stats)
>>+		ce->ops->update_stats(ce);
>>+
>>  	total = ce->stats.runtime.total;
>>  	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>>  		total *= ce->engine->gt->clock_period_ns;
>>  	active = READ_ONCE(ce->stats.active);
>>-	if (active)
>>+	/*
>>+	 * GuC backend returns the actual time the context was active, so skip
>>+	 * the calculation here for GuC.
>>+	 */
>>+	if (active && !intel_engine_uses_guc(ce->engine))
>
>What is the point of looking at ce->stats.active in GuC mode? I see 
>that guc_context_update_stats/__guc_context_update_clks touches it, 
>but I can't spot that there is a purpose to it. This is the only 
>conditional reading it but it is short-circuited in GuC case.
>
>Also, since a GuC only vfunc (update_stats) has been added, I wonder 
>why not just fork the whole runtime query (ce->get_total_runtime_ns). 
>I think that would end up cleaner.
>
>>  		active = intel_context_clock() - active;
>>  	return total + active;

In case of GuC the active is used directly here since the active updated 
in update_stats is equal to the active time of the context already. I 
will look into separate vfunc.

>>diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
>>index b7d3214d2cdd..5fc7c19ab29b 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_context.h
>>+++ b/drivers/gpu/drm/i915/gt/intel_context.h
>>@@ -56,7 +56,7 @@ static inline bool intel_context_is_parent(struct intel_context *ce)
>>  	return !!ce->parallel.number_children;
>>  }

snip

>>+static void __guc_context_update_clks(struct intel_context *ce)
>>+{
>>+	struct intel_guc *guc = ce_to_guc(ce);
>>+	struct intel_gt *gt = ce->engine->gt;
>>+	u32 *pphwsp, last_switch, engine_id;
>>+	u64 start_gt_clk = 0, active = 0;
>
>No need to init these two.
>
>>+	unsigned long flags;
>>+	ktime_t unused;
>>+
>>+	spin_lock_irqsave(&guc->timestamp.lock, flags);
>>+
>>+	pphwsp = ((void *)ce->lrc_reg_state) - LRC_STATE_OFFSET;
>>+	last_switch = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO]);
>>+	engine_id = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID]);
>>+
>>+	guc_update_pm_timestamp(guc, &unused);
>>+
>>+	if (engine_id != 0xffffffff && last_switch) {
>>+		start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
>>+		__extend_last_switch(guc, &start_gt_clk, last_switch);
>>+		active = intel_gt_clock_interval_to_ns(gt, guc->timestamp.gt_stamp - start_gt_clk);
>>+		WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
>>+		WRITE_ONCE(ce->stats.active, active);
>>+	} else {
>>+		lrc_update_runtime(ce);
>
>Why is this called from here? Presumably it was called already from 
>guc_context_unpin if here code things context is not active. Or will 
>be called shortly, once context save is done.

guc_context_unpin is only called in the path of ce->sched_disable. The 
sched_disable is implemented in GuC (H2G message). Once the 
corresponding G2H response is received, the context is actually 
unpinned, eventually calling guc_context_unpin. Also the context may not 
necessarily be disabled after each context exit.

>
>Also, some comments here describing the double accounting race would 
>be good. Or if there are some already in the physical engine code just 
>reference that function.

Will do,

Thanks,
Umesh
>
>Regards,
>
>Tvrtko
>
