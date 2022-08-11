Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D99A58FF0E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:16:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9F36B3E40;
	Thu, 11 Aug 2022 15:16:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 228DDB3DE2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230963; x=1691766963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d6clzx8yjHwgp7TaogIxnroe8OVcarVbqWBqtLCRZck=;
 b=fn3s2vsfaVBLu92KQKoe6Kq2tIRn68nM/hSzLDbwX7o7ij0gjWZRDZ11
 u9qhbi98YEUk6PYJ0qaMewG6wFyZLhQ+TyHRc2+xr9x+cPNUw5kKzPg4+
 25xuL1bDwkI8RXW/wvtFnLqUFReLbwqwtcY2YegdKj4y7qNFuDqeVYy28
 joxAgf4FcL0KM5kkUk3pSS08I1Ah4aY2S6HZbQX7YMtTgTmMMgkzmZCZ8
 5TW3mokjPbb3fWzLDwcXMmetA3M45Qrd3Pq6bfBVx7a0RM5Qe5dibACsz
 Hyr66sQUqyuaA6W8SNnJrczu2eWko1QR+xGiPh+Od/X6GQ06v4/YQgG9b g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292167462"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="292167462"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:50 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="781631882"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:35 +0300
Message-Id: <c6e7bdc0a0d86a99f19d07beed273707793c3739.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 24/39] drm/i915: move mipi_mmio_base to
 display.dsi
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Prefer adding anonymous sub-structs even for single members that aren't
our own structs.

Abstract mmio base member access in register definitions in a macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |   5 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h   | 188 +++++++++---------
 drivers/gpu/drm/i915/i915_drv.h               |   3 -
 4 files changed, 102 insertions(+), 98 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 533c2e3a6685..db1ba379797e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -251,6 +251,11 @@ struct intel_display {
 		unsigned int max_cdclk_freq;
 	} cdclk;
 
+	struct {
+		/* VLV/CHV/BXT/GLK DSI MMIO register base address */
+		u32 mmio_base;
+	} dsi;
+
 	struct {
 		/* list of fbdev register on this device */
 		struct intel_fbdev *fbdev;
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index b9b1fed99874..9651a1f00587 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1872,9 +1872,9 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		dev_priv->mipi_mmio_base = BXT_MIPI_BASE;
+		dev_priv->display.dsi.mmio_base = BXT_MIPI_BASE;
 	else
-		dev_priv->mipi_mmio_base = VLV_MIPI_BASE;
+		dev_priv->display.dsi.mmio_base = VLV_MIPI_BASE;
 
 	intel_dsi = kzalloc(sizeof(*intel_dsi), GFP_KERNEL);
 	if (!intel_dsi)
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
index 356e51515346..e065b8f2ee08 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
@@ -11,6 +11,8 @@
 #define VLV_MIPI_BASE			VLV_DISPLAY_BASE
 #define BXT_MIPI_BASE			0x60000
 
+#define _MIPI_MMIO_BASE(__i915) ((__i915)->display.dsi.mmio_base)
+
 #define _MIPI_PORT(port, a, c)	(((port) == PORT_A) ? a : c)	/* ports A and C only */
 #define _MMIO_MIPI(port, a, c)	_MMIO(_MIPI_PORT(port, a, c))
 
@@ -96,8 +98,8 @@
 
 /* MIPI DSI Controller and D-PHY registers */
 
-#define _MIPIA_DEVICE_READY		(dev_priv->mipi_mmio_base + 0xb000)
-#define _MIPIC_DEVICE_READY		(dev_priv->mipi_mmio_base + 0xb800)
+#define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
+#define _MIPIC_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb800)
 #define MIPI_DEVICE_READY(port)		_MMIO_MIPI(port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
 #define  BUS_POSSESSION					(1 << 3) /* set to give bus to receiver */
 #define  ULPS_STATE_MASK				(3 << 1)
@@ -106,11 +108,11 @@
 #define  ULPS_STATE_NORMAL_OPERATION			(0 << 1)
 #define  DEVICE_READY					(1 << 0)
 
-#define _MIPIA_INTR_STAT		(dev_priv->mipi_mmio_base + 0xb004)
-#define _MIPIC_INTR_STAT		(dev_priv->mipi_mmio_base + 0xb804)
+#define _MIPIA_INTR_STAT		(_MIPI_MMIO_BASE(dev_priv) + 0xb004)
+#define _MIPIC_INTR_STAT		(_MIPI_MMIO_BASE(dev_priv) + 0xb804)
 #define MIPI_INTR_STAT(port)		_MMIO_MIPI(port, _MIPIA_INTR_STAT, _MIPIC_INTR_STAT)
-#define _MIPIA_INTR_EN			(dev_priv->mipi_mmio_base + 0xb008)
-#define _MIPIC_INTR_EN			(dev_priv->mipi_mmio_base + 0xb808)
+#define _MIPIA_INTR_EN			(_MIPI_MMIO_BASE(dev_priv) + 0xb008)
+#define _MIPIC_INTR_EN			(_MIPI_MMIO_BASE(dev_priv) + 0xb808)
 #define MIPI_INTR_EN(port)		_MMIO_MIPI(port, _MIPIA_INTR_EN, _MIPIC_INTR_EN)
 #define  TEARING_EFFECT					(1 << 31)
 #define  SPL_PKT_SENT_INTERRUPT				(1 << 30)
@@ -145,8 +147,8 @@
 #define  RXSOT_SYNC_ERROR				(1 << 1)
 #define  RXSOT_ERROR					(1 << 0)
 
-#define _MIPIA_DSI_FUNC_PRG		(dev_priv->mipi_mmio_base + 0xb00c)
-#define _MIPIC_DSI_FUNC_PRG		(dev_priv->mipi_mmio_base + 0xb80c)
+#define _MIPIA_DSI_FUNC_PRG		(_MIPI_MMIO_BASE(dev_priv) + 0xb00c)
+#define _MIPIC_DSI_FUNC_PRG		(_MIPI_MMIO_BASE(dev_priv) + 0xb80c)
 #define MIPI_DSI_FUNC_PRG(port)		_MMIO_MIPI(port, _MIPIA_DSI_FUNC_PRG, _MIPIC_DSI_FUNC_PRG)
 #define  CMD_MODE_DATA_WIDTH_MASK			(7 << 13)
 #define  CMD_MODE_NOT_SUPPORTED				(0 << 13)
@@ -168,76 +170,76 @@
 #define  DATA_LANES_PRG_REG_SHIFT			0
 #define  DATA_LANES_PRG_REG_MASK			(7 << 0)
 
-#define _MIPIA_HS_TX_TIMEOUT		(dev_priv->mipi_mmio_base + 0xb010)
-#define _MIPIC_HS_TX_TIMEOUT		(dev_priv->mipi_mmio_base + 0xb810)
+#define _MIPIA_HS_TX_TIMEOUT		(_MIPI_MMIO_BASE(dev_priv) + 0xb010)
+#define _MIPIC_HS_TX_TIMEOUT		(_MIPI_MMIO_BASE(dev_priv) + 0xb810)
 #define MIPI_HS_TX_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_HS_TX_TIMEOUT, _MIPIC_HS_TX_TIMEOUT)
 #define  HIGH_SPEED_TX_TIMEOUT_COUNTER_MASK		0xffffff
 
-#define _MIPIA_LP_RX_TIMEOUT		(dev_priv->mipi_mmio_base + 0xb014)
-#define _MIPIC_LP_RX_TIMEOUT		(dev_priv->mipi_mmio_base + 0xb814)
+#define _MIPIA_LP_RX_TIMEOUT		(_MIPI_MMIO_BASE(dev_priv) + 0xb014)
+#define _MIPIC_LP_RX_TIMEOUT		(_MIPI_MMIO_BASE(dev_priv) + 0xb814)
 #define MIPI_LP_RX_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_LP_RX_TIMEOUT, _MIPIC_LP_RX_TIMEOUT)
 #define  LOW_POWER_RX_TIMEOUT_COUNTER_MASK		0xffffff
 
-#define _MIPIA_TURN_AROUND_TIMEOUT	(dev_priv->mipi_mmio_base + 0xb018)
-#define _MIPIC_TURN_AROUND_TIMEOUT	(dev_priv->mipi_mmio_base + 0xb818)
+#define _MIPIA_TURN_AROUND_TIMEOUT	(_MIPI_MMIO_BASE(dev_priv) + 0xb018)
+#define _MIPIC_TURN_AROUND_TIMEOUT	(_MIPI_MMIO_BASE(dev_priv) + 0xb818)
 #define MIPI_TURN_AROUND_TIMEOUT(port)	_MMIO_MIPI(port, _MIPIA_TURN_AROUND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)
 #define  TURN_AROUND_TIMEOUT_MASK			0x3f
 
-#define _MIPIA_DEVICE_RESET_TIMER	(dev_priv->mipi_mmio_base + 0xb01c)
-#define _MIPIC_DEVICE_RESET_TIMER	(dev_priv->mipi_mmio_base + 0xb81c)
+#define _MIPIA_DEVICE_RESET_TIMER	(_MIPI_MMIO_BASE(dev_priv) + 0xb01c)
+#define _MIPIC_DEVICE_RESET_TIMER	(_MIPI_MMIO_BASE(dev_priv) + 0xb81c)
 #define MIPI_DEVICE_RESET_TIMER(port)	_MMIO_MIPI(port, _MIPIA_DEVICE_RESET_TIMER, _MIPIC_DEVICE_RESET_TIMER)
 #define  DEVICE_RESET_TIMER_MASK			0xffff
 
-#define _MIPIA_DPI_RESOLUTION		(dev_priv->mipi_mmio_base + 0xb020)
-#define _MIPIC_DPI_RESOLUTION		(dev_priv->mipi_mmio_base + 0xb820)
+#define _MIPIA_DPI_RESOLUTION		(_MIPI_MMIO_BASE(dev_priv) + 0xb020)
+#define _MIPIC_DPI_RESOLUTION		(_MIPI_MMIO_BASE(dev_priv) + 0xb820)
 #define MIPI_DPI_RESOLUTION(port)	_MMIO_MIPI(port, _MIPIA_DPI_RESOLUTION, _MIPIC_DPI_RESOLUTION)
 #define  VERTICAL_ADDRESS_SHIFT				16
 #define  VERTICAL_ADDRESS_MASK				(0xffff << 16)
 #define  HORIZONTAL_ADDRESS_SHIFT			0
 #define  HORIZONTAL_ADDRESS_MASK			0xffff
 
-#define _MIPIA_DBI_FIFO_THROTTLE	(dev_priv->mipi_mmio_base + 0xb024)
-#define _MIPIC_DBI_FIFO_THROTTLE	(dev_priv->mipi_mmio_base + 0xb824)
+#define _MIPIA_DBI_FIFO_THROTTLE	(_MIPI_MMIO_BASE(dev_priv) + 0xb024)
+#define _MIPIC_DBI_FIFO_THROTTLE	(_MIPI_MMIO_BASE(dev_priv) + 0xb824)
 #define MIPI_DBI_FIFO_THROTTLE(port)	_MMIO_MIPI(port, _MIPIA_DBI_FIFO_THROTTLE, _MIPIC_DBI_FIFO_THROTTLE)
 #define  DBI_FIFO_EMPTY_HALF				(0 << 0)
 #define  DBI_FIFO_EMPTY_QUARTER				(1 << 0)
 #define  DBI_FIFO_EMPTY_7_LOCATIONS			(2 << 0)
 
 /* regs below are bits 15:0 */
-#define _MIPIA_HSYNC_PADDING_COUNT	(dev_priv->mipi_mmio_base + 0xb028)
-#define _MIPIC_HSYNC_PADDING_COUNT	(dev_priv->mipi_mmio_base + 0xb828)
+#define _MIPIA_HSYNC_PADDING_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb028)
+#define _MIPIC_HSYNC_PADDING_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb828)
 #define MIPI_HSYNC_PADDING_COUNT(port)	_MMIO_MIPI(port, _MIPIA_HSYNC_PADDING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)
 
-#define _MIPIA_HBP_COUNT		(dev_priv->mipi_mmio_base + 0xb02c)
-#define _MIPIC_HBP_COUNT		(dev_priv->mipi_mmio_base + 0xb82c)
+#define _MIPIA_HBP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb02c)
+#define _MIPIC_HBP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb82c)
 #define MIPI_HBP_COUNT(port)		_MMIO_MIPI(port, _MIPIA_HBP_COUNT, _MIPIC_HBP_COUNT)
 
-#define _MIPIA_HFP_COUNT		(dev_priv->mipi_mmio_base + 0xb030)
-#define _MIPIC_HFP_COUNT		(dev_priv->mipi_mmio_base + 0xb830)
+#define _MIPIA_HFP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb030)
+#define _MIPIC_HFP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb830)
 #define MIPI_HFP_COUNT(port)		_MMIO_MIPI(port, _MIPIA_HFP_COUNT, _MIPIC_HFP_COUNT)
 
-#define _MIPIA_HACTIVE_AREA_COUNT	(dev_priv->mipi_mmio_base + 0xb034)
-#define _MIPIC_HACTIVE_AREA_COUNT	(dev_priv->mipi_mmio_base + 0xb834)
+#define _MIPIA_HACTIVE_AREA_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb034)
+#define _MIPIC_HACTIVE_AREA_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb834)
 #define MIPI_HACTIVE_AREA_COUNT(port)	_MMIO_MIPI(port, _MIPIA_HACTIVE_AREA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)
 
-#define _MIPIA_VSYNC_PADDING_COUNT	(dev_priv->mipi_mmio_base + 0xb038)
-#define _MIPIC_VSYNC_PADDING_COUNT	(dev_priv->mipi_mmio_base + 0xb838)
+#define _MIPIA_VSYNC_PADDING_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb038)
+#define _MIPIC_VSYNC_PADDING_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb838)
 #define MIPI_VSYNC_PADDING_COUNT(port)	_MMIO_MIPI(port, _MIPIA_VSYNC_PADDING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)
 
-#define _MIPIA_VBP_COUNT		(dev_priv->mipi_mmio_base + 0xb03c)
-#define _MIPIC_VBP_COUNT		(dev_priv->mipi_mmio_base + 0xb83c)
+#define _MIPIA_VBP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb03c)
+#define _MIPIC_VBP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb83c)
 #define MIPI_VBP_COUNT(port)		_MMIO_MIPI(port, _MIPIA_VBP_COUNT, _MIPIC_VBP_COUNT)
 
-#define _MIPIA_VFP_COUNT		(dev_priv->mipi_mmio_base + 0xb040)
-#define _MIPIC_VFP_COUNT		(dev_priv->mipi_mmio_base + 0xb840)
+#define _MIPIA_VFP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb040)
+#define _MIPIC_VFP_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb840)
 #define MIPI_VFP_COUNT(port)		_MMIO_MIPI(port, _MIPIA_VFP_COUNT, _MIPIC_VFP_COUNT)
 
-#define _MIPIA_HIGH_LOW_SWITCH_COUNT	(dev_priv->mipi_mmio_base + 0xb044)
-#define _MIPIC_HIGH_LOW_SWITCH_COUNT	(dev_priv->mipi_mmio_base + 0xb844)
+#define _MIPIA_HIGH_LOW_SWITCH_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb044)
+#define _MIPIC_HIGH_LOW_SWITCH_COUNT	(_MIPI_MMIO_BASE(dev_priv) + 0xb844)
 #define MIPI_HIGH_LOW_SWITCH_COUNT(port)	_MMIO_MIPI(port,	_MIPIA_HIGH_LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)
 
-#define _MIPIA_DPI_CONTROL		(dev_priv->mipi_mmio_base + 0xb048)
-#define _MIPIC_DPI_CONTROL		(dev_priv->mipi_mmio_base + 0xb848)
+#define _MIPIA_DPI_CONTROL		(_MIPI_MMIO_BASE(dev_priv) + 0xb048)
+#define _MIPIC_DPI_CONTROL		(_MIPI_MMIO_BASE(dev_priv) + 0xb848)
 #define MIPI_DPI_CONTROL(port)		_MMIO_MIPI(port, _MIPIA_DPI_CONTROL, _MIPIC_DPI_CONTROL)
 #define  DPI_LP_MODE					(1 << 6)
 #define  BACKLIGHT_OFF					(1 << 5)
@@ -247,27 +249,27 @@
 #define  TURN_ON					(1 << 1)
 #define  SHUTDOWN					(1 << 0)
 
-#define _MIPIA_DPI_DATA			(dev_priv->mipi_mmio_base + 0xb04c)
-#define _MIPIC_DPI_DATA			(dev_priv->mipi_mmio_base + 0xb84c)
+#define _MIPIA_DPI_DATA			(_MIPI_MMIO_BASE(dev_priv) + 0xb04c)
+#define _MIPIC_DPI_DATA			(_MIPI_MMIO_BASE(dev_priv) + 0xb84c)
 #define MIPI_DPI_DATA(port)		_MMIO_MIPI(port, _MIPIA_DPI_DATA, _MIPIC_DPI_DATA)
 #define  COMMAND_BYTE_SHIFT				0
 #define  COMMAND_BYTE_MASK				(0x3f << 0)
 
-#define _MIPIA_INIT_COUNT		(dev_priv->mipi_mmio_base + 0xb050)
-#define _MIPIC_INIT_COUNT		(dev_priv->mipi_mmio_base + 0xb850)
+#define _MIPIA_INIT_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb050)
+#define _MIPIC_INIT_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb850)
 #define MIPI_INIT_COUNT(port)		_MMIO_MIPI(port, _MIPIA_INIT_COUNT, _MIPIC_INIT_COUNT)
 #define  MASTER_INIT_TIMER_SHIFT			0
 #define  MASTER_INIT_TIMER_MASK				(0xffff << 0)
 
-#define _MIPIA_MAX_RETURN_PKT_SIZE	(dev_priv->mipi_mmio_base + 0xb054)
-#define _MIPIC_MAX_RETURN_PKT_SIZE	(dev_priv->mipi_mmio_base + 0xb854)
+#define _MIPIA_MAX_RETURN_PKT_SIZE	(_MIPI_MMIO_BASE(dev_priv) + 0xb054)
+#define _MIPIC_MAX_RETURN_PKT_SIZE	(_MIPI_MMIO_BASE(dev_priv) + 0xb854)
 #define MIPI_MAX_RETURN_PKT_SIZE(port)	_MMIO_MIPI(port, \
 			_MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PKT_SIZE)
 #define  MAX_RETURN_PKT_SIZE_SHIFT			0
 #define  MAX_RETURN_PKT_SIZE_MASK			(0x3ff << 0)
 
-#define _MIPIA_VIDEO_MODE_FORMAT	(dev_priv->mipi_mmio_base + 0xb058)
-#define _MIPIC_VIDEO_MODE_FORMAT	(dev_priv->mipi_mmio_base + 0xb858)
+#define _MIPIA_VIDEO_MODE_FORMAT	(_MIPI_MMIO_BASE(dev_priv) + 0xb058)
+#define _MIPIC_VIDEO_MODE_FORMAT	(_MIPI_MMIO_BASE(dev_priv) + 0xb858)
 #define MIPI_VIDEO_MODE_FORMAT(port)	_MMIO_MIPI(port, _MIPIA_VIDEO_MODE_FORMAT, _MIPIC_VIDEO_MODE_FORMAT)
 #define  RANDOM_DPI_DISPLAY_RESOLUTION			(1 << 4)
 #define  DISABLE_VIDEO_BTA				(1 << 3)
@@ -276,8 +278,8 @@
 #define  VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS		(2 << 0)
 #define  VIDEO_MODE_BURST				(3 << 0)
 
-#define _MIPIA_EOT_DISABLE		(dev_priv->mipi_mmio_base + 0xb05c)
-#define _MIPIC_EOT_DISABLE		(dev_priv->mipi_mmio_base + 0xb85c)
+#define _MIPIA_EOT_DISABLE		(_MIPI_MMIO_BASE(dev_priv) + 0xb05c)
+#define _MIPIC_EOT_DISABLE		(_MIPI_MMIO_BASE(dev_priv) + 0xb85c)
 #define MIPI_EOT_DISABLE(port)		_MMIO_MIPI(port, _MIPIA_EOT_DISABLE, _MIPIC_EOT_DISABLE)
 #define  BXT_DEFEATURE_DPI_FIFO_CTR			(1 << 9)
 #define  BXT_DPHY_DEFEATURE_EN				(1 << 8)
@@ -290,35 +292,35 @@
 #define  CLOCKSTOP					(1 << 1)
 #define  EOT_DISABLE					(1 << 0)
 
-#define _MIPIA_LP_BYTECLK		(dev_priv->mipi_mmio_base + 0xb060)
-#define _MIPIC_LP_BYTECLK		(dev_priv->mipi_mmio_base + 0xb860)
+#define _MIPIA_LP_BYTECLK		(_MIPI_MMIO_BASE(dev_priv) + 0xb060)
+#define _MIPIC_LP_BYTECLK		(_MIPI_MMIO_BASE(dev_priv) + 0xb860)
 #define MIPI_LP_BYTECLK(port)		_MMIO_MIPI(port, _MIPIA_LP_BYTECLK, _MIPIC_LP_BYTECLK)
 #define  LP_BYTECLK_SHIFT				0
 #define  LP_BYTECLK_MASK				(0xffff << 0)
 
-#define _MIPIA_TLPX_TIME_COUNT		(dev_priv->mipi_mmio_base + 0xb0a4)
-#define _MIPIC_TLPX_TIME_COUNT		(dev_priv->mipi_mmio_base + 0xb8a4)
+#define _MIPIA_TLPX_TIME_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb0a4)
+#define _MIPIC_TLPX_TIME_COUNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb8a4)
 #define MIPI_TLPX_TIME_COUNT(port)	 _MMIO_MIPI(port, _MIPIA_TLPX_TIME_COUNT, _MIPIC_TLPX_TIME_COUNT)
 
-#define _MIPIA_CLK_LANE_TIMING		(dev_priv->mipi_mmio_base + 0xb098)
-#define _MIPIC_CLK_LANE_TIMING		(dev_priv->mipi_mmio_base + 0xb898)
+#define _MIPIA_CLK_LANE_TIMING		(_MIPI_MMIO_BASE(dev_priv) + 0xb098)
+#define _MIPIC_CLK_LANE_TIMING		(_MIPI_MMIO_BASE(dev_priv) + 0xb898)
 #define MIPI_CLK_LANE_TIMING(port)	 _MMIO_MIPI(port, _MIPIA_CLK_LANE_TIMING, _MIPIC_CLK_LANE_TIMING)
 
 /* bits 31:0 */
-#define _MIPIA_LP_GEN_DATA		(dev_priv->mipi_mmio_base + 0xb064)
-#define _MIPIC_LP_GEN_DATA		(dev_priv->mipi_mmio_base + 0xb864)
+#define _MIPIA_LP_GEN_DATA		(_MIPI_MMIO_BASE(dev_priv) + 0xb064)
+#define _MIPIC_LP_GEN_DATA		(_MIPI_MMIO_BASE(dev_priv) + 0xb864)
 #define MIPI_LP_GEN_DATA(port)		_MMIO_MIPI(port, _MIPIA_LP_GEN_DATA, _MIPIC_LP_GEN_DATA)
 
 /* bits 31:0 */
-#define _MIPIA_HS_GEN_DATA		(dev_priv->mipi_mmio_base + 0xb068)
-#define _MIPIC_HS_GEN_DATA		(dev_priv->mipi_mmio_base + 0xb868)
+#define _MIPIA_HS_GEN_DATA		(_MIPI_MMIO_BASE(dev_priv) + 0xb068)
+#define _MIPIC_HS_GEN_DATA		(_MIPI_MMIO_BASE(dev_priv) + 0xb868)
 #define MIPI_HS_GEN_DATA(port)		_MMIO_MIPI(port, _MIPIA_HS_GEN_DATA, _MIPIC_HS_GEN_DATA)
 
-#define _MIPIA_LP_GEN_CTRL		(dev_priv->mipi_mmio_base + 0xb06c)
-#define _MIPIC_LP_GEN_CTRL		(dev_priv->mipi_mmio_base + 0xb86c)
+#define _MIPIA_LP_GEN_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb06c)
+#define _MIPIC_LP_GEN_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb86c)
 #define MIPI_LP_GEN_CTRL(port)		_MMIO_MIPI(port, _MIPIA_LP_GEN_CTRL, _MIPIC_LP_GEN_CTRL)
-#define _MIPIA_HS_GEN_CTRL		(dev_priv->mipi_mmio_base + 0xb070)
-#define _MIPIC_HS_GEN_CTRL		(dev_priv->mipi_mmio_base + 0xb870)
+#define _MIPIA_HS_GEN_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb070)
+#define _MIPIC_HS_GEN_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb870)
 #define MIPI_HS_GEN_CTRL(port)		_MMIO_MIPI(port, _MIPIA_HS_GEN_CTRL, _MIPIC_HS_GEN_CTRL)
 #define  LONG_PACKET_WORD_COUNT_SHIFT			8
 #define  LONG_PACKET_WORD_COUNT_MASK			(0xffff << 8)
@@ -330,8 +332,8 @@
 #define  DATA_TYPE_MASK					(0x3f << 0)
 /* data type values, see include/video/mipi_display.h */
 
-#define _MIPIA_GEN_FIFO_STAT		(dev_priv->mipi_mmio_base + 0xb074)
-#define _MIPIC_GEN_FIFO_STAT		(dev_priv->mipi_mmio_base + 0xb874)
+#define _MIPIA_GEN_FIFO_STAT		(_MIPI_MMIO_BASE(dev_priv) + 0xb074)
+#define _MIPIC_GEN_FIFO_STAT		(_MIPI_MMIO_BASE(dev_priv) + 0xb874)
 #define MIPI_GEN_FIFO_STAT(port)	_MMIO_MIPI(port, _MIPIA_GEN_FIFO_STAT, _MIPIC_GEN_FIFO_STAT)
 #define  DPI_FIFO_EMPTY					(1 << 28)
 #define  DBI_FIFO_EMPTY					(1 << 27)
@@ -348,15 +350,15 @@
 #define  HS_DATA_FIFO_HALF_EMPTY			(1 << 1)
 #define  HS_DATA_FIFO_FULL				(1 << 0)
 
-#define _MIPIA_HS_LS_DBI_ENABLE		(dev_priv->mipi_mmio_base + 0xb078)
-#define _MIPIC_HS_LS_DBI_ENABLE		(dev_priv->mipi_mmio_base + 0xb878)
+#define _MIPIA_HS_LS_DBI_ENABLE		(_MIPI_MMIO_BASE(dev_priv) + 0xb078)
+#define _MIPIC_HS_LS_DBI_ENABLE		(_MIPI_MMIO_BASE(dev_priv) + 0xb878)
 #define MIPI_HS_LP_DBI_ENABLE(port)	_MMIO_MIPI(port, _MIPIA_HS_LS_DBI_ENABLE, _MIPIC_HS_LS_DBI_ENABLE)
 #define  DBI_HS_LP_MODE_MASK				(1 << 0)
 #define  DBI_LP_MODE					(1 << 0)
 #define  DBI_HS_MODE					(0 << 0)
 
-#define _MIPIA_DPHY_PARAM		(dev_priv->mipi_mmio_base + 0xb080)
-#define _MIPIC_DPHY_PARAM		(dev_priv->mipi_mmio_base + 0xb880)
+#define _MIPIA_DPHY_PARAM		(_MIPI_MMIO_BASE(dev_priv) + 0xb080)
+#define _MIPIC_DPHY_PARAM		(_MIPI_MMIO_BASE(dev_priv) + 0xb880)
 #define MIPI_DPHY_PARAM(port)		_MMIO_MIPI(port, _MIPIA_DPHY_PARAM, _MIPIC_DPHY_PARAM)
 #define  EXIT_ZERO_COUNT_SHIFT				24
 #define  EXIT_ZERO_COUNT_MASK				(0x3f << 24)
@@ -367,34 +369,34 @@
 #define  PREPARE_COUNT_SHIFT				0
 #define  PREPARE_COUNT_MASK				(0x3f << 0)
 
-#define _MIPIA_DBI_BW_CTRL		(dev_priv->mipi_mmio_base + 0xb084)
-#define _MIPIC_DBI_BW_CTRL		(dev_priv->mipi_mmio_base + 0xb884)
+#define _MIPIA_DBI_BW_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb084)
+#define _MIPIC_DBI_BW_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb884)
 #define MIPI_DBI_BW_CTRL(port)		_MMIO_MIPI(port, _MIPIA_DBI_BW_CTRL, _MIPIC_DBI_BW_CTRL)
 
-#define _MIPIA_CLK_LANE_SWITCH_TIME_CNT		(dev_priv->mipi_mmio_base + 0xb088)
-#define _MIPIC_CLK_LANE_SWITCH_TIME_CNT		(dev_priv->mipi_mmio_base + 0xb888)
+#define _MIPIA_CLK_LANE_SWITCH_TIME_CNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb088)
+#define _MIPIC_CLK_LANE_SWITCH_TIME_CNT		(_MIPI_MMIO_BASE(dev_priv) + 0xb888)
 #define MIPI_CLK_LANE_SWITCH_TIME_CNT(port)	_MMIO_MIPI(port, _MIPIA_CLK_LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)
 #define  LP_HS_SSW_CNT_SHIFT				16
 #define  LP_HS_SSW_CNT_MASK				(0xffff << 16)
 #define  HS_LP_PWR_SW_CNT_SHIFT				0
 #define  HS_LP_PWR_SW_CNT_MASK				(0xffff << 0)
 
-#define _MIPIA_STOP_STATE_STALL		(dev_priv->mipi_mmio_base + 0xb08c)
-#define _MIPIC_STOP_STATE_STALL		(dev_priv->mipi_mmio_base + 0xb88c)
+#define _MIPIA_STOP_STATE_STALL		(_MIPI_MMIO_BASE(dev_priv) + 0xb08c)
+#define _MIPIC_STOP_STATE_STALL		(_MIPI_MMIO_BASE(dev_priv) + 0xb88c)
 #define MIPI_STOP_STATE_STALL(port)	_MMIO_MIPI(port, _MIPIA_STOP_STATE_STALL, _MIPIC_STOP_STATE_STALL)
 #define  STOP_STATE_STALL_COUNTER_SHIFT			0
 #define  STOP_STATE_STALL_COUNTER_MASK			(0xff << 0)
 
-#define _MIPIA_INTR_STAT_REG_1		(dev_priv->mipi_mmio_base + 0xb090)
-#define _MIPIC_INTR_STAT_REG_1		(dev_priv->mipi_mmio_base + 0xb890)
+#define _MIPIA_INTR_STAT_REG_1		(_MIPI_MMIO_BASE(dev_priv) + 0xb090)
+#define _MIPIC_INTR_STAT_REG_1		(_MIPI_MMIO_BASE(dev_priv) + 0xb890)
 #define MIPI_INTR_STAT_REG_1(port)	_MMIO_MIPI(port, _MIPIA_INTR_STAT_REG_1, _MIPIC_INTR_STAT_REG_1)
-#define _MIPIA_INTR_EN_REG_1		(dev_priv->mipi_mmio_base + 0xb094)
-#define _MIPIC_INTR_EN_REG_1		(dev_priv->mipi_mmio_base + 0xb894)
+#define _MIPIA_INTR_EN_REG_1		(_MIPI_MMIO_BASE(dev_priv) + 0xb094)
+#define _MIPIC_INTR_EN_REG_1		(_MIPI_MMIO_BASE(dev_priv) + 0xb894)
 #define MIPI_INTR_EN_REG_1(port)	_MMIO_MIPI(port, _MIPIA_INTR_EN_REG_1, _MIPIC_INTR_EN_REG_1)
 #define  RX_CONTENTION_DETECTED				(1 << 0)
 
 /* XXX: only pipe A ?!? */
-#define MIPIA_DBI_TYPEC_CTRL		(dev_priv->mipi_mmio_base + 0xb100)
+#define MIPIA_DBI_TYPEC_CTRL		(_MIPI_MMIO_BASE(dev_priv) + 0xb100)
 #define  DBI_TYPEC_ENABLE				(1 << 31)
 #define  DBI_TYPEC_WIP					(1 << 30)
 #define  DBI_TYPEC_OPTION_SHIFT				28
@@ -407,8 +409,8 @@
 
 /* MIPI adapter registers */
 
-#define _MIPIA_CTRL			(dev_priv->mipi_mmio_base + 0xb104)
-#define _MIPIC_CTRL			(dev_priv->mipi_mmio_base + 0xb904)
+#define _MIPIA_CTRL			(_MIPI_MMIO_BASE(dev_priv) + 0xb104)
+#define _MIPIC_CTRL			(_MIPI_MMIO_BASE(dev_priv) + 0xb904)
 #define MIPI_CTRL(port)			_MMIO_MIPI(port, _MIPIA_CTRL, _MIPIC_CTRL)
 #define  ESCAPE_CLOCK_DIVIDER_SHIFT			5 /* A only */
 #define  ESCAPE_CLOCK_DIVIDER_MASK			(3 << 5)
@@ -440,21 +442,21 @@
 #define  GLK_MIPIIO_PORT_POWERED			(1 << 1) /* RO */
 #define  GLK_MIPIIO_ENABLE				(1 << 0)
 
-#define _MIPIA_DATA_ADDRESS		(dev_priv->mipi_mmio_base + 0xb108)
-#define _MIPIC_DATA_ADDRESS		(dev_priv->mipi_mmio_base + 0xb908)
+#define _MIPIA_DATA_ADDRESS		(_MIPI_MMIO_BASE(dev_priv) + 0xb108)
+#define _MIPIC_DATA_ADDRESS		(_MIPI_MMIO_BASE(dev_priv) + 0xb908)
 #define MIPI_DATA_ADDRESS(port)		_MMIO_MIPI(port, _MIPIA_DATA_ADDRESS, _MIPIC_DATA_ADDRESS)
 #define  DATA_MEM_ADDRESS_SHIFT				5
 #define  DATA_MEM_ADDRESS_MASK				(0x7ffffff << 5)
 #define  DATA_VALID					(1 << 0)
 
-#define _MIPIA_DATA_LENGTH		(dev_priv->mipi_mmio_base + 0xb10c)
-#define _MIPIC_DATA_LENGTH		(dev_priv->mipi_mmio_base + 0xb90c)
+#define _MIPIA_DATA_LENGTH		(_MIPI_MMIO_BASE(dev_priv) + 0xb10c)
+#define _MIPIC_DATA_LENGTH		(_MIPI_MMIO_BASE(dev_priv) + 0xb90c)
 #define MIPI_DATA_LENGTH(port)		_MMIO_MIPI(port, _MIPIA_DATA_LENGTH, _MIPIC_DATA_LENGTH)
 #define  DATA_LENGTH_SHIFT				0
 #define  DATA_LENGTH_MASK				(0xfffff << 0)
 
-#define _MIPIA_COMMAND_ADDRESS		(dev_priv->mipi_mmio_base + 0xb110)
-#define _MIPIC_COMMAND_ADDRESS		(dev_priv->mipi_mmio_base + 0xb910)
+#define _MIPIA_COMMAND_ADDRESS		(_MIPI_MMIO_BASE(dev_priv) + 0xb110)
+#define _MIPIC_COMMAND_ADDRESS		(_MIPI_MMIO_BASE(dev_priv) + 0xb910)
 #define MIPI_COMMAND_ADDRESS(port)	_MMIO_MIPI(port, _MIPIA_COMMAND_ADDRESS, _MIPIC_COMMAND_ADDRESS)
 #define  COMMAND_MEM_ADDRESS_SHIFT			5
 #define  COMMAND_MEM_ADDRESS_MASK			(0x7ffffff << 5)
@@ -462,18 +464,18 @@
 #define  MEMORY_WRITE_DATA_FROM_PIPE_RENDERING		(1 << 1)
 #define  COMMAND_VALID					(1 << 0)
 
-#define _MIPIA_COMMAND_LENGTH		(dev_priv->mipi_mmio_base + 0xb114)
-#define _MIPIC_COMMAND_LENGTH		(dev_priv->mipi_mmio_base + 0xb914)
+#define _MIPIA_COMMAND_LENGTH		(_MIPI_MMIO_BASE(dev_priv) + 0xb114)
+#define _MIPIC_COMMAND_LENGTH		(_MIPI_MMIO_BASE(dev_priv) + 0xb914)
 #define MIPI_COMMAND_LENGTH(port)	_MMIO_MIPI(port, _MIPIA_COMMAND_LENGTH, _MIPIC_COMMAND_LENGTH)
 #define  COMMAND_LENGTH_SHIFT(n)			(8 * (n)) /* n: 0...3 */
 #define  COMMAND_LENGTH_MASK(n)				(0xff << (8 * (n)))
 
-#define _MIPIA_READ_DATA_RETURN0	(dev_priv->mipi_mmio_base + 0xb118)
-#define _MIPIC_READ_DATA_RETURN0	(dev_priv->mipi_mmio_base + 0xb918)
+#define _MIPIA_READ_DATA_RETURN0	(_MIPI_MMIO_BASE(dev_priv) + 0xb118)
+#define _MIPIC_READ_DATA_RETURN0	(_MIPI_MMIO_BASE(dev_priv) + 0xb918)
 #define MIPI_READ_DATA_RETURN(port, n) _MMIO(_MIPI(port, _MIPIA_READ_DATA_RETURN0, _MIPIC_READ_DATA_RETURN0) + 4 * (n)) /* n: 0...7 */
 
-#define _MIPIA_READ_DATA_VALID		(dev_priv->mipi_mmio_base + 0xb138)
-#define _MIPIC_READ_DATA_VALID		(dev_priv->mipi_mmio_base + 0xb938)
+#define _MIPIA_READ_DATA_VALID		(_MIPI_MMIO_BASE(dev_priv) + 0xb138)
+#define _MIPIC_READ_DATA_VALID		(_MIPI_MMIO_BASE(dev_priv) + 0xb938)
 #define MIPI_READ_DATA_VALID(port)	_MMIO_MIPI(port, _MIPIA_READ_DATA_VALID, _MIPIC_READ_DATA_VALID)
 #define  READ_DATA_VALID(n)				(1 << (n))
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 29d7dcdf89af..2f22f27cb038 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -297,9 +297,6 @@ struct drm_i915_private {
 
 	struct intel_wopcm wopcm;
 
-	/* MMIO base address for MIPI regs */
-	u32 mipi_mmio_base;
-
 	struct pci_dev *bridge_dev;
 
 	struct rb_root uabi_engines;
-- 
2.34.1

