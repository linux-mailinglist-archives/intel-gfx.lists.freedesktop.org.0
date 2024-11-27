Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA779DA33A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 08:40:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F48310EA03;
	Wed, 27 Nov 2024 07:40:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kRyVcjGl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09E1F10E082;
 Wed, 27 Nov 2024 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732693253; x=1764229253;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GSCl+p5uQ74aULLX2hHOYkqXOVz1KqZ9OqkmXAS7z0M=;
 b=kRyVcjGlwWDbOuJCvjsj5LL9x08Yr1LLwjPfIC5ctXkQ/0SWlTiLuLf0
 Xq2URsVw1fXsmqtqIgRTiAfhDkvhLQVuI9hFhQ/O4z1UihLT9dB+RKaCt
 YLvfGFlce/3mlpIDW/L1Q+y19AgX6p6Esf+/tNYcnnhQ+LrYRA39XCexC
 TjZ7liitnGe8fZ537KBgbG6lfwiQjMfK1pDX04kry6aNTaKQpqFjhDYIO
 nyfacVXufSA7oDATcsljae5o8tfsZ5uZiwLb3Hl8lOFMT/uuKR3JOOntb
 K7gU7T0ihu/VBarx6Hq0YhPSox8ZgmOkgVvLqrIYgEbCw07SF8MwwwwBg w==;
X-CSE-ConnectionGUID: jcbyJlkAQdqickWmZhbdxw==
X-CSE-MsgGUID: HngHtXBLR0qMBvvSmiftdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="36670667"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="36670667"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:40:53 -0800
X-CSE-ConnectionGUID: A+ftWQWVTVaVMgTzCpHiIA==
X-CSE-MsgGUID: jB0a6VeQTSi9/W6USkCU7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="129376615"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orviesa001.jf.intel.com with ESMTP; 26 Nov 2024 23:40:51 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Mika Kahola <mika.kahola@intel.com>,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v6 1/2] drm/i915/xe3lpd: Power request asserting/deasserting
Date: Wed, 27 Nov 2024 09:31:59 +0200
Message-ID: <20241127073200.124907-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241127073200.124907-1-mika.kahola@intel.com>
References: <20241127073200.124907-1-mika.kahola@intel.com>
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

There is a HW issue that arises when there are race conditions
between TCSS entering/exiting TC7 or TC10 states while the
driver is asserting/deasserting TCSS power request. As a
workaround, Display driver will implement a mailbox sequence
to ensure that the TCSS is in TC0 when TCSS power request is
asserted/deasserted.

The sequence is the following

1. Read mailbox command status and wait until run/busy bit is
   clear
2. Write mailbox data value '1' for power request asserting
   and '0' for power request deasserting
3. Write mailbox command run/busy bit and command value with 0x1
4. Read mailbox command and wait until run/busy bit is clear
   before continuing power request.

v2: Rename WA function (Gustavo)
    Limit WA only for PTL platform with a TODO note (Gustavo)
    Add TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY for clarity when writing
    register data (Gustavo)
    Move register defs from i915_reg.h to intel_cx0_phy_regs.h (Gustavo)
v3: Use "struct intel_display" instead of "struct drm_i915_private" (Jani)
    Move defs above C10 definitions in the
    intel_cx0_phy_regs.h file (Gustavo)
    Move drm_WARN_ON() inside WA function (Gustavo)
    Rename workaround function as wa_14020908590() (Gustvo)
    Use boolean enable instead of if-else structure (Raag)
v4: Drop drm_WARN_ON() (Raag)
    Fix function definition to fit into a single line (Raag)
v5: Drop TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY from TCSS_DISP_MAILBOX_IN_CMD_DATA(val)
    macro (Jani)
    Rename WA function with some meaningful name and add comment
    on WA number (Jani)
    Use struct intel_display on WA calling function (Jani)

Reviewed-by: Raag Jadav <raag.jadav@intel.com> (v4)
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  7 ++++
 drivers/gpu/drm/i915/display/intel_tc.c       | 32 +++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index f0e5c196eae4..c685479c9756 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -200,6 +200,13 @@
 #define   XELPDP_SSC_ENABLE_PLLA			REG_BIT(1)
 #define   XELPDP_SSC_ENABLE_PLLB			REG_BIT(0)
 
+#define TCSS_DISP_MAILBOX_IN_CMD		_MMIO(0x161300)
+#define   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY	REG_BIT(31)
+#define   TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK	REG_GENMASK(7, 0)
+#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(val)	REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, val)
+
+#define TCSS_DISP_MAILBOX_IN_DATA		_MMIO(0x161304)
+
 /* C10 Vendor Registers */
 #define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
 #define   C10_PLL0_FRACEN		REG_BIT8(4)
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b16c4d2d4077..82e82e8ec11a 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1013,15 +1013,47 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
 	return true;
 }
 
+/*
+ * Gfx driver WA 14020908590 for PTL tcss_rxdetect_clkswb_req/ack
+ * handshake violation when pwwreq= 0->1 during TC7/10 entry
+ */
+static void xelpdp_tc_power_request_wa(struct intel_display *display, bool enable)
+{
+	/* check if mailbox is running busy */
+	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
+				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
+		drm_dbg_kms(display->drm,
+			    "Timeout waiting for TCSS mailbox run/busy bit to clear\n");
+		return;
+	}
+
+	intel_de_write(display, TCSS_DISP_MAILBOX_IN_DATA, enable ? 1 : 0);
+	intel_de_write(display, TCSS_DISP_MAILBOX_IN_CMD,
+		       TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY |
+		       TCSS_DISP_MAILBOX_IN_CMD_DATA(0x1));
+
+	/* wait to clear mailbox running busy bit before continuing */
+	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
+				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
+		drm_dbg_kms(display->drm,
+			    "Timeout after writing data to mailbox. Mailbox run/busy bit did not clear\n");
+		return;
+	}
+}
+
 static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = &i915->display;
 	enum port port = tc->dig_port->base.port;
 	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
 	u32 val;
 
 	assert_tc_cold_blocked(tc);
 
+	if (DISPLAY_VER(display) == 30)
+		xelpdp_tc_power_request_wa(display, enable);
+
 	val = intel_de_read(i915, reg);
 	if (enable)
 		val |= XELPDP_TCSS_POWER_REQUEST;
-- 
2.43.0

