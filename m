Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C65833A8DC9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 02:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FDA56E444;
	Wed, 16 Jun 2021 00:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 352696E442
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 00:42:24 +0000 (UTC)
IronPort-SDR: s34XSSc021ZvKMECFxKpoH3bp8wnRvlxza00rbEsc1gi4DC6SxFm1dWVoAX/4mYlL8kthgoJRN
 n6PjQItKWFQw==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="186468446"
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="186468446"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 17:42:23 -0700
IronPort-SDR: GGp5j4G6Obk3PFbqI+vVL3JfIWOY3kHZQ6CJ2tajNXKXYmyaUUDZxh9GWKb1UOHc3kzuxTohbK
 gD1UTEpysu8A==
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="478896383"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 17:42:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Jun 2021 17:42:11 -0700
Message-Id: <20210616004213.1705079-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210616004213.1705079-1-matthew.d.roper@intel.com>
References: <20210616004213.1705079-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2.1 1/3] drm/i915: extract steered reg access
 to common function
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
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
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
