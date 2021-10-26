Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8250E43B349
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 15:39:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555DD6E453;
	Tue, 26 Oct 2021 13:39:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F28C86E453
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 13:39:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="253444085"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="253444085"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 06:39:47 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="537138397"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 06:39:45 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: badal.nilawar@intel.com, Anshuman Gupta <anshuman.gupta@intel.com>,
 Chris P Wilson <chris.p.wilson@intel.com>
Date: Tue, 26 Oct 2021 19:10:22 +0530
Message-Id: <20211026134022.20597-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915/selftest: Disable irq to calc eng timestamp
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

gt_pm selftest calculates engine ticks cycles and wall time
cycles by delta of respective engine elapsed TIMESTAMP and ktime
for period of 1000us.
It compares the engine ticks cycles with wall time cycles.

Disable local cpu interrupt so that interrupt handler
should not preempt the measure_clocks() to calculate
correct engine ticks cycles.

Suggested-by: Chris P Wilson <chris.p.wilson@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index b9441217ca3d..9cf76398bdf5 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -43,6 +43,7 @@ static void measure_clocks(struct intel_engine_cs *engine,
 	int i;
 
 	for (i = 0; i < 5; i++) {
+		local_irq_disable();
 		preempt_disable();
 		cycles[i] = -ENGINE_READ_FW(engine, RING_TIMESTAMP);
 		dt[i] = ktime_get();
@@ -52,6 +53,7 @@ static void measure_clocks(struct intel_engine_cs *engine,
 		dt[i] = ktime_sub(ktime_get(), dt[i]);
 		cycles[i] += ENGINE_READ_FW(engine, RING_TIMESTAMP);
 		preempt_enable();
+		local_irq_enable();
 	}
 
 	/* Use the median of both cycle/dt; close enough */
-- 
2.26.2

