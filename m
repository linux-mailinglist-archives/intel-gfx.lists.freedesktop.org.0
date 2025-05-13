Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33312AB5492
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 14:17:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA3E10E599;
	Tue, 13 May 2025 12:17:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PdF+JcXn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0083B10E59D;
 Tue, 13 May 2025 12:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747138668; x=1778674668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lpGu6E/ljelUbPAwbYBpDXewK5N5KNX3AOKv1UWURPI=;
 b=PdF+JcXn00p74exNyrWojk4b22xuBmqHkbKgFEZq7wANgC9Sn+GgJIL1
 MPcVQWu7RZ8C1JBlW5qWDZpTvmKGFgH8/zYBQRadGOZ8b4Y3T5LjVhiye
 QJ0D2eUzZ5mMh2JUusPa68DiObC+FZAB/+tE3k0AFeQVNs+XiUhF9LOor
 NqBTNwmCbE1anOCVxxtwZ8toY+FopTgQ/+xrFAdVWBOas9CLX8D3n90Fl
 7+QOx9/RSGFGCFcGDuBcxxW21eTXQ0BKZo1Zp5wLh9cmB74AI4JxiCU/b
 Xo9pX5MyqxwFCt1uEshFSgGebffDWgMJwnM1fuxRz4EovhDFI2f+xsYrE g==;
X-CSE-ConnectionGUID: GWuVorQ2RgGeCqwln0sPxA==
X-CSE-MsgGUID: q71VIaHKRDS+RySdDu35+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="71490391"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="71490391"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:47 -0700
X-CSE-ConnectionGUID: yiDfSf3eQwiWJKHDnzAkrg==
X-CSE-MsgGUID: RjV7vhnfRn+vBr9ALHLJAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="141741027"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 8/8] drm/i915/sbi: clean up SBI register macro definitions and
 usage
Date: Tue, 13 May 2025 15:17:07 +0300
Message-Id: <1fd86c3aa51f25c13f2e991e9bd20b196beb6362.1747138550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747138550.git.jani.nikula@intel.com>
References: <cover.1747138550.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Use REG_BIT() and friends for defining the register macros. Switch GVT
to use the same macros, and drop its own copies.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sbi.c      | 10 ++--
 drivers/gpu/drm/i915/display/intel_sbi_regs.h | 50 ++++++++++++-------
 drivers/gpu/drm/i915/gvt/display.h            | 13 -----
 drivers/gpu/drm/i915/gvt/handlers.c           | 29 ++++++-----
 4 files changed, 51 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sbi.c b/drivers/gpu/drm/i915/display/intel_sbi.c
index c53d6058a717..59d64cbf68cd 100644
--- a/drivers/gpu/drm/i915/display/intel_sbi.c
+++ b/drivers/gpu/drm/i915/display/intel_sbi.c
@@ -20,12 +20,12 @@ static int intel_sbi_rw(struct intel_display *display, u16 reg,
 
 	lockdep_assert_held(&display->sbi.lock);
 
-	if (intel_de_wait_fw(display, SBI_CTL_STAT, SBI_BUSY, 0, 100, NULL)) {
+	if (intel_de_wait_fw(display, SBI_CTL_STAT, SBI_STATUS_MASK, SBI_STATUS_READY, 100, NULL)) {
 		drm_err(display->drm, "timeout waiting for SBI to become ready\n");
 		return -EBUSY;
 	}
 
-	intel_de_write_fw(display, SBI_ADDR, (u32)reg << 16);
+	intel_de_write_fw(display, SBI_ADDR, SBI_ADDR_VALUE(reg));
 	intel_de_write_fw(display, SBI_DATA, is_read ? 0 : *val);
 
 	if (destination == SBI_ICLK)
@@ -33,10 +33,10 @@ static int intel_sbi_rw(struct intel_display *display, u16 reg,
 	else
 		cmd = SBI_CTL_DEST_MPHY | SBI_CTL_OP_IORD;
 	if (!is_read)
-		cmd |= BIT(8);
-	intel_de_write_fw(display, SBI_CTL_STAT, cmd | SBI_BUSY);
+		cmd |= SBI_CTL_OP_WR;
+	intel_de_write_fw(display, SBI_CTL_STAT, cmd | SBI_STATUS_BUSY);
 
-	if (intel_de_wait_fw(display, SBI_CTL_STAT, SBI_BUSY, 0, 100, &cmd)) {
+	if (intel_de_wait_fw(display, SBI_CTL_STAT, SBI_STATUS_MASK, SBI_STATUS_READY, 100, &cmd)) {
 		drm_err(display->drm, "timeout waiting for SBI to complete read\n");
 		return -ETIMEDOUT;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_sbi_regs.h b/drivers/gpu/drm/i915/display/intel_sbi_regs.h
index 38963f8619a3..6fd37574b805 100644
--- a/drivers/gpu/drm/i915/display/intel_sbi_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_sbi_regs.h
@@ -11,22 +11,32 @@
  * contains the register offset; and SBI_DATA, which contains the payload.
  */
 #define SBI_ADDR			_MMIO(0xC6000)
+#define   SBI_ADDR_MASK			REG_GENMASK(31, 16)
+#define   SBI_ADDR_VALUE(addr)		REG_FIELD_PREP(SBI_ADDR_MASK, (addr))
+
 #define SBI_DATA			_MMIO(0xC6004)
+
 #define SBI_CTL_STAT			_MMIO(0xC6008)
-#define  SBI_CTL_DEST_ICLK		(0x0 << 16)
-#define  SBI_CTL_DEST_MPHY		(0x1 << 16)
-#define  SBI_CTL_OP_IORD		(0x2 << 8)
-#define  SBI_CTL_OP_IOWR		(0x3 << 8)
-#define  SBI_CTL_OP_CRRD		(0x6 << 8)
-#define  SBI_CTL_OP_CRWR		(0x7 << 8)
-#define  SBI_RESPONSE_FAIL		(0x1 << 1)
-#define  SBI_RESPONSE_SUCCESS		(0x0 << 1)
-#define  SBI_BUSY			(0x1 << 0)
-#define  SBI_READY			(0x0 << 0)
+#define   SBI_CTL_DEST_MASK		REG_GENMASK(16, 16)
+#define   SBI_CTL_DEST_ICLK		REG_FIELD_PREP(SBI_CTL_DEST_MASK, 0)
+#define   SBI_CTL_DEST_MPHY		REG_FIELD_PREP(SBI_CTL_DEST_MASK, 1)
+#define   SBI_CTL_OP_MASK		REG_GENMASK(15, 8)
+#define   SBI_CTL_OP_IORD		REG_FIELD_PREP(SBI_CTL_OP_MASK, 2)
+#define   SBI_CTL_OP_IOWR		REG_FIELD_PREP(SBI_CTL_OP_MASK, 3)
+#define   SBI_CTL_OP_CRRD		REG_FIELD_PREP(SBI_CTL_OP_MASK, 6)
+#define   SBI_CTL_OP_CRWR		REG_FIELD_PREP(SBI_CTL_OP_MASK, 7)
+#define   SBI_CTL_OP_WR			REG_BIT(8)
+#define   SBI_RESPONSE_MASK		REG_GENMASK(2, 1)
+#define   SBI_RESPONSE_FAIL		REG_FIELD_PREP(SBI_RESPONSE_MASK, 1)
+#define   SBI_RESPONSE_SUCCESS		REG_FIELD_PREP(SBI_RESPONSE_MASK, 0)
+#define   SBI_STATUS_MASK		REG_GENMASK(0, 0)
+#define   SBI_STATUS_BUSY		REG_FIELD_PREP(SBI_STATUS_MASK, 1)
+#define   SBI_STATUS_READY		REG_FIELD_PREP(SBI_STATUS_MASK, 0)
 
 /* SBI offsets */
-#define  SBI_SSCDIVINTPHASE			0x0200
-#define  SBI_SSCDIVINTPHASE6			0x0600
+#define SBI_SSCDIVINTPHASE			0x0200
+
+#define SBI_SSCDIVINTPHASE6			0x0600
 #define   SBI_SSCDIVINTPHASE_DIVSEL_SHIFT	1
 #define   SBI_SSCDIVINTPHASE_DIVSEL_MASK	(0x7f << 1)
 #define   SBI_SSCDIVINTPHASE_DIVSEL(x)		((x) << 1)
@@ -35,17 +45,21 @@
 #define   SBI_SSCDIVINTPHASE_INCVAL(x)		((x) << 8)
 #define   SBI_SSCDIVINTPHASE_DIR(x)		((x) << 15)
 #define   SBI_SSCDIVINTPHASE_PROPAGATE		(1 << 0)
-#define  SBI_SSCDITHPHASE			0x0204
-#define  SBI_SSCCTL				0x020c
-#define  SBI_SSCCTL6				0x060C
+
+#define SBI_SSCDITHPHASE			0x0204
+#define SBI_SSCCTL				0x020c
+#define SBI_SSCCTL6				0x060C
 #define   SBI_SSCCTL_PATHALT			(1 << 3)
 #define   SBI_SSCCTL_DISABLE			(1 << 0)
-#define  SBI_SSCAUXDIV6				0x0610
+
+#define SBI_SSCAUXDIV6				0x0610
 #define   SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT	4
 #define   SBI_SSCAUXDIV_FINALDIV2SEL_MASK	(1 << 4)
 #define   SBI_SSCAUXDIV_FINALDIV2SEL(x)		((x) << 4)
-#define  SBI_DBUFF0				0x2a00
-#define  SBI_GEN0				0x1f00
+
+#define SBI_DBUFF0				0x2a00
+
+#define SBI_GEN0				0x1f00
 #define   SBI_GEN0_CFG_BUFFENABLE_DISABLE	(1 << 0)
 
 #endif /* __INTEL_SBI_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/gvt/display.h b/drivers/gpu/drm/i915/gvt/display.h
index 8090bc53c7e1..bc7f05f9a271 100644
--- a/drivers/gpu/drm/i915/gvt/display.h
+++ b/drivers/gpu/drm/i915/gvt/display.h
@@ -63,19 +63,6 @@ struct intel_vgpu;
 
 #define AUX_BURST_SIZE          20
 
-#define SBI_RESPONSE_MASK               0x3
-#define SBI_RESPONSE_SHIFT              0x1
-#define SBI_STAT_MASK                   0x1
-#define SBI_STAT_SHIFT                  0x0
-#define SBI_OPCODE_SHIFT                8
-#define SBI_OPCODE_MASK			(0xff << SBI_OPCODE_SHIFT)
-#define SBI_CMD_IORD                    2
-#define SBI_CMD_IOWR                    3
-#define SBI_CMD_CRRD                    6
-#define SBI_CMD_CRWR                    7
-#define SBI_ADDR_OFFSET_SHIFT           16
-#define SBI_ADDR_OFFSET_MASK            (0xffff << SBI_ADDR_OFFSET_SHIFT)
-
 struct intel_vgpu_sbi_register {
 	unsigned int offset;
 	u32 value;
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 7ee0e3657321..4f6e099871d7 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -1413,12 +1413,12 @@ static void write_virtual_sbi_register(struct intel_vgpu *vgpu,
 static int sbi_data_mmio_read(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
-	if (((vgpu_vreg_t(vgpu, SBI_CTL_STAT) & SBI_OPCODE_MASK) >>
-				SBI_OPCODE_SHIFT) == SBI_CMD_CRRD) {
-		unsigned int sbi_offset = (vgpu_vreg_t(vgpu, SBI_ADDR) &
-				SBI_ADDR_OFFSET_MASK) >> SBI_ADDR_OFFSET_SHIFT;
-		vgpu_vreg(vgpu, offset) = read_virtual_sbi_register(vgpu,
-				sbi_offset);
+	if ((vgpu_vreg_t(vgpu, SBI_CTL_STAT) & SBI_CTL_OP_MASK) == SBI_CTL_OP_CRRD) {
+		unsigned int sbi_offset;
+
+		sbi_offset = REG_FIELD_GET(SBI_ADDR_MASK, vgpu_vreg_t(vgpu, SBI_ADDR));
+
+		vgpu_vreg(vgpu, offset) = read_virtual_sbi_register(vgpu, sbi_offset);
 	}
 	read_vreg(vgpu, offset, p_data, bytes);
 	return 0;
@@ -1432,21 +1432,20 @@ static int sbi_ctl_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 	write_vreg(vgpu, offset, p_data, bytes);
 	data = vgpu_vreg(vgpu, offset);
 
-	data &= ~(SBI_STAT_MASK << SBI_STAT_SHIFT);
-	data |= SBI_READY;
+	data &= ~SBI_STATUS_MASK;
+	data |= SBI_STATUS_READY;
 
-	data &= ~(SBI_RESPONSE_MASK << SBI_RESPONSE_SHIFT);
+	data &= ~SBI_RESPONSE_MASK;
 	data |= SBI_RESPONSE_SUCCESS;
 
 	vgpu_vreg(vgpu, offset) = data;
 
-	if (((vgpu_vreg_t(vgpu, SBI_CTL_STAT) & SBI_OPCODE_MASK) >>
-				SBI_OPCODE_SHIFT) == SBI_CMD_CRWR) {
-		unsigned int sbi_offset = (vgpu_vreg_t(vgpu, SBI_ADDR) &
-				SBI_ADDR_OFFSET_MASK) >> SBI_ADDR_OFFSET_SHIFT;
+	if ((vgpu_vreg_t(vgpu, SBI_CTL_STAT) & SBI_CTL_OP_MASK) == SBI_CTL_OP_CRWR) {
+		unsigned int sbi_offset;
+
+		sbi_offset = REG_FIELD_GET(SBI_ADDR_MASK, vgpu_vreg_t(vgpu, SBI_ADDR));
 
-		write_virtual_sbi_register(vgpu, sbi_offset,
-					   vgpu_vreg_t(vgpu, SBI_DATA));
+		write_virtual_sbi_register(vgpu, sbi_offset, vgpu_vreg_t(vgpu, SBI_DATA));
 	}
 	return 0;
 }
-- 
2.39.5

