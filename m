Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B220454A36F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 03:10:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1482F10FC91;
	Tue, 14 Jun 2022 01:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBF5A10FC9E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 01:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655169025; x=1686705025;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2oUF5MlfXp+z6TXgkOFKJ8lzqf+WCCXm32XHuJOaQEw=;
 b=Hhmbfx1/RNlHIZAe8lGzQrEncJXjRqTLeR0cP9SIQx/5UUidKMtQs5fN
 HE/IVTrMBU8x4xqYD+gtxokGjQnCUlKokK7X52wao7YQ1eoGhYs6JQkOP
 m3QCRYohrwYoCbDOQfDtF560ZD/KaYD87crXVOjyVoVjWh1zmExEDG6st
 ZC2Nta13njXGG6MRPpXI41OZBz/Ok7ffcsnD9ZsdhcEWdIx5c7+vIENwy
 edujdXGneEDV7OEn/ja060k3Yc0Up/Dq2EG4Cegk4lHbJ2/7eNeyq4oAB
 MGsVBGStL/dEKzjgq734YZeRIkEBZSiUCxvEr4jhC/S9he37ERk9oUiy6 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="340129774"
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; d="scan'208";a="340129774"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 18:10:25 -0700
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; d="scan'208";a="726549703"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 18:10:24 -0700
Date: Mon, 13 Jun 2022 18:10:24 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220614011024.GE48807@orsosgc001.jf.intel.com>
References: <20220611172711.2154962-1-alan.previn.teres.alexis@intel.com>
 <20220611172711.2154962-2-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220611172711.2154962-2-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
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

On Sat, Jun 11, 2022 at 10:27:11AM -0700, Alan Previn wrote:
>Using igt's gem-create and with additional patches to track object
>creation time, it was measured that guc_update_engine_gt_clks was
>getting called over 188 thousand times in the span of 15 seconds
>(running the test three times).
>
>Get a jiffies sample on every trigger and ensure we skip sampling
>if we are being called too soon. Use half of the ping_delay as a
>safe threshold.
>
>NOTE: with this change, the number of calls went down to just 14
>over the same span of time (matching the original intent of running
>about once every 24 seconds, at 19.2Mhz GT freq, per engine).
>
>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_engine_types.h      | 10 ++++++++++
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  9 +++++++++
> 2 files changed, 19 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>index 2286f96f5f87..63f4ecdf1606 100644
>--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>@@ -323,6 +323,16 @@ struct intel_engine_guc_stats {
> 	 * @start_gt_clk: GT clock time of last idle to active transition.
> 	 */
> 	u64 start_gt_clk;
>+
>+	/**
>+	 * @last_jiffies: Jiffies at last actual stats collection time
>+	 *
>+	 * We use this timestamp to ensure we don't oversample the
>+	 * stats because runtime power management events can trigger
>+	 * stats collection at much higher rates than required.
>+	 */
>+	u64 last_jiffies;
>+
> };
>
> struct intel_engine_cs {
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>index 5a1dfacf24ea..8f8bf6e40ccb 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>@@ -1167,6 +1167,15 @@ static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)

A user query will end up in guc_engine_busyness which will call 
guc_update_engine_gt_clks. Adding this logic here will affect accuracy.  

The other place where guc_update_engine_gt_clks is called is in the ping 
worker, but that worker runs at 1/8th the wrap around time for the gt 
clocks (32 bit). The last I checked the wrap around was at 22 seconds.

That leaves only the gt_park path. fwiu, this path runs too frequently 
and here we are updating the busyness stats. That is causing the 
enormous PCI traffic (lmem accesses). Only this path needs to be fixed, 
as in just use the same logic in the intel_guc_busyness_park() to decide 
whether to call __update_guc_busyness_stats or not.

Of course, if you are running the user query too frequently, then IMO we 
should not fix that in i915. 

If you haven't already, please make sure the igt@perf_pmu@ tests are all 
passing with any of these changes. There's also a selftest - 
live_engine_busy_stats that you need to make sure passes.

> 	struct intel_engine_guc_stats *stats = &engine->stats.guc;
> 	struct intel_guc *guc = &engine->gt->uc.guc;
> 	u32 last_switch, ctx_id, total;
>+	u64 newjiffs;
>+
>+	/* Don't worry about jiffies wrap-around, a rare additional sample won't have any impact */
>+	newjiffs = get_jiffies_64();
>+	if (stats->last_jiffies && (newjiffs - stats->last_jiffies <
>+	   (guc->timestamp.ping_delay << 1)))

You want to right shift by 1 for half the ping delay here.

Thanks,
Umesh

>+		return;
>+
>+	stats->last_jiffies = newjiffs;
>
> 	lockdep_assert_held(&guc->timestamp.lock);
>
>-- 
>2.25.1
>
