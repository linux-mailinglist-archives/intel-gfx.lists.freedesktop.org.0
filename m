Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C633CC247D8
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:36:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C69810EB09;
	Fri, 31 Oct 2025 10:36:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QXyPHa+K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1DC610EB16;
 Fri, 31 Oct 2025 10:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907013; x=1793443013;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=csrvD4CTEXLHqjjRjSHY8k5rW6+PFKay6kTVq2XDhFI=;
 b=QXyPHa+Kr6qfcj3ad5s7pfL6NaEew+ImNi/0nQjXWC8ZghUtAriC8QUW
 V0uCZSJ9TanOxOaP3/mr4NyKXTl2SUnwjUR6Iv38ifpeLsHXcc2TnLUEs
 4c6GFtIOaIq55OEEDCc4vownQyhKnVu3wwa79AMiNSgLHC9P3IWHsyM+9
 k4POMUaejKPeZPfkxHn2NTO2jCb8FD+1d6UZtEMGopWXvH/l9MOVMzoIl
 GDPtG3NWlGb4NDfyTPAmuI7K5I+IMPOYiE2tgkgs4FKh9qxI6KIFbWL/k
 6NLImEermiWNd2PZhVEhFEbyPBUyEZAicWbHbgdtdV4Irxr0q+RJA87pX A==;
X-CSE-ConnectionGUID: QjQypsdURTO+QmsN7LikDA==
X-CSE-MsgGUID: 7V6DNY03T06fqYi8aYd8cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="86690845"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="86690845"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:36:52 -0700
X-CSE-ConnectionGUID: vIbh2tQ5TKyQs6gR+G+P6Q==
X-CSE-MsgGUID: kwibnP+6SquJk7RzMK4raQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="190554540"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 31 Oct 2025 03:36:49 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 01/25] drm/i915/ltphy: Add LT Phy related VDR and Pipe
 Registers
Date: Fri, 31 Oct 2025 16:06:19 +0530
Message-Id: <20251031103643.4147868-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103643.4147868-1-suraj.kandpal@intel.com>
References: <20251031103643.4147868-1-suraj.kandpal@intel.com>
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

