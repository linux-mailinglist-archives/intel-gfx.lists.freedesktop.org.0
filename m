Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DBA46353F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 14:18:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 833676E5CF;
	Tue, 30 Nov 2021 13:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 655E66E5CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 13:18:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="236440730"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="236440730"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 05:18:37 -0800
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="744731674"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.179])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 05:18:36 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Nov 2021 18:50:05 +0530
Message-Id: <20211130132005.6305-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftest: Disable IRQ for timestamp
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

v2:
- nuke preempt_{disable,enable}, as disable_local_irq()
  disable the preemption. (Chris)

Cc: Chris P Wilson <chris.p.wilson@intel.com>
Cc: Badal Nilawar <badal.nilawar@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index b9441217ca3d..55c5cdb99f45 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -43,7 +43,7 @@ static void measure_clocks(struct intel_engine_cs *engine,
 	int i;
 
 	for (i = 0; i < 5; i++) {
-		preempt_disable();
+		local_irq_disable();
 		cycles[i] = -ENGINE_READ_FW(engine, RING_TIMESTAMP);
 		dt[i] = ktime_get();
 
@@ -51,7 +51,7 @@ static void measure_clocks(struct intel_engine_cs *engine,
 
 		dt[i] = ktime_sub(ktime_get(), dt[i]);
 		cycles[i] += ENGINE_READ_FW(engine, RING_TIMESTAMP);
-		preempt_enable();
+		local_irq_enable();
 	}
 
 	/* Use the median of both cycle/dt; close enough */
-- 
2.26.2

