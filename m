Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FE012216B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 02:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DBC56E928;
	Tue, 17 Dec 2019 01:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA9476E928
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 01:23:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 17:23:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="227317225"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 16 Dec 2019 17:23:17 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 17:23:15 -0800
Message-Id: <20191217012316.13271-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
References: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/7] drm/i915/guc: Unify notify() functions
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

The Gen11+ and the legacy function differ in the register and value
written to interrupt the GuC. However, while on older gen the value
matches a bit on the register, on Gen11+ the value is a SW defined
payload that is sent to the FW. Since the FW behaves the same no matter
what value we pass to it, we can just write the same thing on all gens
and get rid of the function pointer by saving the register offset.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c | 21 ++++++++++-----------
 drivers/gpu/drm/i915/gt/uc/intel_guc.h | 12 ++++--------
 2 files changed, 14 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index daebfec0034c..9d6301292e13 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -32,18 +32,17 @@
  * just the HuC, but more are expected to land in the future).
  */
 
-static void gen8_guc_raise_irq(struct intel_guc *guc)
+void intel_guc_notify(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
 
-	intel_uncore_write(gt->uncore, GUC_SEND_INTERRUPT, GUC_SEND_TRIGGER);
-}
-
-static void gen11_guc_raise_irq(struct intel_guc *guc)
-{
-	struct intel_gt *gt = guc_to_gt(guc);
-
-	intel_uncore_write(gt->uncore, GEN11_GUC_HOST_INTERRUPT, 0);
+	/*
+	 * On Gen11+, the value written to the register is passes as a payload
+	 * to the FW. However, the FW currently treats all values the same way
+	 * (H2G interrupt), so we can just write the value that the HW expects
+	 * on older gens.
+	 */
+	intel_uncore_write(gt->uncore, guc->notify_reg, GUC_SEND_TRIGGER);
 }
 
 static inline i915_reg_t guc_send_reg(struct intel_guc *guc, u32 i)
@@ -178,12 +177,12 @@ void intel_guc_init_early(struct intel_guc *guc)
 	mutex_init(&guc->send_mutex);
 	spin_lock_init(&guc->irq_lock);
 	if (INTEL_GEN(i915) >= 11) {
-		guc->notify = gen11_guc_raise_irq;
+		guc->notify_reg = GEN11_GUC_HOST_INTERRUPT;
 		guc->interrupts.reset = gen11_reset_guc_interrupts;
 		guc->interrupts.enable = gen11_enable_guc_interrupts;
 		guc->interrupts.disable = gen11_disable_guc_interrupts;
 	} else {
-		guc->notify = gen8_guc_raise_irq;
+		guc->notify_reg = GUC_SEND_INTERRUPT;
 		guc->interrupts.reset = gen9_reset_guc_interrupts;
 		guc->interrupts.enable = gen9_enable_guc_interrupts;
 		guc->interrupts.disable = gen9_disable_guc_interrupts;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 253b1ac7716e..910d49590068 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -64,14 +64,14 @@ struct intel_guc {
 		enum forcewake_domains fw_domains;
 	} send_regs;
 
+	/* register used to send interrupts to the GuC FW */
+	i915_reg_t notify_reg;
+
 	/* Store msg (e.g. log flush) that we see while CTBs are disabled */
 	u32 mmio_msg;
 
 	/* To serialize the intel_guc_send actions */
 	struct mutex send_mutex;
-
-	/* GuC's FW specific notify function */
-	void (*notify)(struct intel_guc *guc);
 };
 
 static
@@ -88,11 +88,6 @@ intel_guc_send_and_receive(struct intel_guc *guc, const u32 *action, u32 len,
 				 response_buf, response_buf_size);
 }
 
-static inline void intel_guc_notify(struct intel_guc *guc)
-{
-	guc->notify(guc);
-}
-
 static inline void intel_guc_to_host_event_handler(struct intel_guc *guc)
 {
 	intel_guc_ct_event_handler(&guc->ct);
@@ -130,6 +125,7 @@ void intel_guc_init_send_regs(struct intel_guc *guc);
 void intel_guc_write_params(struct intel_guc *guc);
 int intel_guc_init(struct intel_guc *guc);
 void intel_guc_fini(struct intel_guc *guc);
+void intel_guc_notify(struct intel_guc *guc);
 int intel_guc_send_mmio(struct intel_guc *guc, const u32 *action, u32 len,
 			u32 *response_buf, u32 response_buf_size);
 int intel_guc_to_host_process_recv_msg(struct intel_guc *guc,
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
