Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DF33BDF36
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 00:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EACEF6E5CC;
	Tue,  6 Jul 2021 22:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AC276E5C3;
 Tue,  6 Jul 2021 22:02:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="206190489"
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="206190489"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 15:02:19 -0700
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="410367918"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 15:02:19 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue,  6 Jul 2021 15:20:08 -0700
Message-Id: <20210706222010.101522-6-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210706222010.101522-1-matthew.brost@intel.com>
References: <20210706222010.101522-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/guc: Add stall timer to non
 blocking CTB send function
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement a stall timer which fails H2G CTBs once a period of time
with no forward progress is reached to prevent deadlock.

v2:
 (Michal)
  - Improve error message in ct_deadlock()
  - Set broken when ct_deadlock() returns true
  - Return -EPIPE on ct_deadlock()
v3:
 (Michal)
  - Add ms to stall timer comment
 (Matthew)
  - Move broken check to intel_guc_ct_send()

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 62 ++++++++++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  4 ++
 2 files changed, 59 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 3d6cba8d91ad..db3e85b89573 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -4,6 +4,9 @@
  */
 
 #include <linux/circ_buf.h>
+#include <linux/ktime.h>
+#include <linux/time64.h>
+#include <linux/timekeeping.h>
 
 #include "i915_drv.h"
 #include "intel_guc_ct.h"
@@ -316,6 +319,7 @@ int intel_guc_ct_enable(struct intel_guc_ct *ct)
 		goto err_deregister;
 
 	ct->enabled = true;
+	ct->stall_time = KTIME_MAX;
 
 	return 0;
 
@@ -389,9 +393,6 @@ static int ct_write(struct intel_guc_ct *ct,
 	u32 *cmds = ctb->cmds;
 	unsigned int i;
 
-	if (unlikely(ctb->broken))
-		return -EPIPE;
-
 	if (unlikely(desc->status))
 		goto corrupted;
 
@@ -505,6 +506,25 @@ static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
 	return err;
 }
 
+#define GUC_CTB_TIMEOUT_MS	1500
+static inline bool ct_deadlocked(struct intel_guc_ct *ct)
+{
+	long timeout = GUC_CTB_TIMEOUT_MS;
+	bool ret = ktime_ms_delta(ktime_get(), ct->stall_time) > timeout;
+
+	if (unlikely(ret)) {
+		struct guc_ct_buffer_desc *send = ct->ctbs.send.desc;
+		struct guc_ct_buffer_desc *recv = ct->ctbs.send.desc;
+
+		CT_ERROR(ct, "Communication stalled for %lld ms, desc status=%#x,%#x\n",
+			 ktime_ms_delta(ktime_get(), ct->stall_time),
+			 send->status, recv->status);
+		ct->ctbs.send.broken = true;
+	}
+
+	return ret;
+}
+
 static inline bool h2g_has_room(struct intel_guc_ct_buffer *ctb, u32 len_dw)
 {
 	struct guc_ct_buffer_desc *desc = ctb->desc;
@@ -516,6 +536,26 @@ static inline bool h2g_has_room(struct intel_guc_ct_buffer *ctb, u32 len_dw)
 	return space >= len_dw;
 }
 
+static int has_room_nb(struct intel_guc_ct *ct, u32 len_dw)
+{
+	struct intel_guc_ct_buffer *ctb = &ct->ctbs.send;
+
+	lockdep_assert_held(&ct->ctbs.send.lock);
+
+	if (unlikely(!h2g_has_room(ctb, len_dw))) {
+		if (ct->stall_time == KTIME_MAX)
+			ct->stall_time = ktime_get();
+
+		if (unlikely(ct_deadlocked(ct)))
+			return -EPIPE;
+		else
+			return -EBUSY;
+	}
+
+	ct->stall_time = KTIME_MAX;
+	return 0;
+}
+
 static int ct_send_nb(struct intel_guc_ct *ct,
 		      const u32 *action,
 		      u32 len,
@@ -528,11 +568,9 @@ static int ct_send_nb(struct intel_guc_ct *ct,
 
 	spin_lock_irqsave(&ctb->lock, spin_flags);
 
-	ret = h2g_has_room(ctb, len + GUC_CTB_HDR_LEN);
-	if (unlikely(!ret)) {
-		ret = -EBUSY;
+	ret = has_room_nb(ct, len + GUC_CTB_HDR_LEN);
+	if (unlikely(ret))
 		goto out;
-	}
 
 	fence = ct_get_next_fence(ct);
 	ret = ct_write(ct, action, len, fence, flags);
@@ -575,8 +613,13 @@ static int ct_send(struct intel_guc_ct *ct,
 retry:
 	spin_lock_irqsave(&ctb->lock, flags);
 	if (unlikely(!h2g_has_room(ctb, len + GUC_CTB_HDR_LEN))) {
+		if (ct->stall_time == KTIME_MAX)
+			ct->stall_time = ktime_get();
 		spin_unlock_irqrestore(&ctb->lock, flags);
 
+		if (unlikely(ct_deadlocked(ct)))
+			return -EPIPE;
+
 		if (msleep_interruptible(sleep_period_ms))
 			return -EINTR;
 		sleep_period_ms = sleep_period_ms << 1;
@@ -584,6 +627,8 @@ static int ct_send(struct intel_guc_ct *ct,
 		goto retry;
 	}
 
+	ct->stall_time = KTIME_MAX;
+
 	fence = ct_get_next_fence(ct);
 	request.fence = fence;
 	request.status = 0;
@@ -646,6 +691,9 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
 		return -ENODEV;
 	}
 
+	if (unlikely(ct->ctbs.send.broken))
+		return -EPIPE;
+
 	if (flags & INTEL_GUC_CT_SEND_NB)
 		return ct_send_nb(ct, action, len, flags);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index 5bb8bef024c8..bee03794c1eb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -9,6 +9,7 @@
 #include <linux/interrupt.h>
 #include <linux/spinlock.h>
 #include <linux/workqueue.h>
+#include <linux/ktime.h>
 
 #include "intel_guc_fwif.h"
 
@@ -68,6 +69,9 @@ struct intel_guc_ct {
 		struct list_head incoming; /* incoming requests */
 		struct work_struct worker; /* handler for incoming requests */
 	} requests;
+
+	/** @stall_time: time of first time a CTB submission is stalled */
+	ktime_t stall_time;
 };
 
 void intel_guc_ct_init_early(struct intel_guc_ct *ct);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
