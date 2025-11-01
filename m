Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F43C2767E
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:25:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DAEF10EC34;
	Sat,  1 Nov 2025 03:25:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a5S60NWU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CE8B10EC31;
 Sat,  1 Nov 2025 03:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967519; x=1793503519;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Y2FRC3NChPhNq/wDOM12IDOb6hvRpiCDCvalrrIKWc=;
 b=a5S60NWU/SdxnBoGwTSyl+xYcn+K5RKm+rvDl7ZrNlq4PmPOXGUSXqj5
 45aOkfGm+xQZ7EOijlLRT9IwxvvaX+4JZw/sWu9GxIGyXeuTqUxRrMUJq
 J7jNucdahDTussWZWHbhsvSQaiCmZnZEiQY+mdPP5PafzRszWRaikT5D8
 R+QyRtayWlkzIULT/BTh2YCsW7dR5XQfxanpUIpyVg4xfdvq2T/POf3gu
 yKb3h/Bv2b2ZXyYXq49Crq5e6FCVrL3gCE2+TbaVWYfX3+roC9mdKhKB0
 CRQu0RlgtKJ+4pOZDJEM/U6H2YDA2IUy2GfCKpdXj1Mbqiwq0fWwpfJqO w==;
X-CSE-ConnectionGUID: gUmyw3E5RCijeUYMU0kaag==
X-CSE-MsgGUID: SqLEDPatRluVNKK0pbm0vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019840"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="64019840"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:25:19 -0700
X-CSE-ConnectionGUID: db4ipVenSQq7rLc60Ni5wQ==
X-CSE-MsgGUID: xSbsokRUR6ygM1xcG9alHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217037933"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:25:18 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5 01/25] drm/i915/ltphy: Add LT Phy related VDR and Pipe
 Registers
Date: Sat,  1 Nov 2025 08:54:49 +0530
Message-Id: <20251101032513.4171255-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101032513.4171255-1-suraj.kandpal@intel.com>
References: <20251101032513.4171255-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add LT Phy related VDR and pipe registers into its own new file.

Bspec: 74500
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
new file mode 100644
index 000000000000..6eaa038bf684
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: MIT
+ *
+ * Copyright © 2025 Intel Corporation
+ */
+
+#ifndef __INTEL_LT_PHY_REGS_H__
+#define __INTEL_LT_PHY_REGS_H__
+
+/* LT Phy Vendor Register */
+#define LT_PHY_VDR_0_CONFIG	0xC02
+#define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
+#define LT_PHY_VDR_1_CONFIG	0xC03
+#define  LT_PHY_VDR_RATE_ENCODING_MASK	REG_GENMASK8(6, 3)
+#define  LT_PHY_VDR_MODE_ENCODING_MASK	REG_GENMASK8(2, 0)
+#define LT_PHY_VDR_2_CONFIG	0xCC3
+
+#define LT_PHY_VDR_X_ADDR_MSB(idx)	(0xC04 + 0x6 * (idx))
+#define LT_PHY_VDR_X_ADDR_LSB(idx)	(0xC05 + 0x6 * (idx))
+
+#define LT_PHY_VDR_X_DATAY(idx, y)	((0xC06 + (3 - (y))) + 0x6 * (idx))
+
+#define LT_PHY_RATE_UPDATE		0xCC4
+
+#endif /* __INTEL_LT_PHY_REGS_H__ */
-- 
2.34.1

