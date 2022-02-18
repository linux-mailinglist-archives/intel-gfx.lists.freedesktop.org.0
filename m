Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2204BB0EF
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 05:52:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52D110EA48;
	Fri, 18 Feb 2022 04:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 041EC10EA48;
 Fri, 18 Feb 2022 04:52:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01780A00A0;
 Fri, 18 Feb 2022 04:52:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 18 Feb 2022 04:52:41 -0000
Message-ID: <164515996197.25450.15045252807706534943@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220217224023.3994777-1-jani.nikula@intel.com>
In-Reply-To: <20220217224023.3994777-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/4=5D_drm/i915/dsi=3A_disasso?=
 =?utf-8?q?ciate_VBT_video_transfer_mode_from_register_values?=
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

Series: series starting with [CI,1/4] drm/i915/dsi: disassociate VBT video transfer mode from register values
URL   : https://patchwork.freedesktop.org/series/100368/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0eacdf7065b7 drm/i915/dsi: disassociate VBT video transfer mode from register values
c08265978a8c drm/i915/dsi: add separate init timer mask definition for ICL DSI
1a48c1109e26 drm/i915/reg: split out vlv_dsi_regs.h and vlv_dsi_pll_regs.h
-:66: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#66: 
new file mode 100644

-:275: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#275: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:90:
+#define MIPI_TEARING_CTRL(port)			_MMIO_MIPI(port, _MIPIA_TEARING_CTRL, _MIPIC_TEARING_CTRL)

-:368: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#368: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:183:
+#define MIPI_TURN_AROUND_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)

-:373: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#373: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:188:
+#define MIPI_DEVICE_RESET_TIMER(port)	_MMIO_MIPI(port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)

-:378: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#378: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:193:
+#define MIPI_DPI_RESOLUTION(port)	_MMIO_MIPI(port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)

-:386: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#386: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:201:
+#define MIPI_DBI_FIFO_THROTTLE(port)	_MMIO_MIPI(port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)

-:394: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#394: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:209:
+#define MIPI_HSYNC_PADDING_COUNT(port)	_MMIO_MIPI(port, _MIPIA_HSYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)

-:406: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#406: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:221:
+#define MIPI_HACTIVE_AREA_COUNT(port)	_MMIO_MIPI(port, _MIPIA_HACTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)

-:410: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#410: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:225:
+#define MIPI_VSYNC_PADDING_COUNT(port)	_MMIO_MIPI(port, _MIPIA_VSYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)

-:422: WARNING:LONG_LINE: line length of 131 exceeds 100 columns
#422: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:237:
+#define MIPI_HIGH_LOW_SWITCH_COUNT(port)	_MMIO_MIPI(port,	_MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)

-:456: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#456: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:271:
+#define MIPI_VIDEO_MODE_FORMAT(port)	_MMIO_MIPI(port, _MIPIA_VIDEO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT)

-:486: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#486: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:301:
+#define MIPI_TLPX_TIME_COUNT(port)	 _MMIO_MIPI(port, _MIPIA_TLPX_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)

-:490: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#490: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:305:
+#define MIPI_CLK_LANE_TIMING(port)	 _MMIO_MIPI(port, _MIPIA_CLK_LANE_TIMING, _MIPIC_CLK_LANE_TIMING)

-:538: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#538: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:353:
+#define MIPI_HS_LP_DBI_ENABLE(port)	_MMIO_MIPI(port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)

-:561: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#561: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:376:
+#define MIPI_CLK_LANE_SWITCH_TIME_CNT(port)	_MMIO_MIPI(port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)

-:569: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#569: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:384:
+#define MIPI_STOP_STATE_STALL(port)	_MMIO_MIPI(port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)

-:575: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#575: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:390:
+#define MIPI_INTR_STAT_REG_1(port)	_MMIO_MIPI(port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)

-:643: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#643: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:458:
+#define MIPI_COMMAND_ADDRESS(port)	_MMIO_MIPI(port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)

-:652: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#652: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:467:
+#define MIPI_COMMAND_LENGTH(port)	_MMIO_MIPI(port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)

-:658: WARNING:LONG_LINE: line length of 134 exceeds 100 columns
#658: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:473:
+#define MIPI_READ_DATA_RETURN(port, n) _MMIO(_MIPI(port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_DATA_RETURN0) + 4 * (n)) /* n: 0...7 */

-:662: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#662: FILE: drivers/gpu/drm/i915/display/vlv_dsi_regs.h:477:
+#define MIPI_READ_DATA_VALID(port)	_MMIO_MIPI(port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)

total: 0 errors, 21 warnings, 0 checks, 1235 lines checked
ae4bfffa65f0 drm/i915/reg: split out icl_dsi_regs.h
-:26: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#26: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 707 lines checked


