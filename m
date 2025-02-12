Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8418FA3254D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 12:50:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF7B10E862;
	Wed, 12 Feb 2025 11:49:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MVbjIL/M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71EDF10E862
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 11:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739360983; x=1770896983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=io3rrFV47RTxVnU6Gp1B6gEAVV8wwcYwVpdtHyK+yXc=;
 b=MVbjIL/M+GX3C74N3V7Uy5WBSLW9s1VOcbJyszBhCBWORxN+opf7cL4q
 O9QgBx7QqtqwNhWha35e/xKKJ3Pw2Jy5OXbcDI+qwytIiBCKsxbkUKEIP
 kEblNg/Bicf1uBN0zk9gqgEjolL17T9eajMnBhkkWUhFo64YlfMs4fb3L
 Dvs4U1awaZEveDvNya24G9tO8CFgaUCkGdJnh2l8M8dN0bzYvEcE2HzB8
 KP5OgMhwLLV7CsASzzetyi5Di4lMyvDqhu89YKRB0zaR44LU7+x0viaJW
 4hMiSlgAFk+d4fJt4tCCldbK+5YeeBlObuRvBvFWKzAfXE139BbmuAVyp A==;
X-CSE-ConnectionGUID: YHanxPRfTGK0uAckd1Ntgg==
X-CSE-MsgGUID: fFhIBEELRgqOohgWYiaRog==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="62479658"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="62479658"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 03:49:43 -0800
X-CSE-ConnectionGUID: y8Lnmj8nTNeAdOT+9GmZ7g==
X-CSE-MsgGUID: jk+JBjDVQhSsz1SvNW5DNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="143649718"
Received: from lnl-rocket-lake-client-platform.iind.intel.com (HELO
 lnl-Tiger-Lake-Client-Platform.iind.intel.com) ([10.145.169.162])
 by orviesa002.jf.intel.com with ESMTP; 12 Feb 2025 03:49:42 -0800
From: Mohammed Thasleem <mohammed.thasleem@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mohammed Thasleem <mohammed.thasleem@intel.com>
Subject: [PATCH v2] drm/i915/dmc: Create debugfs entry for dc6 counter
Date: Wed, 12 Feb 2025 17:19:35 +0530
Message-ID: <20250212114935.21231-1-mohammed.thasleem@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250203085613.236340-1-mohammed.thasleem@intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
MIME-Version: 1.0
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

Starting from MTL we don't have a platform agnostic way to validate
DC6 state due to dc6 counter has been removed to validate DC state.

The goal is to validate that the display HW can reach the DC6 power
state. There is no HW DC6 residency counter (and there wasn't such
a counter earlier either), so an alternative way is required. According
to the HW team the display driver has programmed everything correctly in
order to allow the DC6 power state if the DC5 power state is reached
(indicated by the HW DC5 residency counter incrementing) and DC6 is
enabled by the driver.

Driver could take a snapshot of the DC5 residency counter right
after it enables DC6 (dc5_residency_start) and increment the SW
DC6 residency counter right before it disables DC6 or when user space
reads the DC6 counter. So the driver would update the counter at these
two points in the following way:
dc6_residency_counter += dc5_current_count - dc5_start_count

v2: Update the discription. (Imre)
    Read dc5 count during dc6 enable and disable then and update
    dc6 residency counter. (Imre)
    Remove variable from dmc structure. (Jani)
    Updated the subject title.

Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  2 ++
 .../i915/display/intel_display_power_well.c   | 20 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 14 ++++++++++---
 3 files changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 554870d2494b..0a1e3dc2804f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -490,6 +490,8 @@ struct intel_display {
 
 		/* perform PHY state sanity checks? */
 		bool chv_phy_assert[2];
+		unsigned int dc6_residency_counter;
+		unsigned int dc5_start_count;
 	} power;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index f45a4f9ba23c..cfa53ee84323 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -17,6 +17,7 @@
 #include "intel_dkl_phy.h"
 #include "intel_dkl_phy_regs.h"
 #include "intel_dmc.h"
+#include "intel_dmc_regs.h"
 #include "intel_dmc_wl.h"
 #include "intel_dp_aux_regs.h"
 #include "intel_dpio_phy.h"
@@ -755,7 +756,7 @@ void gen9_sanitize_dc_state(struct intel_display *display)
 void gen9_set_dc_state(struct intel_display *display, u32 state)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
-	u32 val;
+	u32 val, dc5_current_count;
 	u32 mask;
 
 	if (!HAS_DISPLAY(display))
@@ -775,11 +776,28 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
 		drm_err(display->drm, "DC state mismatch (0x%x -> 0x%x)\n",
 			power_domains->dc_state, val & mask);
 
+	if (DISPLAY_VER(display) >= 14) {
+		/* If disabling DC6, update dc6_allowed counter */
+		if (!(state & DC_STATE_EN_UPTO_DC6) && (val & DC_STATE_EN_UPTO_DC6)) {
+			dc5_current_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
+			display->power.dc6_residency_counter += dc5_current_count - display->power.dc5_start_count;
+			display->power.dc5_start_count = dc5_current_count;
+		}
+	}
+
 	val &= ~mask;
 	val |= state;
 
 	gen9_write_dc_state(display, val);
 
+	if (DISPLAY_VER(display) >= 14) {
+		/* If enabling DC6, store DC5 count */
+		if ((state & DC_STATE_EN_UPTO_DC6)) {
+			dc5_current_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
+			display->power.dc5_start_count = dc5_current_count;
+		}
+	}
+
 	power_domains->dc_state = val & mask;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 221d3abda791..e4d3ce796c99 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1242,6 +1242,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	struct intel_dmc *dmc = display_to_dmc(display);
 	intel_wakeref_t wakeref;
 	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
+	u32 dc5_current_count;
 
 	if (!HAS_DMC(display))
 		return -ENODEV;
@@ -1290,9 +1291,16 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	}
 
 	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(display, dc5_reg));
-	if (i915_mmio_reg_valid(dc6_reg))
-		seq_printf(m, "DC5 -> DC6 count: %d\n",
-			   intel_de_read(display, dc6_reg));
+
+	if (DISPLAY_VER(display) >= 14) {
+		dc5_current_count = intel_de_read(display, dc5_reg);
+		display->power.dc6_residency_counter += dc5_current_count - display->power.dc5_start_count;
+		seq_printf(m, "DC6 Residency Counter: %d\n", display->power.dc6_residency_counter);
+	} else {
+		if (i915_mmio_reg_valid(dc6_reg))
+			seq_printf(m, "DC5 -> DC6 count: %d\n",
+				   intel_de_read(display, dc6_reg));
+	}
 
 	seq_printf(m, "program base: 0x%08x\n",
 		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
-- 
2.43.0

