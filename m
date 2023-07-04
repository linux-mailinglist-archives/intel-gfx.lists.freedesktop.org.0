Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCF4746B8D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 10:09:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD9C10E095;
	Tue,  4 Jul 2023 08:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F4410E095
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 08:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688458142; x=1719994142;
 h=from:to:cc:subject:date:message-id;
 bh=S3/dIU/+6RGKkxS1aMK76tc6F/rtBslv/z5n1xHbjLQ=;
 b=i6UCDM7VqezPuAac9OJERs5zdoM/5rMT5nBwNuvEGbxqYIAx80NDk1Tg
 zxTdlv/6OwTGdxheD9iMuyxjxPve76qfg4KlWcJXcxZ8pT4U0KGTWhU6y
 w3SLt1Vcs2CtZOpuLOwu0HBLcSjS5z3yImHBJ0DIp/nY6IpZ7z7KFbKwe
 jskO36Eh3AnhiCFWQobsZcj/n39dKAalD2HMCg34CGpjVJb3Nw3ND8AZ3
 N7VILjV3f3f5q5yKlAWZI+YRC9kqJ5ojY60NXEZ8UYzU0sPB7PvsQp1Ut
 q2tjgIKAfcoSJc3QgMt8Cygsw+dtbme9IKyWCERTOQ+symGJ5FKBmZkCG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="429103466"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="429103466"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 01:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="722017521"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="722017521"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by fmsmga007.fm.intel.com with ESMTP; 04 Jul 2023 01:08:59 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jul 2023 16:07:27 +0800
Message-Id: <20230704080727.2665-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Refine mmio debug flow to avoid bad
 unlock balance detected.
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Perform reboot stresss test on a kernel build with lockdebug flag enabled.
Bad unlock balanace detected would happened sometimes. Below is the
problematic scenario. If params.mmio_debug value was changed at step #4.
And it would trigger this issue. Modify code flow that decide to
enable/disable mmio debug before unclaimed_reg_debug() can avoid
this symptom.

    1. GEN6_READ_HEADER is called with params.mmio_debug = 0
    2. unclaimed_reg_debug(before = true) is called
    3. unclaimed_reg_debug return without taking a lock
       because params.mmio_debug == 0
    4. other thread modifies params.mmio_debug to 1
    5. GEN6_READ_FOOTER is called with params.mmio_debug != 0
    6. unclaimed_reg_debug tries to assert non-taken lock (first WARN)
    7. unclaimed_reg_debug tries to release non-taken lock (second WARN)

Closes:https://gitlab.freedesktop.org/drm/intel/-/issues/8749
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 796ebfe6c550..9d665978cc43 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1931,9 +1931,6 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
 		    const bool read,
 		    const bool before)
 {
-	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
-		return;
-
 	/* interrupts are disabled and re-enabled around uncore->lock usage */
 	lockdep_assert_held(&uncore->lock);
 
@@ -2001,13 +1998,16 @@ __gen2_read(64)
 #define GEN6_READ_HEADER(x) \
 	u32 offset = i915_mmio_reg_offset(reg); \
 	unsigned long irqflags; \
+	const bool mmio_debug = likely(uncore->i915->params.mmio_debug) || uncore->debug; \
 	u##x val = 0; \
 	assert_rpm_wakelock_held(uncore->rpm); \
 	spin_lock_irqsave(&uncore->lock, irqflags); \
-	unclaimed_reg_debug(uncore, reg, true, true)
+	if (mmio_debug) \
+		unclaimed_reg_debug(uncore, reg, true, true)
 
 #define GEN6_READ_FOOTER \
-	unclaimed_reg_debug(uncore, reg, true, false); \
+	if (mmio_debug) \
+		unclaimed_reg_debug(uncore, reg, true, false); \
 	spin_unlock_irqrestore(&uncore->lock, irqflags); \
 	trace_i915_reg_rw(false, reg, val, sizeof(val), trace); \
 	return val
-- 
2.17.1

