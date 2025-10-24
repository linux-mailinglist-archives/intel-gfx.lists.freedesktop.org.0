Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3716C057D1
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 12:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC2310EA17;
	Fri, 24 Oct 2025 10:07:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bTrQazTS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FA0F10EA17;
 Fri, 24 Oct 2025 10:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761300441; x=1792836441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BmMZrIk/wlS2n+G5DoIPBlYnZk/Edn6fE69UtfqfRMM=;
 b=bTrQazTSkub+fLzDLdzOfVeIh71eo0x/PHvSUm72I/Wd8YeFOp5/q37Z
 Bj5Qep2MQ5f8fcOpl0gph2dGBA3hZjYQ6Z7Gxt/Rhbl9rv/godID2QskW
 J1RjNqdekMToXfTv+wTVXifRU1wiqecut3OTe9XeKHhG+zt4FYzKYNrDw
 kwif7D/0iJhEV1Wqsah5Y4U0qH2Iwm2g5jan19N6mVR3zk8rQRH7nxi0p
 h1twbwT75MyhmcXPIu5VsQ+XfmDNlU3Y1JhD2JHoBBwtR59JiNGhvv1HB
 O2oa3i+wvYzpu15Sr3DIoXAO+LB1lE3FMu4WUJo2Pd3jc4cz35REWHphG A==;
X-CSE-ConnectionGUID: DtJaBPzIQmGREPCBjON5Rg==
X-CSE-MsgGUID: LcdMKUaMR4WVuewwfdcA1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63372088"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63372088"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 03:07:21 -0700
X-CSE-ConnectionGUID: sroYgJoYQZKsF5zK+THKNg==
X-CSE-MsgGUID: rxqcEsEHRnmHRFK2QqLl8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="208039094"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 24 Oct 2025 03:07:19 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 01/26] drm/i915/ltphy: Add LT Phy related VDR and Pipe
 Registers
Date: Fri, 24 Oct 2025 15:36:47 +0530
Message-Id: <20251024100712.3776261-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251024100712.3776261-1-suraj.kandpal@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
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
V1 -> V2: Remove unnecessary header inclusion (Jani/Arun)
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

