Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1F721FF24
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 22:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 452FA6E9C4;
	Tue, 14 Jul 2020 20:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC42C6E972;
 Tue, 14 Jul 2020 20:58:24 +0000 (UTC)
IronPort-SDR: MvP8+o1Tcw8LzS8OIWbrcqxsgeow+ZPhTSL8SrRda876fGMzfzrhVaoDKe5R2fSJCAFY4SFooZ
 hFJaRUSqmUNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="150444555"
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="150444555"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 13:58:24 -0700
IronPort-SDR: PjWBXPLXSYw6YaIQVlcE35w6fxMXjrqEoHiMI5ypb/g7Qx17ArEDOS2VJq60n/khTSHXTsfMtE
 NXH0qSZfrzQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="316504101"
Received: from ahanamuk-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.251.155.61])
 by orsmga008.jf.intel.com with ESMTP; 14 Jul 2020 13:58:23 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 14 Jul 2020 13:56:58 -0700
Message-Id: <1594760265-11618-13-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH v2 12/59] drm/kmb: Part3 of Mipi Tx
 initialization
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This initializes the multichannel fifo in the mipi transmitter and
sets the LCD to mipi interconnect which connects LCD to MIPI ctrl #6

v2: code review changes to make code simpler

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_drv.h  | 25 +++++++++++++++---
 drivers/gpu/drm/kmb/kmb_dsi.c  | 58 ++++++++++++++++++++++++++++++++++--------
 drivers/gpu/drm/kmb/kmb_dsi.h  |  3 +++
 drivers/gpu/drm/kmb/kmb_regs.h | 30 +++++++++++++++++++---
 4 files changed, 99 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_drv.h b/drivers/gpu/drm/kmb/kmb_drv.h
index d2a0f91..f1d5b3a 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.h
+++ b/drivers/gpu/drm/kmb/kmb_drv.h
@@ -8,8 +8,8 @@
 
 #include "kmb_regs.h"
 
-#define KMB_MAX_WIDTH			16384 /*max width in pixels */
-#define KMB_MAX_HEIGHT			16384 /*max height in pixels */
+#define KMB_MAX_WIDTH			16384	/*max width in pixels */
+#define KMB_MAX_HEIGHT			16384	/*max height in pixels */
 
 struct kmb_drm_private {
 	struct drm_device drm;
@@ -64,6 +64,11 @@ static inline void kmb_write_bits(struct kmb_drm_private *lcd,
 }
 #endif
 
+static inline void kmb_write(void *reg, u32 value)
+{
+	writel(value, reg);
+}
+
 static inline void kmb_write_lcd(unsigned int reg, u32 value)
 {
 	writel(value, (LCD_BASE_ADDR + reg));
@@ -85,7 +90,7 @@ static inline u32 kmb_read_mipi(unsigned int reg)
 }
 
 static inline void kmb_write_bits_mipi(unsigned int reg, u32 offset,
-		u32 num_bits, u32 value)
+				       u32 num_bits, u32 value)
 {
 	u32 reg_val = kmb_read_mipi(reg);
 	u32 mask = (1 << num_bits) - 1;
@@ -97,6 +102,20 @@ static inline void kmb_write_bits_mipi(unsigned int reg, u32 offset,
 	kmb_write_mipi(reg, reg_val);
 }
 
+static inline void kmb_set_bit_mipi(unsigned int reg, u32 offset)
+{
+	u32 reg_val = kmb_read_mipi(reg);
+
+	kmb_write_mipi(reg, reg_val | (1 << offset));
+}
+
+static inline void kmb_clr_bit_mipi(unsigned int reg, u32 offset)
+{
+	u32 reg_val = kmb_read_mipi(reg);
+
+	kmb_write_mipi(reg, reg_val & (~(1 << offset)));
+}
+
 int kmb_setup_crtc(struct drm_device *dev);
 void kmb_set_scanout(struct kmb_drm_private *lcd);
 #endif /* __KMB_DRV_H__ */
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.c b/drivers/gpu/drm/kmb/kmb_dsi.c
index 2326d3b..a5b9681 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.c
+++ b/drivers/gpu/drm/kmb/kmb_dsi.c
@@ -503,10 +503,41 @@ static void mipi_tx_fg_cfg(struct kmb_drm_private *dev_priv, u8 frame_gen,
 	mipi_tx_fg_cfg_regs(dev_priv, frame_gen, &fg_t_cfg);
 }
 
+static void mipi_tx_multichannel_fifo_cfg(u8 active_lanes, u8 vchannel_id)
+{
+	u32 fifo_size, fifo_rthreshold;
+	u32 ctrl_no = MIPI_CTRL6;
+
+	/*clear all mc fifo channel sizes and thresholds*/
+	kmb_write_mipi(MIPI_TX_HS_MC_FIFO_CTRL_EN, 0);
+	kmb_write_mipi(MIPI_TX_HS_MC_FIFO_CHAN_ALLOC0, 0);
+	kmb_write_mipi(MIPI_TX_HS_MC_FIFO_CHAN_ALLOC1, 0);
+	kmb_write_mipi(MIPI_TX_HS_MC_FIFO_RTHRESHOLD0, 0);
+	kmb_write_mipi(MIPI_TX_HS_MC_FIFO_RTHRESHOLD1, 0);
+
+	fifo_size = (active_lanes > MIPI_D_LANES_PER_DPHY) ?
+		MIPI_CTRL_4LANE_MAX_MC_FIFO_LOC :
+		MIPI_CTRL_2LANE_MAX_MC_FIFO_LOC;
+	/*MC fifo size for virtual channels 0-3 */
+	/*
+	 *REG_MC_FIFO_CHAN_ALLOC0: [8:0]-channel0, [24:16]-channel1
+	 *REG_MC_FIFO_CHAN_ALLOC1: [8:0]-2, [24:16]-channel3
+	 */
+	SET_MC_FIFO_CHAN_ALLOC(ctrl_no, vchannel_id, fifo_size);
+
+	/*set threshold to half the fifo size, actual size=size*16*/
+	fifo_rthreshold = ((fifo_size + 1) * 8) & BIT_MASK_16;
+	SET_MC_FIFO_RTHRESHOLD(ctrl_no, vchannel_id, fifo_rthreshold);
+
+	/*enable the MC FIFO channel corresponding to the Virtual Channel */
+	kmb_set_bit_mipi(MIPI_TXm_HS_MC_FIFO_CTRL_EN(ctrl_no), vchannel_id);
+}
+
 static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_priv,
-			      struct mipi_ctrl_cfg *ctrl_cfg)
+		struct mipi_ctrl_cfg *ctrl_cfg)
 {
 	u32 ret;
+	u8 active_vchannels = 0;
 	u8 frame_id, sect;
 	u32 bits_per_pclk = 0;
 	u32 word_count = 0;
@@ -544,18 +575,23 @@ static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_priv,
 
 		/* set frame specific parameters */
 		mipi_tx_fg_cfg(dev_priv, frame_id, ctrl_cfg->active_lanes,
-			       bits_per_pclk,
-			       word_count,
-			       ctrl_cfg->lane_rate_mbps,
-			       ctrl_cfg->tx_ctrl_cfg.frames[frame_id]);
-		/*function for setting frame sepecific parameters will be
-		 * called here
-		 */
-		/*bits_per_pclk and word_count will be passed in to this
-		 * function
-		 */
+				bits_per_pclk,
+				word_count,
+				ctrl_cfg->lane_rate_mbps,
+				ctrl_cfg->tx_ctrl_cfg.frames[frame_id]);
+
+		active_vchannels++;
 
+		/*connect lcd to mipi */
+		kmb_write(MSS_CAM_BASE_ADDR + MIPI_TX_MSS_LCD_MIPI_CFG, 1);
+
+		break;
 	}
+
+	if (active_vchannels == 0)
+		return -EINVAL;
+	/*Multi-Channel FIFO Configuration*/
+	mipi_tx_multichannel_fifo_cfg(ctrl_cfg->active_lanes, frame_id);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.h b/drivers/gpu/drm/kmb/kmb_dsi.h
index e50cd88..d1ec5a6 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.h
+++ b/drivers/gpu/drm/kmb/kmb_dsi.h
@@ -35,6 +35,9 @@ struct kmb_connector {
 #define MIPI_TX_FRAME_GEN	4
 #define MIPI_TX_FRAME_GEN_SECTIONS 4
 #define MIPI_CTRL_VIRTUAL_CHANNELS 4
+#define MIPI_D_LANES_PER_DPHY	2
+#define MIPI_CTRL_2LANE_MAX_MC_FIFO_LOC	255
+#define MIPI_CTRL_4LANE_MAX_MC_FIFO_LOC	511
 
 enum mipi_ctrl_num {
 	MIPI_CTRL0 = 0,
diff --git a/drivers/gpu/drm/kmb/kmb_regs.h b/drivers/gpu/drm/kmb/kmb_regs.h
index 600838f..ef6b4ee 100644
--- a/drivers/gpu/drm/kmb/kmb_regs.h
+++ b/drivers/gpu/drm/kmb/kmb_regs.h
@@ -11,6 +11,7 @@
 #define MIPI_BASE_ADDR                          (void *)(0x20900000)
 /*from Data Book section 12.11.6.1 page 4972 */
 #define LCD_BASE_ADDR                           (void *)(0x20930000)
+#define MSS_CAM_BASE_ADDR			(MIPI_BASE_ADDR + 0x10000)
 
 /***************************************************************************
  *		   LCD controller control register defines
@@ -375,6 +376,9 @@
  ***********************************************i****************************/
 #define MIPI0_HS_BASE_ADDR			(MIPI_BASE_ADDR + 0x400)
 #define MIPI_CTRL_HS_BASE_ADDR			(0x400)
+
+#define MIPI_TX_HS_CTRL				(0x0)
+#define MIPI_TX_HS_SYNC_CFG			(0x8)
 #define MIPI_TX0_HS_FG0_SECT0_PH		(0x40)
 #define MIPI_TXm_HS_FGn_SECTo_PH(M, N, O)	(MIPI_TX0_HS_FG0_SECT0_PH + \
 						(0x400*M) + (0x2C*N) + (8*O))
@@ -389,10 +393,10 @@
 #define MIPI_TX_HS_FG0_SECT_UNPACKED_BYTES0	(0x60)
 #define MIPI_TX_HS_FG0_SECT_UNPACKED_BYTES1	(0x64)
 #define MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(M, N) \
-		(MIPI_TX_HS_FG0_SECT_UNPACKED_BYTES0 + (0x400*M) + (0x2C*N))
-#define MIPI_TXm_HS_FGn_SECTo_LINE_CFG(M, N, O)	(MIPI_TX_HS_FG0_SECT0_LINE_CFG \
-				+ (0x400*M) + (0x2C*N) + (8*O))
+	(MIPI_TX_HS_FG0_SECT_UNPACKED_BYTES0 + (0x400*M) + (0x2C*N))
 #define MIPI_TX_HS_FG0_SECT0_LINE_CFG		(0x44)
+#define MIPI_TXm_HS_FGn_SECTo_LINE_CFG(M, N, O) \
+	(MIPI_TX_HS_FG0_SECT0_LINE_CFG + (0x400*M) + (0x2C*N) + (8*O))
 
 #define MIPI_TX_HS_FG0_NUM_LINES		(0x68)
 #define MIPI_TXm_HS_FGn_NUM_LINES(M, N)		(MIPI_TX_HS_FG0_NUM_LINES + \
@@ -431,4 +435,24 @@
 #define MIPI_TXm_HS_LLP_H_FRONTPORCHn(M, N)	(MIPI_TX_HS_LLP_H_FRONTPORCH0 \
 						+ (0x400*M) + (0x4*N))
 
+#define MIPI_TX_HS_MC_FIFO_CTRL_EN		(0x194)
+#define MIPI_TXm_HS_MC_FIFO_CTRL_EN(M)		(MIPI_TX_HS_MC_FIFO_CTRL_EN \
+						+ (0x400*M))
+#define MIPI_TX_HS_MC_FIFO_CHAN_ALLOC0		(0x198)
+#define MIPI_TX_HS_MC_FIFO_CHAN_ALLOC1		(0x19c)
+#define   MIPI_TXm_HS_MC_FIFO_CHAN_ALLOCn(M, N)	\
+			(MIPI_TX_HS_MC_FIFO_CHAN_ALLOC0 + (0x400*M) + (0x4*N))
+#define   SET_MC_FIFO_CHAN_ALLOC(ctrl, vc, sz)	\
+	kmb_write_bits_mipi(MIPI_TXm_HS_MC_FIFO_CHAN_ALLOCn(ctrl, vc/2), \
+			(vc % 2)*16, 16, sz)
+#define MIPI_TX_HS_MC_FIFO_RTHRESHOLD0		(0x1a0)
+#define MIPI_TX_HS_MC_FIFO_RTHRESHOLD1		(0x1a4)
+#define MIPI_TXm_HS_MC_FIFO_RTHRESHOLDn(M, N)	\
+		(MIPI_TX_HS_MC_FIFO_RTHRESHOLD0 + (0x400*M) + (0x4*N))
+#define SET_MC_FIFO_RTHRESHOLD(ctrl, vc, th)	\
+	kmb_write_bits_mipi(MIPI_TXm_HS_MC_FIFO_RTHRESHOLDn(ctrl, vc/2), \
+			(vc % 2)*16, 16, th)
+
+#define MIPI_TX_MSS_LCD_MIPI_CFG		(0x04)
+#define BIT_MASK_16			  (0xffff)
 #endif /* __KMB_REGS_H__ */
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
