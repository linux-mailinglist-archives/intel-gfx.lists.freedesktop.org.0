Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F706BCDF3
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 12:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11C1810ECAF;
	Thu, 16 Mar 2023 11:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF0110E0A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 11:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678965536; x=1710501536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kV7uWd4C6AmCEnUj5aq0VcfTeC4cZy7B0UGmnpOJSt0=;
 b=GIByQIaqa5w4AUqdRCUz94p5xnaVuloDsSmqNO4yvc2IpUVcoHCmrgIv
 qDsO+txC9QXrI4Q5v8Rvm5pD39WF9tnBapJbR83edLDQKZ7NlKfMwnwot
 DVfmhV3gFq04h8t7iy5Bs8YggjrGH6UMqmBUH+9fDVALanVrBhwlZQS4y
 PDoB0nbRDqurXic9UYoRADOLNJvEFUer2PDHQmRMaqS7Ryipf6pv39inh
 dQWJsmaIpsYukntduV+mJEea1JzziYsSWZonxC3rss8/MJHnCMEYSoyOh
 0U5+gv8R6zchHZBwAVj7IzSTk29DwgP6b751hlfV7i0gG2YBhuLphf5vQ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="339485829"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339485829"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 04:18:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="744083097"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="744083097"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2023 04:18:54 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:13:16 +0200
Message-Id: <20230316111335.66915-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316111335.66915-1-mika.kahola@intel.com>
References: <20230316111335.66915-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 03/22] drm/i915/mtl: Create separate reg file
 for PICA registers
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

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 139 ++++++++++++++++++
 1 file changed, 139 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
new file mode 100644
index 000000000000..13e9bdd5df9d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -0,0 +1,139 @@
+/* SPDX-License-Identifier: MIT
+ *
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_CX0_PHY_REGS_H__
+#define __INTEL_CX0_PHY_REGS_H__
+
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A		0x64040
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B		0x64140
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1		0x16F240
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2		0x16F440
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3		0x16F640
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4		0x16F840
+#define _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		(_PICK(port, \
+							[PORT_A] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
+							[PORT_B] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
+							[PORT_TC1] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
+							[PORT_TC2] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2, \
+							[PORT_TC3] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3, \
+							[PORT_TC4] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4) + ((lane) * 4))
+#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2))
+#define XELPDP_PORT_M2P_TRANSACTION_PENDING		REG_BIT(31)
+#define XELPDP_PORT_M2P_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
+#define XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
+#define XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED		REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)
+#define XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)
+#define XELPDP_PORT_M2P_DATA_MASK			REG_GENMASK(23, 16)
+#define XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)
+#define XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
+#define XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
+#define XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
+
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane) + 8)
+#define XELPDP_PORT_P2M_RESPONSE_READY			REG_BIT(31)
+#define XELPDP_PORT_P2M_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
+#define XELPDP_PORT_P2M_COMMAND_READ_ACK		0x4
+#define XELPDP_PORT_P2M_COMMAND_WRITE_ACK		0x5
+#define XELPDP_PORT_P2M_DATA_MASK			REG_GENMASK(23, 16)
+#define XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)
+#define XELPDP_PORT_P2M_ERROR_SET			REG_BIT(15)
+#define XELPDP_MSGBUS_TIMEOUT_SLOW			1
+#define XELPDP_MSGBUS_TIMEOUT_FAST_US			2
+
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
+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC3			0x16F600
+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC4			0x16F800
+#define _XELPDP_PORT_BUF_CTL1(port)			(_PICK(port, \
+							[PORT_A] = _XELPDP_PORT_BUF_CTL1_LN0_A, \
+							[PORT_B] = _XELPDP_PORT_BUF_CTL1_LN0_B, \
+							[PORT_TC1] = _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
+							[PORT_TC2] = _XELPDP_PORT_BUF_CTL1_LN0_USBC2, \
+							[PORT_TC3] = _XELPDP_PORT_BUF_CTL1_LN0_USBC3, \
+							[PORT_TC4] = _XELPDP_PORT_BUF_CTL1_LN0_USBC4))
+#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2))
+#define XELPDP_PORT_BUF_SOC_PHY_READY			REG_BIT(24)
+#define XELPDP_PORT_REVERSAL				REG_BIT(16)
+
+#define XELPDP_TC_PHY_OWNERSHIP				REG_BIT(6)
+#define XELPDP_TCSS_POWER_REQUEST			REG_BIT(5)
+#define XELPDP_TCSS_POWER_STATE				REG_BIT(4)
+#define XELPDP_PORT_WIDTH_MASK				REG_GENMASK(3, 1)
+#define XELPDP_PORT_WIDTH(val)				REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
+
+#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 4)
+#define XELPDP_LANE0_PIPE_RESET				REG_BIT(31)
+#define XELPDP_LANE1_PIPE_RESET				REG_BIT(30)
+#define XELPDP_LANE0_PHY_CURRENT_STATUS			REG_BIT(29)
+#define XELPDP_LANE1_PHY_CURRENT_STATUS			REG_BIT(28)
+#define XELPDP_LANE0_POWERDOWN_UPDATE			REG_BIT(25)
+#define XELPDP_LANE1_POWERDOWN_UPDATE			REG_BIT(24)
+#define XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(23, 20)
+#define XELPDP_LANE0_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)
+#define XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(19, 16)
+#define XELPDP_LANE1_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)
+#define XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
+#define XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
+
+#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 8)
+#define XELPDP_PLL_LANE_STAGGERING_DELAY_MASK		REG_GENMASK(15, 8)
+#define XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
+#define XELPDP_POWER_STATE_ACTIVE_MASK			REG_GENMASK(3, 0)
+#define XELPDP_POWER_STATE_ACTIVE(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)
+
+#define _XELPDP_PORT_CLOCK_CTL_A			0x640E0
+#define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
+#define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
+#define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
+#define _XELPDP_PORT_CLOCK_CTL_USBC3			0x16F660
+#define _XELPDP_PORT_CLOCK_CTL_USBC4			0x16F860
+#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+										 _XELPDP_PORT_CLOCK_CTL_A, \
+										 _XELPDP_PORT_CLOCK_CTL_B, \
+										 _XELPDP_PORT_CLOCK_CTL_USBC1, \
+										 _XELPDP_PORT_CLOCK_CTL_USBC2))
+#define XELPDP_LANE0_PCLK_PLL_REQUEST			REG_BIT(31)
+#define XELPDP_LANE0_PCLK_PLL_ACK			REG_BIT(30)
+#define XELPDP_LANE0_PCLK_REFCLK_REQUEST		REG_BIT(29)
+#define XELPDP_LANE0_PCLK_REFCLK_ACK			REG_BIT(28)
+#define XELPDP_LANE1_PCLK_PLL_REQUEST			REG_BIT(27)
+#define XELPDP_LANE1_PCLK_PLL_ACK			REG_BIT(26)
+#define XELPDP_LANE1_PCLK_REFCLK_REQUEST		REG_BIT(25)
+#define XELPDP_LANE1_PCLK_REFCLK_ACK			REG_BIT(24)
+#define XELPDP_TBT_CLOCK_REQUEST			REG_BIT(19)
+#define XELPDP_TBT_CLOCK_ACK				REG_BIT(18)
+#define XELPDP_DDI_CLOCK_SELECT_MASK			REG_GENMASK(15, 12)
+#define XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)
+#define XELPDP_DDI_CLOCK_SELECT_NONE			0x0
+#define XELPDP_DDI_CLOCK_SELECT_MAXPCLK			0x8
+#define XELPDP_DDI_CLOCK_SELECT_DIV18CLK		0x9
+#define XELPDP_DDI_CLOCK_SELECT_TBT_162			0xc
+#define XELPDP_DDI_CLOCK_SELECT_TBT_270			0xd
+#define XELPDP_DDI_CLOCK_SELECT_TBT_540			0xe
+#define XELPDP_DDI_CLOCK_SELECT_TBT_810			0xf
+#define XELPDP_FORWARD_CLOCK_UNGATE			REG_BIT(10)
+#define XELPDP_LANE1_PHY_CLOCK_SELECT			REG_BIT(8)
+#define XELPDP_SSC_ENABLE_PLLA				REG_BIT(1)
+#define XELPDP_SSC_ENABLE_PLLB				REG_BIT(0)
+
+#endif /* __INTEL_CX0_PHY_REGS_H__ */
-- 
2.34.1

