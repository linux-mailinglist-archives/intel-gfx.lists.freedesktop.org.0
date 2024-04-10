Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF038A0004
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 20:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB1510E0BE;
	Wed, 10 Apr 2024 18:48:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E2B210E0BE;
 Wed, 10 Apr 2024 18:48:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dsi=3A_stop?=
 =?utf-8?q?_relying_on_implicit_dev=5Fpriv_variable?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Apr 2024 18:48:25 -0000
Message-ID: <171277490564.1338427.4879650685091506903@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1712766927.git.jani.nikula@intel.com>
In-Reply-To: <cover.1712766927.git.jani.nikula@intel.com>
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

Series: drm/i915/dsi: stop relying on implicit dev_priv variable
URL   : https://patchwork.freedesktop.org/series/132285/
State : warning

== Summary ==

Error: dim checkpatch failed
02b70fe522db drm/i915/dsi: remove unused _MIPIA_AUTOPWG register definition
1b83a12b11bd drm/i915/dsi: add VLV_ prefix to VLV only register macros
-:60: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:92:
+#define VLV_MIPI_TEARING_CTRL(port)		_MMIO_MIPI(port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)

total: 0 errors, 1 warnings, 0 checks, 40 lines checked
277cd13e43bc drm/i915/dsi: pass i915 to register macros instead of implicit variable
-:127: WARNING:LINE_SPACING: Missing a blank line after declarations
#127: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:349:
+		u32 tmp = intel_de_read(dev_priv, MIPI_DEVICE_READY(dev_priv, port));
+		intel_de_rmw(dev_priv, MIPI_CTRL(dev_priv, port),

-:143: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#143: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:363:
+			!(intel_de_read(dev_priv, MIPI_DEVICE_READY(dev_priv, port)) & DEVICE_READY);

-:636: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#636: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:22:
+#define  BXT_MIPI_TRANS_HACTIVE(tc)		_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_HACTIVE, _BXT_MIPIC_TRANS_HACTIVE)

-:644: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#644: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:26:
+#define  BXT_MIPI_TRANS_VACTIVE(tc)		_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_VACTIVE, _BXT_MIPIC_TRANS_VACTIVE)

-:652: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#652: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:30:
+#define  BXT_MIPI_TRANS_VTOTAL(tc)		_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_TRANS_VTOTAL, _BXT_MIPIC_TRANS_VTOTAL)

-:665: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#665: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:40:
+#define VLV_MIPI_PORT_CTRL(port)		_MMIO_MIPI(VLV_MIPI_BASE, port, _MIPIA_PORT_CTRL, _MIPIC_PORT_CTRL)

-:673: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#673: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:45:
+#define BXT_MIPI_PORT_CTRL(tc)			_MMIO_MIPI(BXT_MIPI_BASE, tc, _BXT_MIPIA_PORT_CTRL, _BXT_MIPIC_PORT_CTRL)

-:686: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#686: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:89:
+#define VLV_MIPI_TEARING_CTRL(port)			_MMIO_MIPI(VLV_MIPI_BASE, port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)

-:697: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#697: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:97:
+#define MIPI_DEVICE_READY(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)

-:713: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#713: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:107:
+#define MIPI_INTR_STAT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_INTR_STAT, _MIPIC_INTR_STAT)

-:716: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#716: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:110:
+#define MIPI_INTR_EN(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_INTR_EN, _MIPIC_INTR_EN)

-:729: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#729: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:146:
+#define MIPI_DSI_FUNC_PRG(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)

-:742: WARNING:LONG_LINE: line length of 131 exceeds 100 columns
#742: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:169:
+#define MIPI_HS_TX_TIMEOUT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HS_TX_TIMEOUT, _MIPIC_HS_TX_TIMEOUT)

-:750: WARNING:LONG_LINE: line length of 131 exceeds 100 columns
#750: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:174:
+#define MIPI_LP_RX_TIMEOUT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_LP_RX_TIMEOUT, _MIPIC_LP_RX_TIMEOUT)

-:758: WARNING:LONG_LINE: line length of 143 exceeds 100 columns
#758: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:179:
+#define MIPI_TURN_AROUND_TIMEOUT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)

-:766: WARNING:LONG_LINE: line length of 141 exceeds 100 columns
#766: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:184:
+#define MIPI_DEVICE_RESET_TIMER(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)

-:774: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#774: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:189:
+#define MIPI_DPI_RESOLUTION(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)

-:785: WARNING:LONG_LINE: line length of 139 exceeds 100 columns
#785: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:197:
+#define MIPI_DBI_FIFO_THROTTLE(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)

-:796: WARNING:LONG_LINE: line length of 143 exceeds 100 columns
#796: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:205:
+#define MIPI_HSYNC_PADDING_COUNT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HSYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)

-:803: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#803: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:209:
+#define MIPI_HBP_COUNT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HBP_COUNT, _MIPIC_HBP_COUNT)

-:810: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#810: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:213:
+#define MIPI_HFP_COUNT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HFP_COUNT, _MIPIC_HFP_COUNT)

-:817: WARNING:LONG_LINE: line length of 141 exceeds 100 columns
#817: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:217:
+#define MIPI_HACTIVE_AREA_COUNT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HACTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)

-:824: WARNING:LONG_LINE: line length of 143 exceeds 100 columns
#824: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:221:
+#define MIPI_VSYNC_PADDING_COUNT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_VSYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)

-:831: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#831: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:225:
+#define MIPI_VBP_COUNT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_VBP_COUNT, _MIPIC_VBP_COUNT)

-:838: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#838: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:229:
+#define MIPI_VFP_COUNT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_VFP_COUNT, _MIPIC_VFP_COUNT)

-:845: WARNING:LONG_LINE: line length of 147 exceeds 100 columns
#845: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:233:
+#define MIPI_HIGH_LOW_SWITCH_COUNT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port,	_MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)

-:852: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#852: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:237:
+#define MIPI_DPI_CONTROL(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DPI_CONTROL, _MIPIC_DPI_CONTROL)

-:865: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#865: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:248:
+#define MIPI_DPI_DATA(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DPI_DATA, _MIPIC_DPI_DATA)

-:874: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#874: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:254:
+#define MIPI_INIT_COUNT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_INIT_COUNT, _MIPIC_INIT_COUNT)

-:884: WARNING:LONG_LINE: line length of 143 exceeds 100 columns
#884: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:260:
+#define MIPI_MAX_RETURN_PKT_SIZE(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PKT_SIZE)

-:893: WARNING:LONG_LINE: line length of 139 exceeds 100 columns
#893: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:266:
+#define MIPI_VIDEO_MODE_FORMAT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_VIDEO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT)

-:906: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#906: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:276:
+#define MIPI_EOT_DISABLE(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_EOT_DISABLE, _MIPIC_EOT_DISABLE)

-:919: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#919: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:290:
+#define MIPI_LP_BYTECLK(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_LP_BYTECLK, _MIPIC_LP_BYTECLK)

-:928: WARNING:LONG_LINE: line length of 136 exceeds 100 columns
#928: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:296:
+#define MIPI_TLPX_TIME_COUNT(i915, port)	 _MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_TLPX_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)

-:935: WARNING:LONG_LINE: line length of 135 exceeds 100 columns
#935: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:300:
+#define MIPI_CLK_LANE_TIMING(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_CLK_LANE_TIMING, _MIPIC_CLK_LANE_TIMING)

-:943: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#943: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:305:
+#define MIPI_LP_GEN_DATA(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_LP_GEN_DATA, _MIPIC_LP_GEN_DATA)

-:958: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#958: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:310:
+#define MIPI_HS_GEN_DATA(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HS_GEN_DATA, _MIPIC_HS_GEN_DATA)

-:962: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#962: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:314:
+#define MIPI_LP_GEN_CTRL(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_LP_GEN_CTRL, _MIPIC_LP_GEN_CTRL)

-:965: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#965: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:317:
+#define MIPI_HS_GEN_CTRL(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HS_GEN_CTRL, _MIPIC_HS_GEN_CTRL)

-:978: WARNING:LONG_LINE: line length of 131 exceeds 100 columns
#978: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:330:
+#define MIPI_GEN_FIFO_STAT(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_GEN_FIFO_STAT, _MIPIC_GEN_FIFO_STAT)

-:991: WARNING:LONG_LINE: line length of 137 exceeds 100 columns
#991: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:348:
+#define MIPI_HS_LP_DBI_ENABLE(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)

-:1001: WARNING:LONG_LINE: line length of 125 exceeds 100 columns
#1001: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:355:
+#define MIPI_DPHY_PARAM(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DPHY_PARAM, _MIPIC_DPHY_PARAM)

-:1014: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#1014: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:367:
+#define MIPI_DBI_BW_CTRL(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DBI_BW_CTRL, _MIPIC_DBI_BW_CTRL)

-:1021: WARNING:LONG_LINE: line length of 161 exceeds 100 columns
#1021: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:371:
+#define MIPI_CLK_LANE_SWITCH_TIME_CNT(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)

-:1032: WARNING:LONG_LINE: line length of 137 exceeds 100 columns
#1032: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:379:
+#define MIPI_STOP_STATE_STALL(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)

-:1044: WARNING:LONG_LINE: line length of 135 exceeds 100 columns
#1044: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:385:
+#define MIPI_INTR_STAT_REG_1(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)

-:1047: WARNING:LONG_LINE: line length of 131 exceeds 100 columns
#1047: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:388:
+#define MIPI_INTR_EN_REG_1(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_INTR_EN_REG_1, _MIPIC_INTR_EN_REG_1)

-:1065: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#1065: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:407:
+#define MIPI_CTRL(i915, port)			_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_CTRL, _MIPIC_CTRL)

-:1078: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#1078: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:440:
+#define MIPI_DATA_ADDRESS(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DATA_ADDRESS, _MIPIC_DATA_ADDRESS)

-:1088: WARNING:LONG_LINE: line length of 127 exceeds 100 columns
#1088: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:447:
+#define MIPI_DATA_LENGTH(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_DATA_LENGTH, _MIPIC_DATA_LENGTH)

-:1097: WARNING:LONG_LINE: line length of 135 exceeds 100 columns
#1097: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:453:
+#define MIPI_COMMAND_ADDRESS(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)

-:1109: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#1109: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:462:
+#define MIPI_COMMAND_LENGTH(i915, port)		_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)

-:1118: WARNING:LONG_LINE: line length of 143 exceeds 100 columns
#1118: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:468:
+#define MIPI_READ_DATA_RETURN(i915, port, n)	_MMIO(_MIPI(port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_DATA_RETURN0) + 4 * (n)) /* n: 0...7 */

-:1125: WARNING:LONG_LINE: line length of 135 exceeds 100 columns
#1125: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:472:
+#define MIPI_READ_DATA_VALID(i915, port)	_MMIO_MIPI(_MIPI_MMIO_BASE(i915), port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)

total: 0 errors, 54 warnings, 0 checks, 1051 lines checked


