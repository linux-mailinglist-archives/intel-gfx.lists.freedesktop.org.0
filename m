Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61499119490
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 22:16:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F027A6E964;
	Tue, 10 Dec 2019 21:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392CE6E963
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 21:16:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 13:09:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="244990575"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002.fm.intel.com with ESMTP; 10 Dec 2019 13:09:28 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 13:09:17 -0800
Message-Id: <20191210210919.30846-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191210210919.30846-1-daniele.ceraolospurio@intel.com>
References: <20191210210919.30846-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/guc: remove function pointers for
 send/receive calls
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

Since we started using CT buffers on all gens, the function pointers can
only be set to either the _nop() or the _ct() functions. Since the
_nop() case applies to when the CT are disabled, we can just handle that
case in the _ct() functions and call them directly.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 22 +++-----------
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 29 -------------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 14 +++++++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     | 17 +++++++++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  6 ++--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  1 -
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 18 ++++--------
 8 files changed, 40 insertions(+), 69 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 332b12a574fb..3183b4426c7b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -16,7 +16,7 @@
 static void guc_irq_handler(struct intel_guc *guc, u16 iir)
 {
 	if (iir & GUC_INTR_GUC2HOST)
-		intel_guc_to_host_event_handler(guc);
+		intel_guc_to_host_event_handler_ct(guc);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 922a19635d20..eb94635eeecd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -177,8 +177,6 @@ void intel_guc_init_early(struct intel_guc *guc)
 
 	mutex_init(&guc->send_mutex);
 	spin_lock_init(&guc->irq_lock);
-	guc->send = intel_guc_send_nop;
-	guc->handler = intel_guc_to_host_event_handler_nop;
 	if (INTEL_GEN(i915) >= 11) {
 		guc->notify = gen11_guc_raise_irq;
 		guc->interrupts.reset = gen11_reset_guc_interrupts;
@@ -403,18 +401,6 @@ void intel_guc_fini(struct intel_guc *guc)
 	intel_uc_fw_cleanup_fetch(&guc->fw);
 }
 
-int intel_guc_send_nop(struct intel_guc *guc, const u32 *action, u32 len,
-		       u32 *response_buf, u32 response_buf_size)
-{
-	WARN(1, "Unexpected send: action=%#x\n", *action);
-	return -ENODEV;
-}
-
-void intel_guc_to_host_event_handler_nop(struct intel_guc *guc)
-{
-	WARN(1, "Unexpected event: no suitable handler\n");
-}
-
 /*
  * This function implements the MMIO based host to GuC interface.
  */
@@ -515,7 +501,7 @@ int intel_guc_sample_forcewake(struct intel_guc *guc)
 		/* bit 0 and 1 are for Render and Media domain separately */
 		action[1] = GUC_FORCEWAKE_RENDER | GUC_FORCEWAKE_MEDIA;
 
-	return intel_guc_send(guc, action, ARRAY_SIZE(action));
+	return intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
 }
 
 /**
@@ -536,7 +522,7 @@ int intel_guc_auth_huc(struct intel_guc *guc, u32 rsa_offset)
 		rsa_offset
 	};
 
-	return intel_guc_send(guc, action, ARRAY_SIZE(action));
+	return intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
 }
 
 /**
@@ -573,7 +559,7 @@ int intel_guc_suspend(struct intel_guc *guc)
 	intel_uncore_write(uncore, SOFT_SCRATCH(14),
 			   INTEL_GUC_SLEEP_STATE_INVALID_MASK);
 
-	ret = intel_guc_send(guc, action, ARRAY_SIZE(action));
+	ret = intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
 	if (ret)
 		return ret;
 
@@ -625,7 +611,7 @@ int intel_guc_resume(struct intel_guc *guc)
 	if (!intel_guc_submission_is_enabled(guc))
 		return 0;
 
-	return intel_guc_send(guc, action, ARRAY_SIZE(action));
+	return intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index cd09c912e361..c0b32db1c6ad 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -70,40 +70,15 @@ struct intel_guc {
 	/* To serialize the intel_guc_send actions */
 	struct mutex send_mutex;
 
-	/* GuC's FW specific send function */
-	int (*send)(struct intel_guc *guc, const u32 *data, u32 len,
-		    u32 *response_buf, u32 response_buf_size);
-
-	/* GuC's FW specific event handler function */
-	void (*handler)(struct intel_guc *guc);
-
 	/* GuC's FW specific notify function */
 	void (*notify)(struct intel_guc *guc);
 };
 
-static
-inline int intel_guc_send(struct intel_guc *guc, const u32 *action, u32 len)
-{
-	return guc->send(guc, action, len, NULL, 0);
-}
-
-static inline int
-intel_guc_send_and_receive(struct intel_guc *guc, const u32 *action, u32 len,
-			   u32 *response_buf, u32 response_buf_size)
-{
-	return guc->send(guc, action, len, response_buf, response_buf_size);
-}
-
 static inline void intel_guc_notify(struct intel_guc *guc)
 {
 	guc->notify(guc);
 }
 
-static inline void intel_guc_to_host_event_handler(struct intel_guc *guc)
-{
-	guc->handler(guc);
-}
-
 /* GuC addresses above GUC_GGTT_TOP also don't map through the GTT */
 #define GUC_GGTT_TOP	0xFEE00000
 
@@ -136,12 +111,8 @@ void intel_guc_init_send_regs(struct intel_guc *guc);
 void intel_guc_write_params(struct intel_guc *guc);
 int intel_guc_init(struct intel_guc *guc);
 void intel_guc_fini(struct intel_guc *guc);
-int intel_guc_send_nop(struct intel_guc *guc, const u32 *action, u32 len,
-		       u32 *response_buf, u32 response_buf_size);
 int intel_guc_send_mmio(struct intel_guc *guc, const u32 *action, u32 len,
 			u32 *response_buf, u32 response_buf_size);
-void intel_guc_to_host_event_handler(struct intel_guc *guc);
-void intel_guc_to_host_event_handler_nop(struct intel_guc *guc);
 int intel_guc_to_host_process_recv_msg(struct intel_guc *guc,
 				       const u32 *payload, u32 len);
 int intel_guc_sample_forcewake(struct intel_guc *guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 96ce6d74f0b2..60b19f83e153 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -515,13 +515,19 @@ static int ct_send(struct intel_guc_ct *ct,
 /*
  * Command Transport (CT) buffer based GuC send function.
  */
-int intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len,
-		      u32 *response_buf, u32 response_buf_size)
+int intel_guc_send_and_receive_ct(struct intel_guc *guc, const u32 *action,
+				  u32 len, u32 *response_buf,
+				  u32 response_buf_size)
 {
 	struct intel_guc_ct *ct = &guc->ct;
 	u32 status = ~0; /* undefined */
 	int ret;
 
+	if (unlikely(!ct->enabled)) {
+		WARN(1, "Unexpected send: action=%#x\n", *action);
+		return -ENODEV;
+	}
+
 	mutex_lock(&guc->send_mutex);
 
 	ret = ct_send(ct, action, len, response_buf, response_buf_size, &status);
@@ -799,8 +805,10 @@ void intel_guc_to_host_event_handler_ct(struct intel_guc *guc)
 	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
 	int err = 0;
 
-	if (!ct->enabled)
+	if (!ct->enabled) {
+		WARN(1, "Unexpected event: no suitable handler\n");
 		return;
+	}
 
 	do {
 		err = ctb_read(ctb, msg);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
index 4bb1d1fcc860..929483b1f013 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
@@ -66,8 +66,21 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct);
 int intel_guc_ct_enable(struct intel_guc_ct *ct);
 void intel_guc_ct_disable(struct intel_guc_ct *ct);
 
-int intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len,
-		      u32 *response_buf, u32 response_buf_size);
+static inline bool intel_guc_ct_enabled(struct intel_guc_ct *ct)
+{
+	return ct->enabled;
+}
+
+int
+intel_guc_send_and_receive_ct(struct intel_guc *guc, const u32 *action, u32 len,
+			      u32 *response_buf, u32 response_buf_size);
+
+static inline int
+intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len)
+{
+	return intel_guc_send_and_receive_ct(guc, action, len, NULL, 0);
+}
+
 void intel_guc_to_host_event_handler_ct(struct intel_guc *guc);
 
 #endif /* _INTEL_GUC_CT_H_ */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index caed0d57e704..5938127fb129 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -27,7 +27,7 @@ static int guc_action_flush_log_complete(struct intel_guc *guc)
 		INTEL_GUC_ACTION_LOG_BUFFER_FILE_FLUSH_COMPLETE
 	};
 
-	return intel_guc_send(guc, action, ARRAY_SIZE(action));
+	return intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
 }
 
 static int guc_action_flush_log(struct intel_guc *guc)
@@ -37,7 +37,7 @@ static int guc_action_flush_log(struct intel_guc *guc)
 		0
 	};
 
-	return intel_guc_send(guc, action, ARRAY_SIZE(action));
+	return intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
 }
 
 static int guc_action_control_log(struct intel_guc *guc, bool enable,
@@ -52,7 +52,7 @@ static int guc_action_control_log(struct intel_guc *guc, bool enable,
 
 	GEM_BUG_ON(verbosity > GUC_LOG_VERBOSITY_MAX);
 
-	return intel_guc_send(guc, action, ARRAY_SIZE(action));
+	return intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
 }
 
 static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 172220e83079..fd7008bb128c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -43,7 +43,6 @@
  * Firmware writes a success/fail code back to the action register after
  * processes the request. The kernel driver polls waiting for this update and
  * then proceeds.
- * See intel_guc_send()
  *
  * Work Items:
  * There are several types of work items that the host may place into a
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 7566af8ab46e..18a5eaf3052c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -123,6 +123,11 @@ static void __uc_free_load_err_log(struct intel_uc *uc)
 		i915_gem_object_put(log);
 }
 
+static inline bool guc_communication_enabled(struct intel_guc *guc)
+{
+	return intel_guc_ct_enabled(&guc->ct);
+}
+
 /*
  * Events triggered while CT buffers are disabled are logged in the SCRATCH_15
  * register using the same bits used in the CT message payload. Since our
@@ -158,7 +163,7 @@ static void guc_handle_mmio_msg(struct intel_guc *guc)
 	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 
 	/* we need communication to be enabled to reply to GuC */
-	GEM_BUG_ON(guc->handler == intel_guc_to_host_event_handler_nop);
+	GEM_BUG_ON(!guc_communication_enabled(guc));
 
 	if (!guc->mmio_msg)
 		return;
@@ -185,11 +190,6 @@ static void guc_disable_interrupts(struct intel_guc *guc)
 	guc->interrupts.disable(guc);
 }
 
-static inline bool guc_communication_enabled(struct intel_guc *guc)
-{
-	return guc->send != intel_guc_send_nop;
-}
-
 static int guc_enable_communication(struct intel_guc *guc)
 {
 	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
@@ -205,9 +205,6 @@ static int guc_enable_communication(struct intel_guc *guc)
 	if (ret)
 		return ret;
 
-	guc->send = intel_guc_send_ct;
-	guc->handler = intel_guc_to_host_event_handler_ct;
-
 	/* check for mmio messages received before/during the CT enable */
 	guc_get_mmio_msg(guc);
 	guc_handle_mmio_msg(guc);
@@ -235,9 +232,6 @@ static void guc_disable_communication(struct intel_guc *guc)
 
 	guc_disable_interrupts(guc);
 
-	guc->send = intel_guc_send_nop;
-	guc->handler = intel_guc_to_host_event_handler_nop;
-
 	intel_guc_ct_disable(&guc->ct);
 
 	/*
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
