Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 753CF402432
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 09:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D580589D61;
	Tue,  7 Sep 2021 07:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93A7489D5C
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 07:26:13 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-601-aPoAtBbmPHe8jJtEZ6mJOg-1; Tue, 07 Sep 2021 03:26:06 -0400
X-MC-Unique: aPoAtBbmPHe8jJtEZ6mJOg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F5E510054F6;
 Tue,  7 Sep 2021 07:26:05 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EC5637A8C5;
 Tue,  7 Sep 2021 07:26:03 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Tue,  7 Sep 2021 17:25:30 +1000
Message-Id: <20210907072549.2962226-7-airlied@gmail.com>
In-Reply-To: <20210907072549.2962226-1-airlied@gmail.com>
References: <20210907072549.2962226-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 06/25] drm/i915/display: move mipi_mmio_base to
 display struct
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dave Airlie <airlied@redhat.com>

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c |   4 +-
 drivers/gpu/drm/i915/i915_drv.h        |   6 +-
 drivers/gpu/drm/i915/i915_reg.h        | 188 ++++++++++++-------------
 3 files changed, 99 insertions(+), 99 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/=
display/vlv_dsi.c
index b0a2b6b96799..91da69d2f6df 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1843,9 +1843,9 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 =09=09return;
=20
 =09if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-=09=09dev_priv->mipi_mmio_base =3D BXT_MIPI_BASE;
+=09=09dev_priv->display->mipi_mmio_base =3D BXT_MIPI_BASE;
 =09else
-=09=09dev_priv->mipi_mmio_base =3D VLV_MIPI_BASE;
+=09=09dev_priv->display->mipi_mmio_base =3D VLV_MIPI_BASE;
=20
 =09intel_dsi =3D kzalloc(sizeof(*intel_dsi), GFP_KERNEL);
 =09if (!intel_dsi)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_dr=
v.h
index 8fc70516737c..68494810ab64 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -854,6 +854,9 @@ struct drm_i915_display {
 =09 */
 =09u32 gpio_mmio_base;
=20
+=09/* MMIO base address for MIPI regs */
+=09u32 mipi_mmio_base;
+
 =09struct intel_gmbus gmbus[GMBUS_NUM_PINS];
=20
 =09/** gmbus_mutex protects against concurrent usage of the single hw gmbu=
s
@@ -913,9 +916,6 @@ struct drm_i915_private {
=20
 =09struct intel_wopcm wopcm;
=20
-=09/* MMIO base address for MIPI regs */
-=09u32 mipi_mmio_base;
-
 =09u32 pps_mmio_base;
=20
 =09struct pci_dev *bridge_dev;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_re=
g.h
index a080fe654f8c..cc109fb81b8e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11731,8 +11731,8 @@ enum skl_power_gate {
=20
 /* MIPI DSI Controller and D-PHY registers */
=20
-#define _MIPIA_DEVICE_READY=09=09(dev_priv->mipi_mmio_base + 0xb000)
-#define _MIPIC_DEVICE_READY=09=09(dev_priv->mipi_mmio_base + 0xb800)
+#define _MIPIA_DEVICE_READY=09=09(dev_priv->display->mipi_mmio_base + 0xb0=
00)
+#define _MIPIC_DEVICE_READY=09=09(dev_priv->display->mipi_mmio_base + 0xb8=
00)
 #define MIPI_DEVICE_READY(port)=09=09_MMIO_MIPI(port, _MIPIA_DEVICE_READY,=
 _MIPIC_DEVICE_READY)
 #define  BUS_POSSESSION=09=09=09=09=09(1 << 3) /* set to give bus to recei=
ver */
 #define  ULPS_STATE_MASK=09=09=09=09(3 << 1)
@@ -11741,11 +11741,11 @@ enum skl_power_gate {
 #define  ULPS_STATE_NORMAL_OPERATION=09=09=09(0 << 1)
 #define  DEVICE_READY=09=09=09=09=09(1 << 0)
=20
-#define _MIPIA_INTR_STAT=09=09(dev_priv->mipi_mmio_base + 0xb004)
-#define _MIPIC_INTR_STAT=09=09(dev_priv->mipi_mmio_base + 0xb804)
+#define _MIPIA_INTR_STAT=09=09(dev_priv->display->mipi_mmio_base + 0xb004)
+#define _MIPIC_INTR_STAT=09=09(dev_priv->display->mipi_mmio_base + 0xb804)
 #define MIPI_INTR_STAT(port)=09=09_MMIO_MIPI(port, _MIPIA_INTR_STAT, _MIPI=
C_INTR_STAT)
-#define _MIPIA_INTR_EN=09=09=09(dev_priv->mipi_mmio_base + 0xb008)
-#define _MIPIC_INTR_EN=09=09=09(dev_priv->mipi_mmio_base + 0xb808)
+#define _MIPIA_INTR_EN=09=09=09(dev_priv->display->mipi_mmio_base + 0xb008=
)
+#define _MIPIC_INTR_EN=09=09=09(dev_priv->display->mipi_mmio_base + 0xb808=
)
 #define MIPI_INTR_EN(port)=09=09_MMIO_MIPI(port, _MIPIA_INTR_EN, _MIPIC_IN=
TR_EN)
 #define  TEARING_EFFECT=09=09=09=09=09(1 << 31)
 #define  SPL_PKT_SENT_INTERRUPT=09=09=09=09(1 << 30)
@@ -11780,8 +11780,8 @@ enum skl_power_gate {
 #define  RXSOT_SYNC_ERROR=09=09=09=09(1 << 1)
 #define  RXSOT_ERROR=09=09=09=09=09(1 << 0)
=20
-#define _MIPIA_DSI_FUNC_PRG=09=09(dev_priv->mipi_mmio_base + 0xb00c)
-#define _MIPIC_DSI_FUNC_PRG=09=09(dev_priv->mipi_mmio_base + 0xb80c)
+#define _MIPIA_DSI_FUNC_PRG=09=09(dev_priv->display->mipi_mmio_base + 0xb0=
0c)
+#define _MIPIC_DSI_FUNC_PRG=09=09(dev_priv->display->mipi_mmio_base + 0xb8=
0c)
 #define MIPI_DSI_FUNC_PRG(port)=09=09_MMIO_MIPI(port, _MIPIA_DSI_FUNC_PRG,=
 _MIPIC_DSI_FUNC_PRG)
 #define  CMD_MODE_DATA_WIDTH_MASK=09=09=09(7 << 13)
 #define  CMD_MODE_NOT_SUPPORTED=09=09=09=09(0 << 13)
@@ -11803,78 +11803,78 @@ enum skl_power_gate {
 #define  DATA_LANES_PRG_REG_SHIFT=09=09=090
 #define  DATA_LANES_PRG_REG_MASK=09=09=09(7 << 0)
=20
-#define _MIPIA_HS_TX_TIMEOUT=09=09(dev_priv->mipi_mmio_base + 0xb010)
-#define _MIPIC_HS_TX_TIMEOUT=09=09(dev_priv->mipi_mmio_base + 0xb810)
+#define _MIPIA_HS_TX_TIMEOUT=09=09(dev_priv->display->mipi_mmio_base + 0xb=
010)
+#define _MIPIC_HS_TX_TIMEOUT=09=09(dev_priv->display->mipi_mmio_base + 0xb=
810)
 #define MIPI_HS_TX_TIMEOUT(port)=09_MMIO_MIPI(port, _MIPIA_HS_TX_TIMEOUT, =
_MIPIC_HS_TX_TIMEOUT)
 #define  HIGH_SPEED_TX_TIMEOUT_COUNTER_MASK=09=090xffffff
=20
-#define _MIPIA_LP_RX_TIMEOUT=09=09(dev_priv->mipi_mmio_base + 0xb014)
-#define _MIPIC_LP_RX_TIMEOUT=09=09(dev_priv->mipi_mmio_base + 0xb814)
+#define _MIPIA_LP_RX_TIMEOUT=09=09(dev_priv->display->mipi_mmio_base + 0xb=
014)
+#define _MIPIC_LP_RX_TIMEOUT=09=09(dev_priv->display->mipi_mmio_base + 0xb=
814)
 #define MIPI_LP_RX_TIMEOUT(port)=09_MMIO_MIPI(port, _MIPIA_LP_RX_TIMEOUT, =
_MIPIC_LP_RX_TIMEOUT)
 #define  LOW_POWER_RX_TIMEOUT_COUNTER_MASK=09=090xffffff
=20
-#define _MIPIA_TURN_AROUND_TIMEOUT=09(dev_priv->mipi_mmio_base + 0xb018)
-#define _MIPIC_TURN_AROUND_TIMEOUT=09(dev_priv->mipi_mmio_base + 0xb818)
+#define _MIPIA_TURN_AROUND_TIMEOUT=09(dev_priv->display->mipi_mmio_base + =
0xb018)
+#define _MIPIC_TURN_AROUND_TIMEOUT=09(dev_priv->display->mipi_mmio_base + =
0xb818)
 #define MIPI_TURN_AROUND_TIMEOUT(port)=09_MMIO_MIPI(port, _MIPIA_TURN_AROU=
ND_TIMEOUT, _MIPIC_TURN_AROUND_TIMEOUT)
 #define  TURN_AROUND_TIMEOUT_MASK=09=09=090x3f
=20
-#define _MIPIA_DEVICE_RESET_TIMER=09(dev_priv->mipi_mmio_base + 0xb01c)
-#define _MIPIC_DEVICE_RESET_TIMER=09(dev_priv->mipi_mmio_base + 0xb81c)
+#define _MIPIA_DEVICE_RESET_TIMER=09(dev_priv->display->mipi_mmio_base + 0=
xb01c)
+#define _MIPIC_DEVICE_RESET_TIMER=09(dev_priv->display->mipi_mmio_base + 0=
xb81c)
 #define MIPI_DEVICE_RESET_TIMER(port)=09_MMIO_MIPI(port, _MIPIA_DEVICE_RES=
ET_TIMER, _MIPIC_DEVICE_RESET_TIMER)
 #define  DEVICE_RESET_TIMER_MASK=09=09=090xffff
=20
-#define _MIPIA_DPI_RESOLUTION=09=09(dev_priv->mipi_mmio_base + 0xb020)
-#define _MIPIC_DPI_RESOLUTION=09=09(dev_priv->mipi_mmio_base + 0xb820)
+#define _MIPIA_DPI_RESOLUTION=09=09(dev_priv->display->mipi_mmio_base + 0x=
b020)
+#define _MIPIC_DPI_RESOLUTION=09=09(dev_priv->display->mipi_mmio_base + 0x=
b820)
 #define MIPI_DPI_RESOLUTION(port)=09_MMIO_MIPI(port, _MIPIA_DPI_RESOLUTION=
, _MIPIC_DPI_RESOLUTION)
 #define  VERTICAL_ADDRESS_SHIFT=09=09=09=0916
 #define  VERTICAL_ADDRESS_MASK=09=09=09=09(0xffff << 16)
 #define  HORIZONTAL_ADDRESS_SHIFT=09=09=090
 #define  HORIZONTAL_ADDRESS_MASK=09=09=090xffff
=20
-#define _MIPIA_DBI_FIFO_THROTTLE=09(dev_priv->mipi_mmio_base + 0xb024)
-#define _MIPIC_DBI_FIFO_THROTTLE=09(dev_priv->mipi_mmio_base + 0xb824)
+#define _MIPIA_DBI_FIFO_THROTTLE=09(dev_priv->display->mipi_mmio_base + 0x=
b024)
+#define _MIPIC_DBI_FIFO_THROTTLE=09(dev_priv->display->mipi_mmio_base + 0x=
b824)
 #define MIPI_DBI_FIFO_THROTTLE(port)=09_MMIO_MIPI(port, _MIPIA_DBI_FIFO_TH=
ROTTLE, _MIPIC_DBI_FIFO_THROTTLE)
 #define  DBI_FIFO_EMPTY_HALF=09=09=09=09(0 << 0)
 #define  DBI_FIFO_EMPTY_QUARTER=09=09=09=09(1 << 0)
 #define  DBI_FIFO_EMPTY_7_LOCATIONS=09=09=09(2 << 0)
=20
 /* regs below are bits 15:0 */
-#define _MIPIA_HSYNC_PADDING_COUNT=09(dev_priv->mipi_mmio_base + 0xb028)
-#define _MIPIC_HSYNC_PADDING_COUNT=09(dev_priv->mipi_mmio_base + 0xb828)
+#define _MIPIA_HSYNC_PADDING_COUNT=09(dev_priv->display->mipi_mmio_base + =
0xb028)
+#define _MIPIC_HSYNC_PADDING_COUNT=09(dev_priv->display->mipi_mmio_base + =
0xb828)
 #define MIPI_HSYNC_PADDING_COUNT(port)=09_MMIO_MIPI(port, _MIPIA_HSYNC_PAD=
DING_COUNT, _MIPIC_HSYNC_PADDING_COUNT)
=20
-#define _MIPIA_HBP_COUNT=09=09(dev_priv->mipi_mmio_base + 0xb02c)
-#define _MIPIC_HBP_COUNT=09=09(dev_priv->mipi_mmio_base + 0xb82c)
+#define _MIPIA_HBP_COUNT=09=09(dev_priv->display->mipi_mmio_base + 0xb02c)
+#define _MIPIC_HBP_COUNT=09=09(dev_priv->display->mipi_mmio_base + 0xb82c)
 #define MIPI_HBP_COUNT(port)=09=09_MMIO_MIPI(port, _MIPIA_HBP_COUNT, _MIPI=
C_HBP_COUNT)
=20
-#define _MIPIA_HFP_COUNT=09=09(dev_priv->mipi_mmio_base + 0xb030)
-#define _MIPIC_HFP_COUNT=09=09(dev_priv->mipi_mmio_base + 0xb830)
+#define _MIPIA_HFP_COUNT=09=09(dev_priv->display->mipi_mmio_base + 0xb030)
+#define _MIPIC_HFP_COUNT=09=09(dev_priv->display->mipi_mmio_base + 0xb830)
 #define MIPI_HFP_COUNT(port)=09=09_MMIO_MIPI(port, _MIPIA_HFP_COUNT, _MIPI=
C_HFP_COUNT)
=20
-#define _MIPIA_HACTIVE_AREA_COUNT=09(dev_priv->mipi_mmio_base + 0xb034)
-#define _MIPIC_HACTIVE_AREA_COUNT=09(dev_priv->mipi_mmio_base + 0xb834)
+#define _MIPIA_HACTIVE_AREA_COUNT=09(dev_priv->display->mipi_mmio_base + 0=
xb034)
+#define _MIPIC_HACTIVE_AREA_COUNT=09(dev_priv->display->mipi_mmio_base + 0=
xb834)
 #define MIPI_HACTIVE_AREA_COUNT(port)=09_MMIO_MIPI(port, _MIPIA_HACTIVE_AR=
EA_COUNT, _MIPIC_HACTIVE_AREA_COUNT)
=20
-#define _MIPIA_VSYNC_PADDING_COUNT=09(dev_priv->mipi_mmio_base + 0xb038)
-#define _MIPIC_VSYNC_PADDING_COUNT=09(dev_priv->mipi_mmio_base + 0xb838)
+#define _MIPIA_VSYNC_PADDING_COUNT=09(dev_priv->display->mipi_mmio_base + =
0xb038)
+#define _MIPIC_VSYNC_PADDING_COUNT=09(dev_priv->display->mipi_mmio_base + =
0xb838)
 #define MIPI_VSYNC_PADDING_COUNT(port)=09_MMIO_MIPI(port, _MIPIA_VSYNC_PAD=
DING_COUNT, _MIPIC_VSYNC_PADDING_COUNT)
=20
-#define _MIPIA_VBP_COUNT=09=09(dev_priv->mipi_mmio_base + 0xb03c)
-#define _MIPIC_VBP_COUNT=09=09(dev_priv->mipi_mmio_base + 0xb83c)
+#define _MIPIA_VBP_COUNT=09=09(dev_priv->display->mipi_mmio_base + 0xb03c)
+#define _MIPIC_VBP_COUNT=09=09(dev_priv->display->mipi_mmio_base + 0xb83c)
 #define MIPI_VBP_COUNT(port)=09=09_MMIO_MIPI(port, _MIPIA_VBP_COUNT, _MIPI=
C_VBP_COUNT)
=20
-#define _MIPIA_VFP_COUNT=09=09(dev_priv->mipi_mmio_base + 0xb040)
-#define _MIPIC_VFP_COUNT=09=09(dev_priv->mipi_mmio_base + 0xb840)
+#define _MIPIA_VFP_COUNT=09=09(dev_priv->display->mipi_mmio_base + 0xb040)
+#define _MIPIC_VFP_COUNT=09=09(dev_priv->display->mipi_mmio_base + 0xb840)
 #define MIPI_VFP_COUNT(port)=09=09_MMIO_MIPI(port, _MIPIA_VFP_COUNT, _MIPI=
C_VFP_COUNT)
=20
-#define _MIPIA_HIGH_LOW_SWITCH_COUNT=09(dev_priv->mipi_mmio_base + 0xb044)
-#define _MIPIC_HIGH_LOW_SWITCH_COUNT=09(dev_priv->mipi_mmio_base + 0xb844)
+#define _MIPIA_HIGH_LOW_SWITCH_COUNT=09(dev_priv->display->mipi_mmio_base =
+ 0xb044)
+#define _MIPIC_HIGH_LOW_SWITCH_COUNT=09(dev_priv->display->mipi_mmio_base =
+ 0xb844)
 #define MIPI_HIGH_LOW_SWITCH_COUNT(port)=09_MMIO_MIPI(port,=09_MIPIA_HIGH_=
LOW_SWITCH_COUNT, _MIPIC_HIGH_LOW_SWITCH_COUNT)
=20
 /* regs above are bits 15:0 */
=20
-#define _MIPIA_DPI_CONTROL=09=09(dev_priv->mipi_mmio_base + 0xb048)
-#define _MIPIC_DPI_CONTROL=09=09(dev_priv->mipi_mmio_base + 0xb848)
+#define _MIPIA_DPI_CONTROL=09=09(dev_priv->display->mipi_mmio_base + 0xb04=
8)
+#define _MIPIC_DPI_CONTROL=09=09(dev_priv->display->mipi_mmio_base + 0xb84=
8)
 #define MIPI_DPI_CONTROL(port)=09=09_MMIO_MIPI(port, _MIPIA_DPI_CONTROL, _=
MIPIC_DPI_CONTROL)
 #define  DPI_LP_MODE=09=09=09=09=09(1 << 6)
 #define  BACKLIGHT_OFF=09=09=09=09=09(1 << 5)
@@ -11884,27 +11884,27 @@ enum skl_power_gate {
 #define  TURN_ON=09=09=09=09=09(1 << 1)
 #define  SHUTDOWN=09=09=09=09=09(1 << 0)
=20
-#define _MIPIA_DPI_DATA=09=09=09(dev_priv->mipi_mmio_base + 0xb04c)
-#define _MIPIC_DPI_DATA=09=09=09(dev_priv->mipi_mmio_base + 0xb84c)
+#define _MIPIA_DPI_DATA=09=09=09(dev_priv->display->mipi_mmio_base + 0xb04=
c)
+#define _MIPIC_DPI_DATA=09=09=09(dev_priv->display->mipi_mmio_base + 0xb84=
c)
 #define MIPI_DPI_DATA(port)=09=09_MMIO_MIPI(port, _MIPIA_DPI_DATA, _MIPIC_=
DPI_DATA)
 #define  COMMAND_BYTE_SHIFT=09=09=09=090
 #define  COMMAND_BYTE_MASK=09=09=09=09(0x3f << 0)
=20
-#define _MIPIA_INIT_COUNT=09=09(dev_priv->mipi_mmio_base + 0xb050)
-#define _MIPIC_INIT_COUNT=09=09(dev_priv->mipi_mmio_base + 0xb850)
+#define _MIPIA_INIT_COUNT=09=09(dev_priv->display->mipi_mmio_base + 0xb050=
)
+#define _MIPIC_INIT_COUNT=09=09(dev_priv->display->mipi_mmio_base + 0xb850=
)
 #define MIPI_INIT_COUNT(port)=09=09_MMIO_MIPI(port, _MIPIA_INIT_COUNT, _MI=
PIC_INIT_COUNT)
 #define  MASTER_INIT_TIMER_SHIFT=09=09=090
 #define  MASTER_INIT_TIMER_MASK=09=09=09=09(0xffff << 0)
=20
-#define _MIPIA_MAX_RETURN_PKT_SIZE=09(dev_priv->mipi_mmio_base + 0xb054)
-#define _MIPIC_MAX_RETURN_PKT_SIZE=09(dev_priv->mipi_mmio_base + 0xb854)
+#define _MIPIA_MAX_RETURN_PKT_SIZE=09(dev_priv->display->mipi_mmio_base + =
0xb054)
+#define _MIPIC_MAX_RETURN_PKT_SIZE=09(dev_priv->display->mipi_mmio_base + =
0xb854)
 #define MIPI_MAX_RETURN_PKT_SIZE(port)=09_MMIO_MIPI(port, \
 =09=09=09_MIPIA_MAX_RETURN_PKT_SIZE, _MIPIC_MAX_RETURN_PKT_SIZE)
 #define  MAX_RETURN_PKT_SIZE_SHIFT=09=09=090
 #define  MAX_RETURN_PKT_SIZE_MASK=09=09=09(0x3ff << 0)
=20
-#define _MIPIA_VIDEO_MODE_FORMAT=09(dev_priv->mipi_mmio_base + 0xb058)
-#define _MIPIC_VIDEO_MODE_FORMAT=09(dev_priv->mipi_mmio_base + 0xb858)
+#define _MIPIA_VIDEO_MODE_FORMAT=09(dev_priv->display->mipi_mmio_base + 0x=
b058)
+#define _MIPIC_VIDEO_MODE_FORMAT=09(dev_priv->display->mipi_mmio_base + 0x=
b858)
 #define MIPI_VIDEO_MODE_FORMAT(port)=09_MMIO_MIPI(port, _MIPIA_VIDEO_MODE_=
FORMAT, _MIPIC_VIDEO_MODE_FORMAT)
 #define  RANDOM_DPI_DISPLAY_RESOLUTION=09=09=09(1 << 4)
 #define  DISABLE_VIDEO_BTA=09=09=09=09(1 << 3)
@@ -11913,8 +11913,8 @@ enum skl_power_gate {
 #define  VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS=09=09(2 << 0)
 #define  VIDEO_MODE_BURST=09=09=09=09(3 << 0)
=20
-#define _MIPIA_EOT_DISABLE=09=09(dev_priv->mipi_mmio_base + 0xb05c)
-#define _MIPIC_EOT_DISABLE=09=09(dev_priv->mipi_mmio_base + 0xb85c)
+#define _MIPIA_EOT_DISABLE=09=09(dev_priv->display->mipi_mmio_base + 0xb05=
c)
+#define _MIPIC_EOT_DISABLE=09=09(dev_priv->display->mipi_mmio_base + 0xb85=
c)
 #define MIPI_EOT_DISABLE(port)=09=09_MMIO_MIPI(port, _MIPIA_EOT_DISABLE, _=
MIPIC_EOT_DISABLE)
 #define  BXT_DEFEATURE_DPI_FIFO_CTR=09=09=09(1 << 9)
 #define  BXT_DPHY_DEFEATURE_EN=09=09=09=09(1 << 8)
@@ -11927,35 +11927,35 @@ enum skl_power_gate {
 #define  CLOCKSTOP=09=09=09=09=09(1 << 1)
 #define  EOT_DISABLE=09=09=09=09=09(1 << 0)
=20
-#define _MIPIA_LP_BYTECLK=09=09(dev_priv->mipi_mmio_base + 0xb060)
-#define _MIPIC_LP_BYTECLK=09=09(dev_priv->mipi_mmio_base + 0xb860)
+#define _MIPIA_LP_BYTECLK=09=09(dev_priv->display->mipi_mmio_base + 0xb060=
)
+#define _MIPIC_LP_BYTECLK=09=09(dev_priv->display->mipi_mmio_base + 0xb860=
)
 #define MIPI_LP_BYTECLK(port)=09=09_MMIO_MIPI(port, _MIPIA_LP_BYTECLK, _MI=
PIC_LP_BYTECLK)
 #define  LP_BYTECLK_SHIFT=09=09=09=090
 #define  LP_BYTECLK_MASK=09=09=09=09(0xffff << 0)
=20
-#define _MIPIA_TLPX_TIME_COUNT=09=09(dev_priv->mipi_mmio_base + 0xb0a4)
-#define _MIPIC_TLPX_TIME_COUNT=09=09(dev_priv->mipi_mmio_base + 0xb8a4)
+#define _MIPIA_TLPX_TIME_COUNT=09=09(dev_priv->display->mipi_mmio_base + 0=
xb0a4)
+#define _MIPIC_TLPX_TIME_COUNT=09=09(dev_priv->display->mipi_mmio_base + 0=
xb8a4)
 #define MIPI_TLPX_TIME_COUNT(port)=09 _MMIO_MIPI(port, _MIPIA_TLPX_TIME_CO=
UNT, _MIPIC_TLPX_TIME_COUNT)
=20
-#define _MIPIA_CLK_LANE_TIMING=09=09(dev_priv->mipi_mmio_base + 0xb098)
-#define _MIPIC_CLK_LANE_TIMING=09=09(dev_priv->mipi_mmio_base + 0xb898)
+#define _MIPIA_CLK_LANE_TIMING=09=09(dev_priv->display->mipi_mmio_base + 0=
xb098)
+#define _MIPIC_CLK_LANE_TIMING=09=09(dev_priv->display->mipi_mmio_base + 0=
xb898)
 #define MIPI_CLK_LANE_TIMING(port)=09 _MMIO_MIPI(port, _MIPIA_CLK_LANE_TIM=
ING, _MIPIC_CLK_LANE_TIMING)
=20
 /* bits 31:0 */
-#define _MIPIA_LP_GEN_DATA=09=09(dev_priv->mipi_mmio_base + 0xb064)
-#define _MIPIC_LP_GEN_DATA=09=09(dev_priv->mipi_mmio_base + 0xb864)
+#define _MIPIA_LP_GEN_DATA=09=09(dev_priv->display->mipi_mmio_base + 0xb06=
4)
+#define _MIPIC_LP_GEN_DATA=09=09(dev_priv->display->mipi_mmio_base + 0xb86=
4)
 #define MIPI_LP_GEN_DATA(port)=09=09_MMIO_MIPI(port, _MIPIA_LP_GEN_DATA, _=
MIPIC_LP_GEN_DATA)
=20
 /* bits 31:0 */
-#define _MIPIA_HS_GEN_DATA=09=09(dev_priv->mipi_mmio_base + 0xb068)
-#define _MIPIC_HS_GEN_DATA=09=09(dev_priv->mipi_mmio_base + 0xb868)
+#define _MIPIA_HS_GEN_DATA=09=09(dev_priv->display->mipi_mmio_base + 0xb06=
8)
+#define _MIPIC_HS_GEN_DATA=09=09(dev_priv->display->mipi_mmio_base + 0xb86=
8)
 #define MIPI_HS_GEN_DATA(port)=09=09_MMIO_MIPI(port, _MIPIA_HS_GEN_DATA, _=
MIPIC_HS_GEN_DATA)
=20
-#define _MIPIA_LP_GEN_CTRL=09=09(dev_priv->mipi_mmio_base + 0xb06c)
-#define _MIPIC_LP_GEN_CTRL=09=09(dev_priv->mipi_mmio_base + 0xb86c)
+#define _MIPIA_LP_GEN_CTRL=09=09(dev_priv->display->mipi_mmio_base + 0xb06=
c)
+#define _MIPIC_LP_GEN_CTRL=09=09(dev_priv->display->mipi_mmio_base + 0xb86=
c)
 #define MIPI_LP_GEN_CTRL(port)=09=09_MMIO_MIPI(port, _MIPIA_LP_GEN_CTRL, _=
MIPIC_LP_GEN_CTRL)
-#define _MIPIA_HS_GEN_CTRL=09=09(dev_priv->mipi_mmio_base + 0xb070)
-#define _MIPIC_HS_GEN_CTRL=09=09(dev_priv->mipi_mmio_base + 0xb870)
+#define _MIPIA_HS_GEN_CTRL=09=09(dev_priv->display->mipi_mmio_base + 0xb07=
0)
+#define _MIPIC_HS_GEN_CTRL=09=09(dev_priv->display->mipi_mmio_base + 0xb87=
0)
 #define MIPI_HS_GEN_CTRL(port)=09=09_MMIO_MIPI(port, _MIPIA_HS_GEN_CTRL, _=
MIPIC_HS_GEN_CTRL)
 #define  LONG_PACKET_WORD_COUNT_SHIFT=09=09=098
 #define  LONG_PACKET_WORD_COUNT_MASK=09=09=09(0xffff << 8)
@@ -11965,10 +11965,10 @@ enum skl_power_gate {
 #define  VIRTUAL_CHANNEL_MASK=09=09=09=09(3 << 6)
 #define  DATA_TYPE_SHIFT=09=09=09=090
 #define  DATA_TYPE_MASK=09=09=09=09=09(0x3f << 0)
-/* data type values, see include/video/mipi_display.h */
+/* data type values, see include/video/mipi_display->h */
=20
-#define _MIPIA_GEN_FIFO_STAT=09=09(dev_priv->mipi_mmio_base + 0xb074)
-#define _MIPIC_GEN_FIFO_STAT=09=09(dev_priv->mipi_mmio_base + 0xb874)
+#define _MIPIA_GEN_FIFO_STAT=09=09(dev_priv->display->mipi_mmio_base + 0xb=
074)
+#define _MIPIC_GEN_FIFO_STAT=09=09(dev_priv->display->mipi_mmio_base + 0xb=
874)
 #define MIPI_GEN_FIFO_STAT(port)=09_MMIO_MIPI(port, _MIPIA_GEN_FIFO_STAT, =
_MIPIC_GEN_FIFO_STAT)
 #define  DPI_FIFO_EMPTY=09=09=09=09=09(1 << 28)
 #define  DBI_FIFO_EMPTY=09=09=09=09=09(1 << 27)
@@ -11985,15 +11985,15 @@ enum skl_power_gate {
 #define  HS_DATA_FIFO_HALF_EMPTY=09=09=09(1 << 1)
 #define  HS_DATA_FIFO_FULL=09=09=09=09(1 << 0)
=20
-#define _MIPIA_HS_LS_DBI_ENABLE=09=09(dev_priv->mipi_mmio_base + 0xb078)
-#define _MIPIC_HS_LS_DBI_ENABLE=09=09(dev_priv->mipi_mmio_base + 0xb878)
+#define _MIPIA_HS_LS_DBI_ENABLE=09=09(dev_priv->display->mipi_mmio_base + =
0xb078)
+#define _MIPIC_HS_LS_DBI_ENABLE=09=09(dev_priv->display->mipi_mmio_base + =
0xb878)
 #define MIPI_HS_LP_DBI_ENABLE(port)=09_MMIO_MIPI(port, _MIPIA_HS_LS_DBI_EN=
ABLE, _MIPIC_HS_LS_DBI_ENABLE)
 #define  DBI_HS_LP_MODE_MASK=09=09=09=09(1 << 0)
 #define  DBI_LP_MODE=09=09=09=09=09(1 << 0)
 #define  DBI_HS_MODE=09=09=09=09=09(0 << 0)
=20
-#define _MIPIA_DPHY_PARAM=09=09(dev_priv->mipi_mmio_base + 0xb080)
-#define _MIPIC_DPHY_PARAM=09=09(dev_priv->mipi_mmio_base + 0xb880)
+#define _MIPIA_DPHY_PARAM=09=09(dev_priv->display->mipi_mmio_base + 0xb080=
)
+#define _MIPIC_DPHY_PARAM=09=09(dev_priv->display->mipi_mmio_base + 0xb880=
)
 #define MIPI_DPHY_PARAM(port)=09=09_MMIO_MIPI(port, _MIPIA_DPHY_PARAM, _MI=
PIC_DPHY_PARAM)
 #define  EXIT_ZERO_COUNT_SHIFT=09=09=09=0924
 #define  EXIT_ZERO_COUNT_MASK=09=09=09=09(0x3f << 24)
@@ -12242,34 +12242,34 @@ enum skl_power_gate {
 #define  TA_TIMEOUT_VALUE(x)=09=09((x) << 0)
=20
 /* bits 31:0 */
-#define _MIPIA_DBI_BW_CTRL=09=09(dev_priv->mipi_mmio_base + 0xb084)
-#define _MIPIC_DBI_BW_CTRL=09=09(dev_priv->mipi_mmio_base + 0xb884)
+#define _MIPIA_DBI_BW_CTRL=09=09(dev_priv->display->mipi_mmio_base + 0xb08=
4)
+#define _MIPIC_DBI_BW_CTRL=09=09(dev_priv->display->mipi_mmio_base + 0xb88=
4)
 #define MIPI_DBI_BW_CTRL(port)=09=09_MMIO_MIPI(port, _MIPIA_DBI_BW_CTRL, _=
MIPIC_DBI_BW_CTRL)
=20
-#define _MIPIA_CLK_LANE_SWITCH_TIME_CNT=09=09(dev_priv->mipi_mmio_base + 0=
xb088)
-#define _MIPIC_CLK_LANE_SWITCH_TIME_CNT=09=09(dev_priv->mipi_mmio_base + 0=
xb888)
+#define _MIPIA_CLK_LANE_SWITCH_TIME_CNT=09=09(dev_priv->display->mipi_mmio=
_base + 0xb088)
+#define _MIPIC_CLK_LANE_SWITCH_TIME_CNT=09=09(dev_priv->display->mipi_mmio=
_base + 0xb888)
 #define MIPI_CLK_LANE_SWITCH_TIME_CNT(port)=09_MMIO_MIPI(port, _MIPIA_CLK_=
LANE_SWITCH_TIME_CNT, _MIPIC_CLK_LANE_SWITCH_TIME_CNT)
 #define  LP_HS_SSW_CNT_SHIFT=09=09=09=0916
 #define  LP_HS_SSW_CNT_MASK=09=09=09=09(0xffff << 16)
 #define  HS_LP_PWR_SW_CNT_SHIFT=09=09=09=090
 #define  HS_LP_PWR_SW_CNT_MASK=09=09=09=09(0xffff << 0)
=20
-#define _MIPIA_STOP_STATE_STALL=09=09(dev_priv->mipi_mmio_base + 0xb08c)
-#define _MIPIC_STOP_STATE_STALL=09=09(dev_priv->mipi_mmio_base + 0xb88c)
+#define _MIPIA_STOP_STATE_STALL=09=09(dev_priv->display->mipi_mmio_base + =
0xb08c)
+#define _MIPIC_STOP_STATE_STALL=09=09(dev_priv->display->mipi_mmio_base + =
0xb88c)
 #define MIPI_STOP_STATE_STALL(port)=09_MMIO_MIPI(port, _MIPIA_STOP_STATE_S=
TALL, _MIPIC_STOP_STATE_STALL)
 #define  STOP_STATE_STALL_COUNTER_SHIFT=09=09=090
 #define  STOP_STATE_STALL_COUNTER_MASK=09=09=09(0xff << 0)
=20
-#define _MIPIA_INTR_STAT_REG_1=09=09(dev_priv->mipi_mmio_base + 0xb090)
-#define _MIPIC_INTR_STAT_REG_1=09=09(dev_priv->mipi_mmio_base + 0xb890)
+#define _MIPIA_INTR_STAT_REG_1=09=09(dev_priv->display->mipi_mmio_base + 0=
xb090)
+#define _MIPIC_INTR_STAT_REG_1=09=09(dev_priv->display->mipi_mmio_base + 0=
xb890)
 #define MIPI_INTR_STAT_REG_1(port)=09_MMIO_MIPI(port, _MIPIA_INTR_STAT_REG=
_1, _MIPIC_INTR_STAT_REG_1)
-#define _MIPIA_INTR_EN_REG_1=09=09(dev_priv->mipi_mmio_base + 0xb094)
-#define _MIPIC_INTR_EN_REG_1=09=09(dev_priv->mipi_mmio_base + 0xb894)
+#define _MIPIA_INTR_EN_REG_1=09=09(dev_priv->display->mipi_mmio_base + 0xb=
094)
+#define _MIPIC_INTR_EN_REG_1=09=09(dev_priv->display->mipi_mmio_base + 0xb=
894)
 #define MIPI_INTR_EN_REG_1(port)=09_MMIO_MIPI(port, _MIPIA_INTR_EN_REG_1, =
_MIPIC_INTR_EN_REG_1)
 #define  RX_CONTENTION_DETECTED=09=09=09=09(1 << 0)
=20
 /* XXX: only pipe A ?!? */
-#define MIPIA_DBI_TYPEC_CTRL=09=09(dev_priv->mipi_mmio_base + 0xb100)
+#define MIPIA_DBI_TYPEC_CTRL=09=09(dev_priv->display->mipi_mmio_base + 0xb=
100)
 #define  DBI_TYPEC_ENABLE=09=09=09=09(1 << 31)
 #define  DBI_TYPEC_WIP=09=09=09=09=09(1 << 30)
 #define  DBI_TYPEC_OPTION_SHIFT=09=09=09=0928
@@ -12283,8 +12283,8 @@ enum skl_power_gate {
=20
 /* MIPI adapter registers */
=20
-#define _MIPIA_CTRL=09=09=09(dev_priv->mipi_mmio_base + 0xb104)
-#define _MIPIC_CTRL=09=09=09(dev_priv->mipi_mmio_base + 0xb904)
+#define _MIPIA_CTRL=09=09=09(dev_priv->display->mipi_mmio_base + 0xb104)
+#define _MIPIC_CTRL=09=09=09(dev_priv->display->mipi_mmio_base + 0xb904)
 #define MIPI_CTRL(port)=09=09=09_MMIO_MIPI(port, _MIPIA_CTRL, _MIPIC_CTRL)
 #define  ESCAPE_CLOCK_DIVIDER_SHIFT=09=09=095 /* A only */
 #define  ESCAPE_CLOCK_DIVIDER_MASK=09=09=09(3 << 5)
@@ -12316,21 +12316,21 @@ enum skl_power_gate {
 #define  GLK_MIPIIO_PORT_POWERED=09=09=09(1 << 1) /* RO */
 #define  GLK_MIPIIO_ENABLE=09=09=09=09(1 << 0)
=20
-#define _MIPIA_DATA_ADDRESS=09=09(dev_priv->mipi_mmio_base + 0xb108)
-#define _MIPIC_DATA_ADDRESS=09=09(dev_priv->mipi_mmio_base + 0xb908)
+#define _MIPIA_DATA_ADDRESS=09=09(dev_priv->display->mipi_mmio_base + 0xb1=
08)
+#define _MIPIC_DATA_ADDRESS=09=09(dev_priv->display->mipi_mmio_base + 0xb9=
08)
 #define MIPI_DATA_ADDRESS(port)=09=09_MMIO_MIPI(port, _MIPIA_DATA_ADDRESS,=
 _MIPIC_DATA_ADDRESS)
 #define  DATA_MEM_ADDRESS_SHIFT=09=09=09=095
 #define  DATA_MEM_ADDRESS_MASK=09=09=09=09(0x7ffffff << 5)
 #define  DATA_VALID=09=09=09=09=09(1 << 0)
=20
-#define _MIPIA_DATA_LENGTH=09=09(dev_priv->mipi_mmio_base + 0xb10c)
-#define _MIPIC_DATA_LENGTH=09=09(dev_priv->mipi_mmio_base + 0xb90c)
+#define _MIPIA_DATA_LENGTH=09=09(dev_priv->display->mipi_mmio_base + 0xb10=
c)
+#define _MIPIC_DATA_LENGTH=09=09(dev_priv->display->mipi_mmio_base + 0xb90=
c)
 #define MIPI_DATA_LENGTH(port)=09=09_MMIO_MIPI(port, _MIPIA_DATA_LENGTH, _=
MIPIC_DATA_LENGTH)
 #define  DATA_LENGTH_SHIFT=09=09=09=090
 #define  DATA_LENGTH_MASK=09=09=09=09(0xfffff << 0)
=20
-#define _MIPIA_COMMAND_ADDRESS=09=09(dev_priv->mipi_mmio_base + 0xb110)
-#define _MIPIC_COMMAND_ADDRESS=09=09(dev_priv->mipi_mmio_base + 0xb910)
+#define _MIPIA_COMMAND_ADDRESS=09=09(dev_priv->display->mipi_mmio_base + 0=
xb110)
+#define _MIPIC_COMMAND_ADDRESS=09=09(dev_priv->display->mipi_mmio_base + 0=
xb910)
 #define MIPI_COMMAND_ADDRESS(port)=09_MMIO_MIPI(port, _MIPIA_COMMAND_ADDRE=
SS, _MIPIC_COMMAND_ADDRESS)
 #define  COMMAND_MEM_ADDRESS_SHIFT=09=09=095
 #define  COMMAND_MEM_ADDRESS_MASK=09=09=09(0x7ffffff << 5)
@@ -12338,18 +12338,18 @@ enum skl_power_gate {
 #define  MEMORY_WRITE_DATA_FROM_PIPE_RENDERING=09=09(1 << 1)
 #define  COMMAND_VALID=09=09=09=09=09(1 << 0)
=20
-#define _MIPIA_COMMAND_LENGTH=09=09(dev_priv->mipi_mmio_base + 0xb114)
-#define _MIPIC_COMMAND_LENGTH=09=09(dev_priv->mipi_mmio_base + 0xb914)
+#define _MIPIA_COMMAND_LENGTH=09=09(dev_priv->display->mipi_mmio_base + 0x=
b114)
+#define _MIPIC_COMMAND_LENGTH=09=09(dev_priv->display->mipi_mmio_base + 0x=
b914)
 #define MIPI_COMMAND_LENGTH(port)=09_MMIO_MIPI(port, _MIPIA_COMMAND_LENGTH=
, _MIPIC_COMMAND_LENGTH)
 #define  COMMAND_LENGTH_SHIFT(n)=09=09=09(8 * (n)) /* n: 0...3 */
 #define  COMMAND_LENGTH_MASK(n)=09=09=09=09(0xff << (8 * (n)))
=20
-#define _MIPIA_READ_DATA_RETURN0=09(dev_priv->mipi_mmio_base + 0xb118)
-#define _MIPIC_READ_DATA_RETURN0=09(dev_priv->mipi_mmio_base + 0xb918)
+#define _MIPIA_READ_DATA_RETURN0=09(dev_priv->display->mipi_mmio_base + 0x=
b118)
+#define _MIPIC_READ_DATA_RETURN0=09(dev_priv->display->mipi_mmio_base + 0x=
b918)
 #define MIPI_READ_DATA_RETURN(port, n) _MMIO(_MIPI(port, _MIPIA_READ_DATA_=
RETURN0, _MIPIC_READ_DATA_RETURN0) + 4 * (n)) /* n: 0...7 */
=20
-#define _MIPIA_READ_DATA_VALID=09=09(dev_priv->mipi_mmio_base + 0xb138)
-#define _MIPIC_READ_DATA_VALID=09=09(dev_priv->mipi_mmio_base + 0xb938)
+#define _MIPIA_READ_DATA_VALID=09=09(dev_priv->display->mipi_mmio_base + 0=
xb138)
+#define _MIPIC_READ_DATA_VALID=09=09(dev_priv->display->mipi_mmio_base + 0=
xb938)
 #define MIPI_READ_DATA_VALID(port)=09_MMIO_MIPI(port, _MIPIA_READ_DATA_VAL=
ID, _MIPIC_READ_DATA_VALID)
 #define  READ_DATA_VALID(n)=09=09=09=09(1 << (n))
=20
--=20
2.31.1

