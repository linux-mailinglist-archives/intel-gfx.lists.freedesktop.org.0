Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2194C9901
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 00:16:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8561110E82E;
	Tue,  1 Mar 2022 23:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04F5B10E7C8;
 Tue,  1 Mar 2022 23:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646176588; x=1677712588;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zt/zRj+s4ly7KDte4w/sZ2aq8XN5BjRfx6lydpAJLVo=;
 b=gUKgVbkPWDaRAn+Dz0GpkVhsokrLT1er2XN3aPEz0GZeNyj9JJgjwGQd
 U1iL6rFsjvH1fHFPkrDx8WQzos/7PxkacgVSo3+Xyio+8Dg8+oV7SXAcK
 rnDl+0FOpCArVS7ZBy3uEIB9ny0aUaH8pOdTGLns1pX9VrljG4fhpIXCH
 2BXjoJiv6hgwCxrvZqmaPhCSWyTWnRYVa6Nn3FjAUE8UuvlF5/lHqarOc
 MLuV4fSvsjCHA9T/OGMdU/zDfmikTrxi49WkMHL+DHm9qpnt6s9ANWTrd
 U1s7nTzM+5SYQKuWGA1t0xNEQd0NOHrbVpJo42zdrEGunBwh5YkCgyChC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="316479054"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="316479054"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 15:16:27 -0800
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="709253455"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 15:16:26 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 15:15:39 -0800
Message-Id: <20220301231549.1817978-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301231549.1817978-1-matthew.d.roper@intel.com>
References: <20220301231549.1817978-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/13] drm/i915/xehp: Add Compute CS IRQ
 handlers
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add execlists and GuC interrupts for compute CS into existing IRQ handlers.

All compute command streamers belong to the same compute class, so the
only change needed to enable their interrupts is to program their GT engine
interrupt mask registers.

CCS0 shares the register with CCS1, while CCS2 and CCS3 are in a new one.

BSpec: 50844, 54029, 54030, 53223, 53224.
Original-author: Michel Thierry
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c  | 15 ++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h |  3 +++
 drivers/gpu/drm/i915/i915_drv.h         |  2 ++
 3 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 983264e10e0a..e443ac4c8059 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -100,7 +100,7 @@ gen11_gt_identity_handler(struct intel_gt *gt, const u32 identity)
 	if (unlikely(!intr))
 		return;
 
-	if (class <= COPY_ENGINE_CLASS)
+	if (class <= COPY_ENGINE_CLASS || class == COMPUTE_CLASS)
 		return gen11_engine_irq_handler(gt, class, instance, intr);
 
 	if (class == OTHER_CLASS)
@@ -182,6 +182,8 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
 	/* Disable RCS, BCS, VCS and VECS class engines. */
 	intel_uncore_write(uncore, GEN11_RENDER_COPY_INTR_ENABLE, 0);
 	intel_uncore_write(uncore, GEN11_VCS_VECS_INTR_ENABLE,	  0);
+	if (CCS_MASK(gt))
+		intel_uncore_write(uncore, GEN12_CCS_RSVD_INTR_ENABLE, 0);
 
 	/* Restore masks irqs on RCS, BCS, VCS and VECS engines. */
 	intel_uncore_write(uncore, GEN11_RCS0_RSVD_INTR_MASK,	~0);
@@ -195,6 +197,10 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
 	intel_uncore_write(uncore, GEN11_VECS0_VECS1_INTR_MASK,	~0);
 	if (HAS_ENGINE(gt, VECS2) || HAS_ENGINE(gt, VECS3))
 		intel_uncore_write(uncore, GEN12_VECS2_VECS3_INTR_MASK, ~0);
+	if (HAS_ENGINE(gt, CCS0) || HAS_ENGINE(gt, CCS1))
+		intel_uncore_write(uncore, GEN12_CCS0_CCS1_INTR_MASK, ~0);
+	if (HAS_ENGINE(gt, CCS2) || HAS_ENGINE(gt, CCS3))
+		intel_uncore_write(uncore, GEN12_CCS2_CCS3_INTR_MASK, ~0);
 
 	intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE, 0);
 	intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_MASK,  ~0);
@@ -225,6 +231,8 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 	/* Enable RCS, BCS, VCS and VECS class interrupts. */
 	intel_uncore_write(uncore, GEN11_RENDER_COPY_INTR_ENABLE, dmask);
 	intel_uncore_write(uncore, GEN11_VCS_VECS_INTR_ENABLE, dmask);
+	if (CCS_MASK(gt))
+		intel_uncore_write(uncore, GEN12_CCS_RSVD_INTR_ENABLE, smask);
 
 	/* Unmask irqs on RCS, BCS, VCS and VECS engines. */
 	intel_uncore_write(uncore, GEN11_RCS0_RSVD_INTR_MASK, ~smask);
@@ -238,6 +246,11 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 	intel_uncore_write(uncore, GEN11_VECS0_VECS1_INTR_MASK, ~dmask);
 	if (HAS_ENGINE(gt, VECS2) || HAS_ENGINE(gt, VECS3))
 		intel_uncore_write(uncore, GEN12_VECS2_VECS3_INTR_MASK, ~dmask);
+	if (HAS_ENGINE(gt, CCS0) || HAS_ENGINE(gt, CCS1))
+		intel_uncore_write(uncore, GEN12_CCS0_CCS1_INTR_MASK, ~dmask);
+	if (HAS_ENGINE(gt, CCS2) || HAS_ENGINE(gt, CCS3))
+		intel_uncore_write(uncore, GEN12_CCS2_CCS3_INTR_MASK, ~dmask);
+
 	/*
 	 * RPS interrupts will get enabled/disabled on demand when RPS itself
 	 * is enabled/disabled.
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 530807bfe9a0..69b826a3c381 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1468,6 +1468,7 @@
 #define GEN11_GPM_WGBOXPERF_INTR_ENABLE		_MMIO(0x19003c)
 #define GEN11_CRYPTO_RSVD_INTR_ENABLE		_MMIO(0x190040)
 #define GEN11_GUNIT_CSME_INTR_ENABLE		_MMIO(0x190044)
+#define GEN12_CCS_RSVD_INTR_ENABLE		_MMIO(0x190048)
 
 #define GEN11_INTR_IDENTITY_REG(x)		_MMIO(0x190060 + ((x) * 4))
 #define   GEN11_INTR_DATA_VALID			(1 << 31)
@@ -1493,6 +1494,8 @@
 #define GEN11_GPM_WGBOXPERF_INTR_MASK		_MMIO(0x1900ec)
 #define GEN11_CRYPTO_RSVD_INTR_MASK		_MMIO(0x1900f0)
 #define GEN11_GUNIT_CSME_INTR_MASK		_MMIO(0x1900f4)
+#define GEN12_CCS0_CCS1_INTR_MASK		_MMIO(0x190100)
+#define GEN12_CCS2_CCS3_INTR_MASK		_MMIO(0x190104)
 
 #define GEN12_SFC_DONE(n)			_MMIO(0x1cc000 + (n) * 0x1000)
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d26a3eaee270..457bc1993d19 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1249,6 +1249,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	ENGINE_INSTANCES_MASK(gt, VCS0, I915_MAX_VCS)
 #define VEBOX_MASK(gt) \
 	ENGINE_INSTANCES_MASK(gt, VECS0, I915_MAX_VECS)
+#define CCS_MASK(gt) \
+	ENGINE_INSTANCES_MASK(gt, CCS0, I915_MAX_CCS)
 
 /*
  * The Gen7 cmdparser copies the scanned buffer to the ggtt for execution
-- 
2.34.1

