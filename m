Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FE244E591
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 12:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7026F6E3D2;
	Fri, 12 Nov 2021 11:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BFBF6E3D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 11:28:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="296554596"
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="296554596"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 03:28:18 -0800
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="583884350"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.179])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 03:28:16 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Nov 2021 16:59:06 +0530
Message-Id: <20211112112906.12209-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <=20211026134022.20597-1-anshuman.gupta@intel.com>
References: <=20211026134022.20597-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/selftest: Disable IRQ for timestamp
 calculation
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
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

gt_pm selftest calculates engine ticks cycles and wall time
cycles by delta of respective engine elapsed TIMESTAMP and ktime
for period of 1000us.
It compares the engine ticks cycles with wall time cycles.

Disable local cpu interrupt so that interrupt handler does not
switch out the thread during measure_clocks() and prevent
miscalculation of engine tick cycles.

Suggested-by: Chris P Wilson <chris.p.wilson@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index b9441217ca3d..4c4953044548 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -40,9 +40,11 @@ static void measure_clocks(struct intel_engine_cs *engine,
 {
 	ktime_t dt[5];
 	u32 cycles[5];
+	unsigned long flags;
 	int i;
 
 	for (i = 0; i < 5; i++) {
+		local_irq_save(flags);
 		preempt_disable();
 		cycles[i] = -ENGINE_READ_FW(engine, RING_TIMESTAMP);
 		dt[i] = ktime_get();
@@ -52,6 +54,7 @@ static void measure_clocks(struct intel_engine_cs *engine,
 		dt[i] = ktime_sub(ktime_get(), dt[i]);
 		cycles[i] += ENGINE_READ_FW(engine, RING_TIMESTAMP);
 		preempt_enable();
+		local_irq_restore(flags);
 	}
 
 	/* Use the median of both cycle/dt; close enough */
-- 
2.26.2

