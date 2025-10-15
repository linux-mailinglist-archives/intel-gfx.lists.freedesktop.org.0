Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D00BDC67D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:08:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3357E10E038;
	Wed, 15 Oct 2025 04:08:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OpQ6fp4E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C8C210E6EB;
 Wed, 15 Oct 2025 04:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501308; x=1792037308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kF+EmLhId5A7FFpuidtlUlCHhI/FiWevCTiqVrUbQCI=;
 b=OpQ6fp4ERdmoDqrpImt/jGb8h1OdeLYs8F9NpRZjUoaURBIQbRtcBSwg
 JPB3494MlTpbece4M5OPe9dQLW9nrW7qInDol55QiR8VD+oZ2gcsD899S
 Pl0gqWR473fMhmn9jAH/zFEXEbB+/KHf+gayczoF44EbIj6IEc9Scn5CB
 Gf13/DSEGYq5cKBmSyrS8I3w4lKLWAxgwVgTagG/jsF65PhkagKJ7qXfY
 U+PcofCzNmCTbbPSO85Qosc0R4lIvvuF5dZ+5v6re+OusyKNkWy5P4N3g
 BdFVTm4Q4pseWyKrQP7StI8ffbxqPCDBNVNTIZ/rvbOd4U6gMA3W+l4Dn w==;
X-CSE-ConnectionGUID: MG06UyDARa6ysXShJsE0oQ==
X-CSE-MsgGUID: kmiDN6HUTQeV8KjOdQrfmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318942"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66318942"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:08:28 -0700
X-CSE-ConnectionGUID: Uhi55IaTSampeAb4P0WOSQ==
X-CSE-MsgGUID: jQRAHVgRRX24YBzuJdESIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196079"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:08:26 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 01/25] drm/i915/ltphy: Add LT Phy related VDR and Pipe
 Registers
Date: Wed, 15 Oct 2025 09:37:53 +0530
Message-Id: <20251015040817.3431297-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015040817.3431297-1-suraj.kandpal@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
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
---
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
new file mode 100644
index 000000000000..499acb1975d1
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: MIT
+ *
+ * Copyright © 2025 Intel Corporation
+ */
+
+#ifndef __INTEL_LT_PHY_REGS_H__
+#define __INTEL_LT_PHY_REGS_H__
+
+#include "i915_reg_defs.h"
+#include "intel_display_limits.h"
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

