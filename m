Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 103A16E163D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 23:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44B6210E0AC;
	Thu, 13 Apr 2023 21:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2752810E03A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 21:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681419771; x=1712955771;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3pqIasyO0h1egMHKDZb+r/t7NjVmb9kqIzGKxKAJbmQ=;
 b=PRFhmDvexovTNtXt27G3j1DLB0+4UWbSf5uRsJBrHGNgeJLYaJsJI8Lw
 1bLF6wPG+JLKUF+jZLkrYX26HfGCeKAq6VK9vqs26fA4+4liRJUFhzXpQ
 PvmuOOMtM4SBtuwapp1Wspuy6duuT470xNjJi6lgSJ1A9rEj9VijHi9hf
 nqw7BgPMjclQ82P7WFJIjmxP7CAAlLE6x/OuAo3Lix8hol2ukWDKmy7H2
 wl17u/OJbfzTUkZ1tC0yoncYdibjXKX/4H2QP2kdn+TeR5Xlb+uZcf+sF
 Ib5EC+ky1IjDG88J9ZqCCm6dKXZR14ZInQQyADUf0cItRi50tQWyBLnoq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="409493072"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="409493072"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:02:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="935749036"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="935749036"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:02:33 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 14:01:12 -0700
Message-Id: <20230413210122.1496865-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230413210122.1496865-1-radhakrishna.sripada@intel.com>
References: <20230413210122.1496865-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/mtl: Create separate reg file for
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

From: Mika Kahola <mika.kahola@intel.com>

Create a separate file to store registers for PICA chips
C10 and C20.

v2: Rename file (Jani)
v3: Use _PICK_EVEN_2RANGES() macro (Lucas)
    Coding style fixed (Lucas)
v4: Redefine macros (Imre)

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com> (v3)
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 133 ++++++++++++++++++
 1 file changed, 133 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
new file mode 100644
index 000000000000..27723c1a93d9
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -0,0 +1,133 @@
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
+
+#define   XELPDP_LANE_PIPE_RESET(lane)			_PICK(lane, REG_BIT(31), REG_BIT(30))
+#define   XELPDP_LANE_PHY_CURRENT_STATUS(lane)		_PICK(lane, REG_BIT(29), REG_BIT(28))
+#define   XELPDP_LANE_POWERDOWN_UPDATE(lane)		_PICK(lane, REG_BIT(25), REG_BIT(24))
+#define   _XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK	REG_GENMASK(23, 20)
+#define   _XELPDP_LANE0_POWERDOWN_NEW_STATE(val)	REG_FIELD_PREP(_XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)
+#define   _XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK	REG_GENMASK(19, 16)
+#define   _XELPDP_LANE1_POWERDOWN_NEW_STATE(val)	REG_FIELD_PREP(_XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)
+#define   XELPDP_LANE_POWERDOWN_NEW_STATE(lane, val)	_PICK(lane, \
+							      _XELPDP_LANE0_POWERDOWN_NEW_STATE(val), \
+							      _XELPDP_LANE1_POWERDOWN_NEW_STATE(val))
+#define   XELPDP_LANE_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(3, 0)
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

