Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9342C5EFE20
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 21:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA9910EC8B;
	Thu, 29 Sep 2022 19:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE60710EC78;
 Thu, 29 Sep 2022 19:46:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A765FAADE2;
 Thu, 29 Sep 2022 19:46:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Thu, 29 Sep 2022 19:46:35 -0000
Message-ID: <166448079564.11952.10742193757408983833@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220929131747.2592092-1-mika.kahola@intel.com>
In-Reply-To: <20220929131747.2592092-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Add_C10_phy_support?=
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

Series: drm/i915/mtl: Add C10 phy support
URL   : https://patchwork.freedesktop.org/series/109248/
State : warning

== Summary ==

Error: dim checkpatch failed
7a245d0165a3 drm/i915/mtl: Add Support for C10, C20 PHY Message Bus
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:19: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#19: 
new file mode 100644

-:44: WARNING:QUOTED_WHITESPACE_BEFORE_NEWLINE: unnecessary whitespace before a quoted newline
#44: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:21:
+		drm_err_once(&i915->drm, "Failed to bring PHY %c to idle. \n", phy_name(phy));

-:50: WARNING:RETURN_VOID: void function return statements are not generally useful
#50: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:27:
+	return;
+}

-:61: WARNING:LONG_LINE: line length of 142 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:38:
+		drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries. Status: 0x%x\n", phy_name(phy), addr, attempts, val ?: 0);

-:69: WARNING:LONG_LINE: line length of 142 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:46:
+		drm_dbg(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));

-:88: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:65:
+		drm_dbg(&i915->drm, "PHY %c Timeout waiting for Read response ACK. Status: 0x%x\n", phy_name(phy), val);

-:96: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#96: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:73:
+		drm_dbg(&i915->drm, "PHY %c Error occurred during read command. Status: 0x%x\n", phy_name(phy), val);

-:105: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:82:
+		drm_dbg(&i915->drm, "PHY %c Not a Read response. MSGBUS Status: 0x%x.\n", phy_name(phy), val);

-:117: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#117: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:94:
+static int intel_cx0_wait_cwrite_ack(struct drm_i915_private *i915,
+				      enum port port, int lane)

-:129: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#129: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:106:
+		drm_dbg(&i915->drm, "PHY %c Timeout waiting for Committed message ACK. Status: 0x%x\n", phy_name(phy), val);

-:135: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#135: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:112:
+		drm_dbg(&i915->drm, "PHY %c Unexpected ACK received. MSGBUS STATUS: 0x%x.\n", phy_name(phy), val);

-:150: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#150: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:127:
+		drm_err_once(&i915->drm, "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, attempts);

-:158: WARNING:LONG_LINE: line length of 142 exceeds 100 columns
#158: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:135:
+		drm_dbg(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));

-:190: WARNING:RETURN_VOID: void function return statements are not generally useful
#190: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:167:
+	return;
+}

total: 0 errors, 13 warnings, 1 checks, 179 lines checked
afd046f59d87 drm/i915/mtl: Add PLL programming support for C10 phy
-:444: ERROR:CODE_INDENT: code indent should use tabs where possible
#444: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:558:
+^I^I        C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);$

-:444: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#444: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:558:
+	intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+		        C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);

-:459: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#459: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:573:
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CMN(0), cmn0, MB_WRITE_COMMITTED);

-:460: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#460: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:574:
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_TX(0), C10_TX0_VAL, MB_WRITE_COMMITTED);

-:496: CHECK:SPACING: spaces preferred around that '+' (ctx:VxW)
#496: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:610:
+			    i, hw_state->pll[i], i + 1, hw_state->pll[i+ 1],
 			                                               ^

-:573: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#573: 
new file mode 100644

-:578: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_cx0_phy.h', please use '/*' instead
#578: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:1:
+// SPDX-License-Identifier: MIT

-:578: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#578: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:1:
+// SPDX-License-Identifier: MIT

-:601: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__n' - possible side-effects?
#601: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:24:
+#define REG_BIT8(__n)							\
+	((u8)(BIT(__n) +						\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
+				 ((__n) < 0 || (__n) > 7))))

-:615: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__high' - possible side-effects?
#615: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:38:
+#define REG_GENMASK8(__high, __low)					\
+	((u8)(GENMASK(__high, __low) +					\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&	\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))

-:615: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__low' - possible side-effects?
#615: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:38:
+#define REG_GENMASK8(__high, __low)					\
+	((u8)(GENMASK(__high, __low) +					\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&	\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))

-:624: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__x' - possible side-effects?
#624: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:47:
+#define IS_POWER_OF_2(__x)		((__x) && (((__x) & ((__x) - 1)) == 0))

-:636: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#636: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:59:
+#define REG_FIELD_PREP8(__mask, __val)						\
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +	\
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +		\
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +		\
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:636: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__val' - possible side-effects?
#636: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:59:
+#define REG_FIELD_PREP8(__mask, __val)						\
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +	\
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +		\
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +		\
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:641: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#641: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:64:
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:732: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#732: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3501:
+	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->c10mpllb_state);

total: 1 errors, 7 warnings, 8 checks, 818 lines checked
e6d269ba2195 drm/i915/mtl: Add support for C10 phy programming
-:50: ERROR:SPACING: space required before the open parenthesis '('
#50: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:636:
+#define PHY_LANES_VAL_ARG(FIELD, lanes, arg)	({u32 __val; switch(lanes) {\

-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'arg' - possible side-effects?
#50: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:636:
+#define PHY_LANES_VAL_ARG(FIELD, lanes, arg)	({u32 __val; switch(lanes) {\
+						  case INTEL_CX0_BOTH_LANES:	\
+							__val = ((XELPDP_LANE0_##FIELD(arg)) |\
+							        (XELPDP_LANE1_##FIELD(arg))); \
+							break;				\
+						  case INTEL_CX0_LANE0:         \
+							__val = (XELPDP_LANE0_##FIELD(arg));\
+							break;				\
+						  case INTEL_CX0_LANE1:         \
+							__val = (XELPDP_LANE1_##FIELD(arg));\
+							break;  \
+						 }; __val; })

-:51: WARNING:TABSTOP: Statements should start on a tabstop
#51: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:637:
+						  case INTEL_CX0_BOTH_LANES:	\

-:53: ERROR:CODE_INDENT: code indent should use tabs where possible
#53: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:639:
+^I^I^I^I^I^I^I        (XELPDP_LANE1_##FIELD(arg))); \$

-:55: WARNING:TABSTOP: Statements should start on a tabstop
#55: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+						  case INTEL_CX0_LANE0:         \

-:58: WARNING:TABSTOP: Statements should start on a tabstop
#58: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:644:
+						  case INTEL_CX0_LANE1:         \

-:63: ERROR:SPACING: space required before the open parenthesis '('
#63: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+#define PHY_LANES_VAL(FIELD, lanes)	({u32 __val; switch(lanes) {\

-:64: WARNING:TABSTOP: Statements should start on a tabstop
#64: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+						  case INTEL_CX0_BOTH_LANES:	\

-:66: ERROR:CODE_INDENT: code indent should use tabs where possible
#66: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:652:
+^I^I^I^I^I^I^I        XELPDP_LANE1_##FIELD); \$

-:68: WARNING:TABSTOP: Statements should start on a tabstop
#68: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:654:
+						  case INTEL_CX0_LANE0:         \

-:71: WARNING:TABSTOP: Statements should start on a tabstop
#71: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+						  case INTEL_CX0_LANE1:         \

-:548: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#548: FILE: drivers/gpu/drm/i915/i915_reg.h:8411:
+							[PORT_A] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \

-:549: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#549: FILE: drivers/gpu/drm/i915/i915_reg.h:8412:
+							[PORT_B] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \

-:550: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#550: FILE: drivers/gpu/drm/i915/i915_reg.h:8413:
+							[PORT_TC1] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \

-:551: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#551: FILE: drivers/gpu/drm/i915/i915_reg.h:8414:
+							[PORT_TC2] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2, \

-:552: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#552: FILE: drivers/gpu/drm/i915/i915_reg.h:8415:
+							[PORT_TC3] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3, \

-:553: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#553: FILE: drivers/gpu/drm/i915/i915_reg.h:8416:
+							[PORT_TC4] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4) + ((lane) * 4))

-:555: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#555: FILE: drivers/gpu/drm/i915/i915_reg.h:8418:
+#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))

-:558: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#558: FILE: drivers/gpu/drm/i915/i915_reg.h:8421:
+#define  XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)

-:559: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#559: FILE: drivers/gpu/drm/i915/i915_reg.h:8422:
+#define  XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)

-:560: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#560: FILE: drivers/gpu/drm/i915/i915_reg.h:8423:
+#define  XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)

-:562: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#562: FILE: drivers/gpu/drm/i915/i915_reg.h:8425:
+#define  XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)

-:565: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#565: FILE: drivers/gpu/drm/i915/i915_reg.h:8428:
+#define  XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)

-:567: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#567: FILE: drivers/gpu/drm/i915/i915_reg.h:8430:
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane) + 8)

-:573: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#573: FILE: drivers/gpu/drm/i915/i915_reg.h:8436:
+#define  XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)

-:594: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#594: FILE: drivers/gpu/drm/i915/i915_reg.h:8457:
+							[PORT_TC1] = _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \

-:595: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#595: FILE: drivers/gpu/drm/i915/i915_reg.h:8458:
+							[PORT_TC2] = _XELPDP_PORT_BUF_CTL1_LN0_USBC2, \

-:596: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#596: FILE: drivers/gpu/drm/i915/i915_reg.h:8459:
+							[PORT_TC3] = _XELPDP_PORT_BUF_CTL1_LN0_USBC3, \

-:597: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#597: FILE: drivers/gpu/drm/i915/i915_reg.h:8460:
+							[PORT_TC4] = _XELPDP_PORT_BUF_CTL1_LN0_USBC4))

-:613: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#613: FILE: drivers/gpu/drm/i915/i915_reg.h:8476:
+#define  XELPDP_LANE0_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)

-:615: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#615: FILE: drivers/gpu/drm/i915/i915_reg.h:8478:
+#define  XELPDP_LANE1_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)

-:617: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#617: FILE: drivers/gpu/drm/i915/i915_reg.h:8480:
+#define  XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)

-:621: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#621: FILE: drivers/gpu/drm/i915/i915_reg.h:8484:
+#define  XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)

-:623: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#623: FILE: drivers/gpu/drm/i915/i915_reg.h:8486:
+#define  XELPDP_POWER_STATE_ACTIVE(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)

-:648: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#648: FILE: drivers/gpu/drm/i915/i915_reg.h:8511:
+#define XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)

total: 4 errors, 30 warnings, 1 checks, 600 lines checked
c4154b7d3dd6 drm/i915/mtl: Add C10 phy programming for HDMI
-:207: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:626:
+			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d on phy %c.\n",
+				      crtc_state->port_clock, phy_name(phy));

total: 0 errors, 0 warnings, 1 checks, 242 lines checked
ad6f986d0965 drm/i915/mtl: Add vswing programming for C10 phys
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
C10 phys uses direct mapping internally for voltage and pre-emphasis levels.

-:131: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#131: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:286:
+	intel_cx0_write(i915, encoder->port, !master_lane, PHY_C10_VDR_CONTROL(1),
+		 C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);

-:381: WARNING:REPEATED_WORD: Possible repeated word: 'to'
#381: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1040:
+ * Some platforms don't need a mapping table and only expect us to
+ * to program the vswing + preemphasis levels directly since the

-:385: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#385: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1044:
+    { .direct = { .level = 0, .preemph = 0 } },$

-:386: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#386: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1045:
+    { .direct = { .level = 0, .preemph = 1 } },$

-:387: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#387: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1046:
+    { .direct = { .level = 0, .preemph = 2 } },$

-:388: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#388: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1047:
+    { .direct = { .level = 0, .preemph = 3 } },$

-:389: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#389: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1048:
+    { .direct = { .level = 1, .preemph = 0 } },$

-:390: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#390: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1049:
+    { .direct = { .level = 1, .preemph = 0 } },$

-:391: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#391: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1050:
+    { .direct = { .level = 1, .preemph = 2 } },$

-:392: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#392: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1051:
+    { .direct = { .level = 2, .preemph = 0 } },$

-:393: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#393: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1052:
+    { .direct = { .level = 2, .preemph = 1 } },$

-:394: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#394: FILE: drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c:1053:
+    { .direct = { .level = 3, .preemph = 0 } },$

total: 0 errors, 12 warnings, 1 checks, 408 lines checked


