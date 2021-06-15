Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5783A7545
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 05:35:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 292CE6E1F7;
	Tue, 15 Jun 2021 03:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D16989FAD
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 03:35:12 +0000 (UTC)
IronPort-SDR: TuEUtagFmYD+K5FNQaKZ7oYGy2sBguMoiDQUiys1/l3PCBlKuM/tQOv56kkBG/KibPmLeLVwCX
 BOgsYx/PGqeQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="267064993"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="267064993"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 20:35:08 -0700
IronPort-SDR: dr3q8hBk77zwQLItK7jIw7dFrkMnJ+WqclezyRyPSuwHG9PEJCayzD/qN+wEyE6CXVJGwXnKXe
 oCdm0y/cWlyg==
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="415274361"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 20:35:08 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Jun 2021 20:34:31 -0700
Message-Id: <20210615033433.1574397-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210615033433.1574397-1-matthew.d.roper@intel.com>
References: <20210615033433.1574397-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: extract steered reg access to
 common function
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

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

New steering cases will be added in the follow-up patches, so prepare a
common helper to avoid code duplication.

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 41 +----------------
 drivers/gpu/drm/i915/intel_uncore.c       | 55 +++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_uncore.h       |  6 +++
 3 files changed, 63 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 9ceddfbb1687..8b913c6961c3 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1105,45 +1105,8 @@ static u32
 read_subslice_reg(const struct intel_engine_cs *engine,
 		  int slice, int subslice, i915_reg_t reg)
 {
-	struct drm_i915_private *i915 = engine->i915;
-	struct intel_uncore *uncore = engine->uncore;
-	u32 mcr_mask, mcr_ss, mcr, old_mcr, val;
-	enum forcewake_domains fw_domains;
-
-	if (GRAPHICS_VER(i915) >= 11) {
-		mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
-		mcr_ss = GEN11_MCR_SLICE(slice) | GEN11_MCR_SUBSLICE(subslice);
-	} else {
-		mcr_mask = GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
-		mcr_ss = GEN8_MCR_SLICE(slice) | GEN8_MCR_SUBSLICE(subslice);
-	}
-
-	fw_domains = intel_uncore_forcewake_for_reg(uncore, reg,
-						    FW_REG_READ);
-	fw_domains |= intel_uncore_forcewake_for_reg(uncore,
-						     GEN8_MCR_SELECTOR,
-						     FW_REG_READ | FW_REG_WRITE);
-
-	spin_lock_irq(&uncore->lock);
-	intel_uncore_forcewake_get__locked(uncore, fw_domains);
-
-	old_mcr = mcr = intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);
-
-	mcr &= ~mcr_mask;
-	mcr |= mcr_ss;
-	intel_uncore_write_fw(uncore, GEN8_MCR_SELECTOR, mcr);
-
-	val = intel_uncore_read_fw(uncore, reg);
-
-	mcr &= ~mcr_mask;
-	mcr |= old_mcr & mcr_mask;
-
-	intel_uncore_write_fw(uncore, GEN8_MCR_SELECTOR, mcr);
-
-	intel_uncore_forcewake_put__locked(uncore, fw_domains);
-	spin_unlock_irq(&uncore->lock);
-
-	return val;
+	return intel_uncore_read_with_mcr_steering(engine->uncore, reg,
+						   slice, subslice);
 }
 
 /* NB: please notice the memset */
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 1bed8f666048..d067524f9162 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2277,6 +2277,61 @@ intel_uncore_forcewake_for_reg(struct intel_uncore *uncore,
 	return fw_domains;
 }
 
+u32 intel_uncore_read_with_mcr_steering_fw(struct intel_uncore *uncore,
+					   i915_reg_t reg,
+					   int slice, int subslice)
+{
+	u32 mcr_mask, mcr_ss, mcr, old_mcr, val;
+
+	lockdep_assert_held(&uncore->lock);
+
+	if (GRAPHICS_VER(uncore->i915) >= 11) {
+		mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
+		mcr_ss = GEN11_MCR_SLICE(slice) | GEN11_MCR_SUBSLICE(subslice);
+	} else {
+		mcr_mask = GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
+		mcr_ss = GEN8_MCR_SLICE(slice) | GEN8_MCR_SUBSLICE(subslice);
+	}
+
+	old_mcr = mcr = intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);
+
+	mcr &= ~mcr_mask;
+	mcr |= mcr_ss;
+	intel_uncore_write_fw(uncore, GEN8_MCR_SELECTOR, mcr);
+
+	val = intel_uncore_read_fw(uncore, reg);
+
+	mcr &= ~mcr_mask;
+	mcr |= old_mcr & mcr_mask;
+
+	intel_uncore_write_fw(uncore, GEN8_MCR_SELECTOR, mcr);
+
+	return val;
+}
+
+u32 intel_uncore_read_with_mcr_steering(struct intel_uncore *uncore,
+					i915_reg_t reg, int slice, int subslice)
+{
+	enum forcewake_domains fw_domains;
+	u32 val;
+
+	fw_domains = intel_uncore_forcewake_for_reg(uncore, reg,
+						    FW_REG_READ);
+	fw_domains |= intel_uncore_forcewake_for_reg(uncore,
+						     GEN8_MCR_SELECTOR,
+						     FW_REG_READ | FW_REG_WRITE);
+
+	spin_lock_irq(&uncore->lock);
+	intel_uncore_forcewake_get__locked(uncore, fw_domains);
+
+	val = intel_uncore_read_with_mcr_steering_fw(uncore, reg, slice, subslice);
+
+	intel_uncore_forcewake_put__locked(uncore, fw_domains);
+	spin_unlock_irq(&uncore->lock);
+
+	return val;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/mock_uncore.c"
 #include "selftests/intel_uncore.c"
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 59f0da8f1fbb..a18bdb57af7b 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -182,6 +182,12 @@ intel_uncore_has_fifo(const struct intel_uncore *uncore)
 	return uncore->flags & UNCORE_HAS_FIFO;
 }
 
+u32 intel_uncore_read_with_mcr_steering_fw(struct intel_uncore *uncore,
+					   i915_reg_t reg,
+					   int slice, int subslice);
+u32 intel_uncore_read_with_mcr_steering(struct intel_uncore *uncore,
+					i915_reg_t reg,	int slice, int subslice);
+
 void
 intel_uncore_mmio_debug_init_early(struct intel_uncore_mmio_debug *mmio_debug);
 void intel_uncore_init_early(struct intel_uncore *uncore,
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
