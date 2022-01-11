Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 238F148A713
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 06:16:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82A4811221C;
	Tue, 11 Jan 2022 05:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1589F10FF49
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 05:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641878166; x=1673414166;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o0/IaTnDWTeedT7mIu6/2wL4XDAaKTODL1G8XVNi8h0=;
 b=DE8ZNevLfwFZMSX+2lpdh9K+WbyoKonmTpfBJ17WA7VTnAzRRNJH4/jc
 4wxdQg7jRqwfcpdtwIfEJizADXsPIQj/2cBpNJuRgFO64Ea5PuDhTCROU
 QraEPdBRE5E04eySDEbfQ+i1I+GDh2a16fmJ6lUpAJ7wEp71WgZZpNhXe
 xqkMETOIcxnwRsIaHm2jmI8OB0DEzi+gYEcQl9kQlU2fW1MZipR5jhhuE
 omVTckAEVCshEukLsCk0dTgqojh2/dOgTmL8mhwTpCBPocj3nP5lapWjj
 gmInZClH9I3kMhGyzcSEVc3jHIWI2BVRcOUZy7BUrjsSBlOF4Me4Y+Thf g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="243358340"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="243358340"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="474399154"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:05 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 21:15:53 -0800
Message-Id: <20220111051600.3429104-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220111051600.3429104-1-matthew.d.roper@intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/11] drm/i915: Use RING_PSMI_CTL rather
 than per-engine macros
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have a parameterized macro for RING_PSMI_CTL; let's use that instead
of the per-engine definitions where possible.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 10 +++++-----
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 19 +++++++------------
 drivers/gpu/drm/i915/intel_pm.c               |  4 ++--
 4 files changed, 15 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 3e6fac0340ef..56c009ecfdf2 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1002,15 +1002,15 @@ static void gen6_bsd_submit_request(struct i915_request *request)
 	/* Disable notification that the ring is IDLE. The GT
 	 * will then assume that it is busy and bring it out of rc6.
 	 */
-	intel_uncore_write_fw(uncore, GEN6_BSD_SLEEP_PSMI_CONTROL,
-			      _MASKED_BIT_ENABLE(GEN6_BSD_SLEEP_MSG_DISABLE));
+	intel_uncore_write_fw(uncore, RING_PSMI_CTL(GEN6_BSD_RING_BASE),
+			      _MASKED_BIT_ENABLE(GEN6_PSMI_SLEEP_MSG_DISABLE));
 
 	/* Clear the context id. Here be magic! */
 	intel_uncore_write64_fw(uncore, GEN6_BSD_RNCID, 0x0);
 
 	/* Wait for the ring not to be idle, i.e. for it to wake up. */
 	if (__intel_wait_for_register_fw(uncore,
-					 GEN6_BSD_SLEEP_PSMI_CONTROL,
+					 RING_PSMI_CTL(GEN6_BSD_RING_BASE),
 					 GEN6_BSD_SLEEP_INDICATOR,
 					 0,
 					 1000, 0, NULL))
@@ -1023,8 +1023,8 @@ static void gen6_bsd_submit_request(struct i915_request *request)
 	/* Let the ring send IDLE messages to the GT again,
 	 * and so let it sleep to conserve power when idle.
 	 */
-	intel_uncore_write_fw(uncore, GEN6_BSD_SLEEP_PSMI_CONTROL,
-			      _MASKED_BIT_DISABLE(GEN6_BSD_SLEEP_MSG_DISABLE));
+	intel_uncore_write_fw(uncore, RING_PSMI_CTL(GEN6_BSD_RING_BASE),
+			      _MASKED_BIT_DISABLE(GEN6_PSMI_SLEEP_MSG_DISABLE));
 
 	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 2d87dc81cd63..977619ea839a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2208,7 +2208,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 * For DG1 this only applies to A0.
 		 */
 		wa_masked_en(wal,
-			     GEN6_RC_SLEEP_PSMI_CONTROL,
+			     RING_PSMI_CTL(RENDER_RING_BASE),
 			     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
 			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a4c9d2005c46..0be2397fc61e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2314,6 +2314,13 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN6_VEVSYNC	(RING_SYNC_2(VEBOX_RING_BASE))
 #define GEN6_NOSYNC	INVALID_MMIO_REG
 #define RING_PSMI_CTL(base)	_MMIO((base) + 0x50)
+#define   GEN8_RC_SEMA_IDLE_MSG_DISABLE		REG_BIT(12)
+#define   GEN8_FF_DOP_CLOCK_GATE_DISABLE	REG_BIT(10)
+#define   GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE REG_BIT(7)
+#define   GEN6_BSD_GO_INDICATOR			REG_BIT(4)
+#define   GEN6_BSD_SLEEP_INDICATOR		REG_BIT(3)
+#define   GEN6_BSD_SLEEP_FLUSH_DISABLE		REG_BIT(2)
+#define   GEN6_PSMI_SLEEP_MSG_DISABLE		REG_BIT(0)
 #define RING_MAX_IDLE(base)	_MMIO((base) + 0x54)
 #define RING_HWS_PGA(base)	_MMIO((base) + 0x80)
 #define RING_ID(base)		_MMIO((base) + 0x8c)
@@ -2873,12 +2880,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
 #define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
 
-#define GEN6_RC_SLEEP_PSMI_CONTROL	_MMIO(0x2050)
-#define   GEN6_PSMI_SLEEP_MSG_DISABLE	(1 << 0)
-#define   GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE REG_BIT(7)
-#define   GEN8_RC_SEMA_IDLE_MSG_DISABLE	(1 << 12)
-#define   GEN8_FF_DOP_CLOCK_GATE_DISABLE	(1 << 10)
-
 #define GEN6_RCS_PWR_FSM _MMIO(0x22ac)
 #define GEN9_RCS_FE_FSM2 _MMIO(0x22a4)
 
@@ -2964,12 +2965,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define XEHP_EU_ENABLE			_MMIO(0x9134)
 #define XEHP_EU_ENA_MASK		0xFF
 
-#define GEN6_BSD_SLEEP_PSMI_CONTROL	_MMIO(0x12050)
-#define   GEN6_BSD_SLEEP_MSG_DISABLE	(1 << 0)
-#define   GEN6_BSD_SLEEP_FLUSH_DISABLE	(1 << 2)
-#define   GEN6_BSD_SLEEP_INDICATOR	(1 << 3)
-#define   GEN6_BSD_GO_INDICATOR		(1 << 4)
-
 /* On modern GEN architectures interrupt control consists of two sets
  * of registers. The first set pertains to the ring generating the
  * interrupt. The second control is for the functional block generating the
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 2d0955d13776..710dee28a014 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7654,7 +7654,7 @@ static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)
 		   intel_uncore_read(&dev_priv->uncore, GEN7_FF_THREAD_MODE) &
 		   ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));
 
-	intel_uncore_write(&dev_priv->uncore, GEN6_RC_SLEEP_PSMI_CONTROL,
+	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
 		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
 
 	/* WaDisableSDEUnitClockGating:bdw */
@@ -7795,7 +7795,7 @@ static void chv_init_clock_gating(struct drm_i915_private *dev_priv)
 		   ~(GEN8_FF_DS_REF_CNT_FFME | GEN7_FF_VS_REF_CNT_FFME));
 
 	/* WaDisableSemaphoreAndSyncFlipWait:chv */
-	intel_uncore_write(&dev_priv->uncore, GEN6_RC_SLEEP_PSMI_CONTROL,
+	intel_uncore_write(&dev_priv->uncore, RING_PSMI_CTL(RENDER_RING_BASE),
 		   _MASKED_BIT_ENABLE(GEN8_RC_SEMA_IDLE_MSG_DISABLE));
 
 	/* WaDisableCSUnitClockGating:chv */
-- 
2.34.1

