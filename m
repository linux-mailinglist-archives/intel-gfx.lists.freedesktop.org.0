Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF526CA43F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 14:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DBF310E5A8;
	Mon, 27 Mar 2023 12:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF48710E59F
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 12:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679920789; x=1711456789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sCorrHjk7PenjQb4VpxFuxX9KFqsbhDgdWSOtP29xyg=;
 b=kuDbs22G8sLTDaRH8mR+uD3ddb/Oot7yn8aWNelK7j2ltoTaDIoeBf6O
 7+on9Ovou70slNxZp4uvmzB24X27gtgnbjroUUOPkt7qgh515UB6RZFFM
 bdayaYOEAd6W19VPiD1cXbo5kmb57Ao9ksazdMmsM4zY6jFdD5FHjA04v
 WtEuj+crcvpxzGbh+LLmn6EFJGeGzsCbPsQ28TV+2OkDGoUfjZWigGqtx
 PtqCyv//ChTYSQpZn1gyJTGm1AH7tmDLZ+L6E2QZr4RcdUj4KHBGtqZ0G
 GvH55p9WZsCTFSvKXc1w7l1AUDQWKuDJjNHwiYaKJlVZHdnFPIOO070lx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="402847802"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="402847802"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 05:39:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="747984745"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="747984745"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 27 Mar 2023 05:39:48 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Mar 2023 15:34:29 +0300
Message-Id: <20230327123433.896216-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230327123433.896216-1-mika.kahola@intel.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/mtl: Create separate reg file for
 PICA registers
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

Create a separate file to store registers for PICA chips
C10 and C20.

v2: Rename file (Jani)
v3: Use _PICK_EVEN_2RANGES() macro (Lucas)
    Coding style fixed (Lucas)

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 131 ++++++++++++++++++
 1 file changed, 131 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
new file mode 100644
index 000000000000..d1ee8a2fc9cf
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -0,0 +1,131 @@
+/* SPDX-License-Identifier: MIT
+ *
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_CX0_PHY_REGS_H__
+#define __INTEL_CX0_PHY_REGS_H__
+
+#include "i915_reg_defs.h"
+
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A		0x64040
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B		0x64140
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1		0x16F240
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2		0x16F440
+#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4)
+#define   XELPDP_PORT_M2P_TRANSACTION_PENDING		REG_BIT(31)
+#define   XELPDP_PORT_M2P_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
+#define   XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
+#define   XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)
+#define   XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)
+#define   XELPDP_PORT_M2P_DATA_MASK			REG_GENMASK(23, 16)
+#define   XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)
+#define   XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
+#define   XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
+#define   XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4 + 8)
+#define   XELPDP_PORT_P2M_RESPONSE_READY		REG_BIT(31)
+#define   XELPDP_PORT_P2M_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
+#define   XELPDP_PORT_P2M_COMMAND_READ_ACK		0x4
+#define   XELPDP_PORT_P2M_COMMAND_WRITE_ACK		0x5
+#define   XELPDP_PORT_P2M_DATA_MASK			REG_GENMASK(23, 16)
+#define   XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)
+#define   XELPDP_PORT_P2M_ERROR_SET			REG_BIT(15)
+
+#define XELPDP_MSGBUS_TIMEOUT_SLOW			1
+#define XELPDP_MSGBUS_TIMEOUT_FAST_US			2
+#define XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US		3200
+#define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
+#define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
+#define XELPDP_PORT_RESET_START_TIMEOUT_US		5
+#define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US		100
+#define XELPDP_PORT_RESET_END_TIMEOUT			15
+#define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
+
+#define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004
+#define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104
+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC1			0x16F200
+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC2			0x16F400
+#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2))
+#define   XELPDP_PORT_BUF_SOC_PHY_READY			REG_BIT(24)
+#define   XELPDP_PORT_REVERSAL				REG_BIT(16)
+#define   XELPDP_TC_PHY_OWNERSHIP			REG_BIT(6)
+#define   XELPDP_TCSS_POWER_REQUEST			REG_BIT(5)
+#define   XELPDP_TCSS_POWER_STATE			REG_BIT(4)
+#define   XELPDP_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
+#define   XELPDP_PORT_WIDTH(val)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
+
+#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 4)
+#define   XELPDP_LANE0_PIPE_RESET			REG_BIT(31)
+#define   XELPDP_LANE1_PIPE_RESET			REG_BIT(30)
+#define   XELPDP_LANE0_PHY_CURRENT_STATUS		REG_BIT(29)
+#define   XELPDP_LANE1_PHY_CURRENT_STATUS		REG_BIT(28)
+#define   XELPDP_LANE0_POWERDOWN_UPDATE			REG_BIT(25)
+#define   XELPDP_LANE1_POWERDOWN_UPDATE			REG_BIT(24)
+#define   XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(23, 20)
+#define   XELPDP_LANE0_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)
+#define   XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(19, 16)
+#define   XELPDP_LANE1_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)
+#define   XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
+#define   XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
+
+#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 8)
+#define   XELPDP_PLL_LANE_STAGGERING_DELAY_MASK		REG_GENMASK(15, 8)
+#define   XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
+#define   XELPDP_POWER_STATE_ACTIVE_MASK		REG_GENMASK(3, 0)
+#define   XELPDP_POWER_STATE_ACTIVE(val)		REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)
+
+#define _XELPDP_PORT_CLOCK_CTL_A			0x640E0
+#define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
+#define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
+#define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
+#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_CLOCK_CTL_A, \
+										 _XELPDP_PORT_CLOCK_CTL_B, \
+										 _XELPDP_PORT_CLOCK_CTL_USBC1, \
+										 _XELPDP_PORT_CLOCK_CTL_USBC2))
+#define   XELPDP_LANE0_PCLK_PLL_REQUEST			REG_BIT(31)
+#define   XELPDP_LANE0_PCLK_PLL_ACK			REG_BIT(30)
+#define   XELPDP_LANE0_PCLK_REFCLK_REQUEST		REG_BIT(29)
+#define   XELPDP_LANE0_PCLK_REFCLK_ACK			REG_BIT(28)
+#define   XELPDP_LANE1_PCLK_PLL_REQUEST			REG_BIT(27)
+#define   XELPDP_LANE1_PCLK_PLL_ACK			REG_BIT(26)
+#define   XELPDP_LANE1_PCLK_REFCLK_REQUEST		REG_BIT(25)
+#define   XELPDP_LANE1_PCLK_REFCLK_ACK			REG_BIT(24)
+#define   XELPDP_TBT_CLOCK_REQUEST			REG_BIT(19)
+#define   XELPDP_TBT_CLOCK_ACK				REG_BIT(18)
+#define   XELPDP_DDI_CLOCK_SELECT_MASK			REG_GENMASK(15, 12)
+#define   XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)
+#define   XELPDP_DDI_CLOCK_SELECT_NONE			0x0
+#define   XELPDP_DDI_CLOCK_SELECT_MAXPCLK		0x8
+#define   XELPDP_DDI_CLOCK_SELECT_DIV18CLK		0x9
+#define   XELPDP_DDI_CLOCK_SELECT_TBT_162		0xc
+#define   XELPDP_DDI_CLOCK_SELECT_TBT_270		0xd
+#define   XELPDP_DDI_CLOCK_SELECT_TBT_540		0xe
+#define   XELPDP_DDI_CLOCK_SELECT_TBT_810		0xf
+#define   XELPDP_FORWARD_CLOCK_UNGATE			REG_BIT(10)
+#define   XELPDP_LANE1_PHY_CLOCK_SELECT			REG_BIT(8)
+#define   XELPDP_SSC_ENABLE_PLLA			REG_BIT(1)
+#define   XELPDP_SSC_ENABLE_PLLB			REG_BIT(0)
+
+#endif /* __INTEL_CX0_PHY_REGS_H__ */
-- 
2.34.1

