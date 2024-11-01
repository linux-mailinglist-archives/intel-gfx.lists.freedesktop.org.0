Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E71809B9255
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 14:48:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84AB810E9BC;
	Fri,  1 Nov 2024 13:48:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cTEx1ivC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA95C10E9BC
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2024 13:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730468888; x=1762004888;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qHZOUrkm/ZaJN+m/34Pm/uch+oOTLFMm4mYs6hXKpLs=;
 b=cTEx1ivCo8D50Lx1DHfQhGezmH3E9UK2Kbsil30HeyDAOwaSywjOhQCZ
 NnritXDkYhViwQetBTnEWD6ppFx9PxjdpZ8kwYVlmrNYJwYL4Ak3Kpji/
 NxQFct1ENRjcTtQdhCKxKbIfUsYfGUxxz9kux6dCtGRCx5Z4c110vqlT7
 dkHckRG89Yv4qSxY/sJDvmLAHShzFPD8hzwtN0i2BPP9TJZVVofQSKRYT
 kYjKH3WxIlw4c/btPi+Q+92Kl7e4twTdONY6k+MafIom6XXhYTIDTQw/h
 JnVaYnO9GSTN9UZUmQZ9221TsW4Jcui3gHk5jhMZKh+xDqM+Yyd0j2Wbw g==;
X-CSE-ConnectionGUID: 9GDtyqa+RHWD/J7fAi6Whw==
X-CSE-MsgGUID: eVtiThW9QW+Xs+K/KmKorA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52800114"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52800114"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 06:48:08 -0700
X-CSE-ConnectionGUID: Qq1B7JFQSZCrWiU6+fn6Nw==
X-CSE-MsgGUID: +IZNDDbHTtuV0pPm3AUcAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="113750920"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orviesa002.jf.intel.com with ESMTP; 01 Nov 2024 06:48:06 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, gustavo.sousa@intel.com, raag.jadav@intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v4 1/2] drm/i915/xe3lpd: Power request asserting/deasserting
Date: Fri,  1 Nov 2024 15:39:23 +0200
Message-ID: <20241101133924.245817-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241101133924.245817-1-mika.kahola@intel.com>
References: <20241101133924.245817-1-mika.kahola@intel.com>
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

Reviewed-by: Raag Jadav <raag.jadav@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  8 +++++
 drivers/gpu/drm/i915/display/intel_tc.c       | 31 +++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index f0e5c196eae4..5a0b55cca4a3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -200,6 +200,14 @@
 #define   XELPDP_SSC_ENABLE_PLLA			REG_BIT(1)
 #define   XELPDP_SSC_ENABLE_PLLB			REG_BIT(0)
 
+#define TCSS_DISP_MAILBOX_IN_CMD		_MMIO(0x161300)
+#define   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY	REG_BIT(31)
+#define   TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK	REG_GENMASK(7, 0)
+#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(val)	(TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY | \
+						REG_FIELD_PREP(TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK, val))
+
+#define TCSS_DISP_MAILBOX_IN_DATA		_MMIO(0x161304)
+
 /* C10 Vendor Registers */
 #define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
 #define   C10_PLL0_FRACEN		REG_BIT8(4)
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b16c4d2d4077..e40d55f4c0c4 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1013,6 +1013,30 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_port *tc, bool enabled)
 	return true;
 }
 
+static void wa_14020908590(struct intel_display *display, bool enable)
+{
+	/* check if mailbox is running busy */
+	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
+				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
+		drm_dbg_kms(display->drm,
+			    "Timeout waiting for TCSS mailbox run/busy bit to clear\n");
+		return;
+	}
+
+	intel_de_write(display, TCSS_DISP_MAILBOX_IN_DATA, enable);
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
@@ -1022,6 +1046,13 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
 
 	assert_tc_cold_blocked(tc);
 
+	/*
+	 * Gfx driver WA 14020908590 for PTL tcss_rxdetect_clkswb_req/ack
+	 * handshake violation when pwwreq= 0->1 during TC7/10 entry
+	 */
+	if (DISPLAY_VER(i915) == 30)
+		wa_14020908590(&i915->display, enable);
+
 	val = intel_de_read(i915, reg);
 	if (enable)
 		val |= XELPDP_TCSS_POWER_REQUEST;
-- 
2.43.0

