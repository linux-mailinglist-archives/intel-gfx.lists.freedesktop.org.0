Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B41986F704C
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 18:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B12310E1AB;
	Thu,  4 May 2023 16:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5AA210E1A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 16:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683219466; x=1714755466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E5Ol4wQ4J5KtQz5Odi5M1KOOCskudj4BinDGTEW4bDg=;
 b=FBte4tZ5+AIDUkox299xb4WAVXrZd2LlG1Sg5SW6Z59N30NNyxB0tgUX
 aj5KXXfI8DP3+RgkDIDyTlDsV31X/AJmAjo4330aLjWqgD6vGP4GwWjH3
 CscrGZugQlb3aAwYiMiTqBdh4bZd5tpISksl4rPAuK4YCwU7xzaWnWo5Z
 pymwRQ1wYzOXokjSgJXFjmE1ULnRUwBmH7dSvIXzDrhx2oHVWjIAAFmAE
 hxt+KohFrx2lM9zaEG477dIHsKs0DWPCCF37isAxceXQFCEcpq+1wT6HW
 g1W9JvwoaXaoNWUfbFqT2NItL381lYZZt8lCk0ujxstdXxBUpOpQJ5Gb+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="377062886"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="377062886"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 09:57:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="691217587"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="691217587"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 09:57:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 19:57:30 +0300
Message-Id: <62c235308ab71bcf324c595229f3b516009bc6cc.1683219363.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683219362.git.jani.nikula@intel.com>
References: <cover.1683219362.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/irq: split out hotplug irq handling
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split hotplug irq handling out of i915_irq.[ch] into
display/intel_hotplug_irq.[ch].

The line between the new intel_hotplug_irq.[ch] and the existing
intel_hotplug.[ch] needs further clarification, but the first step is to
move the stuff out of i915_irq.[ch].

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |    1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |    1 +
 drivers/gpu/drm/i915/display/intel_hotplug.c  |    1 +
 .../gpu/drm/i915/display/intel_hotplug_irq.c  | 1442 ++++++++++++++++
 .../gpu/drm/i915/display/intel_hotplug_irq.h  |   35 +
 drivers/gpu/drm/i915/i915_irq.c               | 1504 +----------------
 drivers/gpu/drm/i915/i915_irq.h               |   12 +-
 8 files changed, 1525 insertions(+), 1472 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hotplug_irq.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hotplug_irq.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index f2ac803e35b4..b8520aea6068 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -261,6 +261,7 @@ i915-y += \
 	display/intel_hdcp.o \
 	display/intel_hdcp_gsc.o \
 	display/intel_hotplug.o \
+	display/intel_hotplug_irq.o \
 	display/intel_hti.o \
 	display/intel_load_detect.o \
 	display/intel_lpe_audio.o \
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 13519f78cf9f..ab57bc0873f1 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -48,6 +48,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
+#include "intel_hotplug_irq.h"
 #include "intel_load_detect.h"
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4361c1ac65c3..9019071abcbf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -68,6 +68,7 @@
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_hotplug_irq.h"
 #include "intel_lspcon.h"
 #include "intel_lvds.h"
 #include "intel_panel.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index b12900446828..23a5e1a875f1 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -27,6 +27,7 @@
 #include "i915_irq.h"
 #include "intel_display_types.h"
 #include "intel_hotplug.h"
+#include "intel_hotplug_irq.h"
 
 /**
  * DOC: Hotplug
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
new file mode 100644
index 000000000000..1d7ae49e073e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -0,0 +1,1442 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_irq.h"
+#include "i915_reg.h"
+#include "intel_de.h"
+#include "intel_display_types.h"
+#include "intel_dp_aux.h"
+#include "intel_gmbus.h"
+#include "intel_hotplug.h"
+#include "intel_hotplug_irq.h"
+
+typedef bool (*long_pulse_detect_func)(enum hpd_pin pin, u32 val);
+typedef u32 (*hotplug_enables_func)(struct intel_encoder *encoder);
+typedef u32 (*hotplug_mask_func)(enum hpd_pin pin);
+
+static const u32 hpd_ilk[HPD_NUM_PINS] = {
+	[HPD_PORT_A] = DE_DP_A_HOTPLUG,
+};
+
+static const u32 hpd_ivb[HPD_NUM_PINS] = {
+	[HPD_PORT_A] = DE_DP_A_HOTPLUG_IVB,
+};
+
+static const u32 hpd_bdw[HPD_NUM_PINS] = {
+	[HPD_PORT_A] = GEN8_DE_PORT_HOTPLUG(HPD_PORT_A),
+};
+
+static const u32 hpd_ibx[HPD_NUM_PINS] = {
+	[HPD_CRT] = SDE_CRT_HOTPLUG,
+	[HPD_SDVO_B] = SDE_SDVOB_HOTPLUG,
+	[HPD_PORT_B] = SDE_PORTB_HOTPLUG,
+	[HPD_PORT_C] = SDE_PORTC_HOTPLUG,
+	[HPD_PORT_D] = SDE_PORTD_HOTPLUG,
+};
+
+static const u32 hpd_cpt[HPD_NUM_PINS] = {
+	[HPD_CRT] = SDE_CRT_HOTPLUG_CPT,
+	[HPD_SDVO_B] = SDE_SDVOB_HOTPLUG_CPT,
+	[HPD_PORT_B] = SDE_PORTB_HOTPLUG_CPT,
+	[HPD_PORT_C] = SDE_PORTC_HOTPLUG_CPT,
+	[HPD_PORT_D] = SDE_PORTD_HOTPLUG_CPT,
+};
+
+static const u32 hpd_spt[HPD_NUM_PINS] = {
+	[HPD_PORT_A] = SDE_PORTA_HOTPLUG_SPT,
+	[HPD_PORT_B] = SDE_PORTB_HOTPLUG_CPT,
+	[HPD_PORT_C] = SDE_PORTC_HOTPLUG_CPT,
+	[HPD_PORT_D] = SDE_PORTD_HOTPLUG_CPT,
+	[HPD_PORT_E] = SDE_PORTE_HOTPLUG_SPT,
+};
+
+static const u32 hpd_mask_i915[HPD_NUM_PINS] = {
+	[HPD_CRT] = CRT_HOTPLUG_INT_EN,
+	[HPD_SDVO_B] = SDVOB_HOTPLUG_INT_EN,
+	[HPD_SDVO_C] = SDVOC_HOTPLUG_INT_EN,
+	[HPD_PORT_B] = PORTB_HOTPLUG_INT_EN,
+	[HPD_PORT_C] = PORTC_HOTPLUG_INT_EN,
+	[HPD_PORT_D] = PORTD_HOTPLUG_INT_EN,
+};
+
+static const u32 hpd_status_g4x[HPD_NUM_PINS] = {
+	[HPD_CRT] = CRT_HOTPLUG_INT_STATUS,
+	[HPD_SDVO_B] = SDVOB_HOTPLUG_INT_STATUS_G4X,
+	[HPD_SDVO_C] = SDVOC_HOTPLUG_INT_STATUS_G4X,
+	[HPD_PORT_B] = PORTB_HOTPLUG_INT_STATUS,
+	[HPD_PORT_C] = PORTC_HOTPLUG_INT_STATUS,
+	[HPD_PORT_D] = PORTD_HOTPLUG_INT_STATUS,
+};
+
+static const u32 hpd_status_i915[HPD_NUM_PINS] = {
+	[HPD_CRT] = CRT_HOTPLUG_INT_STATUS,
+	[HPD_SDVO_B] = SDVOB_HOTPLUG_INT_STATUS_I915,
+	[HPD_SDVO_C] = SDVOC_HOTPLUG_INT_STATUS_I915,
+	[HPD_PORT_B] = PORTB_HOTPLUG_INT_STATUS,
+	[HPD_PORT_C] = PORTC_HOTPLUG_INT_STATUS,
+	[HPD_PORT_D] = PORTD_HOTPLUG_INT_STATUS,
+};
+
+static const u32 hpd_bxt[HPD_NUM_PINS] = {
+	[HPD_PORT_A] = GEN8_DE_PORT_HOTPLUG(HPD_PORT_A),
+	[HPD_PORT_B] = GEN8_DE_PORT_HOTPLUG(HPD_PORT_B),
+	[HPD_PORT_C] = GEN8_DE_PORT_HOTPLUG(HPD_PORT_C),
+};
+
+static const u32 hpd_gen11[HPD_NUM_PINS] = {
+	[HPD_PORT_TC1] = GEN11_TC_HOTPLUG(HPD_PORT_TC1) | GEN11_TBT_HOTPLUG(HPD_PORT_TC1),
+	[HPD_PORT_TC2] = GEN11_TC_HOTPLUG(HPD_PORT_TC2) | GEN11_TBT_HOTPLUG(HPD_PORT_TC2),
+	[HPD_PORT_TC3] = GEN11_TC_HOTPLUG(HPD_PORT_TC3) | GEN11_TBT_HOTPLUG(HPD_PORT_TC3),
+	[HPD_PORT_TC4] = GEN11_TC_HOTPLUG(HPD_PORT_TC4) | GEN11_TBT_HOTPLUG(HPD_PORT_TC4),
+	[HPD_PORT_TC5] = GEN11_TC_HOTPLUG(HPD_PORT_TC5) | GEN11_TBT_HOTPLUG(HPD_PORT_TC5),
+	[HPD_PORT_TC6] = GEN11_TC_HOTPLUG(HPD_PORT_TC6) | GEN11_TBT_HOTPLUG(HPD_PORT_TC6),
+};
+
+static const u32 hpd_xelpdp[HPD_NUM_PINS] = {
+	[HPD_PORT_TC1] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC1) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC1),
+	[HPD_PORT_TC2] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC2) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC2),
+	[HPD_PORT_TC3] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC3) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC3),
+	[HPD_PORT_TC4] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC4) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC4),
+};
+
+static const u32 hpd_icp[HPD_NUM_PINS] = {
+	[HPD_PORT_A] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_A),
+	[HPD_PORT_B] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
+	[HPD_PORT_C] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_C),
+	[HPD_PORT_TC1] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1),
+	[HPD_PORT_TC2] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC2),
+	[HPD_PORT_TC3] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3),
+	[HPD_PORT_TC4] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4),
+	[HPD_PORT_TC5] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC5),
+	[HPD_PORT_TC6] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC6),
+};
+
+static const u32 hpd_sde_dg1[HPD_NUM_PINS] = {
+	[HPD_PORT_A] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_A),
+	[HPD_PORT_B] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
+	[HPD_PORT_C] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_C),
+	[HPD_PORT_D] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_D),
+	[HPD_PORT_TC1] = SDE_TC_HOTPLUG_DG2(HPD_PORT_TC1),
+};
+
+static const u32 hpd_mtp[HPD_NUM_PINS] = {
+	[HPD_PORT_A] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_A),
+	[HPD_PORT_B] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
+	[HPD_PORT_TC1] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1),
+	[HPD_PORT_TC2] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC2),
+	[HPD_PORT_TC3] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3),
+	[HPD_PORT_TC4] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4),
+};
+
+static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
+{
+	struct intel_hotplug *hpd = &dev_priv->display.hotplug;
+
+	if (HAS_GMCH(dev_priv)) {
+		if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
+		    IS_CHERRYVIEW(dev_priv))
+			hpd->hpd = hpd_status_g4x;
+		else
+			hpd->hpd = hpd_status_i915;
+		return;
+	}
+
+	if (DISPLAY_VER(dev_priv) >= 14)
+		hpd->hpd = hpd_xelpdp;
+	else if (DISPLAY_VER(dev_priv) >= 11)
+		hpd->hpd = hpd_gen11;
+	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+		hpd->hpd = hpd_bxt;
+	else if (DISPLAY_VER(dev_priv) == 9)
+		hpd->hpd = NULL; /* no north HPD on SKL */
+	else if (DISPLAY_VER(dev_priv) >= 8)
+		hpd->hpd = hpd_bdw;
+	else if (DISPLAY_VER(dev_priv) >= 7)
+		hpd->hpd = hpd_ivb;
+	else
+		hpd->hpd = hpd_ilk;
+
+	if ((INTEL_PCH_TYPE(dev_priv) < PCH_DG1) &&
+	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
+		return;
+
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
+		hpd->pch_hpd = hpd_sde_dg1;
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
+		hpd->pch_hpd = hpd_mtp;
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
+		hpd->pch_hpd = hpd_icp;
+	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
+		hpd->pch_hpd = hpd_spt;
+	else if (HAS_PCH_LPT(dev_priv) || HAS_PCH_CPT(dev_priv))
+		hpd->pch_hpd = hpd_cpt;
+	else if (HAS_PCH_IBX(dev_priv))
+		hpd->pch_hpd = hpd_ibx;
+	else
+		MISSING_CASE(INTEL_PCH_TYPE(dev_priv));
+}
+
+/* For display hotplug interrupt */
+void i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
+					  u32 mask, u32 bits)
+{
+	lockdep_assert_held(&dev_priv->irq_lock);
+	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
+
+	intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_EN, mask, bits);
+}
+
+/**
+ * i915_hotplug_interrupt_update - update hotplug interrupt enable
+ * @dev_priv: driver private
+ * @mask: bits to update
+ * @bits: bits to enable
+ * NOTE: the HPD enable bits are modified both inside and outside
+ * of an interrupt context. To avoid that read-modify-write cycles
+ * interfer, these bits are protected by a spinlock. Since this
+ * function is usually not called from a context where the lock is
+ * held already, this function acquires the lock itself. A non-locking
+ * version is also available.
+ */
+void i915_hotplug_interrupt_update(struct drm_i915_private *dev_priv,
+				   u32 mask,
+				   u32 bits)
+{
+	spin_lock_irq(&dev_priv->irq_lock);
+	i915_hotplug_interrupt_update_locked(dev_priv, mask, bits);
+	spin_unlock_irq(&dev_priv->irq_lock);
+}
+
+static bool gen11_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
+{
+	switch (pin) {
+	case HPD_PORT_TC1:
+	case HPD_PORT_TC2:
+	case HPD_PORT_TC3:
+	case HPD_PORT_TC4:
+	case HPD_PORT_TC5:
+	case HPD_PORT_TC6:
+		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(pin);
+	default:
+		return false;
+	}
+}
+
+static bool bxt_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
+{
+	switch (pin) {
+	case HPD_PORT_A:
+		return val & PORTA_HOTPLUG_LONG_DETECT;
+	case HPD_PORT_B:
+		return val & PORTB_HOTPLUG_LONG_DETECT;
+	case HPD_PORT_C:
+		return val & PORTC_HOTPLUG_LONG_DETECT;
+	default:
+		return false;
+	}
+}
+
+static bool icp_ddi_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
+{
+	switch (pin) {
+	case HPD_PORT_A:
+	case HPD_PORT_B:
+	case HPD_PORT_C:
+	case HPD_PORT_D:
+		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(pin);
+	default:
+		return false;
+	}
+}
+
+static bool icp_tc_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
+{
+	switch (pin) {
+	case HPD_PORT_TC1:
+	case HPD_PORT_TC2:
+	case HPD_PORT_TC3:
+	case HPD_PORT_TC4:
+	case HPD_PORT_TC5:
+	case HPD_PORT_TC6:
+		return val & ICP_TC_HPD_LONG_DETECT(pin);
+	default:
+		return false;
+	}
+}
+
+static bool spt_port_hotplug2_long_detect(enum hpd_pin pin, u32 val)
+{
+	switch (pin) {
+	case HPD_PORT_E:
+		return val & PORTE_HOTPLUG_LONG_DETECT;
+	default:
+		return false;
+	}
+}
+
+static bool spt_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
+{
+	switch (pin) {
+	case HPD_PORT_A:
+		return val & PORTA_HOTPLUG_LONG_DETECT;
+	case HPD_PORT_B:
+		return val & PORTB_HOTPLUG_LONG_DETECT;
+	case HPD_PORT_C:
+		return val & PORTC_HOTPLUG_LONG_DETECT;
+	case HPD_PORT_D:
+		return val & PORTD_HOTPLUG_LONG_DETECT;
+	default:
+		return false;
+	}
+}
+
+static bool ilk_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
+{
+	switch (pin) {
+	case HPD_PORT_A:
+		return val & DIGITAL_PORTA_HOTPLUG_LONG_DETECT;
+	default:
+		return false;
+	}
+}
+
+static bool pch_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
+{
+	switch (pin) {
+	case HPD_PORT_B:
+		return val & PORTB_HOTPLUG_LONG_DETECT;
+	case HPD_PORT_C:
+		return val & PORTC_HOTPLUG_LONG_DETECT;
+	case HPD_PORT_D:
+		return val & PORTD_HOTPLUG_LONG_DETECT;
+	default:
+		return false;
+	}
+}
+
+static bool i9xx_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
+{
+	switch (pin) {
+	case HPD_PORT_B:
+		return val & PORTB_HOTPLUG_INT_LONG_PULSE;
+	case HPD_PORT_C:
+		return val & PORTC_HOTPLUG_INT_LONG_PULSE;
+	case HPD_PORT_D:
+		return val & PORTD_HOTPLUG_INT_LONG_PULSE;
+	default:
+		return false;
+	}
+}
+
+/*
+ * Get a bit mask of pins that have triggered, and which ones may be long.
+ * This can be called multiple times with the same masks to accumulate
+ * hotplug detection results from several registers.
+ *
+ * Note that the caller is expected to zero out the masks initially.
+ */
+static void intel_get_hpd_pins(struct drm_i915_private *dev_priv,
+			       u32 *pin_mask, u32 *long_mask,
+			       u32 hotplug_trigger, u32 dig_hotplug_reg,
+			       const u32 hpd[HPD_NUM_PINS],
+			       bool long_pulse_detect(enum hpd_pin pin, u32 val))
+{
+	enum hpd_pin pin;
+
+	BUILD_BUG_ON(BITS_PER_TYPE(*pin_mask) < HPD_NUM_PINS);
+
+	for_each_hpd_pin(pin) {
+		if ((hpd[pin] & hotplug_trigger) == 0)
+			continue;
+
+		*pin_mask |= BIT(pin);
+
+		if (long_pulse_detect(pin, dig_hotplug_reg))
+			*long_mask |= BIT(pin);
+	}
+
+	drm_dbg(&dev_priv->drm,
+		"hotplug event received, stat 0x%08x, dig 0x%08x, pins 0x%08x, long 0x%08x\n",
+		hotplug_trigger, dig_hotplug_reg, *pin_mask, *long_mask);
+}
+
+static u32 intel_hpd_enabled_irqs(struct drm_i915_private *dev_priv,
+				  const u32 hpd[HPD_NUM_PINS])
+{
+	struct intel_encoder *encoder;
+	u32 enabled_irqs = 0;
+
+	for_each_intel_encoder(&dev_priv->drm, encoder)
+		if (dev_priv->display.hotplug.stats[encoder->hpd_pin].state == HPD_ENABLED)
+			enabled_irqs |= hpd[encoder->hpd_pin];
+
+	return enabled_irqs;
+}
+
+static u32 intel_hpd_hotplug_irqs(struct drm_i915_private *dev_priv,
+				  const u32 hpd[HPD_NUM_PINS])
+{
+	struct intel_encoder *encoder;
+	u32 hotplug_irqs = 0;
+
+	for_each_intel_encoder(&dev_priv->drm, encoder)
+		hotplug_irqs |= hpd[encoder->hpd_pin];
+
+	return hotplug_irqs;
+}
+
+static u32 intel_hpd_hotplug_mask(struct drm_i915_private *i915,
+				  hotplug_mask_func hotplug_mask)
+{
+	enum hpd_pin pin;
+	u32 hotplug = 0;
+
+	for_each_hpd_pin(pin)
+		hotplug |= hotplug_mask(pin);
+
+	return hotplug;
+}
+
+static u32 intel_hpd_hotplug_enables(struct drm_i915_private *i915,
+				     hotplug_enables_func hotplug_enables)
+{
+	struct intel_encoder *encoder;
+	u32 hotplug = 0;
+
+	for_each_intel_encoder(&i915->drm, encoder)
+		hotplug |= hotplug_enables(encoder);
+
+	return hotplug;
+}
+
+u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
+{
+	u32 hotplug_status = 0, hotplug_status_mask;
+	int i;
+
+	if (IS_G4X(dev_priv) ||
+	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		hotplug_status_mask = HOTPLUG_INT_STATUS_G4X |
+			DP_AUX_CHANNEL_MASK_INT_STATUS_G4X;
+	else
+		hotplug_status_mask = HOTPLUG_INT_STATUS_I915;
+
+	/*
+	 * We absolutely have to clear all the pending interrupt
+	 * bits in PORT_HOTPLUG_STAT. Otherwise the ISR port
+	 * interrupt bit won't have an edge, and the i965/g4x
+	 * edge triggered IIR will not notice that an interrupt
+	 * is still pending. We can't use PORT_HOTPLUG_EN to
+	 * guarantee the edge as the act of toggling the enable
+	 * bits can itself generate a new hotplug interrupt :(
+	 */
+	for (i = 0; i < 10; i++) {
+		u32 tmp = intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT) & hotplug_status_mask;
+
+		if (tmp == 0)
+			return hotplug_status;
+
+		hotplug_status |= tmp;
+		intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_STAT, hotplug_status);
+	}
+
+	drm_WARN_ONCE(&dev_priv->drm, 1,
+		      "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
+		      intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
+
+	return hotplug_status;
+}
+
+void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_status)
+{
+	u32 pin_mask = 0, long_mask = 0;
+	u32 hotplug_trigger;
+
+	if (IS_G4X(dev_priv) ||
+	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		hotplug_trigger = hotplug_status & HOTPLUG_INT_STATUS_G4X;
+	else
+		hotplug_trigger = hotplug_status & HOTPLUG_INT_STATUS_I915;
+
+	if (hotplug_trigger) {
+		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+				   hotplug_trigger, hotplug_trigger,
+				   dev_priv->display.hotplug.hpd,
+				   i9xx_port_hotplug_long_detect);
+
+		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+	}
+
+	if ((IS_G4X(dev_priv) ||
+	     IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	    hotplug_status & DP_AUX_CHANNEL_MASK_INT_STATUS_G4X)
+		intel_dp_aux_irq_handler(dev_priv);
+}
+
+void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
+{
+	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
+
+	/*
+	 * Somehow the PCH doesn't seem to really ack the interrupt to the CPU
+	 * unless we touch the hotplug register, even if hotplug_trigger is
+	 * zero. Not acking leads to "The master control interrupt lied (SDE)!"
+	 * errors.
+	 */
+	dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
+	if (!hotplug_trigger) {
+		u32 mask = PORTA_HOTPLUG_STATUS_MASK |
+			PORTD_HOTPLUG_STATUS_MASK |
+			PORTC_HOTPLUG_STATUS_MASK |
+			PORTB_HOTPLUG_STATUS_MASK;
+		dig_hotplug_reg &= ~mask;
+	}
+
+	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, dig_hotplug_reg);
+	if (!hotplug_trigger)
+		return;
+
+	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+			   hotplug_trigger, dig_hotplug_reg,
+			   dev_priv->display.hotplug.pch_hpd,
+			   pch_port_hotplug_long_detect);
+
+	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+}
+
+void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
+{
+	enum hpd_pin pin;
+	u32 hotplug_trigger = iir & (XELPDP_DP_ALT_HOTPLUG_MASK | XELPDP_TBT_HOTPLUG_MASK);
+	u32 trigger_aux = iir & XELPDP_AUX_TC_MASK;
+	u32 pin_mask = 0, long_mask = 0;
+
+	for (pin = HPD_PORT_TC1; pin <= HPD_PORT_TC4; pin++) {
+		u32 val;
+
+		if (!(i915->display.hotplug.hpd[pin] & hotplug_trigger))
+			continue;
+
+		pin_mask |= BIT(pin);
+
+		val = intel_de_read(i915, XELPDP_PORT_HOTPLUG_CTL(pin));
+		intel_de_write(i915, XELPDP_PORT_HOTPLUG_CTL(pin), val);
+
+		if (val & (XELPDP_DP_ALT_HPD_LONG_DETECT | XELPDP_TBT_HPD_LONG_DETECT))
+			long_mask |= BIT(pin);
+	}
+
+	if (pin_mask) {
+		drm_dbg(&i915->drm,
+			"pica hotplug event received, stat 0x%08x, pins 0x%08x, long 0x%08x\n",
+			hotplug_trigger, pin_mask, long_mask);
+
+		intel_hpd_irq_handler(i915, pin_mask, long_mask);
+	}
+
+	if (trigger_aux)
+		intel_dp_aux_irq_handler(i915);
+
+	if (!pin_mask && !trigger_aux)
+		drm_err(&i915->drm,
+			"Unexpected DE HPD/AUX interrupt 0x%08x\n", iir);
+}
+
+void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
+{
+	u32 ddi_hotplug_trigger = pch_iir & SDE_DDI_HOTPLUG_MASK_ICP;
+	u32 tc_hotplug_trigger = pch_iir & SDE_TC_HOTPLUG_MASK_ICP;
+	u32 pin_mask = 0, long_mask = 0;
+
+	if (ddi_hotplug_trigger) {
+		u32 dig_hotplug_reg;
+
+		/* Locking due to DSI native GPIO sequences */
+		spin_lock(&dev_priv->irq_lock);
+		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI, 0, 0);
+		spin_unlock(&dev_priv->irq_lock);
+
+		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+				   ddi_hotplug_trigger, dig_hotplug_reg,
+				   dev_priv->display.hotplug.pch_hpd,
+				   icp_ddi_port_hotplug_long_detect);
+	}
+
+	if (tc_hotplug_trigger) {
+		u32 dig_hotplug_reg;
+
+		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC, 0, 0);
+
+		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+				   tc_hotplug_trigger, dig_hotplug_reg,
+				   dev_priv->display.hotplug.pch_hpd,
+				   icp_tc_port_hotplug_long_detect);
+	}
+
+	if (pin_mask)
+		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+
+	if (pch_iir & SDE_GMBUS_ICP)
+		intel_gmbus_irq_handler(dev_priv);
+}
+
+void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
+{
+	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_SPT &
+		~SDE_PORTE_HOTPLUG_SPT;
+	u32 hotplug2_trigger = pch_iir & SDE_PORTE_HOTPLUG_SPT;
+	u32 pin_mask = 0, long_mask = 0;
+
+	if (hotplug_trigger) {
+		u32 dig_hotplug_reg;
+
+		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
+
+		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+				   hotplug_trigger, dig_hotplug_reg,
+				   dev_priv->display.hotplug.pch_hpd,
+				   spt_port_hotplug_long_detect);
+	}
+
+	if (hotplug2_trigger) {
+		u32 dig_hotplug_reg;
+
+		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2, 0, 0);
+
+		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+				   hotplug2_trigger, dig_hotplug_reg,
+				   dev_priv->display.hotplug.pch_hpd,
+				   spt_port_hotplug2_long_detect);
+	}
+
+	if (pin_mask)
+		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+
+	if (pch_iir & SDE_GMBUS_CPT)
+		intel_gmbus_irq_handler(dev_priv);
+}
+
+void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
+{
+	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
+
+	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, 0, 0);
+
+	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+			   hotplug_trigger, dig_hotplug_reg,
+			   dev_priv->display.hotplug.hpd,
+			   ilk_port_hotplug_long_detect);
+
+	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+}
+
+void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
+{
+	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
+
+	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
+
+	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+			   hotplug_trigger, dig_hotplug_reg,
+			   dev_priv->display.hotplug.hpd,
+			   bxt_port_hotplug_long_detect);
+
+	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+}
+
+void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
+{
+	u32 pin_mask = 0, long_mask = 0;
+	u32 trigger_tc = iir & GEN11_DE_TC_HOTPLUG_MASK;
+	u32 trigger_tbt = iir & GEN11_DE_TBT_HOTPLUG_MASK;
+
+	if (trigger_tc) {
+		u32 dig_hotplug_reg;
+
+		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, 0, 0);
+
+		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+				   trigger_tc, dig_hotplug_reg,
+				   dev_priv->display.hotplug.hpd,
+				   gen11_port_hotplug_long_detect);
+	}
+
+	if (trigger_tbt) {
+		u32 dig_hotplug_reg;
+
+		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, 0, 0);
+
+		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
+				   trigger_tbt, dig_hotplug_reg,
+				   dev_priv->display.hotplug.hpd,
+				   gen11_port_hotplug_long_detect);
+	}
+
+	if (pin_mask)
+		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
+	else
+		drm_err(&dev_priv->drm,
+			"Unexpected DE HPD interrupt 0x%08x\n", iir);
+}
+
+static u32 ibx_hotplug_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_A:
+		return PORTA_HOTPLUG_ENABLE;
+	case HPD_PORT_B:
+		return PORTB_HOTPLUG_ENABLE | PORTB_PULSE_DURATION_MASK;
+	case HPD_PORT_C:
+		return PORTC_HOTPLUG_ENABLE | PORTC_PULSE_DURATION_MASK;
+	case HPD_PORT_D:
+		return PORTD_HOTPLUG_ENABLE | PORTD_PULSE_DURATION_MASK;
+	default:
+		return 0;
+	}
+}
+
+static u32 ibx_hotplug_enables(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	switch (encoder->hpd_pin) {
+	case HPD_PORT_A:
+		/*
+		 * When CPU and PCH are on the same package, port A
+		 * HPD must be enabled in both north and south.
+		 */
+		return HAS_PCH_LPT_LP(i915) ?
+			PORTA_HOTPLUG_ENABLE : 0;
+	case HPD_PORT_B:
+		return PORTB_HOTPLUG_ENABLE |
+			PORTB_PULSE_DURATION_2ms;
+	case HPD_PORT_C:
+		return PORTC_HOTPLUG_ENABLE |
+			PORTC_PULSE_DURATION_2ms;
+	case HPD_PORT_D:
+		return PORTD_HOTPLUG_ENABLE |
+			PORTD_PULSE_DURATION_2ms;
+	default:
+		return 0;
+	}
+}
+
+static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
+{
+	/*
+	 * Enable digital hotplug on the PCH, and configure the DP short pulse
+	 * duration to 2ms (which is the minimum in the Display Port spec).
+	 * The pulse duration bits are reserved on LPT+.
+	 */
+	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
+			 intel_hpd_hotplug_mask(dev_priv, ibx_hotplug_mask),
+			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
+}
+
+static void ibx_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
+			 ibx_hotplug_mask(encoder->hpd_pin),
+			 ibx_hotplug_enables(encoder));
+}
+
+static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
+{
+	u32 hotplug_irqs, enabled_irqs;
+
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+
+	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
+
+	ibx_hpd_detection_setup(dev_priv);
+}
+
+static u32 icp_ddi_hotplug_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_A:
+	case HPD_PORT_B:
+	case HPD_PORT_C:
+	case HPD_PORT_D:
+		return SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin);
+	default:
+		return 0;
+	}
+}
+
+static u32 icp_ddi_hotplug_enables(struct intel_encoder *encoder)
+{
+	return icp_ddi_hotplug_mask(encoder->hpd_pin);
+}
+
+static u32 icp_tc_hotplug_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_TC1:
+	case HPD_PORT_TC2:
+	case HPD_PORT_TC3:
+	case HPD_PORT_TC4:
+	case HPD_PORT_TC5:
+	case HPD_PORT_TC6:
+		return ICP_TC_HPD_ENABLE(hpd_pin);
+	default:
+		return 0;
+	}
+}
+
+static u32 icp_tc_hotplug_enables(struct intel_encoder *encoder)
+{
+	return icp_tc_hotplug_mask(encoder->hpd_pin);
+}
+
+static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
+{
+	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI,
+			 intel_hpd_hotplug_mask(dev_priv, icp_ddi_hotplug_mask),
+			 intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
+}
+
+static void icp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_DDI,
+			 icp_ddi_hotplug_mask(encoder->hpd_pin),
+			 icp_ddi_hotplug_enables(encoder));
+}
+
+static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
+{
+	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC,
+			 intel_hpd_hotplug_mask(dev_priv, icp_tc_hotplug_mask),
+			 intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
+}
+
+static void icp_tc_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_TC,
+			 icp_tc_hotplug_mask(encoder->hpd_pin),
+			 icp_tc_hotplug_enables(encoder));
+}
+
+static void icp_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	icp_ddi_hpd_enable_detection(encoder);
+	icp_tc_hpd_enable_detection(encoder);
+}
+
+static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
+{
+	u32 hotplug_irqs, enabled_irqs;
+
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+
+	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
+		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
+
+	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
+
+	icp_ddi_hpd_detection_setup(dev_priv);
+	icp_tc_hpd_detection_setup(dev_priv);
+}
+
+static u32 gen11_hotplug_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_TC1:
+	case HPD_PORT_TC2:
+	case HPD_PORT_TC3:
+	case HPD_PORT_TC4:
+	case HPD_PORT_TC5:
+	case HPD_PORT_TC6:
+		return GEN11_HOTPLUG_CTL_ENABLE(hpd_pin);
+	default:
+		return 0;
+	}
+}
+
+static u32 gen11_hotplug_enables(struct intel_encoder *encoder)
+{
+	return gen11_hotplug_mask(encoder->hpd_pin);
+}
+
+static void dg1_hpd_invert(struct drm_i915_private *i915)
+{
+	u32 val = (INVERT_DDIA_HPD |
+		   INVERT_DDIB_HPD |
+		   INVERT_DDIC_HPD |
+		   INVERT_DDID_HPD);
+	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1, 0, val);
+}
+
+static void dg1_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	dg1_hpd_invert(i915);
+	icp_hpd_enable_detection(encoder);
+}
+
+static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
+{
+	dg1_hpd_invert(dev_priv);
+	icp_hpd_irq_setup(dev_priv);
+}
+
+static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
+{
+	intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL,
+			 intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
+			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
+}
+
+static void gen11_tc_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, GEN11_TC_HOTPLUG_CTL,
+			 gen11_hotplug_mask(encoder->hpd_pin),
+			 gen11_hotplug_enables(encoder));
+}
+
+static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
+{
+	intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL,
+			 intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
+			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
+}
+
+static void gen11_tbt_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, GEN11_TBT_HOTPLUG_CTL,
+			 gen11_hotplug_mask(encoder->hpd_pin),
+			 gen11_hotplug_enables(encoder));
+}
+
+static void gen11_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	gen11_tc_hpd_enable_detection(encoder);
+	gen11_tbt_hpd_enable_detection(encoder);
+
+	if (INTEL_PCH_TYPE(i915) >= PCH_ICP)
+		icp_hpd_enable_detection(encoder);
+}
+
+static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
+{
+	u32 hotplug_irqs, enabled_irqs;
+
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+
+	intel_uncore_rmw(&dev_priv->uncore, GEN11_DE_HPD_IMR, hotplug_irqs,
+			 ~enabled_irqs & hotplug_irqs);
+	intel_uncore_posting_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
+
+	gen11_tc_hpd_detection_setup(dev_priv);
+	gen11_tbt_hpd_detection_setup(dev_priv);
+
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
+		icp_hpd_irq_setup(dev_priv);
+}
+
+static u32 mtp_ddi_hotplug_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_A:
+	case HPD_PORT_B:
+		return SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin);
+	default:
+		return 0;
+	}
+}
+
+static u32 mtp_ddi_hotplug_enables(struct intel_encoder *encoder)
+{
+	return mtp_ddi_hotplug_mask(encoder->hpd_pin);
+}
+
+static u32 mtp_tc_hotplug_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_TC1:
+	case HPD_PORT_TC2:
+	case HPD_PORT_TC3:
+	case HPD_PORT_TC4:
+		return ICP_TC_HPD_ENABLE(hpd_pin);
+	default:
+		return 0;
+	}
+}
+
+static u32 mtp_tc_hotplug_enables(struct intel_encoder *encoder)
+{
+	return mtp_tc_hotplug_mask(encoder->hpd_pin);
+}
+
+static void mtp_ddi_hpd_detection_setup(struct drm_i915_private *i915)
+{
+	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
+		     intel_hpd_hotplug_mask(i915, mtp_ddi_hotplug_mask),
+		     intel_hpd_hotplug_enables(i915, mtp_ddi_hotplug_enables));
+}
+
+static void mtp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
+		     mtp_ddi_hotplug_mask(encoder->hpd_pin),
+		     mtp_ddi_hotplug_enables(encoder));
+}
+
+static void mtp_tc_hpd_detection_setup(struct drm_i915_private *i915)
+{
+	intel_de_rmw(i915, SHOTPLUG_CTL_TC,
+		     intel_hpd_hotplug_mask(i915, mtp_tc_hotplug_mask),
+		     intel_hpd_hotplug_enables(i915, mtp_tc_hotplug_enables));
+}
+
+static void mtp_tc_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
+		     mtp_tc_hotplug_mask(encoder->hpd_pin),
+		     mtp_tc_hotplug_enables(encoder));
+}
+
+static void mtp_hpd_invert(struct drm_i915_private *i915)
+{
+	u32 val = (INVERT_DDIA_HPD |
+		   INVERT_DDIB_HPD |
+		   INVERT_DDIC_HPD |
+		   INVERT_TC1_HPD |
+		   INVERT_TC2_HPD |
+		   INVERT_TC3_HPD |
+		   INVERT_TC4_HPD |
+		   INVERT_DDID_HPD_MTP |
+		   INVERT_DDIE_HPD);
+	intel_de_rmw(i915, SOUTH_CHICKEN1, 0, val);
+}
+
+static void mtp_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	mtp_hpd_invert(i915);
+	mtp_ddi_hpd_enable_detection(encoder);
+	mtp_tc_hpd_enable_detection(encoder);
+}
+
+static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
+{
+	u32 hotplug_irqs, enabled_irqs;
+
+	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
+
+	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
+
+	mtp_hpd_invert(i915);
+	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
+
+	mtp_ddi_hpd_detection_setup(i915);
+	mtp_tc_hpd_detection_setup(i915);
+}
+
+static bool is_xelpdp_pica_hpd_pin(enum hpd_pin hpd_pin)
+{
+	return hpd_pin >= HPD_PORT_TC1 && hpd_pin <= HPD_PORT_TC4;
+}
+
+static void _xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i915,
+					     enum hpd_pin hpd_pin, bool enable)
+{
+	u32 mask = XELPDP_TBT_HOTPLUG_ENABLE |
+		XELPDP_DP_ALT_HOTPLUG_ENABLE;
+
+	if (!is_xelpdp_pica_hpd_pin(hpd_pin))
+		return;
+
+	intel_de_rmw(i915, XELPDP_PORT_HOTPLUG_CTL(hpd_pin),
+		     mask, enable ? mask : 0);
+}
+
+static void xelpdp_pica_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	_xelpdp_pica_hpd_detection_setup(i915, encoder->hpd_pin, true);
+}
+
+static void xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i915)
+{
+	struct intel_encoder *encoder;
+	u32 available_pins = 0;
+	enum hpd_pin pin;
+
+	BUILD_BUG_ON(BITS_PER_TYPE(available_pins) < HPD_NUM_PINS);
+
+	for_each_intel_encoder(&i915->drm, encoder)
+		available_pins |= BIT(encoder->hpd_pin);
+
+	for_each_hpd_pin(pin)
+		_xelpdp_pica_hpd_detection_setup(i915, pin, available_pins & BIT(pin));
+}
+
+static void xelpdp_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	xelpdp_pica_hpd_enable_detection(encoder);
+	mtp_hpd_enable_detection(encoder);
+}
+
+static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
+{
+	u32 hotplug_irqs, enabled_irqs;
+
+	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.hpd);
+
+	intel_de_rmw(i915, PICAINTERRUPT_IMR, hotplug_irqs,
+		     ~enabled_irqs & hotplug_irqs);
+	intel_uncore_posting_read(&i915->uncore, PICAINTERRUPT_IMR);
+
+	xelpdp_pica_hpd_detection_setup(i915);
+
+	if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
+		mtp_hpd_irq_setup(i915);
+}
+
+static u32 spt_hotplug_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_A:
+		return PORTA_HOTPLUG_ENABLE;
+	case HPD_PORT_B:
+		return PORTB_HOTPLUG_ENABLE;
+	case HPD_PORT_C:
+		return PORTC_HOTPLUG_ENABLE;
+	case HPD_PORT_D:
+		return PORTD_HOTPLUG_ENABLE;
+	default:
+		return 0;
+	}
+}
+
+static u32 spt_hotplug_enables(struct intel_encoder *encoder)
+{
+	return spt_hotplug_mask(encoder->hpd_pin);
+}
+
+static u32 spt_hotplug2_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_E:
+		return PORTE_HOTPLUG_ENABLE;
+	default:
+		return 0;
+	}
+}
+
+static u32 spt_hotplug2_enables(struct intel_encoder *encoder)
+{
+	return spt_hotplug2_mask(encoder->hpd_pin);
+}
+
+static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
+{
+	/* Display WA #1179 WaHardHangonHotPlug: cnp */
+	if (HAS_PCH_CNP(dev_priv)) {
+		intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, CHASSIS_CLK_REQ_DURATION_MASK,
+				 CHASSIS_CLK_REQ_DURATION(0xf));
+	}
+
+	/* Enable digital hotplug on the PCH */
+	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
+			 intel_hpd_hotplug_mask(dev_priv, spt_hotplug_mask),
+			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
+
+	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2,
+			 intel_hpd_hotplug_mask(dev_priv, spt_hotplug2_mask),
+			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
+}
+
+static void spt_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	/* Display WA #1179 WaHardHangonHotPlug: cnp */
+	if (HAS_PCH_CNP(i915)) {
+		intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1,
+				 CHASSIS_CLK_REQ_DURATION_MASK,
+				 CHASSIS_CLK_REQ_DURATION(0xf));
+	}
+
+	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
+			 spt_hotplug_mask(encoder->hpd_pin),
+			 spt_hotplug_enables(encoder));
+
+	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG2,
+			 spt_hotplug2_mask(encoder->hpd_pin),
+			 spt_hotplug2_enables(encoder));
+}
+
+static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
+{
+	u32 hotplug_irqs, enabled_irqs;
+
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
+		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
+
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
+
+	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
+
+	spt_hpd_detection_setup(dev_priv);
+}
+
+static u32 ilk_hotplug_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_A:
+		return DIGITAL_PORTA_HOTPLUG_ENABLE |
+			DIGITAL_PORTA_PULSE_DURATION_MASK;
+	default:
+		return 0;
+	}
+}
+
+static u32 ilk_hotplug_enables(struct intel_encoder *encoder)
+{
+	switch (encoder->hpd_pin) {
+	case HPD_PORT_A:
+		return DIGITAL_PORTA_HOTPLUG_ENABLE |
+			DIGITAL_PORTA_PULSE_DURATION_2ms;
+	default:
+		return 0;
+	}
+}
+
+static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
+{
+	/*
+	 * Enable digital hotplug on the CPU, and configure the DP short pulse
+	 * duration to 2ms (which is the minimum in the Display Port spec)
+	 * The pulse duration bits are reserved on HSW+.
+	 */
+	intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
+			 intel_hpd_hotplug_mask(dev_priv, ilk_hotplug_mask),
+			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
+}
+
+static void ilk_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
+			 ilk_hotplug_mask(encoder->hpd_pin),
+			 ilk_hotplug_enables(encoder));
+
+	ibx_hpd_enable_detection(encoder);
+}
+
+static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
+{
+	u32 hotplug_irqs, enabled_irqs;
+
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+
+	if (DISPLAY_VER(dev_priv) >= 8)
+		bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
+	else
+		ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
+
+	ilk_hpd_detection_setup(dev_priv);
+
+	ibx_hpd_irq_setup(dev_priv);
+}
+
+static u32 bxt_hotplug_mask(enum hpd_pin hpd_pin)
+{
+	switch (hpd_pin) {
+	case HPD_PORT_A:
+		return PORTA_HOTPLUG_ENABLE | BXT_DDIA_HPD_INVERT;
+	case HPD_PORT_B:
+		return PORTB_HOTPLUG_ENABLE | BXT_DDIB_HPD_INVERT;
+	case HPD_PORT_C:
+		return PORTC_HOTPLUG_ENABLE | BXT_DDIC_HPD_INVERT;
+	default:
+		return 0;
+	}
+}
+
+static u32 bxt_hotplug_enables(struct intel_encoder *encoder)
+{
+	u32 hotplug;
+
+	switch (encoder->hpd_pin) {
+	case HPD_PORT_A:
+		hotplug = PORTA_HOTPLUG_ENABLE;
+		if (intel_bios_encoder_hpd_invert(encoder->devdata))
+			hotplug |= BXT_DDIA_HPD_INVERT;
+		return hotplug;
+	case HPD_PORT_B:
+		hotplug = PORTB_HOTPLUG_ENABLE;
+		if (intel_bios_encoder_hpd_invert(encoder->devdata))
+			hotplug |= BXT_DDIB_HPD_INVERT;
+		return hotplug;
+	case HPD_PORT_C:
+		hotplug = PORTC_HOTPLUG_ENABLE;
+		if (intel_bios_encoder_hpd_invert(encoder->devdata))
+			hotplug |= BXT_DDIC_HPD_INVERT;
+		return hotplug;
+	default:
+		return 0;
+	}
+}
+
+static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
+{
+	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
+			 intel_hpd_hotplug_mask(dev_priv, bxt_hotplug_mask),
+			 intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
+}
+
+static void bxt_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
+			 bxt_hotplug_mask(encoder->hpd_pin),
+			 bxt_hotplug_enables(encoder));
+}
+
+static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
+{
+	u32 hotplug_irqs, enabled_irqs;
+
+	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
+
+	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
+
+	bxt_hpd_detection_setup(dev_priv);
+}
+
+static void i915_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	u32 hotplug_en = hpd_mask_i915[encoder->hpd_pin];
+
+	/* HPD sense and interrupt enable are one and the same */
+	i915_hotplug_interrupt_update(i915, hotplug_en, hotplug_en);
+}
+
+static void i915_hpd_irq_setup(struct drm_i915_private *dev_priv)
+{
+	u32 hotplug_en;
+
+	lockdep_assert_held(&dev_priv->irq_lock);
+
+	/*
+	 * Note HDMI and DP share hotplug bits. Enable bits are the same for all
+	 * generations.
+	 */
+	hotplug_en = intel_hpd_enabled_irqs(dev_priv, hpd_mask_i915);
+	/*
+	 * Programming the CRT detection parameters tends to generate a spurious
+	 * hotplug event about three seconds later. So just do it once.
+	 */
+	if (IS_G4X(dev_priv))
+		hotplug_en |= CRT_HOTPLUG_ACTIVATION_PERIOD_64;
+	hotplug_en |= CRT_HOTPLUG_VOLTAGE_COMPARE_50;
+
+	/* Ignore TV since it's buggy */
+	i915_hotplug_interrupt_update_locked(dev_priv,
+					     HOTPLUG_INT_EN_MASK |
+					     CRT_HOTPLUG_VOLTAGE_COMPARE_MASK |
+					     CRT_HOTPLUG_ACTIVATION_PERIOD_64,
+					     hotplug_en);
+}
+
+struct intel_hotplug_funcs {
+	/* Enable HPD sense and interrupts for all present encoders */
+	void (*hpd_irq_setup)(struct drm_i915_private *i915);
+	/* Enable HPD sense for a single encoder */
+	void (*hpd_enable_detection)(struct intel_encoder *encoder);
+};
+
+#define HPD_FUNCS(platform)					 \
+static const struct intel_hotplug_funcs platform##_hpd_funcs = { \
+	.hpd_irq_setup = platform##_hpd_irq_setup,		 \
+	.hpd_enable_detection = platform##_hpd_enable_detection, \
+}
+
+HPD_FUNCS(i915);
+HPD_FUNCS(xelpdp);
+HPD_FUNCS(dg1);
+HPD_FUNCS(gen11);
+HPD_FUNCS(bxt);
+HPD_FUNCS(icp);
+HPD_FUNCS(spt);
+HPD_FUNCS(ilk);
+#undef HPD_FUNCS
+
+void intel_hpd_enable_detection(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (i915->display.funcs.hotplug)
+		i915->display.funcs.hotplug->hpd_enable_detection(encoder);
+}
+
+void intel_hpd_irq_setup(struct drm_i915_private *i915)
+{
+	if (i915->display_irqs_enabled && i915->display.funcs.hotplug)
+		i915->display.funcs.hotplug->hpd_irq_setup(i915);
+}
+
+void intel_hotplug_irq_init(struct drm_i915_private *i915)
+{
+	intel_hpd_init_pins(i915);
+
+	intel_hpd_init_early(i915);
+
+	if (HAS_GMCH(i915)) {
+		if (I915_HAS_HOTPLUG(i915))
+			i915->display.funcs.hotplug = &i915_hpd_funcs;
+	} else {
+		if (HAS_PCH_DG2(i915))
+			i915->display.funcs.hotplug = &icp_hpd_funcs;
+		else if (HAS_PCH_DG1(i915))
+			i915->display.funcs.hotplug = &dg1_hpd_funcs;
+		else if (DISPLAY_VER(i915) >= 14)
+			i915->display.funcs.hotplug = &xelpdp_hpd_funcs;
+		else if (DISPLAY_VER(i915) >= 11)
+			i915->display.funcs.hotplug = &gen11_hpd_funcs;
+		else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+			i915->display.funcs.hotplug = &bxt_hpd_funcs;
+		else if (INTEL_PCH_TYPE(i915) >= PCH_ICP)
+			i915->display.funcs.hotplug = &icp_hpd_funcs;
+		else if (INTEL_PCH_TYPE(i915) >= PCH_SPT)
+			i915->display.funcs.hotplug = &spt_hpd_funcs;
+		else
+			i915->display.funcs.hotplug = &ilk_hpd_funcs;
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.h b/drivers/gpu/drm/i915/display/intel_hotplug_irq.h
new file mode 100644
index 000000000000..e4db752df096
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_HOTPLUG_IRQ_H__
+#define __INTEL_HOTPLUG_IRQ_H__
+
+#include <linux/types.h>
+
+struct drm_i915_private;
+struct intel_encoder;
+
+u32 i9xx_hpd_irq_ack(struct drm_i915_private *i915);
+
+void i9xx_hpd_irq_handler(struct drm_i915_private *i915, u32 hotplug_status);
+void ibx_hpd_irq_handler(struct drm_i915_private *i915, u32 hotplug_trigger);
+void ilk_hpd_irq_handler(struct drm_i915_private *i915, u32 hotplug_trigger);
+void gen11_hpd_irq_handler(struct drm_i915_private *i915, u32 iir);
+void bxt_hpd_irq_handler(struct drm_i915_private *i915, u32 hotplug_trigger);
+void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir);
+void icp_irq_handler(struct drm_i915_private *i915, u32 pch_iir);
+void spt_irq_handler(struct drm_i915_private *i915, u32 pch_iir);
+
+void i915_hotplug_interrupt_update_locked(struct drm_i915_private *i915,
+					  u32 mask, u32 bits);
+void i915_hotplug_interrupt_update(struct drm_i915_private *i915,
+				   u32 mask, u32 bits);
+
+void intel_hpd_enable_detection(struct intel_encoder *encoder);
+void intel_hpd_irq_setup(struct drm_i915_private *i915);
+
+void intel_hotplug_irq_init(struct drm_i915_private *i915);
+
+#endif /* __INTEL_HOTPLUG_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 02b6cbb832e9..0ead32154f81 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -42,6 +42,7 @@
 #include "display/intel_fifo_underrun.h"
 #include "display/intel_gmbus.h"
 #include "display/intel_hotplug.h"
+#include "display/intel_hotplug_irq.h"
 #include "display/intel_lpe_audio.h"
 #include "display/intel_psr.h"
 #include "display/intel_psr_regs.h"
@@ -84,172 +85,6 @@ static inline void pmu_irq_stats(struct drm_i915_private *i915,
 	WRITE_ONCE(i915->pmu.irq_count, i915->pmu.irq_count + 1);
 }
 
-typedef bool (*long_pulse_detect_func)(enum hpd_pin pin, u32 val);
-typedef u32 (*hotplug_enables_func)(struct intel_encoder *encoder);
-typedef u32 (*hotplug_mask_func)(enum hpd_pin pin);
-
-static const u32 hpd_ilk[HPD_NUM_PINS] = {
-	[HPD_PORT_A] = DE_DP_A_HOTPLUG,
-};
-
-static const u32 hpd_ivb[HPD_NUM_PINS] = {
-	[HPD_PORT_A] = DE_DP_A_HOTPLUG_IVB,
-};
-
-static const u32 hpd_bdw[HPD_NUM_PINS] = {
-	[HPD_PORT_A] = GEN8_DE_PORT_HOTPLUG(HPD_PORT_A),
-};
-
-static const u32 hpd_ibx[HPD_NUM_PINS] = {
-	[HPD_CRT] = SDE_CRT_HOTPLUG,
-	[HPD_SDVO_B] = SDE_SDVOB_HOTPLUG,
-	[HPD_PORT_B] = SDE_PORTB_HOTPLUG,
-	[HPD_PORT_C] = SDE_PORTC_HOTPLUG,
-	[HPD_PORT_D] = SDE_PORTD_HOTPLUG,
-};
-
-static const u32 hpd_cpt[HPD_NUM_PINS] = {
-	[HPD_CRT] = SDE_CRT_HOTPLUG_CPT,
-	[HPD_SDVO_B] = SDE_SDVOB_HOTPLUG_CPT,
-	[HPD_PORT_B] = SDE_PORTB_HOTPLUG_CPT,
-	[HPD_PORT_C] = SDE_PORTC_HOTPLUG_CPT,
-	[HPD_PORT_D] = SDE_PORTD_HOTPLUG_CPT,
-};
-
-static const u32 hpd_spt[HPD_NUM_PINS] = {
-	[HPD_PORT_A] = SDE_PORTA_HOTPLUG_SPT,
-	[HPD_PORT_B] = SDE_PORTB_HOTPLUG_CPT,
-	[HPD_PORT_C] = SDE_PORTC_HOTPLUG_CPT,
-	[HPD_PORT_D] = SDE_PORTD_HOTPLUG_CPT,
-	[HPD_PORT_E] = SDE_PORTE_HOTPLUG_SPT,
-};
-
-static const u32 hpd_mask_i915[HPD_NUM_PINS] = {
-	[HPD_CRT] = CRT_HOTPLUG_INT_EN,
-	[HPD_SDVO_B] = SDVOB_HOTPLUG_INT_EN,
-	[HPD_SDVO_C] = SDVOC_HOTPLUG_INT_EN,
-	[HPD_PORT_B] = PORTB_HOTPLUG_INT_EN,
-	[HPD_PORT_C] = PORTC_HOTPLUG_INT_EN,
-	[HPD_PORT_D] = PORTD_HOTPLUG_INT_EN,
-};
-
-static const u32 hpd_status_g4x[HPD_NUM_PINS] = {
-	[HPD_CRT] = CRT_HOTPLUG_INT_STATUS,
-	[HPD_SDVO_B] = SDVOB_HOTPLUG_INT_STATUS_G4X,
-	[HPD_SDVO_C] = SDVOC_HOTPLUG_INT_STATUS_G4X,
-	[HPD_PORT_B] = PORTB_HOTPLUG_INT_STATUS,
-	[HPD_PORT_C] = PORTC_HOTPLUG_INT_STATUS,
-	[HPD_PORT_D] = PORTD_HOTPLUG_INT_STATUS,
-};
-
-static const u32 hpd_status_i915[HPD_NUM_PINS] = {
-	[HPD_CRT] = CRT_HOTPLUG_INT_STATUS,
-	[HPD_SDVO_B] = SDVOB_HOTPLUG_INT_STATUS_I915,
-	[HPD_SDVO_C] = SDVOC_HOTPLUG_INT_STATUS_I915,
-	[HPD_PORT_B] = PORTB_HOTPLUG_INT_STATUS,
-	[HPD_PORT_C] = PORTC_HOTPLUG_INT_STATUS,
-	[HPD_PORT_D] = PORTD_HOTPLUG_INT_STATUS,
-};
-
-static const u32 hpd_bxt[HPD_NUM_PINS] = {
-	[HPD_PORT_A] = GEN8_DE_PORT_HOTPLUG(HPD_PORT_A),
-	[HPD_PORT_B] = GEN8_DE_PORT_HOTPLUG(HPD_PORT_B),
-	[HPD_PORT_C] = GEN8_DE_PORT_HOTPLUG(HPD_PORT_C),
-};
-
-static const u32 hpd_gen11[HPD_NUM_PINS] = {
-	[HPD_PORT_TC1] = GEN11_TC_HOTPLUG(HPD_PORT_TC1) | GEN11_TBT_HOTPLUG(HPD_PORT_TC1),
-	[HPD_PORT_TC2] = GEN11_TC_HOTPLUG(HPD_PORT_TC2) | GEN11_TBT_HOTPLUG(HPD_PORT_TC2),
-	[HPD_PORT_TC3] = GEN11_TC_HOTPLUG(HPD_PORT_TC3) | GEN11_TBT_HOTPLUG(HPD_PORT_TC3),
-	[HPD_PORT_TC4] = GEN11_TC_HOTPLUG(HPD_PORT_TC4) | GEN11_TBT_HOTPLUG(HPD_PORT_TC4),
-	[HPD_PORT_TC5] = GEN11_TC_HOTPLUG(HPD_PORT_TC5) | GEN11_TBT_HOTPLUG(HPD_PORT_TC5),
-	[HPD_PORT_TC6] = GEN11_TC_HOTPLUG(HPD_PORT_TC6) | GEN11_TBT_HOTPLUG(HPD_PORT_TC6),
-};
-
-static const u32 hpd_xelpdp[HPD_NUM_PINS] = {
-	[HPD_PORT_TC1] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC1) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC1),
-	[HPD_PORT_TC2] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC2) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC2),
-	[HPD_PORT_TC3] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC3) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC3),
-	[HPD_PORT_TC4] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC4) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC4),
-};
-
-static const u32 hpd_icp[HPD_NUM_PINS] = {
-	[HPD_PORT_A] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_A),
-	[HPD_PORT_B] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
-	[HPD_PORT_C] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_C),
-	[HPD_PORT_TC1] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1),
-	[HPD_PORT_TC2] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC2),
-	[HPD_PORT_TC3] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3),
-	[HPD_PORT_TC4] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4),
-	[HPD_PORT_TC5] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC5),
-	[HPD_PORT_TC6] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC6),
-};
-
-static const u32 hpd_sde_dg1[HPD_NUM_PINS] = {
-	[HPD_PORT_A] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_A),
-	[HPD_PORT_B] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
-	[HPD_PORT_C] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_C),
-	[HPD_PORT_D] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_D),
-	[HPD_PORT_TC1] = SDE_TC_HOTPLUG_DG2(HPD_PORT_TC1),
-};
-
-static const u32 hpd_mtp[HPD_NUM_PINS] = {
-	[HPD_PORT_A] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_A),
-	[HPD_PORT_B] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
-	[HPD_PORT_TC1] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1),
-	[HPD_PORT_TC2] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC2),
-	[HPD_PORT_TC3] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3),
-	[HPD_PORT_TC4] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4),
-};
-
-static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
-{
-	struct intel_hotplug *hpd = &dev_priv->display.hotplug;
-
-	if (HAS_GMCH(dev_priv)) {
-		if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
-		    IS_CHERRYVIEW(dev_priv))
-			hpd->hpd = hpd_status_g4x;
-		else
-			hpd->hpd = hpd_status_i915;
-		return;
-	}
-
-	if (DISPLAY_VER(dev_priv) >= 14)
-		hpd->hpd = hpd_xelpdp;
-	else if (DISPLAY_VER(dev_priv) >= 11)
-		hpd->hpd = hpd_gen11;
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		hpd->hpd = hpd_bxt;
-	else if (DISPLAY_VER(dev_priv) == 9)
-		hpd->hpd = NULL; /* no north HPD on SKL */
-	else if (DISPLAY_VER(dev_priv) >= 8)
-		hpd->hpd = hpd_bdw;
-	else if (DISPLAY_VER(dev_priv) >= 7)
-		hpd->hpd = hpd_ivb;
-	else
-		hpd->hpd = hpd_ilk;
-
-	if ((INTEL_PCH_TYPE(dev_priv) < PCH_DG1) &&
-	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
-		return;
-
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
-		hpd->pch_hpd = hpd_sde_dg1;
-	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
-		hpd->pch_hpd = hpd_mtp;
-	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-		hpd->pch_hpd = hpd_icp;
-	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
-		hpd->pch_hpd = hpd_spt;
-	else if (HAS_PCH_LPT(dev_priv) || HAS_PCH_CPT(dev_priv))
-		hpd->pch_hpd = hpd_cpt;
-	else if (HAS_PCH_IBX(dev_priv))
-		hpd->pch_hpd = hpd_ibx;
-	else
-		MISSING_CASE(INTEL_PCH_TYPE(dev_priv));
-}
-
 static void
 intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
@@ -344,47 +179,14 @@ static void gen2_irq_init(struct intel_uncore *uncore,
 	intel_uncore_posting_read16(uncore, GEN2_IMR);
 }
 
-/* For display hotplug interrupt */
-static inline void
-i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
-				     u32 mask,
-				     u32 bits)
-{
-	lockdep_assert_held(&dev_priv->irq_lock);
-	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
-
-	intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_EN, mask, bits);
-}
-
-/**
- * i915_hotplug_interrupt_update - update hotplug interrupt enable
- * @dev_priv: driver private
- * @mask: bits to update
- * @bits: bits to enable
- * NOTE: the HPD enable bits are modified both inside and outside
- * of an interrupt context. To avoid that read-modify-write cycles
- * interfer, these bits are protected by a spinlock. Since this
- * function is usually not called from a context where the lock is
- * held already, this function acquires the lock itself. A non-locking
- * version is also available.
- */
-void i915_hotplug_interrupt_update(struct drm_i915_private *dev_priv,
-				   u32 mask,
-				   u32 bits)
-{
-	spin_lock_irq(&dev_priv->irq_lock);
-	i915_hotplug_interrupt_update_locked(dev_priv, mask, bits);
-	spin_unlock_irq(&dev_priv->irq_lock);
-}
-
 /**
  * ilk_update_display_irq - update DEIMR
  * @dev_priv: driver private
  * @interrupt_mask: mask of interrupt bits to update
  * @enabled_irq_mask: mask of interrupt bits to enable
  */
-static void ilk_update_display_irq(struct drm_i915_private *dev_priv,
-				   u32 interrupt_mask, u32 enabled_irq_mask)
+void ilk_update_display_irq(struct drm_i915_private *dev_priv,
+			    u32 interrupt_mask, u32 enabled_irq_mask)
 {
 	u32 new_val;
 
@@ -419,9 +221,8 @@ void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits)
  * @interrupt_mask: mask of interrupt bits to update
  * @enabled_irq_mask: mask of interrupt bits to enable
  */
-static void bdw_update_port_irq(struct drm_i915_private *dev_priv,
-				u32 interrupt_mask,
-				u32 enabled_irq_mask)
+void bdw_update_port_irq(struct drm_i915_private *dev_priv,
+			 u32 interrupt_mask, u32 enabled_irq_mask)
 {
 	u32 new_val;
 	u32 old_val;
@@ -494,9 +295,9 @@ void bdw_disable_pipe_irq(struct drm_i915_private *i915,
  * @interrupt_mask: mask of interrupt bits to update
  * @enabled_irq_mask: mask of interrupt bits to enable
  */
-static void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
-					 u32 interrupt_mask,
-					 u32 enabled_irq_mask)
+void ibx_display_interrupt_update(struct drm_i915_private *dev_priv,
+				  u32 interrupt_mask,
+				  u32 enabled_irq_mask)
 {
 	u32 sdeimr = intel_uncore_read(&dev_priv->uncore, SDEIMR);
 	sdeimr &= ~interrupt_mask;
@@ -724,209 +525,6 @@ static void ivb_parity_work(struct work_struct *work)
 	mutex_unlock(&dev_priv->drm.struct_mutex);
 }
 
-static bool gen11_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
-{
-	switch (pin) {
-	case HPD_PORT_TC1:
-	case HPD_PORT_TC2:
-	case HPD_PORT_TC3:
-	case HPD_PORT_TC4:
-	case HPD_PORT_TC5:
-	case HPD_PORT_TC6:
-		return val & GEN11_HOTPLUG_CTL_LONG_DETECT(pin);
-	default:
-		return false;
-	}
-}
-
-static bool bxt_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
-{
-	switch (pin) {
-	case HPD_PORT_A:
-		return val & PORTA_HOTPLUG_LONG_DETECT;
-	case HPD_PORT_B:
-		return val & PORTB_HOTPLUG_LONG_DETECT;
-	case HPD_PORT_C:
-		return val & PORTC_HOTPLUG_LONG_DETECT;
-	default:
-		return false;
-	}
-}
-
-static bool icp_ddi_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
-{
-	switch (pin) {
-	case HPD_PORT_A:
-	case HPD_PORT_B:
-	case HPD_PORT_C:
-	case HPD_PORT_D:
-		return val & SHOTPLUG_CTL_DDI_HPD_LONG_DETECT(pin);
-	default:
-		return false;
-	}
-}
-
-static bool icp_tc_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
-{
-	switch (pin) {
-	case HPD_PORT_TC1:
-	case HPD_PORT_TC2:
-	case HPD_PORT_TC3:
-	case HPD_PORT_TC4:
-	case HPD_PORT_TC5:
-	case HPD_PORT_TC6:
-		return val & ICP_TC_HPD_LONG_DETECT(pin);
-	default:
-		return false;
-	}
-}
-
-static bool spt_port_hotplug2_long_detect(enum hpd_pin pin, u32 val)
-{
-	switch (pin) {
-	case HPD_PORT_E:
-		return val & PORTE_HOTPLUG_LONG_DETECT;
-	default:
-		return false;
-	}
-}
-
-static bool spt_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
-{
-	switch (pin) {
-	case HPD_PORT_A:
-		return val & PORTA_HOTPLUG_LONG_DETECT;
-	case HPD_PORT_B:
-		return val & PORTB_HOTPLUG_LONG_DETECT;
-	case HPD_PORT_C:
-		return val & PORTC_HOTPLUG_LONG_DETECT;
-	case HPD_PORT_D:
-		return val & PORTD_HOTPLUG_LONG_DETECT;
-	default:
-		return false;
-	}
-}
-
-static bool ilk_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
-{
-	switch (pin) {
-	case HPD_PORT_A:
-		return val & DIGITAL_PORTA_HOTPLUG_LONG_DETECT;
-	default:
-		return false;
-	}
-}
-
-static bool pch_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
-{
-	switch (pin) {
-	case HPD_PORT_B:
-		return val & PORTB_HOTPLUG_LONG_DETECT;
-	case HPD_PORT_C:
-		return val & PORTC_HOTPLUG_LONG_DETECT;
-	case HPD_PORT_D:
-		return val & PORTD_HOTPLUG_LONG_DETECT;
-	default:
-		return false;
-	}
-}
-
-static bool i9xx_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
-{
-	switch (pin) {
-	case HPD_PORT_B:
-		return val & PORTB_HOTPLUG_INT_LONG_PULSE;
-	case HPD_PORT_C:
-		return val & PORTC_HOTPLUG_INT_LONG_PULSE;
-	case HPD_PORT_D:
-		return val & PORTD_HOTPLUG_INT_LONG_PULSE;
-	default:
-		return false;
-	}
-}
-
-/*
- * Get a bit mask of pins that have triggered, and which ones may be long.
- * This can be called multiple times with the same masks to accumulate
- * hotplug detection results from several registers.
- *
- * Note that the caller is expected to zero out the masks initially.
- */
-static void intel_get_hpd_pins(struct drm_i915_private *dev_priv,
-			       u32 *pin_mask, u32 *long_mask,
-			       u32 hotplug_trigger, u32 dig_hotplug_reg,
-			       const u32 hpd[HPD_NUM_PINS],
-			       bool long_pulse_detect(enum hpd_pin pin, u32 val))
-{
-	enum hpd_pin pin;
-
-	BUILD_BUG_ON(BITS_PER_TYPE(*pin_mask) < HPD_NUM_PINS);
-
-	for_each_hpd_pin(pin) {
-		if ((hpd[pin] & hotplug_trigger) == 0)
-			continue;
-
-		*pin_mask |= BIT(pin);
-
-		if (long_pulse_detect(pin, dig_hotplug_reg))
-			*long_mask |= BIT(pin);
-	}
-
-	drm_dbg(&dev_priv->drm,
-		"hotplug event received, stat 0x%08x, dig 0x%08x, pins 0x%08x, long 0x%08x\n",
-		hotplug_trigger, dig_hotplug_reg, *pin_mask, *long_mask);
-
-}
-
-static u32 intel_hpd_enabled_irqs(struct drm_i915_private *dev_priv,
-				  const u32 hpd[HPD_NUM_PINS])
-{
-	struct intel_encoder *encoder;
-	u32 enabled_irqs = 0;
-
-	for_each_intel_encoder(&dev_priv->drm, encoder)
-		if (dev_priv->display.hotplug.stats[encoder->hpd_pin].state == HPD_ENABLED)
-			enabled_irqs |= hpd[encoder->hpd_pin];
-
-	return enabled_irqs;
-}
-
-static u32 intel_hpd_hotplug_irqs(struct drm_i915_private *dev_priv,
-				  const u32 hpd[HPD_NUM_PINS])
-{
-	struct intel_encoder *encoder;
-	u32 hotplug_irqs = 0;
-
-	for_each_intel_encoder(&dev_priv->drm, encoder)
-		hotplug_irqs |= hpd[encoder->hpd_pin];
-
-	return hotplug_irqs;
-}
-
-static u32 intel_hpd_hotplug_mask(struct drm_i915_private *i915,
-				  hotplug_mask_func hotplug_mask)
-{
-	enum hpd_pin pin;
-	u32 hotplug = 0;
-
-	for_each_hpd_pin(pin)
-		hotplug |= hotplug_mask(pin);
-
-	return hotplug;
-}
-
-static u32 intel_hpd_hotplug_enables(struct drm_i915_private *i915,
-				     hotplug_enables_func hotplug_enables)
-{
-	struct intel_encoder *encoder;
-	u32 hotplug = 0;
-
-	for_each_intel_encoder(&i915->drm, encoder)
-		hotplug |= hotplug_enables(encoder);
-
-	return hotplug;
-}
-
 #if defined(CONFIG_DEBUG_FS)
 static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 					 enum pipe pipe,
@@ -1199,71 +797,6 @@ static void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 		intel_gmbus_irq_handler(dev_priv);
 }
 
-static u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
-{
-	u32 hotplug_status = 0, hotplug_status_mask;
-	int i;
-
-	if (IS_G4X(dev_priv) ||
-	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		hotplug_status_mask = HOTPLUG_INT_STATUS_G4X |
-			DP_AUX_CHANNEL_MASK_INT_STATUS_G4X;
-	else
-		hotplug_status_mask = HOTPLUG_INT_STATUS_I915;
-
-	/*
-	 * We absolutely have to clear all the pending interrupt
-	 * bits in PORT_HOTPLUG_STAT. Otherwise the ISR port
-	 * interrupt bit won't have an edge, and the i965/g4x
-	 * edge triggered IIR will not notice that an interrupt
-	 * is still pending. We can't use PORT_HOTPLUG_EN to
-	 * guarantee the edge as the act of toggling the enable
-	 * bits can itself generate a new hotplug interrupt :(
-	 */
-	for (i = 0; i < 10; i++) {
-		u32 tmp = intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT) & hotplug_status_mask;
-
-		if (tmp == 0)
-			return hotplug_status;
-
-		hotplug_status |= tmp;
-		intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_STAT, hotplug_status);
-	}
-
-	drm_WARN_ONCE(&dev_priv->drm, 1,
-		      "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
-		      intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
-
-	return hotplug_status;
-}
-
-static void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv,
-				 u32 hotplug_status)
-{
-	u32 pin_mask = 0, long_mask = 0;
-	u32 hotplug_trigger;
-
-	if (IS_G4X(dev_priv) ||
-	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		hotplug_trigger = hotplug_status & HOTPLUG_INT_STATUS_G4X;
-	else
-		hotplug_trigger = hotplug_status & HOTPLUG_INT_STATUS_I915;
-
-	if (hotplug_trigger) {
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
-				   hotplug_trigger, hotplug_trigger,
-				   dev_priv->display.hotplug.hpd,
-				   i9xx_port_hotplug_long_detect);
-
-		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
-	}
-
-	if ((IS_G4X(dev_priv) ||
-	     IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
-	    hotplug_status & DP_AUX_CHANNEL_MASK_INT_STATUS_G4X)
-		intel_dp_aux_irq_handler(dev_priv);
-}
-
 static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
@@ -1428,38 +961,6 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 	return ret;
 }
 
-static void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv,
-				u32 hotplug_trigger)
-{
-	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
-
-	/*
-	 * Somehow the PCH doesn't seem to really ack the interrupt to the CPU
-	 * unless we touch the hotplug register, even if hotplug_trigger is
-	 * zero. Not acking leads to "The master control interrupt lied (SDE)!"
-	 * errors.
-	 */
-	dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
-	if (!hotplug_trigger) {
-		u32 mask = PORTA_HOTPLUG_STATUS_MASK |
-			PORTD_HOTPLUG_STATUS_MASK |
-			PORTC_HOTPLUG_STATUS_MASK |
-			PORTB_HOTPLUG_STATUS_MASK;
-		dig_hotplug_reg &= ~mask;
-	}
-
-	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, dig_hotplug_reg);
-	if (!hotplug_trigger)
-		return;
-
-	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
-			   hotplug_trigger, dig_hotplug_reg,
-			   dev_priv->display.hotplug.pch_hpd,
-			   pch_port_hotplug_long_detect);
-
-	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
-}
-
 static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 {
 	enum pipe pipe;
@@ -1585,133 +1086,6 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		cpt_serr_int_handler(dev_priv);
 }
 
-static void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
-{
-	enum hpd_pin pin;
-	u32 hotplug_trigger = iir & (XELPDP_DP_ALT_HOTPLUG_MASK | XELPDP_TBT_HOTPLUG_MASK);
-	u32 trigger_aux = iir & XELPDP_AUX_TC_MASK;
-	u32 pin_mask = 0, long_mask = 0;
-
-	for (pin = HPD_PORT_TC1; pin <= HPD_PORT_TC4; pin++) {
-		u32 val;
-
-		if (!(i915->display.hotplug.hpd[pin] & hotplug_trigger))
-			continue;
-
-		pin_mask |= BIT(pin);
-
-		val = intel_de_read(i915, XELPDP_PORT_HOTPLUG_CTL(pin));
-		intel_de_write(i915, XELPDP_PORT_HOTPLUG_CTL(pin), val);
-
-		if (val & (XELPDP_DP_ALT_HPD_LONG_DETECT | XELPDP_TBT_HPD_LONG_DETECT))
-			long_mask |= BIT(pin);
-	}
-
-	if (pin_mask) {
-		drm_dbg(&i915->drm,
-			"pica hotplug event received, stat 0x%08x, pins 0x%08x, long 0x%08x\n",
-			hotplug_trigger, pin_mask, long_mask);
-
-		intel_hpd_irq_handler(i915, pin_mask, long_mask);
-	}
-
-	if (trigger_aux)
-		intel_dp_aux_irq_handler(i915);
-
-	if (!pin_mask && !trigger_aux)
-		drm_err(&i915->drm,
-			"Unexpected DE HPD/AUX interrupt 0x%08x\n", iir);
-}
-
-static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
-{
-	u32 ddi_hotplug_trigger = pch_iir & SDE_DDI_HOTPLUG_MASK_ICP;
-	u32 tc_hotplug_trigger = pch_iir & SDE_TC_HOTPLUG_MASK_ICP;
-	u32 pin_mask = 0, long_mask = 0;
-
-	if (ddi_hotplug_trigger) {
-		u32 dig_hotplug_reg;
-
-		/* Locking due to DSI native GPIO sequences */
-		spin_lock(&dev_priv->irq_lock);
-		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI, 0, 0);
-		spin_unlock(&dev_priv->irq_lock);
-
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
-				   ddi_hotplug_trigger, dig_hotplug_reg,
-				   dev_priv->display.hotplug.pch_hpd,
-				   icp_ddi_port_hotplug_long_detect);
-	}
-
-	if (tc_hotplug_trigger) {
-		u32 dig_hotplug_reg;
-
-		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC, 0, 0);
-
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
-				   tc_hotplug_trigger, dig_hotplug_reg,
-				   dev_priv->display.hotplug.pch_hpd,
-				   icp_tc_port_hotplug_long_detect);
-	}
-
-	if (pin_mask)
-		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
-
-	if (pch_iir & SDE_GMBUS_ICP)
-		intel_gmbus_irq_handler(dev_priv);
-}
-
-static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
-{
-	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_SPT &
-		~SDE_PORTE_HOTPLUG_SPT;
-	u32 hotplug2_trigger = pch_iir & SDE_PORTE_HOTPLUG_SPT;
-	u32 pin_mask = 0, long_mask = 0;
-
-	if (hotplug_trigger) {
-		u32 dig_hotplug_reg;
-
-		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
-
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
-				   hotplug_trigger, dig_hotplug_reg,
-				   dev_priv->display.hotplug.pch_hpd,
-				   spt_port_hotplug_long_detect);
-	}
-
-	if (hotplug2_trigger) {
-		u32 dig_hotplug_reg;
-
-		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2, 0, 0);
-
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
-				   hotplug2_trigger, dig_hotplug_reg,
-				   dev_priv->display.hotplug.pch_hpd,
-				   spt_port_hotplug2_long_detect);
-	}
-
-	if (pin_mask)
-		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
-
-	if (pch_iir & SDE_GMBUS_CPT)
-		intel_gmbus_irq_handler(dev_priv);
-}
-
-static void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv,
-				u32 hotplug_trigger)
-{
-	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
-
-	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, 0, 0);
-
-	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
-			   hotplug_trigger, dig_hotplug_reg,
-			   dev_priv->display.hotplug.hpd,
-			   ilk_port_hotplug_long_detect);
-
-	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
-}
-
 static void ilk_display_irq_handler(struct drm_i915_private *dev_priv,
 				    u32 de_iir)
 {
@@ -1876,56 +1250,6 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 	return ret;
 }
 
-static void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv,
-				u32 hotplug_trigger)
-{
-	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
-
-	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
-
-	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
-			   hotplug_trigger, dig_hotplug_reg,
-			   dev_priv->display.hotplug.hpd,
-			   bxt_port_hotplug_long_detect);
-
-	intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
-}
-
-static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
-{
-	u32 pin_mask = 0, long_mask = 0;
-	u32 trigger_tc = iir & GEN11_DE_TC_HOTPLUG_MASK;
-	u32 trigger_tbt = iir & GEN11_DE_TBT_HOTPLUG_MASK;
-
-	if (trigger_tc) {
-		u32 dig_hotplug_reg;
-
-		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, 0, 0);
-
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
-				   trigger_tc, dig_hotplug_reg,
-				   dev_priv->display.hotplug.hpd,
-				   gen11_port_hotplug_long_detect);
-	}
-
-	if (trigger_tbt) {
-		u32 dig_hotplug_reg;
-
-		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, 0, 0);
-
-		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
-				   trigger_tbt, dig_hotplug_reg,
-				   dev_priv->display.hotplug.hpd,
-				   gen11_port_hotplug_long_detect);
-	}
-
-	if (pin_mask)
-		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
-	else
-		drm_err(&dev_priv->drm,
-			"Unexpected DE HPD interrupt 0x%08x\n", iir);
-}
-
 static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 {
 	u32 mask;
@@ -2943,696 +2267,39 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
-static u32 ibx_hotplug_mask(enum hpd_pin hpd_pin)
+/*
+ * SDEIER is also touched by the interrupt handler to work around missed PCH
+ * interrupts. Hence we can't update it after the interrupt handler is enabled -
+ * instead we unconditionally enable all PCH interrupt sources here, but then
+ * only unmask them as needed with SDEIMR.
+ *
+ * Note that we currently do this after installing the interrupt handler,
+ * but before we enable the master interrupt. That should be sufficient
+ * to avoid races with the irq handler, assuming we have MSI. Shared legacy
+ * interrupts could still race.
+ */
+static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	switch (hpd_pin) {
-	case HPD_PORT_A:
-		return PORTA_HOTPLUG_ENABLE;
-	case HPD_PORT_B:
-		return PORTB_HOTPLUG_ENABLE | PORTB_PULSE_DURATION_MASK;
-	case HPD_PORT_C:
-		return PORTC_HOTPLUG_ENABLE | PORTC_PULSE_DURATION_MASK;
-	case HPD_PORT_D:
-		return PORTD_HOTPLUG_ENABLE | PORTD_PULSE_DURATION_MASK;
-	default:
-		return 0;
-	}
+	struct intel_uncore *uncore = &dev_priv->uncore;
+	u32 mask;
+
+	if (HAS_PCH_NOP(dev_priv))
+		return;
+
+	if (HAS_PCH_IBX(dev_priv))
+		mask = SDE_GMBUS | SDE_AUX_MASK | SDE_POISON;
+	else if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
+		mask = SDE_GMBUS_CPT | SDE_AUX_MASK_CPT;
+	else
+		mask = SDE_GMBUS_CPT;
+
+	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
 }
 
-static u32 ibx_hotplug_enables(struct intel_encoder *encoder)
+static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	switch (encoder->hpd_pin) {
-	case HPD_PORT_A:
-		/*
-		 * When CPU and PCH are on the same package, port A
-		 * HPD must be enabled in both north and south.
-		 */
-		return HAS_PCH_LPT_LP(i915) ?
-			PORTA_HOTPLUG_ENABLE : 0;
-	case HPD_PORT_B:
-		return PORTB_HOTPLUG_ENABLE |
-			PORTB_PULSE_DURATION_2ms;
-	case HPD_PORT_C:
-		return PORTC_HOTPLUG_ENABLE |
-			PORTC_PULSE_DURATION_2ms;
-	case HPD_PORT_D:
-		return PORTD_HOTPLUG_ENABLE |
-			PORTD_PULSE_DURATION_2ms;
-	default:
-		return 0;
-	}
-}
-
-static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
-{
-	/*
-	 * Enable digital hotplug on the PCH, and configure the DP short pulse
-	 * duration to 2ms (which is the minimum in the Display Port spec).
-	 * The pulse duration bits are reserved on LPT+.
-	 */
-	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 intel_hpd_hotplug_mask(dev_priv, ibx_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
-}
-
-static void ibx_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
-			 ibx_hotplug_mask(encoder->hpd_pin),
-			 ibx_hotplug_enables(encoder));
-}
-
-static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
-{
-	u32 hotplug_irqs, enabled_irqs;
-
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
-
-	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
-
-	ibx_hpd_detection_setup(dev_priv);
-}
-
-static u32 icp_ddi_hotplug_mask(enum hpd_pin hpd_pin)
-{
-	switch (hpd_pin) {
-	case HPD_PORT_A:
-	case HPD_PORT_B:
-	case HPD_PORT_C:
-	case HPD_PORT_D:
-		return SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin);
-	default:
-		return 0;
-	}
-}
-
-static u32 icp_ddi_hotplug_enables(struct intel_encoder *encoder)
-{
-	return icp_ddi_hotplug_mask(encoder->hpd_pin);
-}
-
-static u32 icp_tc_hotplug_mask(enum hpd_pin hpd_pin)
-{
-	switch (hpd_pin) {
-	case HPD_PORT_TC1:
-	case HPD_PORT_TC2:
-	case HPD_PORT_TC3:
-	case HPD_PORT_TC4:
-	case HPD_PORT_TC5:
-	case HPD_PORT_TC6:
-		return ICP_TC_HPD_ENABLE(hpd_pin);
-	default:
-		return 0;
-	}
-}
-
-static u32 icp_tc_hotplug_enables(struct intel_encoder *encoder)
-{
-	return icp_tc_hotplug_mask(encoder->hpd_pin);
-}
-
-static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
-{
-	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI,
-			 intel_hpd_hotplug_mask(dev_priv, icp_ddi_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
-}
-
-static void icp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_DDI,
-			 icp_ddi_hotplug_mask(encoder->hpd_pin),
-			 icp_ddi_hotplug_enables(encoder));
-}
-
-static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
-{
-	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC,
-			 intel_hpd_hotplug_mask(dev_priv, icp_tc_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
-}
-
-static void icp_tc_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	intel_uncore_rmw(&i915->uncore, SHOTPLUG_CTL_TC,
-			 icp_tc_hotplug_mask(encoder->hpd_pin),
-			 icp_tc_hotplug_enables(encoder));
-}
-
-static void icp_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	icp_ddi_hpd_enable_detection(encoder);
-	icp_tc_hpd_enable_detection(encoder);
-}
-
-static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
-{
-	u32 hotplug_irqs, enabled_irqs;
-
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
-
-	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
-		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
-
-	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
-
-	icp_ddi_hpd_detection_setup(dev_priv);
-	icp_tc_hpd_detection_setup(dev_priv);
-}
-
-static u32 gen11_hotplug_mask(enum hpd_pin hpd_pin)
-{
-	switch (hpd_pin) {
-	case HPD_PORT_TC1:
-	case HPD_PORT_TC2:
-	case HPD_PORT_TC3:
-	case HPD_PORT_TC4:
-	case HPD_PORT_TC5:
-	case HPD_PORT_TC6:
-		return GEN11_HOTPLUG_CTL_ENABLE(hpd_pin);
-	default:
-		return 0;
-	}
-}
-
-static u32 gen11_hotplug_enables(struct intel_encoder *encoder)
-{
-	return gen11_hotplug_mask(encoder->hpd_pin);
-}
-
-static void dg1_hpd_invert(struct drm_i915_private *i915)
-{
-	u32 val = (INVERT_DDIA_HPD |
-		   INVERT_DDIB_HPD |
-		   INVERT_DDIC_HPD |
-		   INVERT_DDID_HPD);
-	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1, 0, val);
-}
-
-static void dg1_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	dg1_hpd_invert(i915);
-	icp_hpd_enable_detection(encoder);
-}
-
-static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
-{
-	dg1_hpd_invert(dev_priv);
-	icp_hpd_irq_setup(dev_priv);
-}
-
-static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
-{
-	intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL,
-			 intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
-}
-
-static void gen11_tc_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	intel_uncore_rmw(&i915->uncore, GEN11_TC_HOTPLUG_CTL,
-			 gen11_hotplug_mask(encoder->hpd_pin),
-			 gen11_hotplug_enables(encoder));
-}
-
-static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
-{
-	intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL,
-			 intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
-}
-
-static void gen11_tbt_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	intel_uncore_rmw(&i915->uncore, GEN11_TBT_HOTPLUG_CTL,
-			 gen11_hotplug_mask(encoder->hpd_pin),
-			 gen11_hotplug_enables(encoder));
-}
-
-static void gen11_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	gen11_tc_hpd_enable_detection(encoder);
-	gen11_tbt_hpd_enable_detection(encoder);
-
-	if (INTEL_PCH_TYPE(i915) >= PCH_ICP)
-		icp_hpd_enable_detection(encoder);
-}
-
-static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
-{
-	u32 hotplug_irqs, enabled_irqs;
-
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
-
-	intel_uncore_rmw(&dev_priv->uncore, GEN11_DE_HPD_IMR, hotplug_irqs,
-			 ~enabled_irqs & hotplug_irqs);
-	intel_uncore_posting_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
-
-	gen11_tc_hpd_detection_setup(dev_priv);
-	gen11_tbt_hpd_detection_setup(dev_priv);
-
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-		icp_hpd_irq_setup(dev_priv);
-}
-
-static u32 mtp_ddi_hotplug_mask(enum hpd_pin hpd_pin)
-{
-	switch (hpd_pin) {
-	case HPD_PORT_A:
-	case HPD_PORT_B:
-		return SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin);
-	default:
-		return 0;
-	}
-}
-
-static u32 mtp_ddi_hotplug_enables(struct intel_encoder *encoder)
-{
-	return mtp_ddi_hotplug_mask(encoder->hpd_pin);
-}
-
-static u32 mtp_tc_hotplug_mask(enum hpd_pin hpd_pin)
-{
-	switch (hpd_pin) {
-	case HPD_PORT_TC1:
-	case HPD_PORT_TC2:
-	case HPD_PORT_TC3:
-	case HPD_PORT_TC4:
-		return ICP_TC_HPD_ENABLE(hpd_pin);
-	default:
-		return 0;
-	}
-}
-
-static u32 mtp_tc_hotplug_enables(struct intel_encoder *encoder)
-{
-	return mtp_tc_hotplug_mask(encoder->hpd_pin);
-}
-
-static void mtp_ddi_hpd_detection_setup(struct drm_i915_private *i915)
-{
-	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
-		     intel_hpd_hotplug_mask(i915, mtp_ddi_hotplug_mask),
-		     intel_hpd_hotplug_enables(i915, mtp_ddi_hotplug_enables));
-}
-
-static void mtp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
-		     mtp_ddi_hotplug_mask(encoder->hpd_pin),
-		     mtp_ddi_hotplug_enables(encoder));
-}
-
-static void mtp_tc_hpd_detection_setup(struct drm_i915_private *i915)
-{
-	intel_de_rmw(i915, SHOTPLUG_CTL_TC,
-		     intel_hpd_hotplug_mask(i915, mtp_tc_hotplug_mask),
-		     intel_hpd_hotplug_enables(i915, mtp_tc_hotplug_enables));
-}
-
-static void mtp_tc_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
-		     mtp_tc_hotplug_mask(encoder->hpd_pin),
-		     mtp_tc_hotplug_enables(encoder));
-}
-
-static void mtp_hpd_invert(struct drm_i915_private *i915)
-{
-	u32 val = (INVERT_DDIA_HPD |
-		   INVERT_DDIB_HPD |
-		   INVERT_DDIC_HPD |
-		   INVERT_TC1_HPD |
-		   INVERT_TC2_HPD |
-		   INVERT_TC3_HPD |
-		   INVERT_TC4_HPD |
-		   INVERT_DDID_HPD_MTP |
-		   INVERT_DDIE_HPD);
-	intel_de_rmw(i915, SOUTH_CHICKEN1, 0, val);
-}
-
-static void mtp_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	mtp_hpd_invert(i915);
-	mtp_ddi_hpd_enable_detection(encoder);
-	mtp_tc_hpd_enable_detection(encoder);
-}
-
-static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
-{
-	u32 hotplug_irqs, enabled_irqs;
-
-	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
-
-	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
-
-	mtp_hpd_invert(i915);
-	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
-
-	mtp_ddi_hpd_detection_setup(i915);
-	mtp_tc_hpd_detection_setup(i915);
-}
-
-static bool is_xelpdp_pica_hpd_pin(enum hpd_pin hpd_pin)
-{
-	return hpd_pin >= HPD_PORT_TC1 && hpd_pin <= HPD_PORT_TC4;
-}
-
-static void _xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i915,
-					     enum hpd_pin hpd_pin, bool enable)
-{
-	u32 mask = XELPDP_TBT_HOTPLUG_ENABLE |
-		XELPDP_DP_ALT_HOTPLUG_ENABLE;
-
-	if (!is_xelpdp_pica_hpd_pin(hpd_pin))
-		return;
-
-	intel_de_rmw(i915, XELPDP_PORT_HOTPLUG_CTL(hpd_pin),
-		     mask, enable ? mask : 0);
-}
-
-static void xelpdp_pica_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	_xelpdp_pica_hpd_detection_setup(i915, encoder->hpd_pin, true);
-}
-
-static void xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i915)
-{
-	struct intel_encoder *encoder;
-	u32 available_pins = 0;
-	enum hpd_pin pin;
-
-	BUILD_BUG_ON(BITS_PER_TYPE(available_pins) < HPD_NUM_PINS);
-
-	for_each_intel_encoder(&i915->drm, encoder)
-		available_pins |= BIT(encoder->hpd_pin);
-
-	for_each_hpd_pin(pin)
-		_xelpdp_pica_hpd_detection_setup(i915, pin, available_pins & BIT(pin));
-}
-
-static void xelpdp_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	xelpdp_pica_hpd_enable_detection(encoder);
-	mtp_hpd_enable_detection(encoder);
-}
-
-static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
-{
-	u32 hotplug_irqs, enabled_irqs;
-
-	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.hpd);
-
-	intel_de_rmw(i915, PICAINTERRUPT_IMR, hotplug_irqs,
-		     ~enabled_irqs & hotplug_irqs);
-	intel_uncore_posting_read(&i915->uncore, PICAINTERRUPT_IMR);
-
-	xelpdp_pica_hpd_detection_setup(i915);
-
-	if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
-		mtp_hpd_irq_setup(i915);
-}
-
-static u32 spt_hotplug_mask(enum hpd_pin hpd_pin)
-{
-	switch (hpd_pin) {
-	case HPD_PORT_A:
-		return PORTA_HOTPLUG_ENABLE;
-	case HPD_PORT_B:
-		return PORTB_HOTPLUG_ENABLE;
-	case HPD_PORT_C:
-		return PORTC_HOTPLUG_ENABLE;
-	case HPD_PORT_D:
-		return PORTD_HOTPLUG_ENABLE;
-	default:
-		return 0;
-	}
-}
-
-static u32 spt_hotplug_enables(struct intel_encoder *encoder)
-{
-	return spt_hotplug_mask(encoder->hpd_pin);
-}
-
-static u32 spt_hotplug2_mask(enum hpd_pin hpd_pin)
-{
-	switch (hpd_pin) {
-	case HPD_PORT_E:
-		return PORTE_HOTPLUG_ENABLE;
-	default:
-		return 0;
-	}
-}
-
-static u32 spt_hotplug2_enables(struct intel_encoder *encoder)
-{
-	return spt_hotplug2_mask(encoder->hpd_pin);
-}
-
-static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
-{
-	/* Display WA #1179 WaHardHangonHotPlug: cnp */
-	if (HAS_PCH_CNP(dev_priv)) {
-		intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, CHASSIS_CLK_REQ_DURATION_MASK,
-				 CHASSIS_CLK_REQ_DURATION(0xf));
-	}
-
-	/* Enable digital hotplug on the PCH */
-	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 intel_hpd_hotplug_mask(dev_priv, spt_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
-
-	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2,
-			 intel_hpd_hotplug_mask(dev_priv, spt_hotplug2_mask),
-			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
-}
-
-static void spt_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	/* Display WA #1179 WaHardHangonHotPlug: cnp */
-	if (HAS_PCH_CNP(i915)) {
-		intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1,
-				 CHASSIS_CLK_REQ_DURATION_MASK,
-				 CHASSIS_CLK_REQ_DURATION(0xf));
-	}
-
-	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
-			 spt_hotplug_mask(encoder->hpd_pin),
-			 spt_hotplug_enables(encoder));
-
-	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG2,
-			 spt_hotplug2_mask(encoder->hpd_pin),
-			 spt_hotplug2_enables(encoder));
-}
-
-static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
-{
-	u32 hotplug_irqs, enabled_irqs;
-
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
-		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
-
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
-
-	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
-
-	spt_hpd_detection_setup(dev_priv);
-}
-
-static u32 ilk_hotplug_mask(enum hpd_pin hpd_pin)
-{
-	switch (hpd_pin) {
-	case HPD_PORT_A:
-		return DIGITAL_PORTA_HOTPLUG_ENABLE |
-			DIGITAL_PORTA_PULSE_DURATION_MASK;
-	default:
-		return 0;
-	}
-}
-
-static u32 ilk_hotplug_enables(struct intel_encoder *encoder)
-{
-	switch (encoder->hpd_pin) {
-	case HPD_PORT_A:
-		return DIGITAL_PORTA_HOTPLUG_ENABLE |
-			DIGITAL_PORTA_PULSE_DURATION_2ms;
-	default:
-		return 0;
-	}
-}
-
-static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
-{
-	/*
-	 * Enable digital hotplug on the CPU, and configure the DP short pulse
-	 * duration to 2ms (which is the minimum in the Display Port spec)
-	 * The pulse duration bits are reserved on HSW+.
-	 */
-	intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
-			 intel_hpd_hotplug_mask(dev_priv, ilk_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
-}
-
-static void ilk_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	intel_uncore_rmw(&i915->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
-			 ilk_hotplug_mask(encoder->hpd_pin),
-			 ilk_hotplug_enables(encoder));
-
-	ibx_hpd_enable_detection(encoder);
-}
-
-static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
-{
-	u32 hotplug_irqs, enabled_irqs;
-
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
-
-	if (DISPLAY_VER(dev_priv) >= 8)
-		bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
-	else
-		ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
-
-	ilk_hpd_detection_setup(dev_priv);
-
-	ibx_hpd_irq_setup(dev_priv);
-}
-
-static u32 bxt_hotplug_mask(enum hpd_pin hpd_pin)
-{
-	switch (hpd_pin) {
-	case HPD_PORT_A:
-		return PORTA_HOTPLUG_ENABLE | BXT_DDIA_HPD_INVERT;
-	case HPD_PORT_B:
-		return PORTB_HOTPLUG_ENABLE | BXT_DDIB_HPD_INVERT;
-	case HPD_PORT_C:
-		return PORTC_HOTPLUG_ENABLE | BXT_DDIC_HPD_INVERT;
-	default:
-		return 0;
-	}
-}
-
-static u32 bxt_hotplug_enables(struct intel_encoder *encoder)
-{
-	u32 hotplug;
-
-	switch (encoder->hpd_pin) {
-	case HPD_PORT_A:
-		hotplug = PORTA_HOTPLUG_ENABLE;
-		if (intel_bios_encoder_hpd_invert(encoder->devdata))
-			hotplug |= BXT_DDIA_HPD_INVERT;
-		return hotplug;
-	case HPD_PORT_B:
-		hotplug = PORTB_HOTPLUG_ENABLE;
-		if (intel_bios_encoder_hpd_invert(encoder->devdata))
-			hotplug |= BXT_DDIB_HPD_INVERT;
-		return hotplug;
-	case HPD_PORT_C:
-		hotplug = PORTC_HOTPLUG_ENABLE;
-		if (intel_bios_encoder_hpd_invert(encoder->devdata))
-			hotplug |= BXT_DDIC_HPD_INVERT;
-		return hotplug;
-	default:
-		return 0;
-	}
-}
-
-static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
-{
-	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
-			 intel_hpd_hotplug_mask(dev_priv, bxt_hotplug_mask),
-			 intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
-}
-
-static void bxt_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	intel_uncore_rmw(&i915->uncore, PCH_PORT_HOTPLUG,
-			 bxt_hotplug_mask(encoder->hpd_pin),
-			 bxt_hotplug_enables(encoder));
-}
-
-static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
-{
-	u32 hotplug_irqs, enabled_irqs;
-
-	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
-	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
-
-	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
-
-	bxt_hpd_detection_setup(dev_priv);
-}
-
-/*
- * SDEIER is also touched by the interrupt handler to work around missed PCH
- * interrupts. Hence we can't update it after the interrupt handler is enabled -
- * instead we unconditionally enable all PCH interrupt sources here, but then
- * only unmask them as needed with SDEIMR.
- *
- * Note that we currently do this after installing the interrupt handler,
- * but before we enable the master interrupt. That should be sufficient
- * to avoid races with the irq handler, assuming we have MSI. Shared legacy
- * interrupts could still race.
- */
-static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	u32 mask;
-
-	if (HAS_PCH_NOP(dev_priv))
-		return;
-
-	if (HAS_PCH_IBX(dev_priv))
-		mask = SDE_GMBUS | SDE_AUX_MASK | SDE_POISON;
-	else if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
-		mask = SDE_GMBUS_CPT | SDE_AUX_MASK_CPT;
-	else
-		mask = SDE_GMBUS_CPT;
-
-	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
-}
-
-static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	u32 display_mask, extra_mask;
+	struct intel_uncore *uncore = &dev_priv->uncore;
+	u32 display_mask, extra_mask;
 
 	if (GRAPHICS_VER(dev_priv) >= 7) {
 		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE_IVB |
@@ -4267,40 +2934,6 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
 	i915_enable_asle_pipestat(dev_priv);
 }
 
-static void i915_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	u32 hotplug_en = hpd_mask_i915[encoder->hpd_pin];
-
-	/* HPD sense and interrupt enable are one and the same */
-	i915_hotplug_interrupt_update(i915, hotplug_en, hotplug_en);
-}
-
-static void i915_hpd_irq_setup(struct drm_i915_private *dev_priv)
-{
-	u32 hotplug_en;
-
-	lockdep_assert_held(&dev_priv->irq_lock);
-
-	/* Note HDMI and DP share hotplug bits */
-	/* enable bits are the same for all generations */
-	hotplug_en = intel_hpd_enabled_irqs(dev_priv, hpd_mask_i915);
-	/* Programming the CRT detection parameters tends
-	   to generate a spurious hotplug event about three
-	   seconds later.  So just do it once.
-	*/
-	if (IS_G4X(dev_priv))
-		hotplug_en |= CRT_HOTPLUG_ACTIVATION_PERIOD_64;
-	hotplug_en |= CRT_HOTPLUG_VOLTAGE_COMPARE_50;
-
-	/* Ignore TV since it's buggy */
-	i915_hotplug_interrupt_update_locked(dev_priv,
-					     HOTPLUG_INT_EN_MASK |
-					     CRT_HOTPLUG_VOLTAGE_COMPARE_MASK |
-					     CRT_HOTPLUG_ACTIVATION_PERIOD_64,
-					     hotplug_en);
-}
-
 static irqreturn_t i965_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
@@ -4360,43 +2993,6 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 	return ret;
 }
 
-struct intel_hotplug_funcs {
-	/* Enable HPD sense and interrupts for all present encoders */
-	void (*hpd_irq_setup)(struct drm_i915_private *i915);
-	/* Enable HPD sense for a single encoder */
-	void (*hpd_enable_detection)(struct intel_encoder *encoder);
-};
-
-#define HPD_FUNCS(platform)					 \
-static const struct intel_hotplug_funcs platform##_hpd_funcs = { \
-	.hpd_irq_setup = platform##_hpd_irq_setup,		 \
-	.hpd_enable_detection = platform##_hpd_enable_detection, \
-}
-
-HPD_FUNCS(i915);
-HPD_FUNCS(xelpdp);
-HPD_FUNCS(dg1);
-HPD_FUNCS(gen11);
-HPD_FUNCS(bxt);
-HPD_FUNCS(icp);
-HPD_FUNCS(spt);
-HPD_FUNCS(ilk);
-#undef HPD_FUNCS
-
-void intel_hpd_enable_detection(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	if (i915->display.funcs.hotplug)
-		i915->display.funcs.hotplug->hpd_enable_detection(encoder);
-}
-
-void intel_hpd_irq_setup(struct drm_i915_private *i915)
-{
-	if (i915->display_irqs_enabled && i915->display.funcs.hotplug)
-		i915->display.funcs.hotplug->hpd_irq_setup(i915);
-}
-
 /**
  * intel_irq_init - initializes irq support
  * @dev_priv: i915 device instance
@@ -4419,10 +3015,6 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	intel_hpd_init_pins(dev_priv);
-
-	intel_hpd_init_early(dev_priv);
-
 	dev_priv->drm.vblank_disable_immediate = true;
 
 	/* Most platforms treat the display irq block as an always-on
@@ -4435,27 +3027,7 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		dev_priv->display_irqs_enabled = false;
 
-	if (HAS_GMCH(dev_priv)) {
-		if (I915_HAS_HOTPLUG(dev_priv))
-			dev_priv->display.funcs.hotplug = &i915_hpd_funcs;
-	} else {
-		if (HAS_PCH_DG2(dev_priv))
-			dev_priv->display.funcs.hotplug = &icp_hpd_funcs;
-		else if (HAS_PCH_DG1(dev_priv))
-			dev_priv->display.funcs.hotplug = &dg1_hpd_funcs;
-		else if (DISPLAY_VER(dev_priv) >= 14)
-			dev_priv->display.funcs.hotplug = &xelpdp_hpd_funcs;
-		else if (DISPLAY_VER(dev_priv) >= 11)
-			dev_priv->display.funcs.hotplug = &gen11_hpd_funcs;
-		else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-			dev_priv->display.funcs.hotplug = &bxt_hpd_funcs;
-		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-			dev_priv->display.funcs.hotplug = &icp_hpd_funcs;
-		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
-			dev_priv->display.funcs.hotplug = &spt_hpd_funcs;
-		else
-			dev_priv->display.funcs.hotplug = &ilk_hpd_funcs;
-	}
+	intel_hotplug_irq_init(dev_priv);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index dd47e473ba4f..913c854f873d 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -38,18 +38,18 @@ i915_disable_pipestat(struct drm_i915_private *dev_priv, enum pipe pipe,
 void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv);
 void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv);
 
-void intel_hpd_enable_detection(struct intel_encoder *encoder);
-void intel_hpd_irq_setup(struct drm_i915_private *i915);
-void i915_hotplug_interrupt_update(struct drm_i915_private *dev_priv,
-				   u32 mask,
-				   u32 bits);
-
+void ilk_update_display_irq(struct drm_i915_private *i915,
+			    u32 interrupt_mask, u32 enabled_irq_mask);
 void ilk_enable_display_irq(struct drm_i915_private *i915, u32 bits);
 void ilk_disable_display_irq(struct drm_i915_private *i915, u32 bits);
 
+void bdw_update_port_irq(struct drm_i915_private *i915,
+			 u32 interrupt_mask, u32 enabled_irq_mask);
 void bdw_enable_pipe_irq(struct drm_i915_private *i915, enum pipe pipe, u32 bits);
 void bdw_disable_pipe_irq(struct drm_i915_private *i915, enum pipe pipe, u32 bits);
 
+void ibx_display_interrupt_update(struct drm_i915_private *i915,
+				  u32 interrupt_mask, u32 enabled_irq_mask);
 void ibx_enable_display_interrupt(struct drm_i915_private *i915, u32 bits);
 void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
 
-- 
2.39.2

