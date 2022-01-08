Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BB6488154
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jan 2022 05:41:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE08D11361D;
	Sat,  8 Jan 2022 04:41:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DED20113604
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 04:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641616861; x=1673152861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hhnnsONbQkkJZO/dRNVKoeQSGoyg9v2hkPqLB7xxKy0=;
 b=l3cYSqYNr1P+4ViGRBo0FDFAaPZAvtUxw+RnrLmx+bDD09tMSl8mnOGO
 jJ+Sz5OJNMxA4pawi//qwiQ1uWfBxXANAK9uD1QcC5O/AQCIRxQAR2rb7
 yB+sNY/k7We/wJTcAkGemKoHNe95XHxPxdiJuMrN8YK5qaOX89t6XOFQR
 cxRVm6fqSW2foFQauNx9m2u188na9QhpfJa/uNCLtn4ztPCa1sNuc8aee
 QJioyVq10e57CD2ucIIPkuHEsZN5IJqB2/DMxS81glIXQ3CVoDhisZKoJ
 3STUCPtCE7oF/DAHBMznAeWuUyMxei+MExWI7Qcen1USzpCl+Td1BTdYS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10220"; a="240533985"
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="240533985"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 20:41:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="668975717"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 20:41:00 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 20:40:51 -0800
Message-Id: <20220108044055.3123418-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220108044055.3123418-1-matthew.d.roper@intel.com>
References: <20220108044055.3123418-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/7] drm/i915: Parameterize ECOSKPD
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

Combine the separate render and blitter register definitions into a
single definition.  We already know we have some workarounds on an
upcoming platform that will need to update the ECOSKPD register for
other engines too, so this helps pave the way for that.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  2 +-
 drivers/gpu/drm/i915/gvt/handlers.c         |  4 ++--
 drivers/gpu/drm/i915/i915_reg.h             | 14 ++++++--------
 drivers/gpu/drm/i915/intel_pm.c             |  6 ++++--
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index ab3277a3d593..2d87dc81cd63 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2536,7 +2536,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 * they are already accustomed to from before contexts were
 		 * enabled.
 		 */
-		wa_add(wal, ECOSKPD,
+		wa_add(wal, ECOSKPD(RENDER_RING_BASE),
 		       0, _MASKED_BIT_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE),
 		       0 /* XXX bit doesn't stick on Broadwater */,
 		       true);
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 3938df0db188..329d30a36f4f 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -2877,9 +2877,9 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 
 	MMIO_D(_MMIO(0x3c), D_ALL);
 	MMIO_D(_MMIO(0x860), D_ALL);
-	MMIO_D(ECOSKPD, D_ALL);
+	MMIO_D(ECOSKPD(RENDER_RING_BASE), D_ALL);
 	MMIO_D(_MMIO(0x121d0), D_ALL);
-	MMIO_D(GEN6_BLITTER_ECOSKPD, D_ALL);
+	MMIO_D(ECOSKPD(BLT_RING_BASE), D_ALL);
 	MMIO_D(_MMIO(0x41d0), D_ALL);
 	MMIO_D(GAC_ECO_BITS, D_ALL);
 	MMIO_D(_MMIO(0x6200), D_ALL);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 23330faecf07..5b1f93112001 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3107,10 +3107,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GFX_FLSH_CNTL	_MMIO(0x2170) /* 915+ only */
 #define GFX_FLSH_CNTL_GEN6	_MMIO(0x101008)
 #define   GFX_FLSH_CNTL_EN	(1 << 0)
-#define ECOSKPD		_MMIO(0x21d0)
-#define   ECO_CONSTANT_BUFFER_SR_DISABLE REG_BIT(4)
-#define   ECO_GATING_CX_ONLY	(1 << 3)
-#define   ECO_FLIP_DONE		(1 << 0)
+#define ECOSKPD(base)		_MMIO((base) + 0x1d0)
+#define   ECO_CONSTANT_BUFFER_SR_DISABLE	REG_BIT(4)
+#define   ECO_GATING_CX_ONLY			REG_BIT(3)
+#define   GEN6_BLITTER_FBC_NOTIFY		REG_BIT(3)
+#define   ECO_FLIP_DONE				REG_BIT(0)
+#define   GEN6_BLITTER_LOCK_SHIFT		16
 
 #define CACHE_MODE_0_GEN7	_MMIO(0x7000) /* IVB+ */
 #define RC_OP_FLUSH_ENABLE (1 << 0)
@@ -3120,10 +3122,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
 #define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
 
-#define GEN6_BLITTER_ECOSKPD	_MMIO(0x221d0)
-#define   GEN6_BLITTER_LOCK_SHIFT			16
-#define   GEN6_BLITTER_FBC_NOTIFY			(1 << 3)
-
 #define GEN6_RC_SLEEP_PSMI_CONTROL	_MMIO(0x2050)
 #define   GEN6_PSMI_SLEEP_MSG_DISABLE	(1 << 0)
 #define   GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE REG_BIT(7)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8b357ec35a4a..2d0955d13776 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7868,10 +7868,12 @@ static void gen3_init_clock_gating(struct drm_i915_private *dev_priv)
 	intel_uncore_write(&dev_priv->uncore, D_STATE, dstate);
 
 	if (IS_PINEVIEW(dev_priv))
-		intel_uncore_write(&dev_priv->uncore, ECOSKPD, _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));
+		intel_uncore_write(&dev_priv->uncore, ECOSKPD(RENDER_RING_BASE),
+				   _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));
 
 	/* IIR "flip pending" means done if this bit is set */
-	intel_uncore_write(&dev_priv->uncore, ECOSKPD, _MASKED_BIT_DISABLE(ECO_FLIP_DONE));
+	intel_uncore_write(&dev_priv->uncore, ECOSKPD(RENDER_RING_BASE),
+			   _MASKED_BIT_DISABLE(ECO_FLIP_DONE));
 
 	/* interrupts should cause a wake up from C3 */
 	intel_uncore_write(&dev_priv->uncore, INSTPM, _MASKED_BIT_ENABLE(INSTPM_AGPBUSY_INT_EN));
-- 
2.34.1

