Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D2E6CAE6D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 21:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1346010E0F7;
	Mon, 27 Mar 2023 19:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE4BB10E0F7;
 Mon, 27 Mar 2023 19:19:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6240A0BCB;
 Mon, 27 Mar 2023 19:19:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kahola, Mika" <mika.kahola@intel.com>
Date: Mon, 27 Mar 2023 19:19:41 -0000
Message-ID: <167994478171.32629.9459545466276477965@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230327123433.896216-1-mika.kahola@intel.com>
In-Reply-To: <20230327123433.896216-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Add_Support_for_C10_chips?=
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

Series: drm/i915/mtl: Add Support for C10 chips
URL   : https://patchwork.freedesktop.org/series/115664/
State : warning

== Summary ==

Error: dim checkpatch failed
acf3d3886bcc drm/i915/mtl: Initial DDI port setup
fa367a60b5f5 drm/i915/mtl: Add DP rates
dd49f2562c22 drm/i915/mtl: Create separate reg file for PICA registers
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:17: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#17: 
new file mode 100644

-:37: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:16:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \

-:38: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:17:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \

-:39: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:18:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \

-:40: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:19:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4)

-:43: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:22:
+#define   XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)

-:44: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:23:
+#define   XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)

-:45: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:24:
+#define   XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)

-:47: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:26:
+#define   XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)

-:50: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:29:
+#define   XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)

-:52: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:31:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \

-:53: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:32:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \

-:54: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#54: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:33:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \

-:55: WARNING:LONG_LINE: line length of 137 exceeds 100 columns
#55: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:34:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4 + 8)

-:61: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:40:
+#define   XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)

-:79: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#79: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:58:
+										 _XELPDP_PORT_BUF_CTL1_LN0_A, \

-:80: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:59:
+										 _XELPDP_PORT_BUF_CTL1_LN0_B, \

-:81: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#81: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:60:
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \

-:82: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#82: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:61:
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2))

-:92: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#92: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:71:
+										 _XELPDP_PORT_BUF_CTL1_LN0_A, \

-:93: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#93: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:72:
+										 _XELPDP_PORT_BUF_CTL1_LN0_B, \

-:94: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:73:
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \

-:95: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#95: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:74:
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 4)

-:103: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#103: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:82:
+#define   XELPDP_LANE0_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)

-:105: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:84:
+#define   XELPDP_LANE1_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)

-:107: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#107: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:86:
+#define   XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)

-:110: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#110: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:89:
+										 _XELPDP_PORT_BUF_CTL1_LN0_A, \

-:111: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:90:
+										 _XELPDP_PORT_BUF_CTL1_LN0_B, \

-:112: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#112: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:91:
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \

-:113: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#113: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:92:
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 8)

-:115: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#115: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:94:
+#define   XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)

-:117: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:96:
+#define   XELPDP_POWER_STATE_ACTIVE(val)		REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)

-:124: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#124: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:103:
+										 _XELPDP_PORT_CLOCK_CTL_A, \

-:125: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#125: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:104:
+										 _XELPDP_PORT_CLOCK_CTL_B, \

-:126: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#126: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:105:
+										 _XELPDP_PORT_CLOCK_CTL_USBC1, \

-:127: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#127: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:106:
+										 _XELPDP_PORT_CLOCK_CTL_USBC2))

-:139: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#139: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:118:
+#define   XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)

total: 0 errors, 37 warnings, 0 checks, 131 lines checked
484ad1495ef9 drm/i915/mtl: Add Support for C10 PHY message bus and pll programming
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:24: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#24: 
    Move register definitions to a new file i.e. intel_cx0_reg_defs.h (Jani)

-:58: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#58: 
new file mode 100644

-:79: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'phy < PHY_C'
#79: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:17:
+	if (IS_METEORLAKE(dev_priv) && (phy < PHY_C))

-:114: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:52:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n", phy_name(phy), *val);

-:122: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#122: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:60:
+static int __intel_cx0_read(struct drm_i915_private *i915, enum port port,
+			   int lane, u16 addr, u32 *val)

-:131: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#131: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:69:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));

-:151: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#151: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:89:
+		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during read command. Status: 0x%x\n", phy_name(phy), *val);

-:159: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#159: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:97:
+		drm_dbg_kms(&i915->drm, "PHY %c Not a Read response. MSGBUS Status: 0x%x.\n", phy_name(phy), *val);

-:185: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#185: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:123:
+		drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries.\n", phy_name(phy), addr, i);

-:193: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#193: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:131:
+static int intel_cx0_wait_cwrite_ack(struct drm_i915_private *i915,
+				      enum port port, int lane)

-:206: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#206: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:144:
+		drm_dbg_kms(&i915->drm, "PHY %c Unexpected ACK received. MSGBUS STATUS: 0x%x.\n", phy_name(phy), val);

-:222: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#222: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:160:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));

-:243: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#243: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:181:
+		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during write command.\n", phy_name(phy));

-:267: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#267: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:205:
+		drm_err_once(&i915->drm, "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);

-:672: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#672: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:610:
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CMN(0), cmn0, MB_WRITE_COMMITTED);

-:673: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#673: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:611:
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_TX(0), C10_TX0_VAL, MB_WRITE_COMMITTED);

-:868: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#868: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:806:
+					 XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,

-:869: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#869: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:807:
+					 XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,

-:943: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#943: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:881:
+				intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2),

-:948: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#948: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:886:
+				intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2),

-:974: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#974: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:912:
+			      C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);

-:1189: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_cx0_phy.h', please use '/*' instead
#1189: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:1:
+// SPDX-License-Identifier: MIT

-:1189: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#1189: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:1:
+// SPDX-License-Identifier: MIT

-:1298: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1298: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3521:
+	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->c10mpllb_state);

-:1487: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__n' - possible side-effects?
#1487: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:33:
+#define REG_BIT8(__n)                                                   \
+	((u8)(BIT(__n) +                                                \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
+				 ((__n) < 0 || (__n) > 7))))

-:1508: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__high' - possible side-effects?
#1508: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:77:
+#define REG_GENMASK8(__high, __low)                                     \
+	((u8)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))

-:1508: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__low' - possible side-effects?
#1508: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:77:
+#define REG_GENMASK8(__high, __low)                                     \
+	((u8)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))

-:1531: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#1531: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:115:
+#define REG_FIELD_PREP8(__mask, __val)                                          \
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:1531: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__val' - possible side-effects?
#1531: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:115:
+#define REG_FIELD_PREP8(__mask, __val)                                          \
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:1536: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1536: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:120:
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

total: 0 errors, 22 warnings, 8 checks, 1438 lines checked
5ab3ed0136b6 drm/i915/mtl: Add C10 phy programming for HDMI
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
v3: Add missing use_hdmi checks from Clint's HDMI implementation changes (Ankit)

-:165: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#165: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:615:
+	.pll[0]=0x34,
 	       ^

-:166: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#166: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:616:
+	.pll[1]=0x00,
 	       ^

-:167: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#167: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:617:
+	.pll[2]=0xB0,
 	       ^

-:168: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#168: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:618:
+	.pll[3]=0x00,
 	       ^

-:169: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#169: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:619:
+	.pll[4]=0x00,
 	       ^

-:170: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#170: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:620:
+	.pll[5]=0x00,
 	       ^

-:171: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#171: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:621:
+	.pll[6]=0x00,
 	       ^

-:172: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#172: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:622:
+	.pll[7]=0x00,
 	       ^

-:173: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#173: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:623:
+	.pll[8]=0x20,
 	       ^

-:174: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#174: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:624:
+	.pll[9]=0xFF,
 	       ^

-:175: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#175: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:625:
+	.pll[10]=0xFF,
 	        ^

-:176: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#176: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:626:
+	.pll[11]=0x55,
 	        ^

-:177: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#177: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:627:
+	.pll[12]=0xE5,
 	        ^

-:178: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#178: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:628:
+	.pll[13]=0x55,
 	        ^

-:179: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#179: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:629:
+	.pll[14]=0x55,
 	        ^

-:180: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#180: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:630:
+	.pll[15]=0x0D,
 	        ^

-:181: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#181: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:631:
+	.pll[16]=0x09,
 	        ^

-:182: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#182: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:632:
+	.pll[17]=0x8F,
 	        ^

-:183: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#183: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:633:
+	.pll[18]=0x84,
 	        ^

-:184: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#184: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:634:
+	.pll[19]=0x23,
 	        ^

-:189: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#189: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:639:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:189: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#189: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:639:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:189: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#189: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:639:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:189: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#189: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:639:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:189: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#189: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:639:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:190: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#190: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:640:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:190: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#190: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:640:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:190: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#190: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:640:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:190: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#190: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:640:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:190: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#190: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:640:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:191: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	        ^

-:191: ERROR:SPACING: space required after that ',' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	             ^

-:191: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                      ^

-:191: ERROR:SPACING: space required after that ',' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                           ^

-:191: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                                    ^

-:191: ERROR:SPACING: space required after that ',' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                                         ^

-:191: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                                                  ^

-:191: ERROR:SPACING: space required after that ',' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                                                       ^

-:191: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                                                                ^

-:192: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:192: ERROR:SPACING: space required after that ',' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:192: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:192: ERROR:SPACING: space required after that ',' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:192: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:192: ERROR:SPACING: space required after that ',' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:192: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:192: ERROR:SPACING: space required after that ',' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:192: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:197: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#197: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:647:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xCC, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:197: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#197: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:647:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xCC, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:197: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#197: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:647:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xCC, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:197: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#197: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:647:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xCC, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:197: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#197: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:647:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xCC, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:198: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#198: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:648:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:198: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#198: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:648:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:198: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#198: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:648:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:198: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#198: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:648:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:198: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#198: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:648:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:199: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	        ^

-:199: ERROR:SPACING: space required after that ',' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	             ^

-:199: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                      ^

-:199: ERROR:SPACING: space required after that ',' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                           ^

-:199: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                    ^

-:199: ERROR:SPACING: space required after that ',' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                         ^

-:199: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                  ^

-:199: ERROR:SPACING: space required after that ',' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                       ^

-:199: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                                ^

-:200: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:200: ERROR:SPACING: space required after that ',' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:200: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:200: ERROR:SPACING: space required after that ',' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:200: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:200: ERROR:SPACING: space required after that ',' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:200: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:200: ERROR:SPACING: space required after that ',' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:200: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:205: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#205: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:655:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xDC, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:205: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#205: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:655:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xDC, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:205: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#205: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:655:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xDC, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:205: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#205: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:655:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xDC, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:205: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#205: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:655:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xDC, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:206: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#206: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:656:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:206: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#206: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:656:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:206: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#206: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:656:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:206: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#206: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:656:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:206: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#206: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:656:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:207: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	        ^

-:207: ERROR:SPACING: space required after that ',' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	             ^

-:207: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                      ^

-:207: ERROR:SPACING: space required after that ',' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                           ^

-:207: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                    ^

-:207: ERROR:SPACING: space required after that ',' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                         ^

-:207: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                  ^

-:207: ERROR:SPACING: space required after that ',' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                       ^

-:207: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                                ^

-:208: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:208: ERROR:SPACING: space required after that ',' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:208: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:208: ERROR:SPACING: space required after that ',' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:208: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:208: ERROR:SPACING: space required after that ',' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:208: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:208: ERROR:SPACING: space required after that ',' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:208: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:213: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#213: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:663:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x62, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:213: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#213: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:663:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x62, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:213: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#213: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:663:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x62, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:213: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#213: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:663:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x62, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:213: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#213: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:663:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x62, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:214: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#214: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:664:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:214: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#214: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:664:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:214: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#214: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:664:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:214: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#214: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:664:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:214: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#214: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:664:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:215: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	        ^

-:215: ERROR:SPACING: space required after that ',' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	             ^

-:215: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                      ^

-:215: ERROR:SPACING: space required after that ',' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                           ^

-:215: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                                    ^

-:215: ERROR:SPACING: space required after that ',' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                                         ^

-:215: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                                                  ^

-:215: ERROR:SPACING: space required after that ',' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                                                       ^

-:215: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                                                                ^

-:216: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:216: ERROR:SPACING: space required after that ',' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:216: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:216: ERROR:SPACING: space required after that ',' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:216: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:216: ERROR:SPACING: space required after that ',' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:216: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:216: ERROR:SPACING: space required after that ',' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:216: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:221: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#221: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:671:
+	.pll[0]=0xC4, .pll[1]=0x00, .pll[2]=0x76, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:221: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#221: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:671:
+	.pll[0]=0xC4, .pll[1]=0x00, .pll[2]=0x76, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:221: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#221: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:671:
+	.pll[0]=0xC4, .pll[1]=0x00, .pll[2]=0x76, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:221: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#221: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:671:
+	.pll[0]=0xC4, .pll[1]=0x00, .pll[2]=0x76, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:221: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#221: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:671:
+	.pll[0]=0xC4, .pll[1]=0x00, .pll[2]=0x76, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:222: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#222: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:672:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:222: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#222: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:672:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:222: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#222: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:672:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:222: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#222: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:672:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:222: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#222: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:672:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:223: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	        ^

-:223: ERROR:SPACING: space required after that ',' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	             ^

-:223: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                      ^

-:223: ERROR:SPACING: space required after that ',' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                           ^

-:223: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                    ^

-:223: ERROR:SPACING: space required after that ',' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                         ^

-:223: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                  ^

-:223: ERROR:SPACING: space required after that ',' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                       ^

-:223: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                                ^

-:224: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:224: ERROR:SPACING: space required after that ',' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:224: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:224: ERROR:SPACING: space required after that ',' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:224: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:224: ERROR:SPACING: space required after that ',' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:224: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:224: ERROR:SPACING: space required after that ',' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:224: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:229: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#229: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:679:
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:229: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#229: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:679:
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:229: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#229: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:679:
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:229: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#229: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:679:
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:229: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#229: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:679:
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:230: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#230: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:680:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:230: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#230: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:680:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:230: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#230: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:680:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:230: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#230: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:680:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:230: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#230: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:680:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:231: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	        ^

-:231: ERROR:SPACING: space required after that ',' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	             ^

-:231: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                      ^

-:231: ERROR:SPACING: space required after that ',' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                           ^

-:231: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                                    ^

-:231: ERROR:SPACING: space required after that ',' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                                         ^

-:231: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                                                  ^

-:231: ERROR:SPACING: space required after that ',' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                                                       ^

-:231: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                                                                ^

-:232: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:232: ERROR:SPACING: space required after that ',' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:232: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:232: ERROR:SPACING: space required after that ',' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:232: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:232: ERROR:SPACING: space required after that ',' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:232: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:232: ERROR:SPACING: space required after that ',' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:232: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:237: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#237: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:687:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:237: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#237: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:687:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:237: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#237: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:687:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:237: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#237: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:687:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:237: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#237: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:687:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:238: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#238: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:688:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:238: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#238: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:688:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:238: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#238: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:688:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:238: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#238: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:688:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:238: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#238: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:688:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:239: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	        ^

-:239: ERROR:SPACING: space required after that ',' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	             ^

-:239: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                      ^

-:239: ERROR:SPACING: space required after that ',' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                           ^

-:239: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                                    ^

-:239: ERROR:SPACING: space required after that ',' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                                         ^

-:239: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                                                  ^

-:239: ERROR:SPACING: space required after that ',' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                                                       ^

-:239: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                                                                ^

-:240: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:240: ERROR:SPACING: space required after that ',' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:240: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:240: ERROR:SPACING: space required after that ',' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:240: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:240: ERROR:SPACING: space required after that ',' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:240: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:240: ERROR:SPACING: space required after that ',' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:240: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:245: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#245: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:695:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xB0, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:245: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#245: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:695:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xB0, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:245: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#245: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:695:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xB0, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:245: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#245: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:695:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xB0, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:245: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#245: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:695:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xB0, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:246: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#246: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:696:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:246: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#246: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:696:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:246: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#246: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:696:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:246: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#246: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:696:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:246: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#246: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:696:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:247: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	        ^

-:247: ERROR:SPACING: space required after that ',' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	             ^

-:247: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                      ^

-:247: ERROR:SPACING: space required after that ',' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                           ^

-:247: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                                    ^

-:247: ERROR:SPACING: space required after that ',' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                                         ^

-:247: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                                                  ^

-:247: ERROR:SPACING: space required after that ',' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                                                       ^

-:247: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                                                                ^

-:248: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:248: ERROR:SPACING: space required after that ',' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:248: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:248: ERROR:SPACING: space required after that ',' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:248: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:248: ERROR:SPACING: space required after that ',' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:248: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:248: ERROR:SPACING: space required after that ',' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:248: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:253: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#253: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:703:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xCE, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:253: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#253: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:703:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xCE, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:253: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#253: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:703:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xCE, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:253: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#253: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:703:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xCE, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:253: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#253: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:703:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xCE, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:254: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#254: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:704:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:254: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#254: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:704:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:254: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#254: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:704:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:254: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#254: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:704:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:254: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#254: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:704:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:255: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	        ^

-:255: ERROR:SPACING: space required after that ',' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	             ^

-:255: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                      ^

-:255: ERROR:SPACING: space required after that ',' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                           ^

-:255: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                                    ^

-:255: ERROR:SPACING: space required after that ',' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                                         ^

-:255: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                                                  ^

-:255: ERROR:SPACING: space required after that ',' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                                                       ^

-:255: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                                                                ^

-:256: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:256: ERROR:SPACING: space required after that ',' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:256: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:256: ERROR:SPACING: space required after that ',' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:256: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:256: ERROR:SPACING: space required after that ',' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:256: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:256: ERROR:SPACING: space required after that ',' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:256: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:261: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#261: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:711:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:261: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#261: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:711:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:261: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#261: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:711:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:261: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#261: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:711:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:261: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#261: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:711:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:262: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#262: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:712:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:262: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#262: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:712:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:262: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#262: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:712:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:262: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#262: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:712:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:262: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#262: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:712:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:263: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	        ^

-:263: ERROR:SPACING: space required after that ',' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	             ^

-:263: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                      ^

-:263: ERROR:SPACING: space required after that ',' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                           ^

-:263: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                                    ^

-:263: ERROR:SPACING: space required after that ',' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                                         ^

-:263: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                  ^

-:263: ERROR:SPACING: space required after that ',' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                       ^

-:263: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                                ^

-:264: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:264: ERROR:SPACING: space required after that ',' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:264: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:264: ERROR:SPACING: space required after that ',' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:264: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:264: ERROR:SPACING: space required after that ',' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:264: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:264: ERROR:SPACING: space required after that ',' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:264: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:269: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#269: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:719:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x66, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:269: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#269: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:719:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x66, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:269: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#269: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:719:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x66, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:269: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#269: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:719:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x66, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:269: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#269: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:719:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x66, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:270: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#270: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:720:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:270: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#270: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:720:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:270: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#270: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:720:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:270: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#270: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:720:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:270: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#270: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:720:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:271: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	        ^

-:271: ERROR:SPACING: space required after that ',' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	             ^

-:271: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                      ^

-:271: ERROR:SPACING: space required after that ',' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                           ^

-:271: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                                    ^

-:271: ERROR:SPACING: space required after that ',' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                                         ^

-:271: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                  ^

-:271: ERROR:SPACING: space required after that ',' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                       ^

-:271: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                                ^

-:272: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:272: ERROR:SPACING: space required after that ',' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:272: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:272: ERROR:SPACING: space required after that ',' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:272: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:272: ERROR:SPACING: space required after that ',' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:272: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:272: ERROR:SPACING: space required after that ',' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:272: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:277: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#277: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:727:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x72, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:277: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#277: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:727:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x72, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:277: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#277: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:727:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x72, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:277: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#277: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:727:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x72, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:277: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#277: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:727:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x72, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:278: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#278: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:728:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:278: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#278: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:728:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:278: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#278: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:728:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:278: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#278: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:728:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:278: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#278: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:728:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:279: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:729:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
 	        ^

-:279: ERROR:SPACING: space required after that ',' (ctx:VxV)
#279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:729:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
 	             ^

-:279: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:729:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
 	                      ^

-:279: ERROR:SPACING: space required after that ',' (ctx:VxV)
#279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:729:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
 	                           ^

-:279: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:729:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
 	                                    ^

-:279: ERROR:SPACING: space required after that ',' (ctx:VxV)
#279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:729:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
 	                                         ^

-:279: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:729:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                  ^

-:279: ERROR:SPACING: space required after that ',' (ctx:VxV)
#279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:729:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                       ^

-:279: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:729:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xF5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                                ^

-:280: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#280: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:730:
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:280: ERROR:SPACING: space required after that ',' (ctx:VxV)
#280: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:730:
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:280: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#280: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:730:
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:280: ERROR:SPACING: space required after that ',' (ctx:VxV)
#280: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:730:
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:280: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#280: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:730:
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:280: ERROR:SPACING: space required after that ',' (ctx:VxV)
#280: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:730:
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:280: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#280: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:730:
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:280: ERROR:SPACING: space required after that ',' (ctx:VxV)
#280: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:730:
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:280: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#280: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:730:
+	.pll[15]=0x0B,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:285: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#285: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:735:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:285: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#285: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:735:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:285: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#285: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:735:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x7A, .pll[3]=0x00, .pll[4]=0x00,


