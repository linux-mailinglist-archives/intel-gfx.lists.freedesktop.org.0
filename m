Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5075198D128
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 12:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8517E10E1FC;
	Wed,  2 Oct 2024 10:26:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cUXTY9vK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F33310E1FC;
 Wed,  2 Oct 2024 10:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727864812; x=1759400812;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=65O5AvFyaM1TKHCzYAD2xZ0EYHwzRzXBAwGAZkzUs8w=;
 b=cUXTY9vKjUWrrbhIyPgV63wmRWHNTbL13YhhaARLptLj/0tQwHI7fGL8
 RAYbP77FcNhrg/DiB+9Z82x/4Nl3J3yUrqExunLFDDvW7Zse/wRr3e/yC
 mr610oF2b+8eosOaGxvuZOS78Z6wOaY6abPBTUkzx4elHGOGTmI3dMVqs
 z/79A6fcN9Gq4Zx3rQt5dE5hTe5oq7s35Y4+JRfyKv3LqcOgvnmVKDPuG
 UJvBpRukhoxy7JG2DwhpZtLmqces5Lw+ESbaZ81scSTO2Ep/WpxxEEGbg
 xwUjcfnLYyz1s8GgLtJFX0G3OPxE9/CwrAZ/3SEwJGFN1FbujBPiIe6Y/ A==;
X-CSE-ConnectionGUID: TKe0UpFSQoyV6Ia4/XsdgQ==
X-CSE-MsgGUID: 9kpF0LKXQqeuGvdi5wvB3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="37614839"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="37614839"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 03:26:52 -0700
X-CSE-ConnectionGUID: zkO/nM86Qu2fu2hXWse2bQ==
X-CSE-MsgGUID: UOyP05ARRh6JtQPck9sivA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="78923424"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 03:26:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 1/3] drm/i915/irq: add struct i915_irq_regs triplet
Date: Wed,  2 Oct 2024 13:26:43 +0300
Message-Id: <20241002102645.136155-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Add struct i915_irq_regs to hold IMR/IER/IIR register offsets to pass to
gen3_irq_reset() and gen3_irq_init(). This helps in grouping the
registers and further cleanup.

Note: gen3_irq_reset() and gen3_irq_init() really did have the
IMR/IER/IIR parameters in different order.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c           | 31 ++++++++++-------------
 drivers/gpu/drm/i915/i915_irq.h           | 30 ++++++++++------------
 drivers/gpu/drm/i915/i915_reg_defs.h      | 10 ++++++++
 drivers/gpu/drm/xe/display/ext/i915_irq.c | 31 ++++++++++-------------
 4 files changed, 51 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index ef1a60fc26fa..db3b4f7f1759 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -77,19 +77,18 @@ static inline void pmu_irq_stats(struct drm_i915_private *i915,
 	WRITE_ONCE(i915->pmu.irq_count, i915->pmu.irq_count + 1);
 }
 
-void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
-		    i915_reg_t iir, i915_reg_t ier)
+void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
 {
-	intel_uncore_write(uncore, imr, 0xffffffff);
-	intel_uncore_posting_read(uncore, imr);
+	intel_uncore_write(uncore, regs.imr, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.imr);
 
-	intel_uncore_write(uncore, ier, 0);
+	intel_uncore_write(uncore, regs.ier, 0);
 
 	/* IIR can theoretically queue up two events. Be paranoid. */
-	intel_uncore_write(uncore, iir, 0xffffffff);
-	intel_uncore_posting_read(uncore, iir);
-	intel_uncore_write(uncore, iir, 0xffffffff);
-	intel_uncore_posting_read(uncore, iir);
+	intel_uncore_write(uncore, regs.iir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.iir);
+	intel_uncore_write(uncore, regs.iir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.iir);
 }
 
 /*
@@ -111,16 +110,14 @@ void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
 	intel_uncore_posting_read(uncore, reg);
 }
 
-void gen3_irq_init(struct intel_uncore *uncore,
-		   i915_reg_t imr, u32 imr_val,
-		   i915_reg_t ier, u32 ier_val,
-		   i915_reg_t iir)
+void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
+		   u32 imr_val, u32 ier_val)
 {
-	gen3_assert_iir_is_zero(uncore, iir);
+	gen3_assert_iir_is_zero(uncore, regs.iir);
 
-	intel_uncore_write(uncore, ier, ier_val);
-	intel_uncore_write(uncore, imr, imr_val);
-	intel_uncore_posting_read(uncore, imr);
+	intel_uncore_write(uncore, regs.ier, ier_val);
+	intel_uncore_write(uncore, regs.imr, imr_val);
+	intel_uncore_posting_read(uncore, regs.imr);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index cde4cac5eca2..361ba46eed76 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -42,37 +42,33 @@ void intel_synchronize_hardirq(struct drm_i915_private *i915);
 
 void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg);
 
-void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
-		    i915_reg_t iir, i915_reg_t ier);
+void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs);
 
-void gen3_irq_init(struct intel_uncore *uncore,
-		   i915_reg_t imr, u32 imr_val,
-		   i915_reg_t ier, u32 ier_val,
-		   i915_reg_t iir);
+void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
+		   u32 imr_val, u32 ier_val);
 
 #define GEN8_IRQ_RESET_NDX(uncore, type, which) \
 ({ \
 	unsigned int which_ = which; \
-	gen3_irq_reset((uncore), GEN8_##type##_IMR(which_), \
-		       GEN8_##type##_IIR(which_), GEN8_##type##_IER(which_)); \
+	gen3_irq_reset((uncore), I915_IRQ_REGS(GEN8_##type##_IMR(which_), \
+					       GEN8_##type##_IER(which_), \
+					       GEN8_##type##_IIR(which_))); \
 })
 
 #define GEN3_IRQ_RESET(uncore, type) \
-	gen3_irq_reset((uncore), type##IMR, type##IIR, type##IER)
+	gen3_irq_reset((uncore), I915_IRQ_REGS(type##IMR, type##IER, type##IIR))
 
 #define GEN8_IRQ_INIT_NDX(uncore, type, which, imr_val, ier_val) \
 ({ \
 	unsigned int which_ = which; \
-	gen3_irq_init((uncore), \
-		      GEN8_##type##_IMR(which_), imr_val, \
-		      GEN8_##type##_IER(which_), ier_val, \
-		      GEN8_##type##_IIR(which_)); \
+	gen3_irq_init((uncore), I915_IRQ_REGS(GEN8_##type##_IMR(which_), \
+					      GEN8_##type##_IER(which_), \
+					      GEN8_##type##_IIR(which_)), \
+		      imr_val, ier_val); \
 })
 
 #define GEN3_IRQ_INIT(uncore, type, imr_val, ier_val) \
-	gen3_irq_init((uncore), \
-		      type##IMR, imr_val, \
-		      type##IER, ier_val, \
-		      type##IIR)
+	gen3_irq_init((uncore), I915_IRQ_REGS(type##IMR, type##IER, type##IIR), \
+		      imr_val, ier_val)
 
 #endif /* __I915_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index a685db1e815d..e251bcc0c89f 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -284,4 +284,14 @@ typedef struct {
 #define i915_mmio_reg_equal(a, b) (i915_mmio_reg_offset(a) == i915_mmio_reg_offset(b))
 #define i915_mmio_reg_valid(r) (!i915_mmio_reg_equal(r, INVALID_MMIO_REG))
 
+/* A triplet for IMR/IER/IIR registers. */
+struct i915_irq_regs {
+	i915_reg_t imr;
+	i915_reg_t ier;
+	i915_reg_t iir;
+};
+
+#define I915_IRQ_REGS(_imr, _ier, _iir) \
+	((const struct i915_irq_regs){ .imr = (_imr), .ier = (_ier), .iir = (_iir) })
+
 #endif /* __I915_REG_DEFS__ */
diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/xe/display/ext/i915_irq.c
index eb40f1cb44f6..977ef47ea1f9 100644
--- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
+++ b/drivers/gpu/drm/xe/display/ext/i915_irq.c
@@ -7,19 +7,18 @@
 #include "i915_reg.h"
 #include "intel_uncore.h"
 
-void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
-		    i915_reg_t iir, i915_reg_t ier)
+void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
 {
-	intel_uncore_write(uncore, imr, 0xffffffff);
-	intel_uncore_posting_read(uncore, imr);
+	intel_uncore_write(uncore, regs.imr, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.imr);
 
-	intel_uncore_write(uncore, ier, 0);
+	intel_uncore_write(uncore, regs.ier, 0);
 
 	/* IIR can theoretically queue up two events. Be paranoid. */
-	intel_uncore_write(uncore, iir, 0xffffffff);
-	intel_uncore_posting_read(uncore, iir);
-	intel_uncore_write(uncore, iir, 0xffffffff);
-	intel_uncore_posting_read(uncore, iir);
+	intel_uncore_write(uncore, regs.iir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.iir);
+	intel_uncore_write(uncore, regs.iir, 0xffffffff);
+	intel_uncore_posting_read(uncore, regs.iir);
 }
 
 /*
@@ -42,16 +41,14 @@ void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
 	intel_uncore_posting_read(uncore, reg);
 }
 
-void gen3_irq_init(struct intel_uncore *uncore,
-		   i915_reg_t imr, u32 imr_val,
-		   i915_reg_t ier, u32 ier_val,
-		   i915_reg_t iir)
+void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
+		   u32 imr_val, u32 ier_val)
 {
-	gen3_assert_iir_is_zero(uncore, iir);
+	gen3_assert_iir_is_zero(uncore, regs.iir);
 
-	intel_uncore_write(uncore, ier, ier_val);
-	intel_uncore_write(uncore, imr, imr_val);
-	intel_uncore_posting_read(uncore, imr);
+	intel_uncore_write(uncore, regs.ier, ier_val);
+	intel_uncore_write(uncore, regs.imr, imr_val);
+	intel_uncore_posting_read(uncore, regs.imr);
 }
 
 bool intel_irqs_enabled(struct xe_device *xe)
-- 
2.39.5

