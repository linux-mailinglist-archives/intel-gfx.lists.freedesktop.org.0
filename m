Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6882A61ECA0
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 09:09:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D1910E0D8;
	Mon,  7 Nov 2022 08:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0420910E0E9;
 Mon,  7 Nov 2022 08:09:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F0044AADD2;
 Mon,  7 Nov 2022 08:09:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Mon, 07 Nov 2022 08:09:40 -0000
Message-ID: <166780858094.17762.7888067403370524909@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221107072045.628895-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221107072045.628895-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_HDMI2=2E1_FRL?=
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

Series: Add support for HDMI2.1 FRL
URL   : https://patchwork.freedesktop.org/series/110577/
State : warning

== Summary ==

Error: dim checkpatch failed
068807bca411 drm/edid: Add helper to get max FRL rate for an HDMI sink
bb162c36edc1 drm/i915/dp: Use the drm helpers for getting max FRL rate
8504f1bfa097 drm/i915/mtl: Create separate reg file for PICA registers
-:16: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#16: 
new file mode 100644

-:21: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h', please use '/*' instead
#21: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:1:
+// SPDX-License-Identifier: MIT

-:21: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#21: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:1:
+// SPDX-License-Identifier: MIT

-:36: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:16:
+							 [PORT_A] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \

-:37: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#37: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:17:
+							 [PORT_B] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \

-:38: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:18:
+							 [PORT_TC1] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \

-:39: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:19:
+							 [PORT_TC2] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2, \

-:40: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:20:
+							 [PORT_TC3] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3, \

-:41: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:21:
+							 [PORT_TC4] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4) + ((lane) * 4))

-:43: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:23:
+#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))

-:46: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:26:
+#define  XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)

-:47: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:27:
+#define  XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)

-:48: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:28:
+#define  XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)

-:50: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:30:
+#define  XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)

-:53: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:33:
+#define  XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)

-:55: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#55: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:35:
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane) + 8)

-:61: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:41:
+#define  XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)

-:83: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#83: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:63:
+							 [PORT_TC1] = _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \

-:84: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:64:
+							 [PORT_TC2] = _XELPDP_PORT_BUF_CTL1_LN0_USBC2, \

-:85: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#85: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:65:
+							 [PORT_TC3] = _XELPDP_PORT_BUF_CTL1_LN0_USBC3, \

-:86: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#86: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:66:
+							 [PORT_TC4] = _XELPDP_PORT_BUF_CTL1_LN0_USBC4))

-:106: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#106: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:86:
+#define  XELPDP_LANE0_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)

-:108: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#108: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:88:
+#define  XELPDP_LANE1_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)

-:110: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#110: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:90:
+#define  XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)

-:114: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:94:
+#define  XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)

-:116: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#116: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:96:
+#define  XELPDP_POWER_STATE_ACTIVE(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)

-:143: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#143: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:123:
+#define XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)

total: 0 errors, 27 warnings, 0 checks, 136 lines checked
94f0db6d252a drm/i915/hdmi21/mtl: Parse frl max link rate from vbt
6b09afdc9452 drm/i915/hdmi21/mtl: Add new data members for FRL configuration
8792b25350a4 drm/drm_scdc_helper: Add SCDC helper funcs for HDMI2.1
809e181a944b drm/i915/mtl: Add registers for FRL Link Training
-:26: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/i915_reg.h:2132:
+#define TRANS_HDMI_R_B_SCHED_ENABLE(val)	REG_FIELD_PREP(TRANS_HDMI_R_B_SCHED_ENABLE_MASK, val)

-:28: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#28: FILE: drivers/gpu/drm/i915/i915_reg.h:2134:
+#define TRANS_HDMI_ACTIVE_CHAR_BUF_THRESH(val)	REG_FIELD_PREP(TRANS_HDMI_ACTIVE_CHAR_BUF_THRESH_MASK, val)

-:33: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/i915_reg.h:2139:
+#define TRANS_HDMI_FRL_PKT_PAYLOAD_MAX(val)	REG_FIELD_PREP(TRANS_HDMI_FRL_PKT_PAYLOAD_MAX_MASK, val)

total: 0 errors, 3 warnings, 0 checks, 28 lines checked
aea5c8a917a0 drm/i915/mtl: Add HDMI2.1 bits in PORT_BUF_CTL_1
-:25: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:74:
+#define  XELPDP_PORT_BUF_PORT_DATA_10BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 0)

-:26: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:75:
+#define  XELPDP_PORT_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 1)

-:27: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h:76:
+#define  XELPDP_PORT_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 2)

total: 0 errors, 3 warnings, 0 checks, 22 lines checked
3cf8e03815e3 drm/i915/mtl: Add port_data/data width for TRANS_DDI_FUNC and DDI_BUF_CTL
d421617ebc54 drm/i915/display/mtl: Add new members in crtc_state for FRL configuration
e559fd769089 drm/i915/display/mtl: Update Transcoder/DDI registers with the frl bits
825485372384 drm/i915/display/mtl: Reset FRL Transcoder config while disabling HDMI
47b5ac6c9b4c drm/i915/hdmi21/mtl: Enable Scrambling only for FRL mode
7cee286f5d70 drm/i915/hdmi21/mtl: Add support for sending uevent to user for FRL training failure
a20d9cc1039f drm/i915/display/mtl: Add functions for FRL trainining state machine
-:253: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#253: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:3508:
+#define done ((status = intel_hdmi_train_lanes(encoder, crtc_state, ffe_level)) != FRL_TRAIN_CONTINUE)

total: 0 errors, 1 warnings, 0 checks, 401 lines checked


