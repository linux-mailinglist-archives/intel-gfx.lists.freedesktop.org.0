Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2225FEE6A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 15:11:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 785CE10EADE;
	Fri, 14 Oct 2022 13:11:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 370D310EADB;
 Fri, 14 Oct 2022 13:11:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14632A9932;
 Fri, 14 Oct 2022 13:11:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Fri, 14 Oct 2022 13:11:44 -0000
Message-ID: <166575310405.26451.11979790586597712164@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221014124740.774835-1-mika.kahola@intel.com>
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Add_C10_and_C20_phy_support?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/mtl: Add C10 and C20 phy support
URL   : https://patchwork.freedesktop.org/series/109714/
State : warning

== Summary ==

Error: dim checkpatch failed
17498f64790a drm/i915/mtl: Initial DDI port setup
c7a2fc56a9d0 drm/i915/mtl: Add DP rates
919c8b25d4b3 drm/i915/mtl: Create separate reg file for PICA registers
-:13: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#13: 
new file mode 100644

-:18: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h', please use '/*' instead
#18: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:1:
+// SPDX-License-Identifier: MIT

-:18: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#18: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:1:
+// SPDX-License-Identifier: MIT

-:33: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:16:
+							 [PORT_A] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \

-:34: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:17:
+							 [PORT_B] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \

-:35: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:18:
+							 [PORT_TC1] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \

-:36: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:19:
+							 [PORT_TC2] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2, \

-:37: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:20:
+							 [PORT_TC3] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3, \

-:38: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:21:
+							 [PORT_TC4] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4) + ((lane) * 4))

-:40: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:23:
+#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))

-:43: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:26:
+#define  XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)

-:44: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:27:
+#define  XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)

-:45: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:28:
+#define  XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)

-:47: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:30:
+#define  XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)

-:50: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:33:
+#define  XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)

-:52: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:35:
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane) + 8)

-:58: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:41:
+#define  XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)

-:80: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:63:
+							 [PORT_TC1] = _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \

-:81: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#81: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:64:
+							 [PORT_TC2] = _XELPDP_PORT_BUF_CTL1_LN0_USBC2, \

-:82: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#82: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:65:
+							 [PORT_TC3] = _XELPDP_PORT_BUF_CTL1_LN0_USBC3, \

-:83: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#83: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:66:
+							 [PORT_TC4] = _XELPDP_PORT_BUF_CTL1_LN0_USBC4))

-:103: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#103: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:86:
+#define  XELPDP_LANE0_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)

-:105: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:88:
+#define  XELPDP_LANE1_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)

-:107: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#107: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:90:
+#define  XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)

-:111: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:94:
+#define  XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)

-:113: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#113: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:96:
+#define  XELPDP_POWER_STATE_ACTIVE(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)

-:140: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#140: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:123:
+#define XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)

total: 0 errors, 27 warnings, 0 checks, 136 lines checked
f1081dbf0bb3 drm/i915/mtl: Add Support for C10 PHY message bus and pll programming
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:24: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#24: 
    Move register definitions to a new file i.e. intel_cx0_reg_defs.h (Jani)

-:52: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#52: 
new file mode 100644

-:72: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'phy < PHY_C'
#72: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:16:
+	if (IS_METEORLAKE(dev_priv) && (phy < PHY_C))

-:107: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#107: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:51:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n", phy_name(phy), *val);

-:115: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#115: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:59:
+static int __intel_cx0_read(struct drm_i915_private *i915, enum port port,
+			   int lane, u16 addr, u32 *val)

-:124: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#124: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:68:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));

-:144: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#144: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:88:
+		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during read command. Status: 0x%x\n", phy_name(phy), *val);

-:152: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#152: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:96:
+		drm_dbg_kms(&i915->drm, "PHY %c Not a Read response. MSGBUS Status: 0x%x.\n", phy_name(phy), *val);

-:175: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#175: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:119:
+		drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries.\n", phy_name(phy), addr, i);

-:186: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#186: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:130:
+static int intel_cx0_wait_cwrite_ack(struct drm_i915_private *i915,
+				      enum port port, int lane)

-:199: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:143:
+		drm_dbg_kms(&i915->drm, "PHY %c Unexpected ACK received. MSGBUS STATUS: 0x%x.\n", phy_name(phy), val);

-:215: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:159:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));

-:236: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#236: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:180:
+		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during write command.\n", phy_name(phy));

-:258: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#258: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:202:
+		drm_err_once(&i915->drm, "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);

-:665: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#665: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:609:
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CMN(0), cmn0, MB_WRITE_COMMITTED);

-:666: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#666: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:610:
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_TX(0), C10_TX0_VAL, MB_WRITE_COMMITTED);

-:780: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#780: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:724:
+		     XELPDP_LANE0_POWERDOWN_NEW_STATE(state) | XELPDP_LANE1_POWERDOWN_NEW_STATE(state));

-:847: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#847: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:791:
+				      XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,

-:848: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#848: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:792:
+				      XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,

-:1153: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_cx0_phy.h', please use '/*' instead
#1153: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:1:
+// SPDX-License-Identifier: MIT

-:1153: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#1153: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:1:
+// SPDX-License-Identifier: MIT

-:1202: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h', please use '/*' instead
#1202: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:1:
+// SPDX-License-Identifier: MIT

-:1202: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#1202: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:1:
+// SPDX-License-Identifier: MIT

-:1293: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1293: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3501:
+	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->c10mpllb_state);

-:1496: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__n' - possible side-effects?
#1496: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:33:
+#define REG_BIT8(__n)                                                   \
+	((u8)(BIT(__n) +                                                \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
+				 ((__n) < 0 || (__n) > 7))))

-:1517: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__high' - possible side-effects?
#1517: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:77:
+#define REG_GENMASK8(__high, __low)                                     \
+	((u8)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))

-:1517: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__low' - possible side-effects?
#1517: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:77:
+#define REG_GENMASK8(__high, __low)                                     \
+	((u8)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))

-:1540: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#1540: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:115:
+#define REG_FIELD_PREP8(__mask, __val)                                          \
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:1540: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__val' - possible side-effects?
#1540: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:115:
+#define REG_FIELD_PREP8(__mask, __val)                                          \
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:1545: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1545: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:120:
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

total: 0 errors, 22 warnings, 8 checks, 1442 lines checked
0d826c400a1a drm/i915/mtl: Add C10 phy programming for HDMI
-:207: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:662:
+			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d on phy %c.\n",
+				      crtc_state->port_clock, phy_name(phy));

total: 0 errors, 0 warnings, 1 checks, 272 lines checked
4d111ad8c2f0 drm/i915/mtl: Add vswing programming for C10 phys
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
C10 phys uses direct mapping internally for voltage and pre-emphasis levels.

-:139: WARNING:IF_0: Consider removing the code enclosed by this #if 0 and its #endif
#139: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:325:
+#if 0

-:145: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#145: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:331:
+			C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG, C10_VDR_CTRL_UPDATE_CFG,

-:145: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#145: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:331:
+	intel_cx0_rmw(i915, encoder->port, !master_lane, PHY_C10_VDR_CONTROL(1),
+			C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG, C10_VDR_CTRL_UPDATE_CFG,

-:326: WARNING:REPEATED_WORD: Possible repeated word: 'to'
#326: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1040:
+ * Some platforms don't need a mapping table and only expect us to
+ * to program the vswing + preemphasis levels directly since the

-:330: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#330: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1044:
+    { .direct = { .level = 0, .preemph = 0 } },$

-:331: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#331: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1045:
+    { .direct = { .level = 0, .preemph = 1 } },$

-:332: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#332: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1046:
+    { .direct = { .level = 0, .preemph = 2 } },$

-:333: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#333: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1047:
+    { .direct = { .level = 0, .preemph = 3 } },$

-:334: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#334: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1048:
+    { .direct = { .level = 1, .preemph = 0 } },$

-:335: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#335: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1049:
+    { .direct = { .level = 1, .preemph = 0 } },$

-:336: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#336: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1050:
+    { .direct = { .level = 1, .preemph = 2 } },$

-:337: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#337: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1051:
+    { .direct = { .level = 2, .preemph = 0 } },$

-:338: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#338: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1052:
+    { .direct = { .level = 2, .preemph = 1 } },$

-:339: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#339: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1053:
+    { .direct = { .level = 3, .preemph = 0 } },$

total: 0 errors, 14 warnings, 1 checks, 345 lines checked
e9473def4708 drm/i915/mtl: Add support for PM DEMAND
-:154: ERROR:CODE_INDENT: code indent should use tabs where possible
#154: FILE: drivers/gpu/drm/i915/i915_drv.h:272:
+        struct {$

-:154: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#154: FILE: drivers/gpu/drm/i915/i915_drv.h:272:
+        struct {$

-:163: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#163: FILE: drivers/gpu/drm/i915/i915_drv.h:281:
+		struct mutex lock;

-:239: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#239: FILE: drivers/gpu/drm/i915/i915_reg.h:5672:
+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)

-:241: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#241: FILE: drivers/gpu/drm/i915/i915_reg.h:5674:
+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)

-:243: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#243: FILE: drivers/gpu/drm/i915/i915_reg.h:5676:
+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)		REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)

-:245: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#245: FILE: drivers/gpu/drm/i915/i915_reg.h:5678:
+#define  XELPDP_PMDEMAND_PIPES(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)

-:247: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#247: FILE: drivers/gpu/drm/i915/i915_reg.h:5680:
+#define  XELPDP_PMDEMAND_DBUFS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)

-:249: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#249: FILE: drivers/gpu/drm/i915/i915_reg.h:5682:
+#define  XELPDP_PMDEMAND_PHYS(x)				REG_FIELD_PREP(XELPDP_PMDEMAND_PHYS_MASK, x)

-:253: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#253: FILE: drivers/gpu/drm/i915/i915_reg.h:5686:
+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)

-:255: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#255: FILE: drivers/gpu/drm/i915/i915_reg.h:5688:
+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)

-:257: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#257: FILE: drivers/gpu/drm/i915/i915_reg.h:5690:
+#define  XELPDP_PMDEMAND_SCALERS(x)			REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)

-:429: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#429: FILE: drivers/gpu/drm/i915/intel_pm.c:4244:
+	return !((intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) & XELPDP_PMDEMAND_REQ_ENABLE) ||

-:435: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#435: FILE: drivers/gpu/drm/i915/intel_pm.c:4250:
+	return !(intel_de_read(dev_priv, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) & XELPDP_PMDEMAND_REQ_ENABLE);

-:484: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val' - possible side-effects?
#484: FILE: drivers/gpu/drm/i915/intel_pm.c:4299:
+#define UPDATE_PMDEMAND_VAL(val, F, f) do {            \
+	val &= (~(XELPDP_PMDEMAND_##F##_MASK));         \
+	val |= (XELPDP_PMDEMAND_##F((u32)(old ? max(old->f, new->f) : new->f))); \
+} while (0)

-:484: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'val' may be better as '(val)' to avoid precedence issues
#484: FILE: drivers/gpu/drm/i915/intel_pm.c:4299:
+#define UPDATE_PMDEMAND_VAL(val, F, f) do {            \
+	val &= (~(XELPDP_PMDEMAND_##F##_MASK));         \
+	val |= (XELPDP_PMDEMAND_##F((u32)(old ? max(old->f, new->f) : new->f))); \
+} while (0)

-:484: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'f' - possible side-effects?
#484: FILE: drivers/gpu/drm/i915/intel_pm.c:4299:
+#define UPDATE_PMDEMAND_VAL(val, F, f) do {            \
+	val &= (~(XELPDP_PMDEMAND_##F##_MASK));         \
+	val |= (XELPDP_PMDEMAND_##F((u32)(old ? max(old->f, new->f) : new->f))); \
+} while (0)

-:484: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'f' may be better as '(f)' to avoid precedence issues
#484: FILE: drivers/gpu/drm/i915/intel_pm.c:4299:
+#define UPDATE_PMDEMAND_VAL(val, F, f) do {            \
+	val &= (~(XELPDP_PMDEMAND_##F##_MASK));         \
+	val |= (XELPDP_PMDEMAND_##F((u32)(old ? max(old->f, new->f) : new->f))); \
+} while (0)

-:616: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#616: FILE: drivers/gpu/drm/i915/intel_pm.h:57:
+#define intel_atomic_get_old_pmdemand_state(state) \
+	to_intel_pmdemand_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->pmdemand.obj))

-:617: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#617: FILE: drivers/gpu/drm/i915/intel_pm.h:58:
+	to_intel_pmdemand_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->pmdemand.obj))

-:618: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#618: FILE: drivers/gpu/drm/i915/intel_pm.h:59:
+#define intel_atomic_get_new_pmdemand_state(state) \
+	to_intel_pmdemand_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->pmdemand.obj))

-:619: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#619: FILE: drivers/gpu/drm/i915/intel_pm.h:60:
+	to_intel_pmdemand_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->pmdemand.obj))

-:628: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Mika Kahola <mika.kahola@intel.com>'

total: 2 errors, 14 warnings, 7 checks, 546 lines checked
5035128585f4 drm/i915/mtl: C20 PLL programming
-:189: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#189: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1041:
+			intel_c20_write(i915, encoder->port, 0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);

-:196: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#196: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1048:
+			intel_c20_write(i915, encoder->port, 0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);

-:198: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#198: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1050:
+			intel_c20_write(i915, encoder->port, 0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);

-:204: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#204: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1056:
+			intel_c20_write(i915, encoder->port, 0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);

-:206: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#206: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1058:
+			intel_c20_write(i915, encoder->port, 0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);

-:240: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1092:
+			intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE1, PHY_C20_VDR_CUSTOM_WIDTH,

-:249: CHECK:BRACES: Unbalanced braces around else statement
#249: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1101:
+	} else

-:255: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1107:
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE,

-:259: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#259: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1111:
+			intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE1, PHY_C20_VDR_CUSTOM_SERDES_RATE,

-:263: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1115:
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_SERDES_RATE,

-:279: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1131:
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE1, PHY_C20_VDR_CUSTOM_SERDES_RATE,

-:459: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#459: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3506:
+	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);

total: 0 errors, 11 warnings, 1 checks, 479 lines checked
d597de60b7b7 drm/i915/mtl: C20 HW readout
-:33: ERROR:CODE_INDENT: code indent should use tabs where possible
#33: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:252:
+                          int lane, u16 addr)$

-:33: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#33: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:252:
+                          int lane, u16 addr)$

-:35: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#35: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:254:
+       u16 val;$

-:37: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#37: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:256:
+       assert_dc_off(i915);$

-:39: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#39: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:258:
+       intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff, 0);$

-:40: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#40: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:259:
+       intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_H, (addr >> 8) & 0xff, 1);$

-:42: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#42: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:261:
+       val = intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_H);$

-:43: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#43: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:262:
+       val <<= 8;$

-:44: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#44: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:263:
+       val |= intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_L);$

-:46: ERROR:CODE_INDENT: code indent should use tabs where possible
#46: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:265:
+        return val;$

-:46: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#46: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:265:
+        return val;$

-:232: ERROR:CODE_INDENT: code indent should use tabs where possible
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:789:
+        &mtl_c20_dp_rbr,$

-:232: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:789:
+        &mtl_c20_dp_rbr,$

-:233: ERROR:CODE_INDENT: code indent should use tabs where possible
#233: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:790:
+        &mtl_c20_dp_hbr1,$

-:233: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#233: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:790:
+        &mtl_c20_dp_hbr1,$

-:234: ERROR:CODE_INDENT: code indent should use tabs where possible
#234: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:791:
+        &mtl_c20_dp_hbr2,$

-:234: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#234: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:791:
+        &mtl_c20_dp_hbr2,$

-:235: ERROR:CODE_INDENT: code indent should use tabs where possible
#235: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:792:
+        &mtl_c20_dp_hbr3,$

-:235: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#235: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:792:
+        &mtl_c20_dp_hbr3,$

-:239: ERROR:CODE_INDENT: code indent should use tabs where possible
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:796:
+        NULL,$

-:239: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:796:
+        NULL,$

-:452: ERROR:CODE_INDENT: code indent should use tabs where possible
#452: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1314:
+        const struct intel_c20pll_state * const *tables = mtl_c20_hdmi_tables;$

-:452: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#452: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1314:
+        const struct intel_c20pll_state * const *tables = mtl_c20_hdmi_tables;$

-:453: ERROR:CODE_INDENT: code indent should use tabs where possible
#453: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1315:
+        int i;$

-:453: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#453: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1315:
+        int i;$

-:455: ERROR:CODE_INDENT: code indent should use tabs where possible
#455: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1317:
+        for (i = 0; tables[i]; i++) {$

-:455: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#455: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1317:
+        for (i = 0; tables[i]; i++) {$

-:456: ERROR:CODE_INDENT: code indent should use tabs where possible
#456: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1318:
+                if (clock == tables[i]->clock)$

-:456: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#456: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1318:
+                if (clock == tables[i]->clock)$

-:457: ERROR:CODE_INDENT: code indent should use tabs where possible
#457: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1319:
+                        return MODE_OK;$

-:457: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#457: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1319:
+                        return MODE_OK;$

-:458: ERROR:CODE_INDENT: code indent should use tabs where possible
#458: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1320:
+        }$

-:458: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#458: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1320:
+        }$

-:460: ERROR:CODE_INDENT: code indent should use tabs where possible
#460: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1322:
+        return MODE_CLOCK_RANGE;$

-:460: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#460: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1322:
+        return MODE_CLOCK_RANGE;$

-:467: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#467: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1329:
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
[...]
+	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
[...]

-:478: ERROR:CODE_INDENT: code indent should use tabs where possible
#478: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1340:
+^I                    struct intel_encoder *encoder)$

-:478: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#478: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1340:
+int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
+	                    struct intel_encoder *encoder)

-:512: ERROR:CODE_INDENT: code indent should use tabs where possible
#512: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1376:
+        /* 1. Read current context selection */$

-:513: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#513: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1377:
+        cntx = intel_cx0_read(i915, encoder->port, 0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;

-:513: ERROR:CODE_INDENT: code indent should use tabs where possible
#513: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1377:
+        cntx = intel_cx0_read(i915, encoder->port, 0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;$

-:513: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#513: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1377:
+        cntx = intel_cx0_read(i915, encoder->port, 0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;$

-:575: ERROR:CODE_INDENT: code indent should use tabs where possible
#575: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:39:
+                                   struct intel_c20pll_state *pll_state);$

-:575: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#575: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:39:
+                                   struct intel_c20pll_state *pll_state);$

total: 18 errors, 25 warnings, 1 checks, 600 lines checked
a3d8325cce42 drm/i915/mtl: C20 port clock calculation
-:50: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#50: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1669:
+       }$

-:81: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#81: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3505:
+		crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);

-:84: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3508:
+		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20pll_state);

total: 0 errors, 3 warnings, 0 checks, 66 lines checked
895f024ecb44 drm/i915/mtl: C20 HDMI state calculations
2be28e185747 drm/i915/mtl: Add voltage swing sequence for C20
-:40: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:354:
+				      C20_PHY_VSWING_PREEMPH(trans->entries[level].snps.post_cursor),

total: 0 errors, 1 warnings, 0 checks, 103 lines checked
57ad27362fd8 drm/i915/mtl: For DP2.0 10G and 20G rates use MPLLA
4a4dbdf3bd62 drm/i915/mtl: Enabling/disabling sequence Thunderbolt pll
-:54: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#54: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2043:
+       }$

total: 0 errors, 1 warnings, 0 checks, 189 lines checked
d553525ce876 drm/i915/mtl: Readout Thunderbolt HW state
-:42: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#42: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2053:
+       }$

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
42dc73e57c8e drm/i915/mtl: Enable TC ports
8cb2db71ab71 drm/i915/mtl: MTL PICA hotplug detection
-:53: CHECK:LINE_SPACING: Please don't use multiple blank lines
#53: FILE: drivers/gpu/drm/i915/i915_irq.c:202:
+
+

-:235: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#235: FILE: drivers/gpu/drm/i915/i915_irq.c:3607:
+
+}

total: 0 errors, 0 warnings, 2 checks, 353 lines checked
507382c65d05 drm/i915/mtl: Define mask for DDI AUX interrupts
24b5d50c8990 drm/i915/mtl: Power up TCSS
bd30536c462b drm/i915/mtl: Pin assignment for TypeC
-:47: ERROR:SPACING: space required before the open parenthesis '('
#47: FILE: drivers/gpu/drm/i915/display/intel_tc.c:167:
+	switch(pin_mask) {

total: 1 errors, 0 warnings, 0 checks, 48 lines checked


