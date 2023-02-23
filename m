Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5A16A0BB4
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 15:17:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0AC210E4E5;
	Thu, 23 Feb 2023 14:17:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1632310E4E1;
 Thu, 23 Feb 2023 14:17:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10DEDAADF4;
 Thu, 23 Feb 2023 14:17:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Thu, 23 Feb 2023 14:17:10 -0000
Message-ID: <167716183005.15874.18003563236681778221@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230223134021.2236889-1-mika.kahola@intel.com>
In-Reply-To: <20230223134021.2236889-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Add_C10_and_C20_phy_support_=28rev5=29?=
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

Series: drm/i915/mtl: Add C10 and C20 phy support (rev5)
URL   : https://patchwork.freedesktop.org/series/109714/
State : warning

== Summary ==

Error: dim checkpatch failed
d63b0ef4e1cd drm/i915/mtl: Initial DDI port setup
8c2d26b90675 drm/i915/mtl: Add DP rates
a6ef4c024d38 drm/i915/mtl: Create separate reg file for PICA registers
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:15: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#15: 
new file mode 100644

-:35: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:16:
+							[PORT_A] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \

-:36: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:17:
+							[PORT_B] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \

-:37: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:18:
+							[PORT_TC1] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \

-:38: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:19:
+							[PORT_TC2] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2, \

-:39: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:20:
+							[PORT_TC3] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3, \

-:40: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:21:
+							[PORT_TC4] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4) + ((lane) * 4))

-:42: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:23:
+#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))

-:45: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#45: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:26:
+#define  XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)

-:46: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:27:
+#define  XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)

-:47: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:28:
+#define  XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)

-:49: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:30:
+#define  XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)

-:52: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:33:
+#define  XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)

-:54: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#54: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:35:
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane) + 8)

-:60: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:41:
+#define  XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)

-:82: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#82: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:63:
+							[PORT_TC1] = _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \

-:83: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#83: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:64:
+							[PORT_TC2] = _XELPDP_PORT_BUF_CTL1_LN0_USBC2, \

-:84: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:65:
+							[PORT_TC3] = _XELPDP_PORT_BUF_CTL1_LN0_USBC3, \

-:85: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#85: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:66:
+							[PORT_TC4] = _XELPDP_PORT_BUF_CTL1_LN0_USBC4))

-:105: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#105: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:86:
+#define  XELPDP_LANE0_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)

-:107: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#107: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:88:
+#define  XELPDP_LANE1_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)

-:109: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:90:
+#define  XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)

-:113: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#113: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:94:
+#define  XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)

-:115: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#115: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:96:
+#define  XELPDP_POWER_STATE_ACTIVE(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)

-:142: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#142: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:123:
+#define XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)

total: 0 errors, 25 warnings, 0 checks, 136 lines checked
0d91a4f02569 drm/i915/mtl: Add Support for C10 PHY message bus and pll programming
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:24: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#24: 
    Move register definitions to a new file i.e. intel_cx0_reg_defs.h (Jani)

-:56: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#56: 
new file mode 100644

-:77: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'phy < PHY_C'
#77: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:17:
+	if (IS_METEORLAKE(dev_priv) && (phy < PHY_C))

-:88: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#88: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:28:
+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
 	                                                          ^

-:92: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#92: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:32:
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
 	                                                                       ^

-:99: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#99: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:39:
+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1), ~0);
 	                                                             ^

-:107: ERROR:CODE_INDENT: code indent should use tabs where possible
#107: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:47:
+^I^I^I^I         XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1),$

-:107: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#107: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:47:
+	if (__intel_de_wait_for_register(i915,
+				         XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1),

-:107: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#107: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:47:
+				         XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1),
 				                                                 ^

-:108: ERROR:CODE_INDENT: code indent should use tabs where possible
#108: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:48:
+^I^I^I^I         XELPDP_PORT_P2M_RESPONSE_READY,$

-:109: ERROR:CODE_INDENT: code indent should use tabs where possible
#109: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:49:
+^I^I^I^I         XELPDP_PORT_P2M_RESPONSE_READY,$

-:110: ERROR:CODE_INDENT: code indent should use tabs where possible
#110: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:50:
+^I^I^I^I         XELPDP_MSGBUS_TIMEOUT_FAST_US,$

-:111: ERROR:CODE_INDENT: code indent should use tabs where possible
#111: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:51:
+^I^I^I^I         XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {$

-:112: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#112: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:52:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n", phy_name(phy), *val);

-:120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#120: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:60:
+static int __intel_cx0_read(struct drm_i915_private *i915, enum port port,
+			   int lane, u16 addr, u32 *val)

-:126: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#126: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:66:
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
 	                                                                       ^

-:129: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#129: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:69:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));

-:135: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#135: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:75:
+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
 	                                                          ^

-:149: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#149: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:89:
+		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during read command. Status: 0x%x\n", phy_name(phy), *val);

-:157: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#157: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:97:
+		drm_dbg_kms(&i915->drm, "PHY %c Not a Read response. MSGBUS Status: 0x%x.\n", phy_name(phy), *val);

-:163: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#163: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:103:
+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1), ~0);
 	                                                             ^

-:183: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#183: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:123:
+		drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries.\n", phy_name(phy), addr, i);

-:191: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:131:
+static int intel_cx0_wait_cwrite_ack(struct drm_i915_private *i915,
+				      enum port port, int lane)

-:204: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#204: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:144:
+		drm_dbg_kms(&i915->drm, "PHY %c Unexpected ACK received. MSGBUS STATUS: 0x%x.\n", phy_name(phy), val);

-:217: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#217: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:157:
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
 	                                                                       ^

-:220: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#220: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:160:
+		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));

-:226: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#226: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:166:
+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
 	                                                          ^

-:239: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:179:
+	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1)) &
 	                                                                        ^

-:241: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#241: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:181:
+		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during write command.\n", phy_name(phy));

-:246: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#246: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:186:
+	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1), ~0);
 	                                                             ^

-:265: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#265: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:205:
+		drm_err_once(&i915->drm, "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);

-:670: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#670: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:610:
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CMN(0), cmn0, MB_WRITE_COMMITTED);

-:671: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#671: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:611:
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_TX(0), C10_TX0_VAL, MB_WRITE_COMMITTED);

-:806: ERROR:CODE_INDENT: code indent should use tabs where possible
#806: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:746:
+^I^I^I^I         intel_cx0_get_powerdown_update(lane), 0,$

-:806: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#806: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:746:
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
+				         intel_cx0_get_powerdown_update(lane), 0,

-:807: ERROR:CODE_INDENT: code indent should use tabs where possible
#807: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:747:
+^I^I^I^I         XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))$

-:855: ERROR:CODE_INDENT: code indent should use tabs where possible
#855: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:795:
+^I^I^I^I         XELPDP_PORT_BUF_SOC_PHY_READY,$

-:855: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#855: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:795:
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port),
+				         XELPDP_PORT_BUF_SOC_PHY_READY,

-:856: ERROR:CODE_INDENT: code indent should use tabs where possible
#856: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:796:
+^I^I^I^I         XELPDP_PORT_BUF_SOC_PHY_READY,$

-:857: ERROR:CODE_INDENT: code indent should use tabs where possible
#857: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:797:
+^I^I^I^I         XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))$

-:866: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#866: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:806:
+				         XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,

-:866: ERROR:CODE_INDENT: code indent should use tabs where possible
#866: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:806:
+^I^I^I^I         XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,$

-:866: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#866: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:806:
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
+				         XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,

-:867: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#867: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:807:
+				         XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,

-:867: ERROR:CODE_INDENT: code indent should use tabs where possible
#867: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:807:
+^I^I^I^I         XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,$

-:868: ERROR:CODE_INDENT: code indent should use tabs where possible
#868: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:808:
+^I^I^I^I         XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))$

-:877: ERROR:CODE_INDENT: code indent should use tabs where possible
#877: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:817:
+^I^I^I^I         intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES),$

-:877: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#877: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:817:
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port),
+				         intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES),

-:878: ERROR:CODE_INDENT: code indent should use tabs where possible
#878: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:818:
+^I^I^I^I         intel_cx0_get_pclk_refclk_ack(lane),$

-:879: ERROR:CODE_INDENT: code indent should use tabs where possible
#879: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:819:
+^I^I^I^I         XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))$

-:949: ERROR:CODE_INDENT: code indent should use tabs where possible
#949: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:889:
+                        }$

-:949: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#949: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:889:
+                        }$

-:972: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#972: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:912:
+			      C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);

-:1054: ERROR:CODE_INDENT: code indent should use tabs where possible
#1054: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:994:
+^I^I^I^I         intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),$

-:1054: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1054: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:994:
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				         intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),

-:1055: ERROR:CODE_INDENT: code indent should use tabs where possible
#1055: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:995:
+^I^I^I^I         intel_cx0_get_pclk_pll_ack(maxpclk_lane),$

-:1056: ERROR:CODE_INDENT: code indent should use tabs where possible
#1056: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:996:
+^I^I^I^I         XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))$

-:1105: ERROR:CODE_INDENT: code indent should use tabs where possible
#1105: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1045:
+^I^I^I^I         intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |$

-:1105: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1105: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1045:
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				         intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |

-:1106: ERROR:CODE_INDENT: code indent should use tabs where possible
#1106: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1046:
+^I^I^I^I         intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,$

-:1107: ERROR:CODE_INDENT: code indent should use tabs where possible
#1107: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:1047:
+^I^I^I^I         XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))$

-:1187: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_cx0_phy.h', please use '/*' instead
#1187: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:1:
+// SPDX-License-Identifier: MIT

-:1187: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#1187: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.h:1:
+// SPDX-License-Identifier: MIT

-:1299: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#1299: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3519:
+	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->c10mpllb_state);

-:1490: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__n' - possible side-effects?
#1490: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:33:
+#define REG_BIT8(__n)                                                   \
+	((u8)(BIT(__n) +                                                \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
+				 ((__n) < 0 || (__n) > 7))))

-:1511: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__high' - possible side-effects?
#1511: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:77:
+#define REG_GENMASK8(__high, __low)                                     \
+	((u8)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))

-:1511: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__low' - possible side-effects?
#1511: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:77:
+#define REG_GENMASK8(__high, __low)                                     \
+	((u8)(GENMASK(__high, __low) +                                  \
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
+				 __is_constexpr(__low) &&               \
+				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))

-:1534: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#1534: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:115:
+#define REG_FIELD_PREP8(__mask, __val)                                          \
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:1534: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__val' - possible side-effects?
#1534: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:115:
+#define REG_FIELD_PREP8(__mask, __val)                                          \
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

-:1539: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1539: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:120:
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))

total: 23 errors, 21 warnings, 26 checks, 1443 lines checked
c83906b988d6 drm/i915/mtl: Add C10 phy programming for HDMI
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
v3: Add missing use_hdmi checks from Clint's HDMI implementation changes (Ankit)

-:167: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#167: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:615:
+	.pll[0]=0x34,
 	       ^

-:168: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#168: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:616:
+	.pll[1]=0x00,
 	       ^

-:169: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#169: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:617:
+	.pll[2]=0xB0,
 	       ^

-:170: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#170: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:618:
+	.pll[3]=0x00,
 	       ^

-:171: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#171: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:619:
+	.pll[4]=0x00,
 	       ^

-:172: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#172: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:620:
+	.pll[5]=0x00,
 	       ^

-:173: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#173: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:621:
+	.pll[6]=0x00,
 	       ^

-:174: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#174: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:622:
+	.pll[7]=0x00,
 	       ^

-:175: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#175: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:623:
+	.pll[8]=0x20,
 	       ^

-:176: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#176: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:624:
+	.pll[9]=0xFF,
 	       ^

-:177: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#177: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:625:
+	.pll[10]=0xFF,
 	        ^

-:178: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#178: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:626:
+	.pll[11]=0x55,
 	        ^

-:179: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#179: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:627:
+	.pll[12]=0xE5,
 	        ^

-:180: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#180: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:628:
+	.pll[13]=0x55,
 	        ^

-:181: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#181: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:629:
+	.pll[14]=0x55,
 	        ^

-:182: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#182: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:630:
+	.pll[15]=0x0D,
 	        ^

-:183: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#183: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:631:
+	.pll[16]=0x09,
 	        ^

-:184: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#184: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:632:
+	.pll[17]=0x8F,
 	        ^

-:185: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#185: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:633:
+	.pll[18]=0x84,
 	        ^

-:186: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#186: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:634:
+	.pll[19]=0x23,
 	        ^

-:191: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:639:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:191: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:639:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:191: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:639:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:191: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:639:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:191: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:639:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xC0, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:192: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:640:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:192: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:640:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:192: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:640:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:192: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:640:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:192: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#192: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:640:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:193: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#193: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	        ^

-:193: ERROR:SPACING: space required after that ',' (ctx:VxV)
#193: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	             ^

-:193: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#193: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                      ^

-:193: ERROR:SPACING: space required after that ',' (ctx:VxV)
#193: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                           ^

-:193: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#193: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                                    ^

-:193: ERROR:SPACING: space required after that ',' (ctx:VxV)
#193: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                                         ^

-:193: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#193: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                                                  ^

-:193: ERROR:SPACING: space required after that ',' (ctx:VxV)
#193: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                                                       ^

-:193: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#193: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:641:
+	.pll[10]=0xFF,.pll[11]=0xCC,.pll[12]=0x9C,.pll[13]=0xCB,.pll[14]=0xCC,
 	                                                                ^

-:194: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#194: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:194: ERROR:SPACING: space required after that ',' (ctx:VxV)
#194: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:194: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#194: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:194: ERROR:SPACING: space required after that ',' (ctx:VxV)
#194: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:194: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#194: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:194: ERROR:SPACING: space required after that ',' (ctx:VxV)
#194: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:194: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#194: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:194: ERROR:SPACING: space required after that ',' (ctx:VxV)
#194: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:194: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#194: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:642:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:199: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:647:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xCC, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:199: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:647:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xCC, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:199: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:647:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xCC, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:199: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:647:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xCC, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:199: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#199: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:647:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xCC, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:200: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:648:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:200: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:648:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:200: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:648:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:200: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:648:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:200: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:648:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:201: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#201: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	        ^

-:201: ERROR:SPACING: space required after that ',' (ctx:VxV)
#201: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	             ^

-:201: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#201: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                      ^

-:201: ERROR:SPACING: space required after that ',' (ctx:VxV)
#201: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                           ^

-:201: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#201: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                    ^

-:201: ERROR:SPACING: space required after that ',' (ctx:VxV)
#201: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                         ^

-:201: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#201: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                  ^

-:201: ERROR:SPACING: space required after that ',' (ctx:VxV)
#201: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                       ^

-:201: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#201: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:649:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                                ^

-:202: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#202: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:202: ERROR:SPACING: space required after that ',' (ctx:VxV)
#202: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:202: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#202: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:202: ERROR:SPACING: space required after that ',' (ctx:VxV)
#202: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:202: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#202: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:202: ERROR:SPACING: space required after that ',' (ctx:VxV)
#202: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:202: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#202: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:202: ERROR:SPACING: space required after that ',' (ctx:VxV)
#202: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:202: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#202: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:650:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:207: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:655:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xDC, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:207: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:655:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xDC, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:207: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:655:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xDC, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:207: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:655:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xDC, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:207: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#207: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:655:
+	.pll[0]=0x04, .pll[1]=0x00, .pll[2]=0xDC, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:208: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:656:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:208: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:656:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:208: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:656:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:208: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:656:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:208: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#208: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:656:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:209: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#209: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	        ^

-:209: ERROR:SPACING: space required after that ',' (ctx:VxV)
#209: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	             ^

-:209: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#209: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                      ^

-:209: ERROR:SPACING: space required after that ',' (ctx:VxV)
#209: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                           ^

-:209: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#209: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                    ^

-:209: ERROR:SPACING: space required after that ',' (ctx:VxV)
#209: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                         ^

-:209: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#209: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                  ^

-:209: ERROR:SPACING: space required after that ',' (ctx:VxV)
#209: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                       ^

-:209: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#209: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:657:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                                ^

-:210: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#210: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:210: ERROR:SPACING: space required after that ',' (ctx:VxV)
#210: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:210: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#210: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:210: ERROR:SPACING: space required after that ',' (ctx:VxV)
#210: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:210: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#210: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:210: ERROR:SPACING: space required after that ',' (ctx:VxV)
#210: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:210: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#210: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:210: ERROR:SPACING: space required after that ',' (ctx:VxV)
#210: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:210: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#210: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:658:
+	.pll[15]=0x0D,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:215: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:663:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x62, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:215: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:663:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x62, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:215: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:663:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x62, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:215: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:663:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x62, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:215: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#215: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:663:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x62, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:216: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:664:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:216: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:664:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:216: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:664:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:216: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:664:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:216: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#216: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:664:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:217: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#217: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	        ^

-:217: ERROR:SPACING: space required after that ',' (ctx:VxV)
#217: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	             ^

-:217: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#217: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                      ^

-:217: ERROR:SPACING: space required after that ',' (ctx:VxV)
#217: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                           ^

-:217: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#217: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                                    ^

-:217: ERROR:SPACING: space required after that ',' (ctx:VxV)
#217: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                                         ^

-:217: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#217: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                                                  ^

-:217: ERROR:SPACING: space required after that ',' (ctx:VxV)
#217: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                                                       ^

-:217: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#217: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:665:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0xA0,.pll[13]=0x00,.pll[14]=0x00,
 	                                                                ^

-:218: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#218: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:218: ERROR:SPACING: space required after that ',' (ctx:VxV)
#218: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:218: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#218: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:218: ERROR:SPACING: space required after that ',' (ctx:VxV)
#218: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:218: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#218: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:218: ERROR:SPACING: space required after that ',' (ctx:VxV)
#218: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:218: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#218: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:218: ERROR:SPACING: space required after that ',' (ctx:VxV)
#218: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:218: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#218: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:666:
+	.pll[15]=0x0C,.pll[16]=0x09,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:223: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:671:
+	.pll[0]=0xC4, .pll[1]=0x00, .pll[2]=0x76, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:223: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:671:
+	.pll[0]=0xC4, .pll[1]=0x00, .pll[2]=0x76, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:223: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:671:
+	.pll[0]=0xC4, .pll[1]=0x00, .pll[2]=0x76, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:223: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:671:
+	.pll[0]=0xC4, .pll[1]=0x00, .pll[2]=0x76, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:223: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#223: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:671:
+	.pll[0]=0xC4, .pll[1]=0x00, .pll[2]=0x76, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:224: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:672:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:224: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:672:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:224: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:672:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:224: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:672:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:224: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#224: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:672:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:225: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#225: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	        ^

-:225: ERROR:SPACING: space required after that ',' (ctx:VxV)
#225: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	             ^

-:225: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#225: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                      ^

-:225: ERROR:SPACING: space required after that ',' (ctx:VxV)
#225: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                           ^

-:225: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#225: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                    ^

-:225: ERROR:SPACING: space required after that ',' (ctx:VxV)
#225: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                         ^

-:225: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#225: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                  ^

-:225: ERROR:SPACING: space required after that ',' (ctx:VxV)
#225: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                       ^

-:225: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#225: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:673:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x00,.pll[13]=0x00,.pll[14]=0x00,
 	                                                                ^

-:226: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#226: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:226: ERROR:SPACING: space required after that ',' (ctx:VxV)
#226: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:226: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#226: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:226: ERROR:SPACING: space required after that ',' (ctx:VxV)
#226: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:226: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#226: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:226: ERROR:SPACING: space required after that ',' (ctx:VxV)
#226: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:226: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#226: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:226: ERROR:SPACING: space required after that ',' (ctx:VxV)
#226: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:226: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#226: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:674:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:231: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:679:
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:231: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:679:
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:231: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:679:
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:231: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:679:
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:231: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#231: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:679:
+	.pll[0]=0xB4, .pll[1]=0x00, .pll[2]=0x86, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:232: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:680:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:232: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:680:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:232: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:680:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:232: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:680:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:232: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:680:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:233: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#233: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	        ^

-:233: ERROR:SPACING: space required after that ',' (ctx:VxV)
#233: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	             ^

-:233: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#233: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                      ^

-:233: ERROR:SPACING: space required after that ',' (ctx:VxV)
#233: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                           ^

-:233: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#233: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                                    ^

-:233: ERROR:SPACING: space required after that ',' (ctx:VxV)
#233: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                                         ^

-:233: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#233: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                                                  ^

-:233: ERROR:SPACING: space required after that ',' (ctx:VxV)
#233: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                                                       ^

-:233: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#233: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:681:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0x55,.pll[13]=0x55,.pll[14]=0x55,
 	                                                                ^

-:234: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#234: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:234: ERROR:SPACING: space required after that ',' (ctx:VxV)
#234: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:234: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#234: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:234: ERROR:SPACING: space required after that ',' (ctx:VxV)
#234: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:234: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#234: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:234: ERROR:SPACING: space required after that ',' (ctx:VxV)
#234: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:234: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#234: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:234: ERROR:SPACING: space required after that ',' (ctx:VxV)
#234: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:234: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#234: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:682:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:239: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:687:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:239: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:687:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:239: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:687:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:239: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:687:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:239: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#239: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:687:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xAE, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:240: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:688:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:240: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:688:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:240: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:688:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:240: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:688:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:240: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#240: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:688:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:241: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#241: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	        ^

-:241: ERROR:SPACING: space required after that ',' (ctx:VxV)
#241: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	             ^

-:241: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#241: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                      ^

-:241: ERROR:SPACING: space required after that ',' (ctx:VxV)
#241: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                           ^

-:241: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#241: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                                    ^

-:241: ERROR:SPACING: space required after that ',' (ctx:VxV)
#241: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                                         ^

-:241: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#241: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                                                  ^

-:241: ERROR:SPACING: space required after that ',' (ctx:VxV)
#241: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                                                       ^

-:241: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#241: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:689:
+	.pll[10]=0xFF,.pll[11]=0x00,.pll[12]=0x20,.pll[13]=0x00,.pll[14]=0x00,
 	                                                                ^

-:242: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#242: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:242: ERROR:SPACING: space required after that ',' (ctx:VxV)
#242: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:242: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#242: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:242: ERROR:SPACING: space required after that ',' (ctx:VxV)
#242: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:242: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#242: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:242: ERROR:SPACING: space required after that ',' (ctx:VxV)
#242: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:242: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#242: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:242: ERROR:SPACING: space required after that ',' (ctx:VxV)
#242: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:242: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#242: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:690:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:247: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:695:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xB0, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:247: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:695:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xB0, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:247: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:695:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xB0, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:247: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:695:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xB0, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:247: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#247: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:695:
+	.pll[0]=0x74, .pll[1]=0x00, .pll[2]=0xB0, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:248: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:696:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:248: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:696:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:248: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:696:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:248: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:696:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:248: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:696:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:249: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#249: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	        ^

-:249: ERROR:SPACING: space required after that ',' (ctx:VxV)
#249: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	             ^

-:249: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#249: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                      ^

-:249: ERROR:SPACING: space required after that ',' (ctx:VxV)
#249: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                           ^

-:249: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#249: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                                    ^

-:249: ERROR:SPACING: space required after that ',' (ctx:VxV)
#249: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                                         ^

-:249: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#249: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                                                  ^

-:249: ERROR:SPACING: space required after that ',' (ctx:VxV)
#249: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                                                       ^

-:249: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#249: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:697:
+	.pll[10]=0xFF,.pll[11]=0xAA,.pll[12]=0x2A,.pll[13]=0xA9,.pll[14]=0xAA,
 	                                                                ^

-:250: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#250: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:250: ERROR:SPACING: space required after that ',' (ctx:VxV)
#250: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:250: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#250: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:250: ERROR:SPACING: space required after that ',' (ctx:VxV)
#250: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:250: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#250: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:250: ERROR:SPACING: space required after that ',' (ctx:VxV)
#250: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:250: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#250: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:250: ERROR:SPACING: space required after that ',' (ctx:VxV)
#250: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:250: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#250: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:698:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:255: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:703:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xCE, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:255: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:703:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xCE, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:255: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:703:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xCE, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:255: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:703:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xCE, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:255: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:703:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xCE, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:256: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:704:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:256: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:704:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:256: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:704:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:256: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:704:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:256: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:704:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:257: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#257: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	        ^

-:257: ERROR:SPACING: space required after that ',' (ctx:VxV)
#257: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	             ^

-:257: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#257: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                      ^

-:257: ERROR:SPACING: space required after that ',' (ctx:VxV)
#257: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                           ^

-:257: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#257: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                                    ^

-:257: ERROR:SPACING: space required after that ',' (ctx:VxV)
#257: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                                         ^

-:257: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#257: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                                                  ^

-:257: ERROR:SPACING: space required after that ',' (ctx:VxV)
#257: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                                                       ^

-:257: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#257: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:705:
+	.pll[10]=0xFF,.pll[11]=0x77,.pll[12]=0x57,.pll[13]=0x77,.pll[14]=0x77,
 	                                                                ^

-:258: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#258: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:258: ERROR:SPACING: space required after that ',' (ctx:VxV)
#258: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:258: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#258: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:258: ERROR:SPACING: space required after that ',' (ctx:VxV)
#258: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:258: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#258: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:258: ERROR:SPACING: space required after that ',' (ctx:VxV)
#258: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:258: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#258: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:258: ERROR:SPACING: space required after that ',' (ctx:VxV)
#258: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:258: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#258: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:706:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0x8F,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:263: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:711:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:263: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:711:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:263: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:711:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:263: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:711:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:263: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#263: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:711:
+	.pll[0]=0x34, .pll[1]=0x00, .pll[2]=0xD0, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:264: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:712:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:264: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:712:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:264: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:712:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:264: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:712:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:264: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#264: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:712:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:265: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#265: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	        ^

-:265: ERROR:SPACING: space required after that ',' (ctx:VxV)
#265: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	             ^

-:265: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#265: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                      ^

-:265: ERROR:SPACING: space required after that ',' (ctx:VxV)
#265: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                           ^

-:265: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#265: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                                    ^

-:265: ERROR:SPACING: space required after that ',' (ctx:VxV)
#265: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                                         ^

-:265: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#265: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                  ^

-:265: ERROR:SPACING: space required after that ',' (ctx:VxV)
#265: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                       ^

-:265: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#265: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:713:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xD5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                                ^

-:266: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#266: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:266: ERROR:SPACING: space required after that ',' (ctx:VxV)
#266: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:266: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#266: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:266: ERROR:SPACING: space required after that ',' (ctx:VxV)
#266: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:266: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#266: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:266: ERROR:SPACING: space required after that ',' (ctx:VxV)
#266: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:266: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#266: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:266: ERROR:SPACING: space required after that ',' (ctx:VxV)
#266: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:266: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#266: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:714:
+	.pll[15]=0x0C,.pll[16]=0x08,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:271: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:719:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x66, .pll[3]=0x00, .pll[4]=0x00,
 	       ^

-:271: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:719:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x66, .pll[3]=0x00, .pll[4]=0x00,
 	                     ^

-:271: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:719:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x66, .pll[3]=0x00, .pll[4]=0x00,
 	                                   ^

-:271: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:719:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x66, .pll[3]=0x00, .pll[4]=0x00,
 	                                                 ^

-:271: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#271: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:719:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x66, .pll[3]=0x00, .pll[4]=0x00,
 	                                                               ^

-:272: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:720:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	       ^

-:272: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:720:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                     ^

-:272: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:720:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                   ^

-:272: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:720:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                 ^

-:272: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#272: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:720:
+	.pll[5]=0x00, .pll[6]=0x00, .pll[7]=0x00, .pll[8]=0x20, .pll[9]=0xFF,
 	                                                               ^

-:273: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#273: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	        ^

-:273: ERROR:SPACING: space required after that ',' (ctx:VxV)
#273: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	             ^

-:273: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#273: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                      ^

-:273: ERROR:SPACING: space required after that ',' (ctx:VxV)
#273: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                           ^

-:273: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#273: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                                    ^

-:273: ERROR:SPACING: space required after that ',' (ctx:VxV)
#273: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                                         ^

-:273: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#273: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                  ^

-:273: ERROR:SPACING: space required after that ',' (ctx:VxV)
#273: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                       ^

-:273: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#273: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:721:
+	.pll[10]=0xFF,.pll[11]=0x55,.pll[12]=0xB5,.pll[13]=0x55,.pll[14]=0x55,
 	                                                                ^

-:274: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#274: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	        ^

-:274: ERROR:SPACING: space required after that ',' (ctx:VxV)
#274: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	             ^

-:274: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#274: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                      ^

-:274: ERROR:SPACING: space required after that ',' (ctx:VxV)
#274: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                           ^

-:274: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#274: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                    ^

-:274: ERROR:SPACING: space required after that ',' (ctx:VxV)
#274: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                         ^

-:274: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#274: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                  ^

-:274: ERROR:SPACING: space required after that ',' (ctx:VxV)
#274: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                       ^

-:274: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#274: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:722:
+	.pll[15]=0x0B,.pll[16]=0x09,.pll[17]=0xCF,.pll[18]=0x84,.pll[19]=0x23,
 	                                                                ^

-:279: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#279: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:727:
+	.pll[0]=0xF4, .pll[1]=0x00, .pll[2]=0x72, .pll[3]=0x00, .pll[4]=0x00,


