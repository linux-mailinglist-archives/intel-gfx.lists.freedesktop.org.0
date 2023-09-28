Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1197B1E89
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 15:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F1510E65E;
	Thu, 28 Sep 2023 13:34:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D540310E65D
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 13:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695908048; x=1727444048;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pRw2lgjHQe32QRkxxYTZ1Z8TrLKSsXPxTkJfyZbkLt4=;
 b=SWC8I51Jgtt/34Xl7dASeRtsnLfP4KAXJsPU0DM6+GNcc8IIpnIHgWES
 vDJqHC9CPJ52tvOsoSjlNH1L7ZPLmbV+gZKuOFsItHmz/d7Sp691/IDgE
 5nTrD5CaUNbh9kXxB7IGzKbyJcrCZg1QaiEPgBxCLy51wiWgwNnh1xpFj
 qJWeunbFiYRd1+xoSoKzYuz4mik+t2kOP7qw2gwXHuslWa/zSFRTFQ0Wy
 OypAXhq2w03mYw0Ves/FH7w73gGNGo6x2k+icl1xGOdzuABi1yjAI2A5j
 tSFE91Jj/NUmJD8Ez8syOgHy9Lj25j2cua2JiiEmOqtWxhqsZe+1FEdht w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="362304243"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="362304243"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 06:23:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="752961977"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="752961977"
Received: from mabrazak-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.160.185])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 06:23:10 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Thu, 28 Sep 2023 15:22:35 +0200
Message-Id: <20230928132235.349258-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH] drm/i915/gt: Force mcr lock takeover if
 hardware forgot to release it
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
Cc: Matt Roper <matthew.d.roper@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While discussing with Nirmoy offline about this other way for
fixing lock contention, he was a bit sceptical about it.

But why not? We know that if we fall into this case it's because
some hardware component has forgotten to release the lock within
100ms. So that we have two possibilities, either bail out or
force the unlock.

Forcing the unlock might not be respectful to the environment,
but, at the end, i915 should have the highest priority.

Nirmoy's solution here[*] is to force the unlock during gt
resume, but what happens if meantime the hardware takes the lock
and doesn't release it?

Open for opinions or profligate rejections :-)

I'm also curious to see what CI has to say about.

[*] https://patchwork.freedesktop.org/series/124397/

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 46 ++++++++++++++++----------
 1 file changed, 28 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index bf4a933de03a..e3eb3c2ace68 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -371,14 +371,34 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
 
 	lockdep_assert_not_held(&gt->uncore->lock);
 
-	/*
-	 * Starting with MTL, we need to coordinate not only with other
-	 * driver threads, but also with hardware/firmware agents.  A dedicated
-	 * locking register is used.
-	 */
-	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
-		err = wait_for(intel_uncore_read_fw(gt->uncore,
-						    MTL_STEER_SEMAPHORE) == 0x1, 100);
+	do {
+		/*
+		 * Starting with MTL, we need to coordinate not only with other
+		 * driver threads, but also with hardware/firmware agents.  A
+		 * dedicated locking register is used.
+		 */
+		if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
+			err = wait_for(intel_uncore_read_fw(gt->uncore,
+					      MTL_STEER_SEMAPHORE) == 0x1, 100);
+		else
+			break;
+
+		/*
+		 * In theory we should never fail to acquire the HW semaphore;
+		 * this would indicate some hardware/firmware is misbehaving and
+		 * not releasing it properly.
+		 */
+		if (err == -ETIMEDOUT) {
+			gt_warn(gt,
+				"hardware MCR steering semaphore timed out "
+				"forcing lock takeover\n");
+			/*
+			 * Force lock takeover
+			 */
+			intel_uncore_write_fw(gt->uncore,
+					      MTL_STEER_SEMAPHORE, 0x1);
+		}
+	} while (err != -ETIMEDOUT);
 
 	/*
 	 * Even on platforms with a hardware lock, we'll continue to grab
@@ -389,16 +409,6 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
 	spin_lock_irqsave(&gt->mcr_lock, __flags);
 
 	*flags = __flags;
-
-	/*
-	 * In theory we should never fail to acquire the HW semaphore; this
-	 * would indicate some hardware/firmware is misbehaving and not
-	 * releasing it properly.
-	 */
-	if (err == -ETIMEDOUT) {
-		gt_err_ratelimited(gt, "hardware MCR steering semaphore timed out");
-		add_taint_for_CI(gt->i915, TAINT_WARN);  /* CI is now unreliable */
-	}
 }
 
 /**
-- 
2.40.1

