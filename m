Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FED8AAD0C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 12:46:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A225210F607;
	Fri, 19 Apr 2024 10:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2642810F607;
 Fri, 19 Apr 2024 10:46:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dsi=3A_stop?=
 =?utf-8?q?_relying_on_implicit_dev=5Fpriv_variable_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Apr 2024 10:46:42 -0000
Message-ID: <171352360215.1520059.17840410572793483205@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1713520813.git.jani.nikula@intel.com>
In-Reply-To: <cover.1713520813.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dsi: stop relying on implicit dev_priv variable (rev2)
URL   : https://patchwork.freedesktop.org/series/132285/
State : warning

== Summary ==

Error: dim checkpatch failed
aa3c68d4f30e drm/i915/dsi: remove unused _MIPIA_AUTOPWG register definition
0ba6f1a20ef1 drm/i915/dsi: add VLV_ prefix to VLV only register macros
-:61: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:92:
+#define VLV_MIPI_TEARING_CTRL(port)		_MMIO_MIPI(port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
5b3d3c36152a drm/i915/dsi: unify connector/encoder type and name usage
-:255: CHECK:CAMELCASE: Avoid CamelCase: <SubPixelHorizontalRGB>
#255: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1991:
+	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB; /*XXX*/

total: 0 errors, 0 warnings, 1 checks, 264 lines checked
7367bc42c786 drm/i915/dsi: pass display to register macros instead of implicit variable
-:1107: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#1107: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:22:
+#define  BXT_MIPI_TRANS_HACTIVE(tc)		_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_HACTIVE, _BXT_MIPIC_TRANS_HACTIVE)

-:1115: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#1115: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:26:
+#define  BXT_MIPI_TRANS_VACTIVE(tc)		_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_VACTIVE, _BXT_MIPIC_TRANS_VACTIVE)

-:1123: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#1123: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:30:
+#define  BXT_MIPI_TRANS_VTOTAL(tc)		_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_VTOTAL, _BXT_MIPIC_TRANS_VTOTAL)

-:1136: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#1136: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:40:
+#define VLV_MIPI_PORT_CTRL(port)		_MMIO_MIPI(VLV_MIPI_BASE, port, _MIPIA_PORT_CTRL, _MIPIC_PORT_CTRL)

-:1144: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#1144: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:45:
+#define BXT_MIPI_PORT_CTRL(tc)			_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_PORT_CTRL, _BXT_MIPIC_PORT_CTRL)

-:1157: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#1157: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:89:
+#define VLV_MIPI_TEARING_CTRL(port)			_MMIO_MIPI(VLV_MIPI_BASE, port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)

-:1168: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#1168: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:97:
+#define MIPI_DEVICE_READY(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)

-:1184: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1184: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:107:
+#define MIPI_INTR_STAT(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INTR_STAT, _MIPIC_INTR_STAT)

-:1187: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#1187: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:110:
+#define MIPI_INTR_EN(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INTR_EN, _MIPIC_INTR_EN)

-:1200: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#1200: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:146:
+#define MIPI_DSI_FUNC_PRG(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)

-:1213: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#1213: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:169:
+#define MIPI_HS_TX_TIMEOUT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HS_TX_TIMEOUT, _MIPIC_HS_TX_TIMEOUT)

-:1221: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#1221: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:174:
+#define MIPI_LP_RX_TIMEOUT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_LP_RX_TIMEOUT, _MIPIC_LP_RX_TIMEOUT)

-:1229: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#1229: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:179:
+#define MIPI_TURN_AROUND_TIMEOUT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)

-:1237: WARNING:LONG_LINE: line length of 144 exceeds 100 columns
#1237: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:184:
+#define MIPI_DEVICE_RESET_TIMER(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)

-:1245: WARNING:LONG_LINE: line length of 136 exceeds 100 columns
#1245: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:189:
+#define MIPI_DPI_RESOLUTION(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)

-:1256: WARNING:LONG_LINE: line length of 142 exceeds 100 columns
#1256: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:197:
+#define MIPI_DBI_FIFO_THROTTLE(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)

-:1267: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#1267: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:205:
+#define MIPI_HSYNC_PADDING_COUNT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HSYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)

-:1274: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1274: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:209:
+#define MIPI_HBP_COUNT(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HBP_COUNT, _MIPIC_HBP_COUNT)

-:1281: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1281: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:213:
+#define MIPI_HFP_COUNT(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HFP_COUNT, _MIPIC_HFP_COUNT)

-:1288: WARNING:LONG_LINE: line length of 144 exceeds 100 columns
#1288: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:217:
+#define MIPI_HACTIVE_AREA_COUNT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HACTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)

-:1295: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#1295: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:221:
+#define MIPI_VSYNC_PADDING_COUNT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_VSYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)

-:1302: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1302: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:225:
+#define MIPI_VBP_COUNT(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_VBP_COUNT, _MIPIC_VBP_COUNT)

-:1309: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1309: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:229:
+#define MIPI_VFP_COUNT(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_VFP_COUNT, _MIPIC_VFP_COUNT)

-:1316: WARNING:LONG_LINE: line length of 163 exceeds 100 columns
#1316: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:233:
+#define MIPI_HIGH_LOW_SWITCH_COUNT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port,	_MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)

-:1323: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1323: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:237:
+#define MIPI_DPI_CONTROL(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DPI_CONTROL, _MIPIC_DPI_CONTROL)

-:1336: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#1336: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:248:
+#define MIPI_DPI_DATA(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DPI_DATA, _MIPIC_DPI_DATA)

-:1345: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1345: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:254:
+#define MIPI_INIT_COUNT(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INIT_COUNT, _MIPIC_INIT_COUNT)

-:1355: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#1355: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:260:
+#define MIPI_MAX_RETURN_PKT_SIZE(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PKT_SIZE)

-:1364: WARNING:LONG_LINE: line length of 142 exceeds 100 columns
#1364: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:266:
+#define MIPI_VIDEO_MODE_FORMAT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_VIDEO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT)

-:1377: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1377: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:276:
+#define MIPI_EOT_DISABLE(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_EOT_DISABLE, _MIPIC_EOT_DISABLE)

-:1390: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1390: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:290:
+#define MIPI_LP_BYTECLK(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_LP_BYTECLK, _MIPIC_LP_BYTECLK)

-:1399: WARNING:LONG_LINE: line length of 139 exceeds 100 columns
#1399: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:296:
+#define MIPI_TLPX_TIME_COUNT(display, port)	 _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_TLPX_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)

-:1406: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#1406: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:300:
+#define MIPI_CLK_LANE_TIMING(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_CLK_LANE_TIMING, _MIPIC_CLK_LANE_TIMING)

-:1414: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1414: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:305:
+#define MIPI_LP_GEN_DATA(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_LP_GEN_DATA, _MIPIC_LP_GEN_DATA)

-:1429: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1429: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:310:
+#define MIPI_HS_GEN_DATA(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HS_GEN_DATA, _MIPIC_HS_GEN_DATA)

-:1433: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1433: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:314:
+#define MIPI_LP_GEN_CTRL(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_LP_GEN_CTRL, _MIPIC_LP_GEN_CTRL)

-:1436: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1436: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:317:
+#define MIPI_HS_GEN_CTRL(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HS_GEN_CTRL, _MIPIC_HS_GEN_CTRL)

-:1449: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#1449: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:330:
+#define MIPI_GEN_FIFO_STAT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_GEN_FIFO_STAT, _MIPIC_GEN_FIFO_STAT)

-:1462: WARNING:LONG_LINE: line length of 140 exceeds 100 columns
#1462: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:348:
+#define MIPI_HS_LP_DBI_ENABLE(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)

-:1472: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1472: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:355:
+#define MIPI_DPHY_PARAM(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DPHY_PARAM, _MIPIC_DPHY_PARAM)

-:1485: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1485: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:367:
+#define MIPI_DBI_BW_CTRL(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DBI_BW_CTRL, _MIPIC_DBI_BW_CTRL)

-:1492: WARNING:LONG_LINE: line length of 164 exceeds 100 columns
#1492: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:371:
+#define MIPI_CLK_LANE_SWITCH_TIME_CNT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)

-:1503: WARNING:LONG_LINE: line length of 140 exceeds 100 columns
#1503: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:379:
+#define MIPI_STOP_STATE_STALL(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)

-:1515: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#1515: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:385:
+#define MIPI_INTR_STAT_REG_1(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)

-:1518: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#1518: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:388:
+#define MIPI_INTR_EN_REG_1(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INTR_EN_REG_1, _MIPIC_INTR_EN_REG_1)

-:1536: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#1536: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:407:
+#define MIPI_CTRL(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_CTRL, _MIPIC_CTRL)

-:1549: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#1549: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:440:
+#define MIPI_DATA_ADDRESS(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DATA_ADDRESS, _MIPIC_DATA_ADDRESS)

-:1559: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1559: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:447:
+#define MIPI_DATA_LENGTH(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DATA_LENGTH, _MIPIC_DATA_LENGTH)

-:1568: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#1568: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:453:
+#define MIPI_COMMAND_ADDRESS(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)

-:1580: WARNING:LONG_LINE: line length of 136 exceeds 100 columns
#1580: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:462:
+#define MIPI_COMMAND_LENGTH(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)

-:1589: WARNING:LONG_LINE: line length of 167 exceeds 100 columns
#1589: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:468:
+#define MIPI_READ_DATA_RETURN(display, port, n)	_MMIO_MIPI(_MIPI_MMIO_BASE(display) + 4 * (n), port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_DATA_RETURN0) /* n: 0...7 */

-:1596: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#1596: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:472:
+#define MIPI_READ_DATA_VALID(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)

total: 0 errors, 52 warnings, 0 checks, 1502 lines checked


