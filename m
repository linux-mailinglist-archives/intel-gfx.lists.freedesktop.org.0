Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED219C27614
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:04:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 517F610E310;
	Sat,  1 Nov 2025 03:04:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C0PpH62A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED8510E239;
 Sat,  1 Nov 2025 03:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761966284; x=1793502284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=csrvD4CTEXLHqjjRjSHY8k5rW6+PFKay6kTVq2XDhFI=;
 b=C0PpH62ATZDShNFa3eLxrqH4Ddb5hUGR1VIHApI9Pe3tY9Kk+VJmpwaJ
 JfK0yJBGZ9mq8CdBR5ry1osdPOhJKMhedei6xJzau+N+lmC63+u7O0kfa
 GhjmnGlemrrpY46MY+k5dxrBct5dY929KEaiFTunbzYhRIxO3cz67p2hb
 auxyYmBMnb3sbX0gS754BrbrkS+7Wu2hw6bXPn6ArA0CGCxBAwzPCLZ9f
 LmgpsNnHydsD9asGWgfRfZXyZqFO1YTl7JSMMBvHZBz4q4UE2DiWrT5Rn
 RbTLO3Jzz7luAtuyD3m/O6+vpi+2KAFZ2WfwlG6drngXHBmvwY0qhH/K3 Q==;
X-CSE-ConnectionGUID: CJtgS3MTTs+1Q56fy4TZ1A==
X-CSE-MsgGUID: jhtVMfNCR+yO4JcpWLGpLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="81759498"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="81759498"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:04:44 -0700
X-CSE-ConnectionGUID: FV9L2FNoS6akD2QAeyqIYA==
X-CSE-MsgGUID: xowAkSz3TruGtCsSeOpa9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217222556"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 31 Oct 2025 20:04:40 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v4 01/25] drm/i915/ltphy: Add LT Phy related VDR and Pipe
 Registers
Date: Sat,  1 Nov 2025 08:34:10 +0530
Message-Id: <20251101030434.4159839-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101030434.4159839-1-suraj.kandpal@intel.com>
References: <20251101030434.4159839-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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

V1 -> V2:
-Remove unnecessary header inclusion (Jani/Arun)

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

