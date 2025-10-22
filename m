Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D32BF97A5
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D744D10E6A8;
	Wed, 22 Oct 2025 00:32:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SC7kwk1x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0701B10E6AB;
 Wed, 22 Oct 2025 00:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093171; x=1792629171;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=lmzYMsOccZCWcxoOtj7kHBS9gh2Pzh8qhq4Xuxj+GpU=;
 b=SC7kwk1xLC7ATMQVfcwhxymrcq4E0qTXh6SU35runpiurdXz7jHM/hqL
 ajMV/1xGkJcy/bvB4QB51FdePhjORhHsVrjmEyu3OhZd98nPDS0e3OaNG
 zIbCy/bK9ydpEsLaLwFGQ/x3Uc1l+uC9ZJIUXEOKefER24alTHf9eXxR6
 D/zAohC+3TDIQNxdl/gt720KmGN7Am2l5Y9fSWrKfsL/iAofsaXBCpuCh
 CcUrOBBSLSWYQ8tTeRRJh2RgPetoRG7/Rj1BD3wXbyvFa/BCaS719Tv5c
 zx1T1yW4sGFCw9XB51Tv1I1Q1+4H2vOhMiOWLn1B/hrD6nfxuEnv2oci7 w==;
X-CSE-ConnectionGUID: d3Gpc7XHTyeVWqL5T05bgQ==
X-CSE-MsgGUID: LyPrsRf+SYK/+Y4VbZca0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67095547"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="67095547"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:51 -0700
X-CSE-ConnectionGUID: ZphUtEscSO2BYEw8HsLfWA==
X-CSE-MsgGUID: SRVruzlYQG2Ce+YBNG98FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132648"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:47 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:56 -0300
Subject: [PATCH v2 31/32] drm/i915/xe3p_lpd: Extend Type-C flow for static
 DDI allocation
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-31-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

Xe3p_LPD has a new feature that allows the driver to allocate at runtime
the DDI (TC ones) port to drive a legacy connection on the Type-C
subsystem.  This allows better resource utilization, because now there
is no need to statically reserve ports for legacy connectors on the
Type-C subsystem.

That said, our driver is not yet ready for the dynamic allocation.
Thus, as an incremental step, let's add the logic containing the
required programming sequence for the allocation, but, instead of
selecting the first available port, we try so use the 1:1 mapping
expected by the driver today.

Bspec: 68954
Co-developed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---

NOTE: This patch is still a WIP. There are some opens to resolve here.
Nevertheless, I'm sending it here for early feedback.

For the HIP-index stuff, I have a local refactor started and need to
finish it up and send it.

The other open is about concurrent calls to iom_dp_resource_lock().  It
is likely that we need to have a software lock to prevent concurrent
access to IOM_DP_HW_RESOURCE_SEMAPHORE from our driver.
---
 drivers/gpu/drm/i915/display/intel_display_regs.h |  20 ++-
 drivers/gpu/drm/i915/display/intel_tc.c           | 151 +++++++++++++++++++++-
 2 files changed, 169 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index c9f8b90faa42..21600dee2603 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2912,6 +2912,25 @@ enum skl_power_gate {
 #define   DP_PIN_ASSIGNMENT(idx, x)		((x) << ((idx) * 4))
 /* See enum intel_tc_pin_assignment for the pin assignment field values. */
 
+/*
+ * FIXME: There is also a definition for this register in intel_dkl_phy_regs.h.
+ * We need to consolidate the definitions.
+ */
+#define HIP_INDEX_REG0				_MMIO(0x1010a0)
+#define   HIP_168_INDEX_MASK			REG_GENMASK(3, 0)
+#define   HIP_168_IOM_RES_MGMT			REG_FIELD_PREP(HIP_168_INDEX_MASK, 0x1)
+
+#define IOM_DP_HW_RESOURCE_SEMAPHORE		_MMIO(0x168038)
+#define   IOM_DP_HW_SEMLOCK			REG_BIT(31)
+#define   IOM_REQUESTOR_ID_MASK			REG_GENMASK(3, 0)
+#define   IOM_REQUESTOR_ID_DISPLAY_ENGINE	REG_FIELD_PREP(IOM_REQUESTOR_ID_MASK, 0x4)
+
+#define IOM_DP_RESOURCE_MNG			_MMIO(0x16802c)
+#define   IOM_DDI_CONSUMER_SHIFT(tc_port)	((tc_port) * 4)
+#define   IOM_DDI_CONSUMER_MASK(tc_port)	(0xf << IOM_DDI_CONSUMER_SHIFT(tc_port))
+#define   IOM_DDI_CONSUMER(tc_port, x)		((x) << IOM_DDI_CONSUMER_SHIFT(tc_port))
+#define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)	IOM_DDI_CONSUMER(tc_port, 0x8 + (tc_port))
+
 #define _TCSS_DDI_STATUS_1			0x161500
 #define _TCSS_DDI_STATUS_2			0x161504
 #define TCSS_DDI_STATUS(tc)			_MMIO(_PICK_EVEN(tc, \
@@ -2950,5 +2969,4 @@ enum skl_power_gate {
 #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
 
 
-
 #endif /* __INTEL_DISPLAY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index c4a5601c5107..5a0e2d9cccd3 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -10,6 +10,7 @@
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_atomic.h"
+#include "intel_bios.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
@@ -25,6 +26,9 @@
 #include "intel_modeset_lock.h"
 #include "intel_tc.h"
 
+#define IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US	10
+#define IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US	10000
+
 enum tc_port_mode {
 	TC_PORT_DISCONNECTED,
 	TC_PORT_TBT_ALT,
@@ -1200,6 +1204,143 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	__tc_cold_unblock(tc, domain, tc_cold_wref);
 }
 
+static void iom_res_mgmt_prepare_reg_access(struct intel_display *display)
+{
+	/*
+	 * IOM resource management registers live in the 2nd 4KB page of IOM
+	 * address space. So we need to configure HIP_INDEX_REG0 with the
+	 * correct index.
+	 *
+	 * FIXME: We need to have this and dekel PHY implementation using a
+	 * common abstraction to access registers on the HIP-indexed ranges, and
+	 * this function would then be dropped.
+	 */
+	intel_de_rmw(display, HIP_INDEX_REG0,
+		     HIP_168_INDEX_MASK, HIP_168_IOM_RES_MGMT);
+}
+
+/*
+ * FIXME: This function also needs to avoid concurrent accesses from the driver
+ * itself, possibly via a software lock.
+ */
+static int iom_dp_resource_lock(struct intel_tc_port *tc)
+{
+	struct intel_display *display = to_intel_display(tc->dig_port);
+	u32 val = IOM_DP_HW_SEMLOCK | IOM_REQUESTOR_ID_DISPLAY_ENGINE;
+	int ret;
+
+	iom_res_mgmt_prepare_reg_access(display);
+	ret = poll_timeout_us(intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, val),
+			      (intel_de_read(display, IOM_DP_HW_RESOURCE_SEMAPHORE) & val) == val,
+			      IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US,
+			      IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US, false);
+
+	if (ret)
+		drm_err(display->drm, "Port %s: timeout trying to lock IOM semaphore\n",
+			tc->port_name);
+
+	return ret;
+}
+
+static void iom_dp_resource_unlock(struct intel_tc_port *tc)
+{
+	struct intel_display *display = to_intel_display(tc->dig_port);
+
+	iom_res_mgmt_prepare_reg_access(display);
+	intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, IOM_REQUESTOR_ID_DISPLAY_ENGINE);
+}
+
+static bool xe3p_tc_iom_allocate_ddi(struct intel_tc_port *tc, bool allocate)
+{
+	struct intel_display *display = to_intel_display(tc->dig_port);
+	struct intel_digital_port *dig_port = tc->dig_port;
+	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
+	u32 val;
+	u32 consumer;
+	u32 expected_consumer;
+	bool ret;
+
+	if (DISPLAY_VER(display) < 35)
+		return true;
+
+	if (tc->mode != TC_PORT_LEGACY)
+		return true;
+
+	if (!intel_bios_encoder_supports_dyn_port_over_tc(dig_port->base.devdata))
+		return true;
+
+	if (iom_dp_resource_lock(tc))
+		return false;
+
+	val = intel_de_read(display, IOM_DP_RESOURCE_MNG);
+
+	consumer = val & IOM_DDI_CONSUMER_MASK(tc_port);
+	consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
+
+	/*
+	 * Bspec instructs to select first available DDI, but our driver is not
+	 * ready for such dynamic allocation yet. For now, we force a "static"
+	 * allocation: map the physical port (where HPD happens) to the
+	 * encoder's DDI (logical TC port, represented by tc_port).
+	 */
+	expected_consumer = IOM_DDI_CONSUMER_STATIC_TC(tc_port);
+	expected_consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
+
+	if (allocate) {
+		struct intel_encoder *other_encoder;
+
+		/*
+		 * Check if this encoder's DDI is already allocated for another
+		 * physical port, which could have happened prior to the driver
+		 * taking over (e.g. GOP).
+		 */
+		for_each_intel_encoder(display->drm, other_encoder) {
+			enum tc_port other_tc_port = intel_encoder_to_tc(other_encoder);
+			u32 other_consumer;
+
+			if (tc_port == TC_PORT_NONE || other_tc_port == tc_port)
+				continue;
+
+			other_consumer = val & IOM_DDI_CONSUMER_MASK(other_tc_port);
+			other_consumer >>= IOM_DDI_CONSUMER_SHIFT(other_tc_port);
+			if (other_consumer == expected_consumer) {
+				drm_err(display->drm, "Port %s: expected consumer %u already allocated another DDI; IOM_DP_RESOURCE_MNG=0x%08x\n",
+					tc->port_name, expected_consumer, val);
+				ret = false;
+				goto out_resource_unlock;
+			}
+		}
+
+		if (consumer == 0) {
+			/* DDI is free to use, let's allocate it. */
+			val &= ~IOM_DDI_CONSUMER_MASK(tc_port);
+			val |= IOM_DDI_CONSUMER(tc_port, expected_consumer);
+			intel_de_write(display, IOM_DP_RESOURCE_MNG, val);
+			ret = true;
+		} else if (consumer == expected_consumer) {
+			/*
+			 * Nothing to do, as the expected "static" DDI allocation is
+			 * already in place.
+			 */
+			ret = true;
+		} else {
+			drm_err(display->drm, "Port %s: DDI already allocated for consumer %u; IOM_DP_RESOURCE_MNG=0x%08x\n",
+				tc->port_name, consumer, val);
+			ret = false;
+		}
+	} else {
+		drm_WARN_ON(display->drm, consumer != expected_consumer);
+		val &= ~IOM_DDI_CONSUMER_MASK(tc_port);
+		intel_de_write(display, IOM_DP_RESOURCE_MNG, val);
+		ret = true;
+	}
+
+out_resource_unlock:
+	iom_dp_resource_unlock(tc);
+
+	return ret;
+}
+
 static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 {
 	tc->lock_wakeref = tc_cold_block(tc);
@@ -1210,9 +1351,12 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 		return true;
 	}
 
-	if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
+	if (!xe3p_tc_iom_allocate_ddi(tc, true))
 		goto out_unblock_tccold;
 
+	if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
+		goto out_deallocate_ddi;
+
 	xelpdp_tc_phy_take_ownership(tc, true);
 
 	read_pin_configuration(tc);
@@ -1226,6 +1370,9 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 	xelpdp_tc_phy_take_ownership(tc, false);
 	xelpdp_tc_phy_wait_for_tcss_power(tc, false);
 
+out_deallocate_ddi:
+	xe3p_tc_iom_allocate_ddi(tc, false);
+
 out_unblock_tccold:
 	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
 
@@ -1236,6 +1383,8 @@ static void xelpdp_tc_phy_disconnect(struct intel_tc_port *tc)
 {
 	switch (tc->mode) {
 	case TC_PORT_LEGACY:
+		xe3p_tc_iom_allocate_ddi(tc, false);
+		fallthrough;
 	case TC_PORT_DP_ALT:
 		xelpdp_tc_phy_take_ownership(tc, false);
 		xelpdp_tc_phy_enable_tcss_power(tc, false);

-- 
2.51.0

