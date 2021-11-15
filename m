Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C68D45174F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 23:17:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 990466E51D;
	Mon, 15 Nov 2021 22:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426526E51D
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 22:16:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="231002759"
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="231002759"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 14:16:46 -0800
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="454191647"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 14:16:45 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Nov 2021 14:16:40 -0800
Message-Id: <20211115221640.30793-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Increase the
 live_engine_busy_stats sample period
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Irrespective of the backend for request submissions, busyness for an
engine with an active context is calculated using:

busyness = total + (current_time - context_switch_in_time)

In execlists mode of operation, the context switch events are handled
by the CPU. Context switch in/out time and current_time are captured
in CPU time domain using ktime_get().

In GuC mode of submission, context switch events are handled by GuC and
the times in the above formula are captured in GT clock domain. This
information is shared with the CPU through shared memory. This results
in 2 caveats:

1) The time taken between start of a batch and the time that CPU is able
to see the context_switch_in_time in shared memory is dependent on GuC
and memory bandwidth constraints.

2) Determining current_time requires an MMIO read that can take anywhere
between a few us to a couple ms. A reference CPU time is captured soon
after reading the MMIO so that the caller can compare the cpu delta
between 2 busyness samples. The issue here is that the CPU delta and the
busyness delta can be skewed because of the time taken to read the
register.

These 2 factors affect the accuracy of the selftest -
live_engine_busy_stats. For (1) the selftest waits until busyness stats
are visible to the CPU. The effects of (2) are more prominent for the
current busyness sample period of 100 us. Increase the busyness sample
period from 100 us to 10 ms to overccome (2).

v2: Fix checkpatch issues

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index 0bfd738dbf3a..75f6efc9882f 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -316,7 +316,7 @@ static int live_engine_busy_stats(void *arg)
 		ENGINE_TRACE(engine, "measuring busy time\n");
 		preempt_disable();
 		de = intel_engine_get_busy_time(engine, &t[0]);
-		udelay(100);
+		mdelay(10);
 		de = ktime_sub(intel_engine_get_busy_time(engine, &t[1]), de);
 		preempt_enable();
 		dt = ktime_sub(t[1], t[0]);
-- 
2.20.1

