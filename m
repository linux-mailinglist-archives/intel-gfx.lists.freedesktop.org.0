Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A08B9877FC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 18:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CACA010EBAF;
	Thu, 26 Sep 2024 16:57:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RpGLPlsF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D57A510EBAF;
 Thu, 26 Sep 2024 16:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727369879; x=1758905879;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6MktOnDu/h3bhuPjoNTm9VW1zMoGE6SmN6zk+YYuPKE=;
 b=RpGLPlsFYTdG89pUDTRnpMn6yUkricsSVvVjnJ4efqT3VrG4QYEAZP54
 pwW4dll1nMp/sKRnQRSGHWLfq6KnegrC2gOBWSuz69IpZ/ucgugxi3tFf
 2hSX1T7JjmcgIIu9t8rYLRU6ZmEJUPEQ7g3NE+Eg1fNpHsa8igR8mOizY
 pS4wIXjtNGvI3TOcTwnC3162q869QGo6MdjnwjHGCsQY6LA8qFKwa2P3D
 E+3qIhHhp4QCqPM5bxvk9z6Z/9EUC6B6LV8eq5/4aoEXfVS7ed9YjUfq0
 rwgpDdIen53rmxFltYO18XvcyIP+nKXLvgzwn8SD8k+c5l+8MxpEUVdpt w==;
X-CSE-ConnectionGUID: pbn9etipSxOoNKurzQnZmA==
X-CSE-MsgGUID: 0wjSFG13R7yVOjmrHXOvPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="37049985"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="37049985"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 09:57:59 -0700
X-CSE-ConnectionGUID: rvDntzYMTxeqZYAvFaKubw==
X-CSE-MsgGUID: zufeYbhUQyKuxjAIK3pJRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="77020844"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 09:57:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/3] drm/i915/irq: add struct i915_irq_regs triplet
Date: Thu, 26 Sep 2024 19:57:46 +0300
Message-Id: <a51dac3cb572e58654fa705b011d357671c17413.1727369787.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1727369787.git.jani.nikula@intel.com>
References: <cover.1727369787.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c           | 31 ++++++++++-------------
 drivers/gpu/drm/i915/i915_irq.h           | 30 ++++++++++------------
 drivers/gpu/drm/i915/i915_reg_defs.h      | 10 ++++++++
 drivers/gpu/drm/xe/display/ext/i915_irq.c | 31 ++++++++++-------------
 4 files changed, 51 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index a784803f709a..7938a44b5681 100644
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
 
 static void gen2_irq_reset(struct intel_uncore *uncore)
@@ -141,16 +140,14 @@ static void gen2_assert_iir_is_zero(struct intel_uncore *uncore)
 	intel_uncore_posting_read16(uncore, GEN2_IIR);
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
 
 static void gen2_irq_init(struct intel_uncore *uncore,
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
2.39.2

