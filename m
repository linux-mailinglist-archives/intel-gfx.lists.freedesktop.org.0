Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B47D696FD9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 22:39:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D32C110E9BA;
	Tue, 14 Feb 2023 21:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E400B10E9B6;
 Tue, 14 Feb 2023 21:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676410727; x=1707946727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4jIM+rAvkJsfNZoozqXpV3F6jtWvzuAhTZfKZs20pEs=;
 b=Jf+mnsr0L2JqaCBtVgueKGAESLzb0JkHI4IT8HT94ozLrGU09K1tnmjT
 vsWTPO5wVafdMMscFjTjsGk86F3AQWPcJP3UdyEVBTU8q55bP6OCi9jfi
 NQNGOEEVkp5xnZGnjpi/NqvXLZXuJ+zGT97A3lnpZ4JKEfawdVF1CPOBt
 Ldb3DAVKR2yDXocZFmt3DD19r9Jg1kJohthZ7vPSmdrkpOND5yj5Phypu
 ChsGYczu/LXLmvGDoUhwSSvyBeleEOaU+kIidvGBgj5G6PbitlQ2WaSyw
 Xwwe0r7Gi58kfqD56qhmU3Mf1TiZSABfkAD1hbwyW/DMaM1GgW8boudxd Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="332587484"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="332587484"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 13:38:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="914898085"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="914898085"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga006.fm.intel.com with ESMTP; 14 Feb 2023 13:38:46 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 13:38:42 -0800
Message-Id: <20230214213844.2890382-7-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230214213844.2890382-1-alan.previn.teres.alexis@intel.com>
References: <20230214213844.2890382-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 6/8] drm/i915/pxp: MTL-KCR interrupt ctrl's
 are in GT-0
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Despite KCR subsystem being in the media-tile (close to the
GSC-CS), the IRQ controls for it are on GT-0 with other global
IRQ controls. Thus, add a helper for KCR hw interrupt
enable/disable functions to get the correct gt structure (for
uncore) for MTL.

In the helper, we get GT-0's handle for uncore when touching
IRQ registers despite the pxp->ctrl_gt being the media-tile.
No difference for legacy of course.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     | 24 +++++++++++++++++---
 drivers/gpu/drm/i915/pxp/intel_pxp_irq.h     |  8 +++++++
 3 files changed, 30 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index 4b8e70caa3ad..9f6e300486b4 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -44,7 +44,7 @@ static int pxp_terminate_get(void *data, u64 *val)
 static int pxp_terminate_set(void *data, u64 val)
 {
 	struct intel_pxp *pxp = data;
-	struct intel_gt *gt = pxp->ctrl_gt;
+	struct intel_gt *gt = intel_pxp_get_irq_gt(pxp);
 
 	if (!intel_pxp_is_active(pxp))
 		return -ENODEV;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
index 91e9622c07d0..3a725397349f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
@@ -4,10 +4,12 @@
  */
 #include <linux/workqueue.h>
 
+#include "gt/intel_gt.h"
 #include "gt/intel_gt_irq.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_gt_types.h"
 
+#include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
 
@@ -17,6 +19,22 @@
 #include "intel_pxp_types.h"
 #include "intel_runtime_pm.h"
 
+/**
+ * intel_pxp_get_irq_gt - Find the correct GT that owns KCR interrupts
+ * @pxp: pointer to pxp struct
+ *
+ * For platforms with a single GT, we return the pxp->ctrl_gt (as expected)
+ * but for MTL+ that has a media-tile, although the KCR engine is in the
+ * media-tile (i.e. pxp->ctrl_gt), the IRQ controls are on the root tile.
+ * In the end, we don't use pxp->ctrl_gt for IRQ, we always return root gt.
+ */
+struct intel_gt *intel_pxp_get_irq_gt(struct intel_pxp *pxp)
+{
+	WARN_ON_ONCE(!pxp->ctrl_gt->i915->media_gt && !gt_is_root(pxp->ctrl_gt));
+
+	return to_gt(pxp->ctrl_gt->i915);
+}
+
 /**
  * intel_pxp_irq_handler - Handles PXP interrupts.
  * @pxp: pointer to pxp struct
@@ -29,7 +47,7 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 	if (GEM_WARN_ON(!intel_pxp_is_enabled(pxp)))
 		return;
 
-	gt = pxp->ctrl_gt;
+	gt = intel_pxp_get_irq_gt(pxp);
 
 	lockdep_assert_held(gt->irq_lock);
 
@@ -68,7 +86,7 @@ static inline void pxp_irq_reset(struct intel_gt *gt)
 
 void intel_pxp_irq_enable(struct intel_pxp *pxp)
 {
-	struct intel_gt *gt = pxp->ctrl_gt;
+	struct intel_gt *gt = intel_pxp_get_irq_gt(pxp);
 
 	spin_lock_irq(gt->irq_lock);
 
@@ -83,7 +101,7 @@ void intel_pxp_irq_enable(struct intel_pxp *pxp)
 
 void intel_pxp_irq_disable(struct intel_pxp *pxp)
 {
-	struct intel_gt *gt = pxp->ctrl_gt;
+	struct intel_gt *gt = intel_pxp_get_irq_gt(pxp);
 
 	/*
 	 * We always need to submit a global termination when we re-enable the
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.h b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.h
index 8c292dc86f68..eea87c9eb62b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 struct intel_pxp;
+struct intel_gt;
 
 #define GEN12_DISPLAY_PXP_STATE_TERMINATED_INTERRUPT BIT(1)
 #define GEN12_DISPLAY_APP_TERMINATED_PER_FW_REQ_INTERRUPT BIT(2)
@@ -23,6 +24,8 @@ struct intel_pxp;
 void intel_pxp_irq_enable(struct intel_pxp *pxp);
 void intel_pxp_irq_disable(struct intel_pxp *pxp);
 void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir);
+struct intel_gt *intel_pxp_get_irq_gt(struct intel_pxp *pxp);
+
 #else
 static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
 {
@@ -35,6 +38,11 @@ static inline void intel_pxp_irq_enable(struct intel_pxp *pxp)
 static inline void intel_pxp_irq_disable(struct intel_pxp *pxp)
 {
 }
+
+static inline struct intel_gt *intel_pxp_get_irq_gt(struct intel_pxp *pxp)
+{
+	return NULL;
+}
 #endif
 
 #endif /* __INTEL_PXP_IRQ_H__ */
-- 
2.39.0

