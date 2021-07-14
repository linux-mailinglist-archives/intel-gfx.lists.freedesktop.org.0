Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1343C7C8D
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FD616E15E;
	Wed, 14 Jul 2021 03:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E33256E155
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210256249"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="210256249"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:51 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031459"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:14:57 -0700
Message-Id: <20210714031540.3539704-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/50] drm/i915/xehp: Extra media engines -
 Part 2 (interrupts)
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

From: John Harrison <John.C.Harrison@Intel.com>

Xe_HP can have a lot of extra media engines. This patch adds the
interrupt handler support for them.

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c | 13 ++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h        |  3 +++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index c13462274fe8..b2de83be4d97 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -184,7 +184,13 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
 	intel_uncore_write(uncore, GEN11_BCS_RSVD_INTR_MASK,	~0);
 	intel_uncore_write(uncore, GEN11_VCS0_VCS1_INTR_MASK,	~0);
 	intel_uncore_write(uncore, GEN11_VCS2_VCS3_INTR_MASK,	~0);
+	if (HAS_ENGINE(gt, VCS4) || HAS_ENGINE(gt, VCS5))
+		intel_uncore_write(uncore, GEN12_VCS4_VCS5_INTR_MASK,   ~0);
+	if (HAS_ENGINE(gt, VCS6) || HAS_ENGINE(gt, VCS7))
+		intel_uncore_write(uncore, GEN12_VCS6_VCS7_INTR_MASK,   ~0);
 	intel_uncore_write(uncore, GEN11_VECS0_VECS1_INTR_MASK,	~0);
+	if (HAS_ENGINE(gt, VECS2) || HAS_ENGINE(gt, VECS3))
+		intel_uncore_write(uncore, GEN12_VECS2_VECS3_INTR_MASK, ~0);
 
 	intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE, 0);
 	intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_MASK,  ~0);
@@ -218,8 +224,13 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 	intel_uncore_write(uncore, GEN11_BCS_RSVD_INTR_MASK, ~smask);
 	intel_uncore_write(uncore, GEN11_VCS0_VCS1_INTR_MASK, ~dmask);
 	intel_uncore_write(uncore, GEN11_VCS2_VCS3_INTR_MASK, ~dmask);
+	if (HAS_ENGINE(gt, VCS4) || HAS_ENGINE(gt, VCS5))
+		intel_uncore_write(uncore, GEN12_VCS4_VCS5_INTR_MASK, ~dmask);
+	if (HAS_ENGINE(gt, VCS6) || HAS_ENGINE(gt, VCS7))
+		intel_uncore_write(uncore, GEN12_VCS6_VCS7_INTR_MASK, ~dmask);
 	intel_uncore_write(uncore, GEN11_VECS0_VECS1_INTR_MASK, ~dmask);
-
+	if (HAS_ENGINE(gt, VECS2) || HAS_ENGINE(gt, VECS3))
+		intel_uncore_write(uncore, GEN12_VECS2_VECS3_INTR_MASK, ~dmask);
 	/*
 	 * RPS interrupts will get enabled/disabled on demand when RPS itself
 	 * is enabled/disabled.
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index de0c27d67e15..af8f14fe4026 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8076,7 +8076,10 @@ enum {
 #define GEN11_BCS_RSVD_INTR_MASK	_MMIO(0x1900a0)
 #define GEN11_VCS0_VCS1_INTR_MASK	_MMIO(0x1900a8)
 #define GEN11_VCS2_VCS3_INTR_MASK	_MMIO(0x1900ac)
+#define GEN12_VCS4_VCS5_INTR_MASK	_MMIO(0x1900b0)
+#define GEN12_VCS6_VCS7_INTR_MASK	_MMIO(0x1900b4)
 #define GEN11_VECS0_VECS1_INTR_MASK	_MMIO(0x1900d0)
+#define GEN12_VECS2_VECS3_INTR_MASK	_MMIO(0x1900d4)
 #define GEN11_GUC_SG_INTR_MASK		_MMIO(0x1900e8)
 #define GEN11_GPM_WGBOXPERF_INTR_MASK	_MMIO(0x1900ec)
 #define GEN11_CRYPTO_RSVD_INTR_MASK	_MMIO(0x1900f0)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
