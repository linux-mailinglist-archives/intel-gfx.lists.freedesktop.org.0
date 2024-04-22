Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C728AD932
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 01:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F5310F917;
	Mon, 22 Apr 2024 23:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87BCE10F917;
 Mon, 22 Apr 2024 23:33:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dsi=3A_stop?=
 =?utf-8?q?_relying_on_implicit_dev=5Fpriv_variable_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Apr 2024 23:33:14 -0000
Message-ID: <171382879455.1570262.3293586484296462502@8e613ede5ea5>
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

Series: drm/i915/dsi: stop relying on implicit dev_priv variable (rev3)
URL   : https://patchwork.freedesktop.org/series/132285/
State : warning

== Summary ==

Error: dim checkpatch failed
1c60cb4f5f7a drm/i915/dsi: remove unused _MIPIA_AUTOPWG register definition
0b6d2dbcdd06 drm/i915/dsi: add VLV_ prefix to VLV only register macros
-:62: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#62: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:92:
+#define VLV_MIPI_TEARING_CTRL(port)		_MMIO_MIPI(port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
2567d11c3d9f drm/i915/dsi: unify connector/encoder type and name usage
-:256: CHECK:CAMELCASE: Avoid CamelCase: <SubPixelHorizontalRGB>
#256: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1991:
+	connector->base.display_info.subpixel_order = SubPixelHorizontalRGB; /*XXX*/

total: 0 errors, 0 warnings, 1 checks, 264 lines checked
832d9b2447e5 drm/i915/dsi: pass display to register macros instead of implicit variable
-:1108: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#1108: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:22:
+#define  BXT_MIPI_TRANS_HACTIVE(tc)		_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_HACTIVE, _BXT_MIPIC_TRANS_HACTIVE)

-:1116: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#1116: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:26:
+#define  BXT_MIPI_TRANS_VACTIVE(tc)		_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_VACTIVE, _BXT_MIPIC_TRANS_VACTIVE)

-:1124: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#1124: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:30:
+#define  BXT_MIPI_TRANS_VTOTAL(tc)		_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_VTOTAL, _BXT_MIPIC_TRANS_VTOTAL)

-:1137: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#1137: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:40:
+#define VLV_MIPI_PORT_CTRL(port)		_MMIO_MIPI(VLV_MIPI_BASE, port, _MIPIA_PORT_CTRL, _MIPIC_PORT_CTRL)

-:1145: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#1145: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:45:
+#define BXT_MIPI_PORT_CTRL(tc)			_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_PORT_CTRL, _BXT_MIPIC_PORT_CTRL)

-:1158: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#1158: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:89:
+#define VLV_MIPI_TEARING_CTRL(port)			_MMIO_MIPI(VLV_MIPI_BASE, port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)

-:1169: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#1169: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:97:
+#define MIPI_DEVICE_READY(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)

-:1185: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1185: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:107:
+#define MIPI_INTR_STAT(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INTR_STAT, _MIPIC_INTR_STAT)

-:1188: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#1188: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:110:
+#define MIPI_INTR_EN(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INTR_EN, _MIPIC_INTR_EN)

-:1201: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#1201: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:146:
+#define MIPI_DSI_FUNC_PRG(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)

-:1214: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#1214: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:169:
+#define MIPI_HS_TX_TIMEOUT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HS_TX_TIMEOUT, _MIPIC_HS_TX_TIMEOUT)

-:1222: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#1222: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:174:
+#define MIPI_LP_RX_TIMEOUT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_LP_RX_TIMEOUT, _MIPIC_LP_RX_TIMEOUT)

-:1230: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#1230: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:179:
+#define MIPI_TURN_AROUND_TIMEOUT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)

-:1238: WARNING:LONG_LINE: line length of 144 exceeds 100 columns
#1238: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:184:
+#define MIPI_DEVICE_RESET_TIMER(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)

-:1246: WARNING:LONG_LINE: line length of 136 exceeds 100 columns
#1246: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:189:
+#define MIPI_DPI_RESOLUTION(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)

-:1257: WARNING:LONG_LINE: line length of 142 exceeds 100 columns
#1257: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:197:
+#define MIPI_DBI_FIFO_THROTTLE(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)

-:1268: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#1268: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:205:
+#define MIPI_HSYNC_PADDING_COUNT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HSYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)

-:1275: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1275: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:209:
+#define MIPI_HBP_COUNT(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HBP_COUNT, _MIPIC_HBP_COUNT)

-:1282: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1282: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:213:
+#define MIPI_HFP_COUNT(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HFP_COUNT, _MIPIC_HFP_COUNT)

-:1289: WARNING:LONG_LINE: line length of 144 exceeds 100 columns
#1289: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:217:
+#define MIPI_HACTIVE_AREA_COUNT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HACTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)

-:1296: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#1296: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:221:
+#define MIPI_VSYNC_PADDING_COUNT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_VSYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)

-:1303: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1303: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:225:
+#define MIPI_VBP_COUNT(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_VBP_COUNT, _MIPIC_VBP_COUNT)

-:1310: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#1310: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:229:
+#define MIPI_VFP_COUNT(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_VFP_COUNT, _MIPIC_VFP_COUNT)

-:1317: WARNING:LONG_LINE: line length of 163 exceeds 100 columns
#1317: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:233:
+#define MIPI_HIGH_LOW_SWITCH_COUNT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port,	_MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)

-:1324: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1324: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:237:
+#define MIPI_DPI_CONTROL(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DPI_CONTROL, _MIPIC_DPI_CONTROL)

-:1337: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#1337: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:248:
+#define MIPI_DPI_DATA(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DPI_DATA, _MIPIC_DPI_DATA)

-:1346: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1346: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:254:
+#define MIPI_INIT_COUNT(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INIT_COUNT, _MIPIC_INIT_COUNT)

-:1356: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#1356: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:260:
+#define MIPI_MAX_RETURN_PKT_SIZE(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PKT_SIZE)

-:1365: WARNING:LONG_LINE: line length of 142 exceeds 100 columns
#1365: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:266:
+#define MIPI_VIDEO_MODE_FORMAT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_VIDEO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT)

-:1378: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1378: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:276:
+#define MIPI_EOT_DISABLE(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_EOT_DISABLE, _MIPIC_EOT_DISABLE)

-:1391: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1391: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:290:
+#define MIPI_LP_BYTECLK(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_LP_BYTECLK, _MIPIC_LP_BYTECLK)

-:1400: WARNING:LONG_LINE: line length of 139 exceeds 100 columns
#1400: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:296:
+#define MIPI_TLPX_TIME_COUNT(display, port)	 _MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_TLPX_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)

-:1407: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#1407: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:300:
+#define MIPI_CLK_LANE_TIMING(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_CLK_LANE_TIMING, _MIPIC_CLK_LANE_TIMING)

-:1415: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1415: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:305:
+#define MIPI_LP_GEN_DATA(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_LP_GEN_DATA, _MIPIC_LP_GEN_DATA)

-:1430: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1430: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:310:
+#define MIPI_HS_GEN_DATA(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HS_GEN_DATA, _MIPIC_HS_GEN_DATA)

-:1434: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1434: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:314:
+#define MIPI_LP_GEN_CTRL(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_LP_GEN_CTRL, _MIPIC_LP_GEN_CTRL)

-:1437: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1437: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:317:
+#define MIPI_HS_GEN_CTRL(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HS_GEN_CTRL, _MIPIC_HS_GEN_CTRL)

-:1450: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#1450: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:330:
+#define MIPI_GEN_FIFO_STAT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_GEN_FIFO_STAT, _MIPIC_GEN_FIFO_STAT)

-:1463: WARNING:LONG_LINE: line length of 140 exceeds 100 columns
#1463: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:348:
+#define MIPI_HS_LP_DBI_ENABLE(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)

-:1473: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#1473: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:355:
+#define MIPI_DPHY_PARAM(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DPHY_PARAM, _MIPIC_DPHY_PARAM)

-:1486: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1486: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:367:
+#define MIPI_DBI_BW_CTRL(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DBI_BW_CTRL, _MIPIC_DBI_BW_CTRL)

-:1493: WARNING:LONG_LINE: line length of 164 exceeds 100 columns
#1493: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:371:
+#define MIPI_CLK_LANE_SWITCH_TIME_CNT(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)

-:1504: WARNING:LONG_LINE: line length of 140 exceeds 100 columns
#1504: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:379:
+#define MIPI_STOP_STATE_STALL(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)

-:1516: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#1516: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:385:
+#define MIPI_INTR_STAT_REG_1(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)

-:1519: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#1519: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:388:
+#define MIPI_INTR_EN_REG_1(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_INTR_EN_REG_1, _MIPIC_INTR_EN_REG_1)

-:1537: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#1537: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:407:
+#define MIPI_CTRL(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_CTRL, _MIPIC_CTRL)

-:1550: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#1550: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:440:
+#define MIPI_DATA_ADDRESS(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DATA_ADDRESS, _MIPIC_DATA_ADDRESS)

-:1560: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#1560: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:447:
+#define MIPI_DATA_LENGTH(display, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_DATA_LENGTH, _MIPIC_DATA_LENGTH)

-:1569: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#1569: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:453:
+#define MIPI_COMMAND_ADDRESS(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)

-:1581: WARNING:LONG_LINE: line length of 136 exceeds 100 columns
#1581: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:462:
+#define MIPI_COMMAND_LENGTH(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)

-:1590: WARNING:LONG_LINE: line length of 167 exceeds 100 columns
#1590: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:468:
+#define MIPI_READ_DATA_RETURN(display, port, n)	_MMIO_MIPI(_MIPI_MMIO_BASE(display) + 4 * (n), port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_DATA_RETURN0) /* n: 0...7 */

-:1597: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#1597: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:472:
+#define MIPI_READ_DATA_VALID(display, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(display), port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)

total: 0 errors, 52 warnings, 0 checks, 1502 lines checked


