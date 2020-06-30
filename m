Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5500420FED5
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3DDF6E343;
	Tue, 30 Jun 2020 21:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 418336E317;
 Tue, 30 Jun 2020 21:28:40 +0000 (UTC)
IronPort-SDR: 0hxPwmSJ7JGA2N+LHoqV3ZeyZBg7KoPjWVPtERkPrCr033juljZYTCGxVg8oHOSP+iOKyEasNq
 0zpuX1xVpL9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="144554705"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="144554705"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:39 -0700
IronPort-SDR: YvBT76Wi+ZROvjBm07FAH0V2uz7jy+SXS/p6jryW8ThbxJAT+ugtfbmU6r/tOgTkV3uuGKAMDH
 E4nj7XzTO76Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066657"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:39 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:27:26 -0700
Message-Id: <1593552491-23698-15-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 14/59] drm/kmb: Correct address offsets for mipi
 registers
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

Mipi HS registers start at an additional offset of 0x400 which needs to be
added at the register macro definition and not at the read/write function
level.

v2: replaced calculations with macro to make code simpler
Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_dsi.c  |  16 +++---
 drivers/gpu/drm/kmb/kmb_regs.h | 116 ++++++++++++++++++++++++-----------------
 2 files changed, 75 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_dsi.c b/drivers/gpu/drm/kmb/kmb_dsi.c
index 886a8ac..adcfe81 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.c
+++ b/drivers/gpu/drm/kmb/kmb_dsi.c
@@ -443,20 +443,20 @@ static void mipi_tx_fg_cfg_regs(struct kmb_drm_private *dev_priv,
 	 *REG_VSYNC_WIDTH0: [15:0]-VSA for channel0, [31:16]-VSA for channel1
 	 *REG_VSYNC_WIDTH1: [15:0]-VSA for channel2, [31:16]-VSA for channel3
 	 */
-	offset = (frame_gen % 2) * 16;
-	reg_adr = MIPI_TXm_HS_VSYNC_WIDTHn(ctrl_no, frame_gen);
+	offset = (frame_gen % 2)*16;
+	reg_adr = MIPI_TXm_HS_VSYNC_WIDTHn(ctrl_no, frame_gen/2);
 	kmb_write_bits_mipi(reg_adr, offset, 16, fg_cfg->vsync_width);
 
-	/*v backporch - same register config like vsync width */
-	reg_adr = MIPI_TXm_HS_V_BACKPORCHESn(ctrl_no, frame_gen);
+	/*v backporch - same register config like vsync width*/
+	reg_adr = MIPI_TXm_HS_V_BACKPORCHESn(ctrl_no, frame_gen/2);
 	kmb_write_bits_mipi(reg_adr, offset, 16, fg_cfg->v_backporch);
 
-	/*v frontporch - same register config like vsync width */
-	reg_adr = MIPI_TXm_HS_V_FRONTPORCHESn(ctrl_no, frame_gen);
+	/*v frontporch - same register config like vsync width*/
+	reg_adr = MIPI_TXm_HS_V_FRONTPORCHESn(ctrl_no, frame_gen/2);
 	kmb_write_bits_mipi(reg_adr, offset, 16, fg_cfg->v_frontporch);
 
-	/*v active - same register config like vsync width */
-	reg_adr = MIPI_TXm_HS_V_ACTIVEn(ctrl_no, frame_gen);
+	/*v active - same register config like vsync width*/
+	reg_adr = MIPI_TXm_HS_V_ACTIVEn(ctrl_no, frame_gen/2);
 	kmb_write_bits_mipi(reg_adr, offset, 16, fg_cfg->v_active);
 
 	/*hsyc width */
diff --git a/drivers/gpu/drm/kmb/kmb_regs.h b/drivers/gpu/drm/kmb/kmb_regs.h
index 9a5f371..4d6cf3d 100644
--- a/drivers/gpu/drm/kmb/kmb_regs.h
+++ b/drivers/gpu/drm/kmb/kmb_regs.h
@@ -395,10 +395,10 @@
  *		   MIPI controller control register defines
  ***********************************************i****************************/
 #define MIPI0_HS_BASE_ADDR			(MIPI_BASE_ADDR + 0x400)
-#define MIPI_CTRL_HS_BASE_ADDR			(0x400)
+#define HS_OFFSET(M)				((M + 1) * 0x400)
 
 #define MIPI_TX_HS_CTRL				(0x0)
-#define   MIPI_TXm_HS_CTRL(M)			(MIPI_TX_HS_CTRL + (0x400*M))
+#define   MIPI_TXm_HS_CTRL(M)			(MIPI_TX_HS_CTRL + HS_OFFSET(M))
 #define   HS_CTRL_EN				(1 << 0)
 #define   HS_CTRL_CSIDSIN			(1 << 2) /*1:CSI 0:DSI*/
 #define   TX_SOURCE				(1 << 3) /*1:LCD, 0:DMA*/
@@ -411,7 +411,7 @@
 #define   HSCLKIDLE_CNT				(1 << 24)
 #define MIPI_TX_HS_SYNC_CFG			(0x8)
 #define   MIPI_TXm_HS_SYNC_CFG(M)		(MIPI_TX_HS_SYNC_CFG \
-						+ (0x400*M))
+						+ HS_OFFSET(M))
 #define   LINE_SYNC_PKT_ENABLE			(1 << 0)
 #define   FRAME_COUNTER_ACTIVE			(1 << 1)
 #define   LINE_COUNTER_ACTIVE			(1 << 2)
@@ -428,75 +428,93 @@
 #define   FRAME_GEN_EN(f)			((f) << 23)
 #define   HACT_WAIT_STOP(f)			((f) << 28)
 #define MIPI_TX0_HS_FG0_SECT0_PH		(0x40)
-#define MIPI_TXm_HS_FGn_SECTo_PH(M, N, O)	(MIPI_TX0_HS_FG0_SECT0_PH + \
-						(0x400*M) + (0x2C*N) + (8*O))
-#define MIPI_TX_SECT_WC_MASK			  (0xffff)
-#define	MIPI_TX_SECT_VC_MASK			  (3)
-#define MIPI_TX_SECT_VC_SHIFT			  (22)
-#define MIPI_TX_SECT_DT_MASK			  (0x3f)
-#define MIPI_TX_SECT_DT_SHIFT			  (16)
-#define MIPI_TX_SECT_DM_MASK			  (3)
-#define MIPI_TX_SECT_DM_SHIFT			  (24)
-#define MIPI_TX_SECT_DMA_PACKED			  (1<<26)
+#define   MIPI_TXm_HS_FGn_SECTo_PH(M, N, O)	(MIPI_TX0_HS_FG0_SECT0_PH + \
+						HS_OFFSET(M) + (0x2C*N) + (8*O))
+#define   MIPI_TX_SECT_WC_MASK			(0xffff)
+#define	  MIPI_TX_SECT_VC_MASK			(3)
+#define   MIPI_TX_SECT_VC_SHIFT			(22)
+#define   MIPI_TX_SECT_DT_MASK			(0x3f)
+#define   MIPI_TX_SECT_DT_SHIFT			(16)
+#define   MIPI_TX_SECT_DM_MASK			(3)
+#define   MIPI_TX_SECT_DM_SHIFT			(24)
+#define   MIPI_TX_SECT_DMA_PACKED		(1<<26)
 #define MIPI_TX_HS_FG0_SECT_UNPACKED_BYTES0	(0x60)
 #define MIPI_TX_HS_FG0_SECT_UNPACKED_BYTES1	(0x64)
-#define MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(M, N) \
-	(MIPI_TX_HS_FG0_SECT_UNPACKED_BYTES0 + (0x400*M) + (0x2C*N))
+#define   MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(M, N)	\
+					(MIPI_TX_HS_FG0_SECT_UNPACKED_BYTES0 \
+					+ HS_OFFSET(M) + (0x2C*N))
 #define MIPI_TX_HS_FG0_SECT0_LINE_CFG		(0x44)
-#define MIPI_TXm_HS_FGn_SECTo_LINE_CFG(M, N, O) \
-	(MIPI_TX_HS_FG0_SECT0_LINE_CFG + (0x400*M) + (0x2C*N) + (8*O))
+#define   MIPI_TXm_HS_FGn_SECTo_LINE_CFG(M, N, O)	\
+				(MIPI_TX_HS_FG0_SECT0_LINE_CFG + HS_OFFSET(M) \
+				+ (0x2C*N) + (8*O))
 
 #define MIPI_TX_HS_FG0_NUM_LINES		(0x68)
-#define MIPI_TXm_HS_FGn_NUM_LINES(M, N)		(MIPI_TX_HS_FG0_NUM_LINES + \
-						(0x400*M) + (0x2C*N))
+#define   MIPI_TXm_HS_FGn_NUM_LINES(M, N)	\
+				(MIPI_TX_HS_FG0_NUM_LINES + HS_OFFSET(M) \
+				+ (0x2C*N))
 #define MIPI_TX_HS_VSYNC_WIDTHS0		(0x104)
-#define MIPI_TXm_HS_VSYNC_WIDTHn(M, N)		(MIPI_TX_HS_VSYNC_WIDTHS0 + \
-						(0x400*M) + (0x4*N))
+#define   MIPI_TXm_HS_VSYNC_WIDTHn(M, N)		\
+				(MIPI_TX_HS_VSYNC_WIDTHS0 + HS_OFFSET(M) \
+				+ (0x4*N))
 #define MIPI_TX_HS_V_BACKPORCHES0		(0x16c)
-#define MIPI_TXm_HS_V_BACKPORCHESn(M, N)	(MIPI_TX_HS_V_BACKPORCHES0 + \
-						(0x400*M) + (0x4*N))
+#define   MIPI_TXm_HS_V_BACKPORCHESn(M, N)	\
+				(MIPI_TX_HS_V_BACKPORCHES0 + HS_OFFSET(M) \
+				+ (0x4*N))
 #define MIPI_TX_HS_V_FRONTPORCHES0		(0x174)
-#define MIPI_TXm_HS_V_FRONTPORCHESn(M, N)	(MIPI_TX_HS_V_FRONTPORCHES0 + \
-						(0x400*M) + (0x4*N))
+#define   MIPI_TXm_HS_V_FRONTPORCHESn(M, N)	\
+				(MIPI_TX_HS_V_FRONTPORCHES0 + HS_OFFSET(M) \
+				+ (0x4*N))
 #define MIPI_TX_HS_V_ACTIVE0			(0x17c)
-#define MIPI_TXm_HS_V_ACTIVEn(M, N)		(MIPI_TX_HS_V_ACTIVE0 + \
-						(0x400*M) + (0x4*N))
+#define   MIPI_TXm_HS_V_ACTIVEn(M, N)		\
+				(MIPI_TX_HS_V_ACTIVE0 + HS_OFFSET(M) \
+				+ (0x4*N))
 #define MIPI_TX_HS_HSYNC_WIDTH0			(0x10c)
-#define MIPI_TXm_HS_HSYNC_WIDTHn(M, N)		(MIPI_TX_HS_HSYNC_WIDTH0 + \
-						(0x400*M) + (0x4*N))
+#define   MIPI_TXm_HS_HSYNC_WIDTHn(M, N)		\
+				(MIPI_TX_HS_HSYNC_WIDTH0 + HS_OFFSET(M) \
+				+ (0x4*N))
 #define MIPI_TX_HS_H_BACKPORCH0			(0x11c)
-#define MIPI_TXm_HS_H_BACKPORCHn(M, N)		(MIPI_TX_HS_H_BACKPORCH0 + \
-						(0x400*M) + (0x4*N))
+#define   MIPI_TXm_HS_H_BACKPORCHn(M, N)		\
+				(MIPI_TX_HS_H_BACKPORCH0 + HS_OFFSET(M) \
+				+ (0x4*N))
 #define MIPI_TX_HS_H_FRONTPORCH0		(0x12c)
-#define MIPI_TXm_HS_H_FRONTPORCHn(M, N)		(MIPI_TX_HS_H_FRONTPORCH0 + \
-						(0x400*M) + (0x4*N))
+#define   MIPI_TXm_HS_H_FRONTPORCHn(M, N)	\
+				(MIPI_TX_HS_H_FRONTPORCH0 + HS_OFFSET(M) \
+				+ (0x4*N))
 #define MIPI_TX_HS_H_ACTIVE0			(0x184)
-#define MIPI_TXm_HS_H_ACTIVEn(M, N)		(MIPI_TX_HS_H_ACTIVE0 + \
-						(0x400*M) + (0x4*N))
+#define   MIPI_TXm_HS_H_ACTIVEn(M, N)		\
+				(MIPI_TX_HS_H_ACTIVE0 + HS_OFFSET(M) \
+				+ (0x4*N))
 #define MIPI_TX_HS_LLP_HSYNC_WIDTH0		(0x13c)
-#define MIPI_TXm_HS_LLP_HSYNC_WIDTHn(M, N)	(MIPI_TX_HS_LLP_HSYNC_WIDTH0 + \
-						(0x400*M) + (0x4*N))
+#define   MIPI_TXm_HS_LLP_HSYNC_WIDTHn(M, N)	\
+				(MIPI_TX_HS_LLP_HSYNC_WIDTH0 + HS_OFFSET(M) \
+				+ (0x4*N))
 #define MIPI_TX_HS_LLP_H_BACKPORCH0		(0x14c)
-#define MIPI_TXm_HS_LLP_H_BACKPORCHn(M, N)	(MIPI_TX_HS_LLP_H_BACKPORCH0 + \
-						(0x400*M) + (0x4*N))
+#define   MIPI_TXm_HS_LLP_H_BACKPORCHn(M, N)	\
+				(MIPI_TX_HS_LLP_H_BACKPORCH0 + HS_OFFSET(M) \
+				+ (0x4*N))
 #define MIPI_TX_HS_LLP_H_FRONTPORCH0		(0x15c)
-#define MIPI_TXm_HS_LLP_H_FRONTPORCHn(M, N)	(MIPI_TX_HS_LLP_H_FRONTPORCH0 \
-						+ (0x400*M) + (0x4*N))
+#define   MIPI_TXm_HS_LLP_H_FRONTPORCHn(M, N)	\
+				(MIPI_TX_HS_LLP_H_FRONTPORCH0 + HS_OFFSET(M) \
+				+ (0x4*N))
+
 #define MIPI_TX_HS_MC_FIFO_CTRL_EN		(0x194)
-#define MIPI_TXm_HS_MC_FIFO_CTRL_EN(M)		(MIPI_TX_HS_MC_FIFO_CTRL_EN \
-						+ (0x400*M))
+#define   MIPI_TXm_HS_MC_FIFO_CTRL_EN(M)	\
+				(MIPI_TX_HS_MC_FIFO_CTRL_EN + HS_OFFSET(M))
+
 #define MIPI_TX_HS_MC_FIFO_CHAN_ALLOC0		(0x198)
 #define MIPI_TX_HS_MC_FIFO_CHAN_ALLOC1		(0x19c)
 #define   MIPI_TXm_HS_MC_FIFO_CHAN_ALLOCn(M, N)	\
-			(MIPI_TX_HS_MC_FIFO_CHAN_ALLOC0 + (0x400*M) + (0x4*N))
+				(MIPI_TX_HS_MC_FIFO_CHAN_ALLOC0 + HS_OFFSET(M) \
+				+ (0x4*N))
 #define   SET_MC_FIFO_CHAN_ALLOC(ctrl, vc, sz)	\
-	kmb_write_bits_mipi(MIPI_TXm_HS_MC_FIFO_CHAN_ALLOCn(ctrl, vc/2), \
-			(vc % 2)*16, 16, sz)
+		kmb_write_bits_mipi(MIPI_TXm_HS_MC_FIFO_CHAN_ALLOCn(ctrl, \
+					vc/2), (vc % 2)*16, 16, sz)
 #define MIPI_TX_HS_MC_FIFO_RTHRESHOLD0		(0x1a0)
 #define MIPI_TX_HS_MC_FIFO_RTHRESHOLD1		(0x1a4)
-#define MIPI_TXm_HS_MC_FIFO_RTHRESHOLDn(M, N)	\
-		(MIPI_TX_HS_MC_FIFO_RTHRESHOLD0 + (0x400*M) + (0x4*N))
-#define SET_MC_FIFO_RTHRESHOLD(ctrl, vc, th)	\
+#define   MIPI_TXm_HS_MC_FIFO_RTHRESHOLDn(M, N)	\
+				(MIPI_TX_HS_MC_FIFO_RTHRESHOLD0 + HS_OFFSET(M) \
+				+ (0x4*N))
+#define   SET_MC_FIFO_RTHRESHOLD(ctrl, vc, th)	\
 	kmb_write_bits_mipi(MIPI_TXm_HS_MC_FIFO_RTHRESHOLDn(ctrl, vc/2), \
 			(vc % 2)*16, 16, th)
 
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
