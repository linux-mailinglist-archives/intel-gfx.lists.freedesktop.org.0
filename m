Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 616906D9C86
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 17:39:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D3910E33B;
	Thu,  6 Apr 2023 15:39:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3CC3D10E33B;
 Thu,  6 Apr 2023 15:38:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 345EBA0BA8;
 Thu,  6 Apr 2023 15:38:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Thu, 06 Apr 2023 15:38:59 -0000
Message-ID: <168079553917.9536.13081760520885141103@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230406130221.2998457-1-mika.kahola@intel.com>
In-Reply-To: <20230406130221.2998457-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Add_Support_for_C10_phy?=
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

Series: drm/i915/mtl: Add Support for C10 phy
URL   : https://patchwork.freedesktop.org/series/116191/
State : warning

== Summary ==

Error: dim checkpatch failed
09ec7a640ab5 drm/i915/mtl: Initial DDI port setup
581165ce249c drm/i915/mtl: Add DP rates
bee5f7f012de drm/i915/mtl: Create separate reg file for PICA registers
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:19: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#19: 
new file mode 100644

-:39: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:16:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \

-:40: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:17:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \

-:41: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:18:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \

-:42: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:19:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4)

-:45: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:22:
+#define   XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)

-:46: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:23:
+#define   XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)

-:47: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:24:
+#define   XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)

-:49: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:26:
+#define   XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)

-:52: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:29:
+#define   XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)

-:54: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#54: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:31:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \

-:55: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#55: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:32:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \

-:56: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:33:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \

-:57: WARNING:LONG_LINE: line length of 137 exceeds 100 columns
#57: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:34:
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4 + 8)

-:63: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:40:
+#define   XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)

-:81: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#81: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:58:
+										 _XELPDP_PORT_BUF_CTL1_LN0_A, \

-:82: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#82: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:59:
+										 _XELPDP_PORT_BUF_CTL1_LN0_B, \

-:83: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#83: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:60:
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \

-:84: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:61:
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2))

-:94: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:71:
+										 _XELPDP_PORT_BUF_CTL1_LN0_A, \

-:95: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#95: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:72:
+										 _XELPDP_PORT_BUF_CTL1_LN0_B, \

-:96: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#96: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:73:
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \

-:97: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#97: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:74:
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 4)

-:103: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#103: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:80:
+#define   _XELPDP_LANE0_POWERDOWN_NEW_STATE(val)	REG_FIELD_PREP(_XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)

-:105: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:82:
+#define   _XELPDP_LANE1_POWERDOWN_NEW_STATE(val)	REG_FIELD_PREP(_XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)

-:106: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val' - possible side-effects?
#106: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:83:
+#define   XELPDP_LANE_POWERDOWN_NEW_STATE(lane, val)	_PICK(lane, \
+							      _XELPDP_LANE0_POWERDOWN_NEW_STATE(val), \
+							      _XELPDP_LANE1_POWERDOWN_NEW_STATE(val))

-:107: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#107: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:84:
+							      _XELPDP_LANE0_POWERDOWN_NEW_STATE(val), \

-:108: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#108: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:85:
+							      _XELPDP_LANE1_POWERDOWN_NEW_STATE(val))

-:111: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:88:
+#define   XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)

-:114: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:91:
+										 _XELPDP_PORT_BUF_CTL1_LN0_A, \

-:115: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#115: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:92:
+										 _XELPDP_PORT_BUF_CTL1_LN0_B, \

-:116: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#116: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:93:
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \

-:117: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:94:
+										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 8)

-:119: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#119: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:96:
+#define   XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)

-:121: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#121: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:98:
+#define   XELPDP_POWER_STATE_ACTIVE(val)		REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)

-:128: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#128: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:105:
+										 _XELPDP_PORT_CLOCK_CTL_A, \

-:129: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#129: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:106:
+										 _XELPDP_PORT_CLOCK_CTL_B, \

-:130: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#130: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:107:
+										 _XELPDP_PORT_CLOCK_CTL_USBC1, \

-:131: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#131: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:108:
+										 _XELPDP_PORT_CLOCK_CTL_USBC2))

-:143: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#143: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:120:
+#define   XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)

total: 0 errors, 39 warnings, 1 checks, 133 lines checked
7524fd59e537 drm/i915/mtl: Add Support for C10 PHY message bus and pll programming
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:24: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#24: 
    Move register definitions to a new file i.e. intel_cx0_reg_defs.h (Jani)

-:62: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#62: 
new file mode 100644

-:87: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'phy < PHY_C'
#87: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:21:
+	if (IS_METEORLAKE(dev_priv) && (phy < PHY_C))

-:172: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#172: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:106:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n", phy_name(phy), *val);

-:179: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#179: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:113:
+			    phy_name(phy), command == XELPDP_PORT_P2M_COMMAND_READ_ACK ? "read" : "write", *val);

-:187: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#187: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:121:
+			    phy_name(phy), command == XELPDP_PORT_P2M_COMMAND_READ_ACK ? "read" : "write", *val);

-:206: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#206: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:140:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));

-:247: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:181:
+		drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries.\n", phy_name(phy), addr, i);

-:270: WARNING:LONG_LINE: line length of 140 exceeds 100 columns
#270: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:204:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Resetting the bus.\n", phy_name(phy));

-:287: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#287: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:221:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for write to complete. Resetting the bus.\n", phy_name(phy));

-:294: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#294: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:228:
+		if (intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val) < 0) {

-:300: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#300: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:234:
+		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during write command.\n", phy_name(phy));

-:328: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#328: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:262:
+		drm_err_once(&i915->drm, "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);

-:748: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#748: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C10_VDR_CMN(0), pll_state->cmn, MB_WRITE_COMMITTED);

-:749: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#749: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:683:
+	intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C10_VDR_TX(0), pll_state->tx, MB_WRITE_COMMITTED);

-:870: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#870: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:804:
+		     intel_cx0_get_powerdown_state(INTEL_CX0_BOTH_LANES, XELPDP_LANE_POWERDOWN_NEW_STATE_MASK),

-:1268: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1268: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1202:
+		I915_STATE_WARN(mpllb_hw_state.cmn != mpllb_sw_state->cmn,
+			"[CRTC:%d:%s] mismatch in C10MPLLB: Register CMN0 (expected 0x%02x, found 0x%02x)",

-:1279: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_cx0_phy.h', please use '/*' instead
#1279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:1:
+// SPDX-License-Identifier: MIT

-:1279: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#1279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:1:
+// SPDX-License-Identifier: MIT

-:1299: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__lane' - possible side-effects?
#1299: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:21:
+#define for_each_cx0_lane_in_mask(__lane_mask, __lane) \
+	for ((__lane) = 0; (__lane) < 2; (__lane)++) \
+		for_each_if((__lane_mask) & BIT(__lane))

-:1424: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#1424: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3507:
+	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);

-:1506: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1506: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:998:
+		crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);

-:1614: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__n' - possible side-effects?
#1614: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:33:
+#define REG_BIT8(__n)                                                   \
+	((u8)(BIT(__n) +                                                \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
+				 ((__n) < 0 || (__n) > 7))))

-:1635: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__high' - possible side-effects?
#1635: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:77:
+#define REG_GENMASK8(__high, __low)                                     \
+	((u8)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))

-:1635: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__low' - possible side-effects?
#1635: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:77:
+#define REG_GENMASK8(__high, __low)                                     \
+	((u8)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))

-:1658: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#1658: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:115:
+#define REG_FIELD_PREP8(__mask, __val)                                          \
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:1658: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__val' - possible side-effects?
#1658: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:115:
+#define REG_FIELD_PREP8(__mask, __val)                                          \
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:1663: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1663: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:120:
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

total: 0 errors, 20 warnings, 8 checks, 1569 lines checked
1b95e61e3fde drm/i915/mtl: Add vswing programming for C10 phys
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
C10 phys uses direct mapping internally for voltage and pre-emphasis levels.

-:65: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#65: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:323:
+		intel_cx0_rmw(i915, encoder->port, lane + 1, PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 0),
+				C10_PHY_OVRD_LEVEL_MASK,

-:69: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#69: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:327:
+		intel_cx0_rmw(i915, encoder->port, lane + 1, PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 1),
+				C10_PHY_OVRD_LEVEL_MASK,

-:73: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#73: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:331:
+		intel_cx0_rmw(i915, encoder->port, lane + 1, PHY_CX0_VDR_OVRD_CONTROL(lane, tx, 2),
+				C10_PHY_OVRD_LEVEL_MASK,

-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:338:
+	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_OVRD,
+			0, PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,

-:143: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#143: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:167:
+#define PHY_CX0_VDR_OVRD_CONTROL(lane, tx, control) (PHY_C10_VDR_PRE_OVRD_TX1 + ((lane) ^ ((tx) - 1)) * 0x10 + (control))

total: 0 errors, 2 warnings, 4 checks, 201 lines checked
df4e002a444d drm/i915/mtl: MTL PICA hotplug detection
-:54: CHECK:LINE_SPACING: Please don't use multiple blank lines
#54: FILE: drivers/gpu/drm/i915/i915_irq.c:201:
+
+

total: 0 errors, 0 warnings, 1 checks, 390 lines checked
c8a563d11097 drm/i915/display/mtl: Fill port width in DDI_BUF_/TRANS_DDI_FUNC_/PORT_BUF_CTL for HDMI
9d01414a1697 drm/i915/mtl/display: Implement DisplayPort sequences
-:53: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:66:
+#define   XELPDP_PORT_BUF_PORT_DATA_10BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 0)

-:54: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#54: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:67:
+#define   XELPDP_PORT_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 1)

-:55: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#55: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:68:
+#define   XELPDP_PORT_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 2)

-:111: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:227:
+		ret = _wait_for(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_PORT_BUF_PHY_IDLE),

total: 0 errors, 4 warnings, 0 checks, 511 lines checked


