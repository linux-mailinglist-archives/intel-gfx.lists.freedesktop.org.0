Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEF321FF07
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 22:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F7A6E987;
	Tue, 14 Jul 2020 20:58:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3E236E8A5;
 Tue, 14 Jul 2020 20:58:20 +0000 (UTC)
IronPort-SDR: dohHAyaM0dOBuDP9ej/oT/KCNXREwy8DUAulV95roM8dLDtt+d0eiuKeLsScjl87Ai/K9F/os8
 irWyjyWqVctQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="233883722"
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="233883722"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 13:58:20 -0700
IronPort-SDR: 0r3FEC9Qp2bz+Iib+IUcC2HMcvfZOVVsP+gihlz08yZshxpJROetDHnL6QV3nw+NqjE1Zba0HF
 JuwMxby2A64Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="316504071"
Received: from ahanamuk-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.251.155.61])
 by orsmga008.jf.intel.com with ESMTP; 14 Jul 2020 13:58:19 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 14 Jul 2020 13:56:50 -0700
Message-Id: <1594760265-11618-5-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH v2 04/59] drm/kmb: Use biwise operators for
 register definitions
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

Did some general clean up and organization.

v2: corrected spelling

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_drv.c  |   3 +-
 drivers/gpu/drm/kmb/kmb_regs.h | 852 +++++++++++++++--------------------------
 2 files changed, 307 insertions(+), 548 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_drv.c b/drivers/gpu/drm/kmb/kmb_drv.c
index 28aa625..11f8d1f 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.c
+++ b/drivers/gpu/drm/kmb/kmb_drv.c
@@ -113,8 +113,7 @@ static irqreturn_t kmb_irq(int irq, void *arg)
 	if (status & LCD_INT_VERT_COMP) {
 		/* read VSTATUS */
 		val = kmb_read(lcd, LCD_VSTATUS);
-		/* BITS 13 and 14 */
-		val = (val & LCD_VSTATUS_VERTICAL_STATUS_MASK) >> 12;
+		val = (val & LCD_VSTATUS_VERTICAL_STATUS_MASK);
 		switch (val) {
 		case LCD_VSTATUS_COMPARE_VSYNC:
 		case LCD_VSTATUS_COMPARE_BACKPORCH:
diff --git a/drivers/gpu/drm/kmb/kmb_regs.h b/drivers/gpu/drm/kmb/kmb_regs.h
index 0f879b9..8346a04 100644
--- a/drivers/gpu/drm/kmb/kmb_regs.h
+++ b/drivers/gpu/drm/kmb/kmb_regs.h
@@ -6,35 +6,181 @@
 #ifndef __KMB_REGS_H__
 #define __KMB_REGS_H__
 
-/*LCD CONTROLLER REGISTERS */
-#define LCD_CONTROL			(0x4 * 0x000)
-#define LCD_INT_STATUS			(0x4 * 0x001)
-#define LCD_INT_ENABLE			(0x4 * 0x002)
-#define LCD_INT_CLEAR			(0x4 * 0x003)
-#define LCD_LINE_COUNT			(0x4 * 0x004)
-#define LCD_LINE_COMPARE		(0x4 * 0x005)
-#define LCD_VSTATUS			(0x4 * 0x006)
-#define LCD_VSTATUS_COMPARE		(0x4 * 0x007)
-#define LCD_SCREEN_WIDTH		(0x4 * 0x008)
-#define LCD_SCREEN_HEIGHT		(0x4 * 0x009)
-#define LCD_FIELD_INT_CFG		(0x4 * 0x00a)
-#define LCD_FIFO_FLUSH			(0x4 * 0x00b)
-#define LCD_BG_COLOUR_LS		(0x4 * 0x00c)
-#define LCD_BG_COLOUR_MS		(0x4 * 0x00d)
-#define LCD_RAM_CFG		        (0x4 * 0x00e)
+#define ENABLE					 1
+/***************************************************************************
+ *		   LCD controller control register defines
+ ***************************************************************************/
+#define LCD_CONTROL				(0x4 * 0x000)
+#define LCD_CTRL_PROGRESSIVE			  (0<<0)
+#define LCD_CTRL_INTERLACED			  (1<<0)
+#define LCD_CTRL_ENABLE				  (1<<1)
+#define LCD_CTRL_VL1_ENABLE			  (1<<2)
+#define LCD_CTRL_VL2_ENABLE			  (1<<3)
+#define LCD_CTRL_GL1_ENABLE			  (1<<4)
+#define LCD_CTRL_GL2_ENABLE			  (1<<5)
+#define LCD_CTRL_ALPHA_BLEND_VL1		  (0<<6)
+#define LCD_CTRL_ALPHA_BLEND_VL2		  (1<<6)
+#define LCD_CTRL_ALPHA_BLEND_GL1		  (2<<6)
+#define LCD_CTRL_ALPHA_BLEND_GL2		  (3<<6)
+#define LCD_CTRL_ALPHA_TOP_VL1			  (0<<8)
+#define LCD_CTRL_ALPHA_TOP_VL2			  (1<<8)
+#define LCD_CTRL_ALPHA_TOP_GL1			  (2<<8)
+#define LCD_CTRL_ALPHA_TOP_GL2			  (3<<8)
+#define LCD_CTRL_ALPHA_MIDDLE_VL1		  (0<<10)
+#define LCD_CTRL_ALPHA_MIDDLE_VL2		  (1<<10)
+#define LCD_CTRL_ALPHA_MIDDLE_GL1		  (2<<10)
+#define LCD_CTRL_ALPHA_MIDDLE_GL2		  (3<<10)
+#define LCD_CTRL_ALPHA_BOTTOM_VL1		  (0<<12)
+#define LCD_CTRL_ALPHA_BOTTOM_VL2		  (1<<12)
+#define LCD_CTRL_ALPHA_BOTTOM_GL1		  (2<<12)
+#define LCD_CTRL_ALPHA_BOTTOM_GL2		  (3<<12)
+#define LCD_CTRL_TIM_GEN_ENABLE			  (1<<14)
+#define LCD_CTRL_DISPLAY_MODE_ONE_SHOT		  (1<<15)
+#define LCD_CTRL_PWM0_EN			  (1<<16)
+#define LCD_CTRL_PWM1_EN			  (1<<17)
+#define LCD_CTRL_PWM2_EN			  (1<<18)
+#define LCD_CTRL_OUTPUT_DISABLED		  (0<<19)
+#define LCD_CTRL_OUTPUT_ENABLED			  (1<<19)
+#define LCD_CTRL_BPORCH_ENABLE			  (1<<21)
+#define LCD_CTRL_FPORCH_ENABLE			  (1<<22)
+#define LCD_CTRL_PIPELINE_DMA			  (1<<28)
+
+/*interrupts */
+#define LCD_INT_STATUS				(0x4 * 0x001)
+#define LCD_INT_EOF				  (1<<0)
+#define LCD_INT_LINE_CMP			  (1<<1)
+#define LCD_INT_VERT_COMP			  (1<<2)
+#define LAYER0_DMA_DONE_BIT			  (1<<3)
+#define LAYER0_DMA_IDLE_BIT			  (1<<4)
+#define LAYER0_DMA_OVERFLOW_BIT			  (1<<5)
+#define LAYER0_DMA_FIFO_UNDERFLOW_BIT		  (1<<6)
+#define LAYER0_DMA_CB_FIFO_OVERFLOW_BIT		  (1<<7)
+#define LAYER0_DMA_CB_FIFO_UNDERFLOW_BIT	  (1<<8)
+#define LAYER0_DMA_CR_FIFO_OVERFLOW_BIT		  (1<<9)
+#define LAYER0_DMA_CR_FIFO_UNDERFLOW_BIT	  (1<<10)
+#define LAYER1_DMA_DONE_BIT			  (1<<11)
+#define LAYER1_DMA_IDLE_BIT			  (1<<12)
+#define LAYER1_DMA_OVERFLOW_BIT			  (1<<13)
+#define LAYER1_DMA_FIFO_UNDERFLOW_BIT		  (1<<14)
+#define LAYER1_DMA_CB_FIFO_OVERFLOW_BIT		  (1<<15)
+#define LAYER1_DMA_CB_FIFO_UNDERFLOW_BIT	  (1<<16)
+#define LAYER1_DMA_CR_FIFO_OVERFLOW_BIT		  (1<<17)
+#define LAYER1_DMA_CR_FIFO_UNDERFLOW_BIT	  (1<<18)
+#define LAYER2_DMA_DONE_BIT			  (1<<19)
+#define LAYER2_DMA_IDLE_BIT			  (1<<20)
+#define LAYER2_DMA_OVERFLOW_BIT			  (1<<21)
+#define LAYER2_DMA_FIFO_UNDERFLOW_BIT		  (1<<22)
+#define LAYER3_DMA_DONE_BIT			  (1<<23)
+#define LAYER3_DMA_IDLE_BIT			  (1<<24)
+#define LAYER3_DMA_OVERFLOW_BIT			  (1<<25)
+#define LAYER3_DMA_FIFO_UNDERFLOW_BIT		  (1<<26)
+
+#define LCD_INT_ENABLE				(0x4 * 0x002)
+#define LCD_INT_CLEAR				(0x4 * 0x003)
+#define LCD_LINE_COUNT				(0x4 * 0x004)
+#define LCD_LINE_COMPARE			(0x4 * 0x005)
+#define LCD_VSTATUS				(0x4 * 0x006)
+
+/*LCD_VSTATUS_COMPARE Vertcal interval in which to generate vertcal
+ * interval interrupt
+ */
+/* BITS 13 and 14 */
+#define LCD_VSTATUS_COMPARE			(0x4 * 0x007)
+#define LCD_VSTATUS_VERTICAL_STATUS_MASK	  (3<<13)
+#define LCD_VSTATUS_COMPARE_VSYNC		  (0<<13)
+#define LCD_VSTATUS_COMPARE_BACKPORCH		  (1<<13)
+#define LCD_VSTATUS_COMPARE_ACTIVE		  (2<<13)
+#define LCD_VSTATUS_COMPARE_FRONT_PORCH		  (3<<13)
+
+#define LCD_SCREEN_WIDTH			(0x4 * 0x008)
+#define LCD_SCREEN_HEIGHT			(0x4 * 0x009)
+#define LCD_FIELD_INT_CFG			(0x4 * 0x00a)
+#define LCD_FIFO_FLUSH				(0x4 * 0x00b)
+#define LCD_BG_COLOUR_LS			(0x4 * 0x00c)
+#define LCD_BG_COLOUR_MS			(0x4 * 0x00d)
+#define LCD_RAM_CFG			        (0x4 * 0x00e)
+
+/****************************************************************************
+ *		   LCD controller Layer config register
+ ****************************************************************************
+ */
 #define LCD_LAYER0_CFG		        (0x4 * 0x100)
-#define LCD_LAYERn_CFG(N)		(LCD_LAYER0_CFG + (0x400*N))
+#define LCD_LAYERn_CFG(N)			(LCD_LAYER0_CFG + (0x400*N))
+#define LCD_LAYER_SCALE_H			  (1<<1)
+#define LCD_LAYER_SCALE_V			  (1<<2)
+#define LCD_LAYER_SCALE_H_V			  (LCD_LAYER_SCALE_H | \
+							LCD_LAYER_SCALE_V)
+#define LCD_LAYER_CSC_EN			  (1<<3)
+#define LCD_LAYER_ALPHA_STATIC			  (1<<4)
+#define LCD_LAYER_ALPHA_EMBED			  (1<<5)
+#define LCD_LAYER_ALPHA_COMBI			  (LCD_LAYER_ALPHA_STATIC | \
+							LCD_LAYER_ALPHA_EMBED)
+/* RGB multiplied with alpha */
+#define LCD_LAYER_ALPHA_PREMULT			  (1<<6)
+#define LCD_LAYER_INVERT_COL			  (1<<7)
+#define LCD_LAYER_TRANSPARENT_EN		  (1<<8)
+#define LCD_LAYER_FORMAT_YCBCR444PLAN		  (0<<9)
+#define LCD_LAYER_FORMAT_YCBCR422PLAN		  (1<<9)
+#define LCD_LAYER_FORMAT_YCBCR420PLAN		  (2<<9)
+#define LCD_LAYER_FORMAT_RGB888PLAN		  (3<<9)
+#define LCD_LAYER_FORMAT_YCBCR444LIN		  (4<<9)
+#define LCD_LAYER_FORMAT_YCBCR422LIN		  (5<<9)
+#define LCD_LAYER_FORMAT_RGB888			  (6<<9)
+#define LCD_LAYER_FORMAT_RGBA8888		  (7<<9)
+#define LCD_LAYER_FORMAT_RGBX8888		  (8<<9)
+#define LCD_LAYER_FORMAT_RGB565			  (9<<9)
+#define LCD_LAYER_FORMAT_RGBA1555		  (0xa<<9)
+#define LCD_LAYER_FORMAT_XRGB1555		  (0xb<<9)
+#define LCD_LAYER_FORMAT_RGB444			  (0xc<<9)
+#define LCD_LAYER_FORMAT_RGBA4444		  (0xd<<9)
+#define LCD_LAYER_FORMAT_RGBX4444		  (0xe<<9)
+#define LCD_LAYER_FORMAT_RGB332			  (0xf<<9)
+#define LCD_LAYER_FORMAT_RGBA3328		  (0x10<<9)
+#define LCD_LAYER_FORMAT_RGBX3328		  (0x11<<9)
+#define LCD_LAYER_FORMAT_CLUT			  (0x12<<9)
+#define LCD_LAYER_FORMAT_NV12			  (0x1c<<9)
+#define LCD_LAYER_PLANAR_STORAGE		  (1<<14)
+#define LCD_LAYER_8BPP				  (0<<15)
+#define LCD_LAYER_16BPP				  (1<<15)
+#define LCD_LAYER_24BPP				  (2<<15)
+#define LCD_LAYER_32BPP				  (3<<15)
+#define LCD_LAYER_Y_ORDER			  (1<<17)
+#define LCD_LAYER_CRCB_ORDER			  (1<<18)
+#define LCD_LAYER_BGR_ORDER			  (1<<19)
+#define LCD_LAYER_LUT_2ENT			  (0<<20)
+#define LCD_LAYER_LUT_4ENT			  (1<<20)
+#define LCD_LAYER_LUT_16ENT			  (2<<20)
+#define LCD_LAYER_NO_FLIP			  (0<<22)
+#define LCD_LAYER_FLIP_V			  (1<<22)
+#define LCD_LAYER_FLIP_H			  (2<<22)
+#define LCD_LAYER_ROT_R90			  (3<<22)
+#define LCD_LAYER_ROT_L90			  (4<<22)
+#define LCD_LAYER_ROT_180			  (5<<22)
+#define LCD_LAYER_FIFO_00			  (0<<25)
+#define LCD_LAYER_FIFO_25			  (1<<25)
+#define LCD_LAYER_FIFO_50			  (2<<25)
+#define LCD_LAYER_FIFO_100			  (3<<25)
+#define LCD_LAYER_INTERLEAVE_DIS		  (0<<27)
+#define LCD_LAYER_INTERLEAVE_V			  (1<<27)
+#define LCD_LAYER_INTERLEAVE_H			  (2<<27)
+#define LCD_LAYER_INTERLEAVE_CH			  (3<<27)
+#define LCD_LAYER_INTERLEAVE_V_SUB		  (4<<27)
+#define LCD_LAYER_INTERLEAVE_H_SUB		  (5<<27)
+#define LCD_LAYER_INTERLEAVE_CH_SUB		  (6<<27)
+#define LCD_LAYER_INTER_POS_EVEN		  (0<<30)
+#define LCD_LAYER_INTER_POS_ODD			  (1<<30)
+
 #define LCD_LAYER0_COL_START		(0x4 * 0x101)
 #define LCD_LAYERn_COL_START(N)		(LCD_LAYER0_COL_START + (0x400*N))
 #define LCD_LAYER0_ROW_START		(0x4 * 0x102)
 #define LCD_LAYERn_ROW_START(N)		(LCD_LAYER0_ROW_START + (0x400*N))
-#define LCD_LAYER0_WIDTH	        (0x4 * 0x103)
+#define LCD_LAYER0_WIDTH		(0x4 * 0x103)
 #define LCD_LAYERn_WIDTH(N)		(LCD_LAYER0_WIDTH + (0x400*N))
 #define LCD_LAYER0_HEIGHT		(0x4 * 0x104)
 #define LCD_LAYERn_HEIGHT(N)		(LCD_LAYER0_HEIGHT + (0x400*N))
 #define LCD_LAYER0_SCALE_CFG		(0x4 * 0x105)
 #define LCD_LAYERn_SCALE_CFG(N)		(LCD_LAYER0_SCALE_CFG + (0x400*N))
-#define LCD_LAYER0_ALPHA	        (0x4 * 0x106)
+#define LCD_LAYER0_ALPHA		(0x4 * 0x106)
 #define LCD_LAYERn_ALPHA(N)		(LCD_LAYER0_ALPHA + (0x400*N))
 #define LCD_LAYER0_INV_COLOUR_LS	(0x4 * 0x107)
 #define LCD_LAYERn_INV_COLOUR_LS(N)	(LCD_LAYER0_INV_COLOUR_LS + (0x400*N))
@@ -68,540 +214,154 @@
 #define LCD_LAYERn_CSC_OFF2(N)		(LCD_LAYER0_CSC_OFF2 + (0x400*N))
 #define LCD_LAYER0_CSC_OFF3		(0x4 * 0x116)
 #define LCD_LAYERn_CSC_OFF3(N)		(LCD_LAYER0_CSC_OFF3 + (0x400*N))
-#define LCD_LAYER0_DMA_CFG		(0x4 * 0x117)
-#define LCD_LAYERn_DMA_CFG(N)		(LCD_LAYER0_DMA_CFG + (0x400*N))
-#define LCD_LAYER0_DMA_START_ADR	(0x4 * 0x118)
-#define LCD_LAYERn_DMA_START_ADDR(N)	(LCD_LAYER0_DMA_START_ADR + (0x400*N))
-#define LCD_LAYER0_DMA_START_SHADOW	(0x4 * 0x119)
-#define LCD_LAYERn_DMA_START_SHADOW(N)	(LCD_LAYER0_DMA_START_SHADOW + (0x400*N))
-#define LCD_LAYER0_DMA_LEN		(0x4 * 0x11a)
-#define LCD_LAYERn_DMA_LEN(N)		(LCD_LAYER0_DMA_LEN + (0x400*N))
-#define LCD_LAYER0_DMA_LEN_SHADOW	(0x4 * 0x11b)
-#define LCD_LAYERn_DMA_LEN_SHADOW(N)	(LCD_LAYER0_DMA_LEN_SHADOW + (0x400*N))
-#define LCD_LAYER0_DMA_STATUS		(0x4 * 0x11c)
-#define LCD_LAYERn_DMA_STATUS(N)	(LCD_LAYER0_DMA_STATUS + (0x400*N))
-#define LCD_LAYER0_DMA_LINE_WIDTH	(0x4 * 0x11d)
-#define LCD_LAYERn_DMA_LINE_WIDTH(N)	(LCD_LAYER0_DMA_LINE_WIDTH + (0x400*N))
-#define LCD_LAYER0_DMA_LINE_VSTRIDE	(0x4 * 0x11e)
-#define LCD_LAYERn_DMA_LINE_VSTRIDE(N)	(LCD_LAYER0_DMA_LINE_VSTRIDE + (0x400*N))
-#define LCD_LAYER0_DMA_FIFO_STATUS	(0x4 * 0x11f)
-#define LCD_LAYERn_DMA_FIFO_STATUS(N)	(LCD_LAYER0_DMA_FIFO_STATUS + (0x400*N))
-#define LCD_LAYER0_CFG2			(0x4 * 0x120)
-#define LCD_LAYERn_CFG2(N)		(LCD_LAYER0_CFG2 + (0x400*N))
-
-#define LCD_LAYER1_CFG			(0x4 * 0x200)
-#define LCD_LAYERn_CFG2(N)		(LCD_LAYER0_CFG2 + (0x400*N))
-#define LCD_LAYER1_COL_START		(0x4 * 0x201)
-#define LCD_LAYER1_ROW_START		(0x4 * 0x202)
-#define LCD_LAYER1_WIDTH		(0x4 * 0x203)
-#define LCD_LAYER1_HEIGHT		(0x4 * 0x204)
-#define LCD_LAYER1_SCALE_CFG		(0x4 * 0x205)
-#define LCD_LAYER1_ALPHA		(0x4 * 0x206)
-#define LCD_LAYER1_INV_COLOUR_LS	(0x4 * 0x207)
-#define LCD_LAYER1_INV_COLOUR_MS	(0x4 * 0x208)
-#define LCD_LAYER1_TRANS_COLOUR_LS	(0x4 * 0x209)
-#define LCD_LAYER1_TRANS_COLOUR_MS	(0x4 * 0x20a)
-#define LCD_LAYER1_CSC_COEFF11		(0x4 * 0x20b)
-#define LCD_LAYER1_CSC_COEFF12		(0x4 * 0x20c)
-#define LCD_LAYER1_CSC_COEFF13		(0x4 * 0x20d)
-#define LCD_LAYER1_CSC_COEFF21		(0x4 * 0x20e)
-#define LCD_LAYER1_CSC_COEFF22		(0x4 * 0x20f)
-#define LCD_LAYER1_CSC_COEFF23		(0x4 * 0x210)
-#define LCD_LAYER1_CSC_COEFF31		(0x4 * 0x211)
-#define LCD_LAYER1_CSC_COEFF32		(0x4 * 0x212)
-#define LCD_LAYER1_CSC_COEFF33		(0x4 * 0x213)
-#define LCD_LAYER1_CSC_OFF1		(0x4 * 0x214)
-#define LCD_LAYER1_CSC_OFF2		(0x4 * 0x215)
-#define LCD_LAYER1_CSC_OFF3		(0x4 * 0x216)
-#define LCD_LAYER1_DMA_CFG		(0x4 * 0x217)
-#define LCD_LAYER1_DMA_START_ADR	(0x4 * 0x218)
-#define LCD_LAYER1_DMA_START_SHADOW	(0x4 * 0x219)
-#define LCD_LAYER1_DMA_LEN		(0x4 * 0x21a)
-#define LCD_LAYER1_DMA_LEN_SHADOW	(0x4 * 0x21b)
-#define LCD_LAYER1_DMA_STATUS		(0x4 * 0x21c)
-#define LCD_LAYER1_DMA_LINE_WIDTH	(0x4 * 0x21d)
-#define LCD_LAYER1_DMA_LINE_VSTRIDE	(0x4 * 0x21e)
-#define LCD_LAYER1_DMA_FIFO_STATUS	(0x4 * 0x21f)
-#define LCD_LAYER1_CFG2			(0x4 * 0x220)
-#define LCD_LAYER2_CFG			(0x4 * 0x300)
-#define LCD_LAYER2_COL_START		(0x4 * 0x301)
-#define LCD_LAYER2_ROW_START		(0x4 * 0x302)
-#define LCD_LAYER2_WIDTH		(0x4 * 0x303)
-#define LCD_LAYER2_HEIGHT		(0x4 * 0x304)
-#define LCD_LAYER2_SCALE_CFG		(0x4 * 0x305)
-#define LCD_LAYER2_ALPHA		(0x4 * 0x306)
-#define LCD_LAYER2_INV_COLOUR_LS	(0x4 * 0x307)
-#define LCD_LAYER2_INV_COLOUR_MS	(0x4 * 0x308)
-#define LCD_LAYER2_TRANS_COLOUR_LS	(0x4 * 0x309)
-#define LCD_LAYER2_TRANS_COLOUR_MS	(0x4 * 0x30a)
-#define LCD_LAYER2_CSC_COEFF11		(0x4 * 0x30b)
-#define LCD_LAYER2_CSC_COEFF12		(0x4 * 0x30c)
-#define LCD_LAYER2_CSC_COEFF13		(0x4 * 0x30d)
-#define LCD_LAYER2_CSC_COEFF21		(0x4 * 0x30e)
-#define LCD_LAYER2_CSC_COEFF22		(0x4 * 0x30f)
-#define LCD_LAYER2_CSC_COEFF23		(0x4 * 0x310)
-#define LCD_LAYER2_CSC_COEFF31		(0x4 * 0x311)
-#define LCD_LAYER2_CSC_COEFF32		(0x4 * 0x312)
-#define LCD_LAYER2_CSC_COEFF33		(0x4 * 0x313)
-#define LCD_LAYER2_CSC_OFF1		(0x4 * 0x314)
-#define LCD_LAYER2_CSC_OFF2		(0x4 * 0x315)
-#define LCD_LAYER2_CSC_OFF3		(0x4 * 0x316)
-#define LCD_LAYER2_DMA_CFG		(0x4 * 0x317)
-#define LCD_LAYER2_DMA_START_ADR	(0x4 * 0x318)
-#define LCD_LAYER2_DMA_START_SHADOW	(0x4 * 0x319)
-#define LCD_LAYER2_DMA_LEN		(0x4 * 0x31a)
-#define LCD_LAYER2_DMA_LEN_SHADOW	(0x4 * 0x31b)
-#define LCD_LAYER2_DMA_STATUS		(0x4 * 0x31c)
-#define LCD_LAYER2_DMA_LINE_WIDTH	(0x4 * 0x31d)
-#define LCD_LAYER2_DMA_LINE_VSTRIDE	(0x4 * 0x31e)
-#define LCD_LAYER2_DMA_FIFO_STATUS	(0x4 * 0x31f)
-#define LCD_LAYER2_CFG2			(0x4 * 0x320)
-#define LCD_LAYER3_CFG			(0x4 * 0x400)
-#define LCD_LAYER3_COL_START		(0x4 * 0x401)
-#define LCD_LAYER3_ROW_START		(0x4 * 0x402)
-#define LCD_LAYER3_WIDTH		(0x4 * 0x403)
-#define LCD_LAYER3_HEIGHT		(0x4 * 0x404)
-#define LCD_LAYER3_SCALE_CFG		(0x4 * 0x405)
-#define LCD_LAYER3_ALPHA		(0x4 * 0x406)
-#define LCD_LAYER3_INV_COLOUR_LS	(0x4 * 0x407)
-#define LCD_LAYER3_INV_COLOUR_MS	(0x4 * 0x408)
-#define LCD_LAYER3_TRANS_COLOUR_LS	(0x4 * 0x409)
-#define LCD_LAYER3_TRANS_COLOUR_MS	(0x4 * 0x40a)
-#define LCD_LAYER3_CSC_COEFF11		(0x4 * 0x40b)
-#define LCD_LAYER3_CSC_COEFF12		(0x4 * 0x40c)
-#define LCD_LAYER3_CSC_COEFF13		(0x4 * 0x40d)
-#define LCD_LAYER3_CSC_COEFF21		(0x4 * 0x40e)
-#define LCD_LAYER3_CSC_COEFF22		(0x4 * 0x40f)
-#define LCD_LAYER3_CSC_COEFF23		(0x4 * 0x410)
-#define LCD_LAYER3_CSC_COEFF31		(0x4 * 0x411)
-#define LCD_LAYER3_CSC_COEFF32		(0x4 * 0x412)
-#define LCD_LAYER3_CSC_COEFF33		(0x4 * 0x413)
-#define LCD_LAYER3_CSC_OFF1		(0x4 * 0x414)
-#define LCD_LAYER3_CSC_OFF2		(0x4 * 0x415)
-#define LCD_LAYER3_CSC_OFF3		(0x4 * 0x416)
-#define LCD_LAYER3_DMA_CFG		(0x4 * 0x417)
-#define LCD_LAYER3_DMA_START_ADR	(0x4 * 0x418)
-#define LCD_LAYER3_DMA_START_SHADOW	(0x4 * 0x419)
-#define LCD_LAYER3_DMA_LEN		(0x4 * 0x41a)
-#define LCD_LAYER3_DMA_LEN_SHADOW	(0x4 * 0x41b)
-#define LCD_LAYER3_DMA_STATUS		(0x4 * 0x41c)
-#define LCD_LAYER3_DMA_LINE_WIDTH	(0x4 * 0x41d)
-#define LCD_LAYER3_DMA_LINE_VSTRIDE	(0x4 * 0x41e)
-#define LCD_LAYER3_DMA_FIFO_STATUS	(0x4 * 0x41f)
-#define LCD_LAYER3_CFG2			(0x4 * 0x420)
-#define LCD_LAYER2_CLUT0		(0x4 * 0x500)
-#define LCD_LAYER2_CLUT1		(0x4 * 0x501)
-#define LCD_LAYER2_CLUT2		(0x4 * 0x502)
-#define LCD_LAYER2_CLUT3		(0x4 * 0x503)
-#define LCD_LAYER2_CLUT4		(0x4 * 0x504)
-#define LCD_LAYER2_CLUT5		(0x4 * 0x505)
-#define LCD_LAYER2_CLUT6		(0x4 * 0x506)
-#define LCD_LAYER2_CLUT7		(0x4 * 0x507)
-#define LCD_LAYER2_CLUT8		(0x4 * 0x508)
-#define LCD_LAYER2_CLUT9		(0x4 * 0x509)
-#define LCD_LAYER2_CLUT10		(0x4 * 0x50a)
-#define LCD_LAYER2_CLUT11		(0x4 * 0x50b)
-#define LCD_LAYER2_CLUT12		(0x4 * 0x50c)
-#define LCD_LAYER2_CLUT13		(0x4 * 0x50d)
-#define LCD_LAYER2_CLUT14		(0x4 * 0x50e)
-#define LCD_LAYER2_CLUT15		(0x4 * 0x50f)
-#define LCD_LAYER3_CLUT0		(0x4 * 0x600)
-#define LCD_LAYER3_CLUT1		(0x4 * 0x601)
-#define LCD_LAYER3_CLUT2		(0x4 * 0x602)
-#define LCD_LAYER3_CLUT3		(0x4 * 0x603)
-#define LCD_LAYER3_CLUT4		(0x4 * 0x604)
-#define LCD_LAYER3_CLUT5		(0x4 * 0x605)
-#define LCD_LAYER3_CLUT6		(0x4 * 0x606)
-#define LCD_LAYER3_CLUT7		(0x4 * 0x607)
-#define LCD_LAYER3_CLUT8		(0x4 * 0x608)
-#define LCD_LAYER3_CLUT9		(0x4 * 0x609)
-#define LCD_LAYER3_CLUT10		(0x4 * 0x60a)
-#define LCD_LAYER3_CLUT11		(0x4 * 0x60b)
-#define LCD_LAYER3_CLUT12		(0x4 * 0x60c)
-#define LCD_LAYER3_CLUT13		(0x4 * 0x60d)
-#define LCD_LAYER3_CLUT14		(0x4 * 0x60e)
-#define LCD_LAYER3_CLUT15		(0x4 * 0x60f)
-#define LCD_LAYER0_DMA_START_CB_ADR	(0x4 * 0x700)
-#define LCD_LAYER0_DMA_START_CB_SHADOW	(0x4 * 0x701)
-#define LCD_LAYER0_DMA_CB_LINE_WIDTH	(0x4 * 0x702)
-#define LCD_LAYER0_DMA_CB_LINE_VSTRIDE	(0x4 * 0x703)
-#define LCD_LAYER0_DMA_START_CR_ADR	(0x4 * 0x704)
-#define LCD_LAYER0_DMA_START_CR_SHADOW	(0x4 * 0x705)
-#define LCD_LAYER0_DMA_CR_LINE_WIDTH	(0x4 * 0x706)
-#define LCD_LAYER0_DMA_CR_LINE_VSTRIDE	(0x4 * 0x707)
-#define LCD_LAYER1_DMA_START_CB_ADR	(0x4 * 0x708)
-#define LCD_LAYER1_DMA_START_CB_SHADOW	(0x4 * 0x709)
-#define LCD_LAYER1_DMA_CB_LINE_WIDTH	(0x4 * 0x70a)
-#define LCD_LAYER1_DMA_CB_LINE_VSTRIDE	(0x4 * 0x70b)
-#define LCD_LAYER1_DMA_START_CR_ADR	(0x4 * 0x70c)
-#define LCD_LAYER1_DMA_START_CR_SHADOW	(0x4 * 0x70d)
-#define LCD_LAYER1_DMA_CR_LINE_WIDTH	(0x4 * 0x70e)
-#define LCD_LAYER1_DMA_CR_LINE_VSTRIDE	(0x4 * 0x70f)
-#define LCD_OUT_FORMAT_CFG		(0x4 * 0x800)
-#define LCD_HSYNC_WIDTH			(0x4 * 0x801)
-#define LCD_H_BACKPORCH			(0x4 * 0x802)
-#define LCD_H_ACTIVEWIDTH		(0x4 * 0x803)
-#define LCD_H_FRONTPORCH		(0x4 * 0x804)
-#define LCD_VSYNC_WIDTH			(0x4 * 0x805)
-#define LCD_V_BACKPORCH			(0x4 * 0x806)
-#define LCD_V_ACTIVEHEIGHT		(0x4 * 0x807)
-#define LCD_V_FRONTPORCH		(0x4 * 0x808)
-#define LCD_VSYNC_START			(0x4 * 0x809)
-#define LCD_VSYNC_END			(0x4 * 0x80a)
-#define LCD_V_BACKPORCH_EVEN		(0x4 * 0x80b)
-#define LCD_VSYNC_WIDTH_EVEN		(0x4 * 0x80c)
-#define LCD_V_ACTIVEHEIGHT_EVEN		(0x4 * 0x80d)
-#define LCD_V_FRONTPORCH_EVEN		(0x4 * 0x80e)
-#define LCD_VSYNC_START_EVEN		(0x4 * 0x80f)
-#define LCD_VSYNC_END_EVEN		(0x4 * 0x810)
-#define LCD_TIMING_GEN_TRIG		(0x4 * 0x811)
-#define LCD_PWM0_CTRL			(0x4 * 0x812)
-#define LCD_PWM0_RPT_LEADIN		(0x4 * 0x813)
-#define LCD_PWM0_HIGH_LOW		(0x4 * 0x814)
-#define LCD_PWM1_CTRL			(0x4 * 0x815)
-#define LCD_PWM1_RPT_LEADIN		(0x4 * 0x816)
-#define LCD_PWM1_HIGH_LOW		(0x4 * 0x817)
-#define LCD_PWM2_CTRL			(0x4 * 0x818)
-#define LCD_PWM2_RPT_LEADIN		(0x4 * 0x819)
-#define LCD_PWM2_HIGH_LOW		(0x4 * 0x81a)
-#define LCD_VIDEO0_DMA0_BYTES		(0x4 * 0xb00)
-#define LCD_VIDEO0_DMA0_STATE		(0x4 * 0xb01)
-#define LCD_VIDEO0_DMA1_BYTES		(0x4 * 0xb02)
-#define LCD_VIDEO0_DMA1_STATE		(0x4 * 0xb03)
-#define LCD_VIDEO0_DMA2_BYTES		(0x4 * 0xb04)
-#define LCD_VIDEO0_DMA2_STATE		(0x4 * 0xb05)
-#define LCD_VIDEO1_DMA0_BYTES		(0x4 * 0xb06)
-#define LCD_VIDEO1_DMA0_STATE		(0x4 * 0xb07)
-#define LCD_VIDEO1_DMA1_BYTES		(0x4 * 0xb08)
-#define LCD_VIDEO1_DMA1_STATE		(0x4 * 0xb09)
-#define LCD_VIDEO1_DMA2_BYTES		(0x4 * 0xb0a)
-#define LCD_VIDEO1_DMA2_STATE		(0x4 * 0xb0b)
-#define LCD_GRAPHIC0_DMA_BYTES		(0x4 * 0xb0c)
-#define LCD_GRAPHIC0_DMA_STATE		(0x4 * 0xb0d)
-#define LCD_GRAPHIC1_DMA_BYTES		(0x4 * 0xb0e)
-#define LCD_GRAPHIC1_DMA_STATE		(0x4 * 0xb0f)
-
-#define LAYER3_DMA_FIFO_UNDERFLOW_BIT		(1<<26)
-#define LAYER3_DMA_OVERFLOW_BIT			(1<<25)
-#define LAYER3_DMA_IDLE_BIT			(1<<24)
-#define LAYER3_DMA_DONE_BIT			(1<<23)
-
-#define LAYER2_DMA_FIFO_UNDERFLOW_BIT		(1<<22)
-#define LAYER2_DMA_OVERFLOW_BIT			(1<<21)
-#define LAYER2_DMA_IDLE_BIT			(1<<20)
-#define LAYER2_DMA_DONE_BIT			(1<<19)
-
-#define LAYER1_DMA_CR_FIFO_UNDERFLOW_BIT	(1<<18)
-#define LAYER1_DMA_CR_FIFO_OVERFLOW_BIT		(1<<17)
-#define LAYER1_DMA_CB_FIFO_UNDERFLOW_BIT	(1<<16)
-#define LAYER1_DMA_CB_FIFO_OVERFLOW_BIT		(1<<15)
-
-#define LAYER1_DMA_FIFO_UNDERFLOW_BIT		(1<<14)
-#define LAYER1_DMA_OVERFLOW_BIT			(1<<13)
-#define LAYER1_DMA_IDLE_BIT			(1<<12)
-#define LAYER1_DMA_DONE_BIT			(1<<11)
-
-#define LAYER0_DMA_CR_FIFO_UNDERFLOW_BIT	(1<<10)
-#define LAYER0_DMA_CR_FIFO_OVERFLOW_BIT		(1<<9)
-#define LAYER0_DMA_CB_FIFO_UNDERFLOW_BIT	(1<<8)
-#define LAYER0_DMA_CB_FIFO_OVERFLOW_BIT		(1<<7)
-
-#define LAYER0_DMA_FIFO_UNDERFLOW_BIT		(1<<6)
-#define LAYER0_DMA_OVERFLOW_BIT			(1<<5)
-#define LAYER0_DMA_IDLE_BIT			(1<<4)
-#define LAYER0_DMA_DONE_BIT			(1<<3)
-
-#define  BLT_VIDEOn_DMAm_STATE			0x00
-#define  BLT_VIDEOn_DMAm_BYTES			0x00
-#define  BLT_RAM_CFG				0x00
-
-#define  BLT_LAYERn_WIDTH(N)			(0x40C + (0x400*N))
-#define  BLT_LAYERn_HEIGHT_OFFSET(N)		(0x410 + (0x400*N))
-
-#define  BLT_LAYERn_TRANS_COLOUR_MS		0x0
-#define  BLT_LAYERn_TRANS_COLOUR_LS		0x0
-#define  BLT_LAYERn_SCALE_CFG			0x0
-#define  BLT_LAYERn_ROW_START			0x0
-#define  BLT_LAYERn_INV_COLOUR_MS		0x0
-#define  BLT_LAYERn_INV_COLOUR_LS		0x0
 
 /*  LCD controller Layer DMA config register */
+#define LCD_LAYER0_DMA_CFG			(0x4 * 0x117)
+#define LCD_LAYERn_DMA_CFG(N)			(LCD_LAYER0_DMA_CFG + (0x400*N))
+#define LCD_DMA_LAYER_ENABLE			  (1<<0)
+#define LCD_DMA_LAYER_STATUS			  (1<<1)
+#define LCD_DMA_LAYER_AUTO_UPDATE		  (1<<2)
+#define LCD_DMA_LAYER_CONT_UPDATE		  (1<<3)
+#define LCD_DMA_LAYER_CONT_PING_PONG_UPDATE	  (LCD_DMA_LAYER_AUTO_UPDATE \
+						| LCD_DMA_LAYER_CONT_UPDATE)
+#define LCD_DMA_LAYER_FIFO_ADR_MODE		  (1<<4)
+#define LCD_DMA_LAYER_AXI_BURST_1		  (1<<5)
+#define LCD_DMA_LAYER_AXI_BURST_2		  (2<<5)
+#define LCD_DMA_LAYER_AXI_BURST_3		  (3<<5)
+#define LCD_DMA_LAYER_AXI_BURST_4		  (4<<5)
+#define LCD_DMA_LAYER_AXI_BURST_5		  (5<<5)
+#define LCD_DMA_LAYER_AXI_BURST_6		  (6<<5)
+#define LCD_DMA_LAYER_AXI_BURST_7		  (7<<5)
+#define LCD_DMA_LAYER_AXI_BURST_8		  (8<<5)
+#define LCD_DMA_LAYER_AXI_BURST_9		  (9<<5)
+#define LCD_DMA_LAYER_AXI_BURST_10		  (0xa<<5)
+#define LCD_DMA_LAYER_AXI_BURST_11		  (0xb<<5)
+#define LCD_DMA_LAYER_AXI_BURST_12		  (0xc<<5)
+#define LCD_DMA_LAYER_AXI_BURST_13		  (0xd<<5)
+#define LCD_DMA_LAYER_AXI_BURST_14		  (0xe<<5)
+#define LCD_DMA_LAYER_AXI_BURST_15		  (0xf<<5)
+#define LCD_DMA_LAYER_AXI_BURST_16		  (0x10<<5)
+#define LCD_DMA_LAYER_V_STRIDE_EN		  (1<<10)
 
-/* bit 0 default is disabled */
-#define LCD_DMA_LAYER_ENABLE			(0x001)
-/* bit 1 this should be used only as a mask when reading the status from
- * the DMA CFG register
- */
-#define LCD_DMA_LAYER_STATUS			(0x002)
-/* bit 2 */
-#define LCD_DMA_LAYER_AUTO_UPDATE		(0x004)
-/* bit 3 */
-#define LCD_DMA_LAYER_CONT_UPDATE		(0x008)
-/* bit 2 + bit 3 */
-#define LCD_DMA_LAYER_CONT_PING_PONG_UPDATE	(0x00C)
-/* bit 4 set FIFO addressing mode, default is increment after each burst */
-#define LCD_DMA_LAYER_FIFO_ADR_MODE		(0x010)
-/* bit 5:9 default axi burst is 1 */
-#define LCD_DMA_LAYER_AXI_BURST_1		(0x020)
-#define LCD_DMA_LAYER_AXI_BURST_2		(0x040)
-#define LCD_DMA_LAYER_AXI_BURST_3		(0x060)
-#define LCD_DMA_LAYER_AXI_BURST_4		(0x080)
-#define LCD_DMA_LAYER_AXI_BURST_5		(0x0A0)
-#define LCD_DMA_LAYER_AXI_BURST_6		(0x0C0)
-#define LCD_DMA_LAYER_AXI_BURST_7		(0x0E0)
-#define LCD_DMA_LAYER_AXI_BURST_8		(0x100)
-#define LCD_DMA_LAYER_AXI_BURST_9		(0x120)
-#define LCD_DMA_LAYER_AXI_BURST_10		(0x140)
-#define LCD_DMA_LAYER_AXI_BURST_11		(0x160)
-#define LCD_DMA_LAYER_AXI_BURST_12		(0x180)
-#define LCD_DMA_LAYER_AXI_BURST_13		(0x1A0)
-#define LCD_DMA_LAYER_AXI_BURST_14		(0x1C0)
-#define LCD_DMA_LAYER_AXI_BURST_15		(0x1E0)
-#define LCD_DMA_LAYER_AXI_BURST_16		(0x200)
-/* bit 10 */
-#define LCD_DMA_LAYER_V_STRIDE_EN		(0x400)
-
-/******************************************************************************
- *		   LCD controller Layer config register
- ******************************************************************************/
-/* ---bit 1:2 */
-/* enable horizontal scaling,default is
- * no scaling
- */
-#define LCD_LAYER_SCALE_H			(0x0002)
-/* enable vertical scaling*/
-#define LCD_LAYER_SCALE_V			(0x0004)
-/* enable vertical and horizontal
- * scaling
- */
-#define LCD_LAYER_SCALE_H_V			(0x0006)
-/* --- bit 3*/
-/* enable CSC, default is bypassed*/
-#define LCD_LAYER_CSC_EN			(0x0008)
-/* --- bit 4:5*/
-/* use static alpha value for layer,
- * default is disabled
- */
-#define LCD_LAYER_ALPHA_STATIC			(0x10)
-/* use embedded value for alpha blending*/
-#define LCD_LAYER_ALPHA_EMBED			(0x20)
-/* use static alpha and embedded value,
- * by multiplication
- */
-#define LCD_LAYER_ALPHA_COMBI			(0x30)
-/* --- bit 6*/
-/* indicates that the RGB values have
- * been multiplied with alpha
- */
-#define LCD_LAYER_ALPHA_PREMULT			(0x40)
-/* --- bit 7*/
-#define LCD_LAYER_INVERT_COL			(0x80)
-/* enable color inversion,
- * default is not inverted
- */
-/* --- bit 8*/
-/* enable transparency */
-#define LCD_LAYER_TRANSPARENT_EN		(0x100)
-/* --- bit 9:13*/
-/* default Layer config */
-#define LCD_LAYER_FORMAT_YCBCR444PLAN		(0x0000)
-#define LCD_LAYER_FORMAT_YCBCR422PLAN		(0x0200)
-#define LCD_LAYER_FORMAT_YCBCR420PLAN		(0x0400)
-#define LCD_LAYER_FORMAT_RGB888PLAN		(0x0600)
-#define LCD_LAYER_FORMAT_YCBCR444LIN		(0x0800)
-#define LCD_LAYER_FORMAT_YCBCR422LIN		(0x0A00)
-#define LCD_LAYER_FORMAT_RGB888			(0x0C00)
-#define LCD_LAYER_FORMAT_RGBA8888		(0x0E00)
-#define LCD_LAYER_FORMAT_RGBX8888		(0x1000)
-#define LCD_LAYER_FORMAT_RGB565			(0x1200)
-#define LCD_LAYER_FORMAT_RGBA1555		(0x1400)
-#define LCD_LAYER_FORMAT_XRGB1555		(0x1600)
-#define LCD_LAYER_FORMAT_RGB444			(0x1800)
-#define LCD_LAYER_FORMAT_RGBA4444		(0x1A00)
-#define LCD_LAYER_FORMAT_RGBX4444		(0x1C00)
-#define LCD_LAYER_FORMAT_RGB332			(0x1E00)
-#define LCD_LAYER_FORMAT_RGBA3328		(0x2000)
-#define LCD_LAYER_FORMAT_RGBX3328		(0x2200)
-#define LCD_LAYER_FORMAT_CLUT			(0x2400)
-#define LCD_LAYER_FORMAT_NV12			(0x3800)
-/* --- bit 14*/
-/* planar storege format */
-#define LCD_LAYER_PLANAR_STORAGE		(0x4000)
-/* --- bit 15:16*/
-#define LCD_LAYER_8BPP				(0x00000)
-#define LCD_LAYER_16BPP				(0x08000)
-#define LCD_LAYER_24BPP				(0x10000)
-#define LCD_LAYER_32BPP				(0x18000)
-/* --- bit 17*/
-/* Y after CRCb,
- * default is Y before crcb
- */
-#define LCD_LAYER_Y_ORDER			(0x020000)
-/* --- bit 18*/
-/* CR before Cb,
- * default is CB before Cr
- */
-#define LCD_LAYER_CRCB_ORDER			(0x040000)
-/*--- but 19*/
-/* BGR order, default is RGB */
-#define LCD_LAYER_BGR_ORDER			(0x080000)
-/* ---bit 20:21*/
-/* 2 entry clut, 1bpp */
-#define LCD_LAYER_LUT_2ENT			(0x000000)
-/* 4 entry clut, 2bpp */
-#define LCD_LAYER_LUT_4ENT			(0x100000)
-/* 18 entry clut, 4bpp */
-#define LCD_LAYER_LUT_16ENT			(0x200000)
-/*--- bit 22:24*/
-/* no flip or rotaton */
-#define LCD_LAYER_NO_FLIP			(0x000000)
-/* flip vertical */
-#define LCD_LAYER_FLIP_V			(0x400000)
-/* flip horizontal */
-#define LCD_LAYER_FLIP_H			(0x800000)
-/* rotate right 90 */
-#define LCD_LAYER_ROT_R90			(0xC00000)
-/* rotate left 90 */
-#define LCD_LAYER_ROT_L90			(0x1000000)
-/* rotate 180 (flip H & V ) */
-#define LCD_LAYER_ROT_180			(0x1400000)
-/* --- bit 25:26*/
-/* fifo empty */
-#define LCD_LAYER_FIFO_00			(0x0000000)
-/* fifo 25% */
-#define LCD_LAYER_FIFO_25			(0x2000000)
-/* fifo 50% */
-#define LCD_LAYER_FIFO_50			(0x4000000)
-/* fifo 100% , full */
-#define LCD_LAYER_FIFO_100			(0x6000000)
-
-/* --- bit 27:29*/
-#define LCD_LAYER_INTERLEAVE_DIS		(0x00000000)
-#define LCD_LAYER_INTERLEAVE_V			(0x08000000)
-#define LCD_LAYER_INTERLEAVE_H			(0x10000000)
-#define LCD_LAYER_INTERLEAVE_CH			(0x18000000)
-#define LCD_LAYER_INTERLEAVE_V_SUB		(0x20000000)
-#define LCD_LAYER_INTERLEAVE_H_SUB		(0x28000000)
-#define LCD_LAYER_INTERLEAVE_CH_SUB		(0x30000000)
-/*bit 30*/
-#define LCD_LAYER_INTER_POS_EVEN		(0x00000000)
-#define LCD_LAYER_INTER_POS_ODD			(0x40000000)
+#define LCD_LAYER0_DMA_START_ADR		(0x4 * 0x118)
+#define LCD_LAYERn_DMA_START_ADDR(N)		(LCD_LAYER0_DMA_START_ADR \
+						+ (0x400*N))
+#define LCD_LAYER0_DMA_START_SHADOW		(0x4 * 0x119)
+#define LCD_LAYERn_DMA_START_SHADOW(N)		(LCD_LAYER0_DMA_START_SHADOW \
+						+ (0x400*N))
+#define LCD_LAYER0_DMA_LEN			(0x4 * 0x11a)
+#define LCD_LAYERn_DMA_LEN(N)			(LCD_LAYER0_DMA_LEN + \
+						(0x400*N))
+#define LCD_LAYER0_DMA_LEN_SHADOW		(0x4 * 0x11b)
+#define LCD_LAYERn_DMA_LEN_SHADOW(N)		(LCD_LAYER0_DMA_LEN_SHADOW + \
+						(0x400*N))
+#define LCD_LAYER0_DMA_STATUS			(0x4 * 0x11c)
+#define LCD_LAYERn_DMA_STATUS(N)		(LCD_LAYER0_DMA_STATUS + \
+						(0x400*N))
+#define LCD_LAYER0_DMA_LINE_WIDTH		(0x4 * 0x11d)
+#define LCD_LAYERn_DMA_LINE_WIDTH(N)		(LCD_LAYER0_DMA_LINE_WIDTH + \
+						(0x400*N))
+#define LCD_LAYER0_DMA_LINE_VSTRIDE		(0x4 * 0x11e)
+#define LCD_LAYERn_DMA_LINE_VSTRIDE(N)		(LCD_LAYER0_DMA_LINE_VSTRIDE +\
+						(0x400*N))
+#define LCD_LAYER0_DMA_FIFO_STATUS		(0x4 * 0x11f)
+#define LCD_LAYERn_DMA_FIFO_STATUS(N)		(LCD_LAYER0_DMA_FIFO_STATUS + \
+						(0x400*N))
+#define LCD_LAYER0_CFG2				(0x4 * 0x120)
+#define LCD_LAYERn_CFG2(N)			(LCD_LAYER0_CFG2 + (0x400*N))
+#define LCD_LAYER0_DMA_START_CB_ADR		(0x4 * 0x700)
+#define LCD_LAYER0_DMA_START_CB_SHADOW		(0x4 * 0x701)
+#define LCD_LAYER0_DMA_CB_LINE_WIDTH		(0x4 * 0x702)
+#define LCD_LAYER0_DMA_CB_LINE_VSTRIDE		(0x4 * 0x703)
+#define LCD_LAYER0_DMA_START_CR_ADR		(0x4 * 0x704)
+#define LCD_LAYER0_DMA_START_CR_SHADOW		(0x4 * 0x705)
+#define LCD_LAYER0_DMA_CR_LINE_WIDTH		(0x4 * 0x706)
+#define LCD_LAYER0_DMA_CR_LINE_VSTRIDE		(0x4 * 0x707)
+#define LCD_LAYER1_DMA_START_CB_ADR		(0x4 * 0x708)
+#define LCD_LAYER1_DMA_START_CB_SHADOW		(0x4 * 0x709)
+#define LCD_LAYER1_DMA_CB_LINE_WIDTH		(0x4 * 0x70a)
+#define LCD_LAYER1_DMA_CB_LINE_VSTRIDE		(0x4 * 0x70b)
+#define LCD_LAYER1_DMA_START_CR_ADR		(0x4 * 0x70c)
+#define LCD_LAYER1_DMA_START_CR_SHADOW		(0x4 * 0x70d)
+#define LCD_LAYER1_DMA_CR_LINE_WIDTH		(0x4 * 0x70e)
+#define LCD_LAYER1_DMA_CR_LINE_VSTRIDE		(0x4 * 0x70f)
 
 /****************************************************************************
  *		   LCD controller output format register defines
  ****************************************************************************/
-/* --- bits 0:4*/
-#define D_LCD_OUTF_FORMAT_RGB121212             (0x00 << 0)
-#define D_LCD_OUTF_FORMAT_RGB101010             (0x01 << 0)
-#define D_LCD_OUTF_FORMAT_RGB888                (0x02 << 0)
-#define D_LCD_OUTF_FORMAT_RGB666                (0x03 << 0)
-#define D_LCD_OUTF_FORMAT_RGB565                (0x04 << 0)
-#define D_LCD_OUTF_FORMAT_RGB444                (0x05 << 0)
-#define D_LCD_OUTF_FORMAT_MRGB121212            (0x10 << 0)
-#define D_LCD_OUTF_FORMAT_MRGB101010            (0x11 << 0)
-#define D_LCD_OUTF_FORMAT_MRGB888               (0x12 << 0)
-#define D_LCD_OUTF_FORMAT_MRGB666               (0x13 << 0)
-#define D_LCD_OUTF_FORMAT_MRGB565               (0x14 << 0)
-#define D_LCD_OUTF_FORMAT_YCBCR420_8B_LEGACY    (0x08 << 0)
-#define D_LCD_OUTF_FORMAT_YCBCR420_8B_DCI       (0x09 << 0)
-#define D_LCD_OUTF_FORMAT_YCBCR420_8B           (0x0A << 0)
-#define D_LCD_OUTF_FORMAT_YCBCR420_10B          (0x0B << 0)
-#define D_LCD_OUTF_FORMAT_YCBCR420_12B          (0x0C << 0)
-#define D_LCD_OUTF_FORMAT_YCBCR422_8B           (0x0D << 0)
-#define D_LCD_OUTF_FORMAT_YCBCR422_10B          (0x0E << 0)
-#define D_LCD_OUTF_FORMAT_YCBCR444              (0x0F << 0)
-#define D_LCD_OUTF_FORMAT_MYCBCR420_8B_LEGACY   (0x18 << 0)
-#define D_LCD_OUTF_FORMAT_MYCBCR420_8B_DCI      (0x19 << 0)
-#define D_LCD_OUTF_FORMAT_MYCBCR420_8B          (0x1A << 0)
-#define D_LCD_OUTF_FORMAT_MYCBCR420_10B         (0x1B << 0)
-#define D_LCD_OUTF_FORMAT_MYCBCR420_12B         (0x1C << 0)
-#define D_LCD_OUTF_FORMAT_MYCBCR422_8B          (0x1D << 0)
-#define D_LCD_OUTF_FORMAT_MYCBCR422_10B         (0x1E << 0)
-#define D_LCD_OUTF_FORMAT_MYCBCR444             (0x1F << 0)
-/* --- bit 5*/
-/* default is 0, RGB order */
-#define D_LCD_OUTF_BGR_ORDER			(1 << 5)
-/* --- bit 6*/
-/* Y after CB/Cr, default is Y before CB/CR */
-#define D_LCD_OUTF_Y_ORDER			(1 << 6)
-/* --- bit 7*/
-/* Cr before  Cb, default is Cb before Cr */
-#define D_LCD_OUTF_CRCB_ORDER			(1 << 7)
-
-/* **************************************************************************
- *			LCD controller control register defines
- ****************************************************************************
- */
-/* --- bit 0 */
-#define LCD_CTRL_PROGRESSIVE		(0x00)	/* default */
-#define LCD_CTRL_INTERLACED		(0x01)
-/* --- bit 1 */
-#define LCD_CTRL_ENABLE			(0x02)	/* enable conrtoller */
-/* --- bits 2,3,4,5 */
-#define LCD_CTRL_VL1_ENABLE		(0x04)	/* enable video layer 1 */
-#define LCD_CTRL_VL2_ENABLE		(0x08)	/* enable  video layer 2 */
-#define LCD_CTRL_GL1_ENABLE		(0x10)	/* enable  graphics layer 1 */
-#define LCD_CTRL_GL2_ENABLE		(0x20)	/* enable  graphics layer 2 */
-/* --- bits 6:7 */
-#define LCD_CTRL_ALPHA_BLEND_VL1	(0x00)	/* video layer 1 - default */
-#define LCD_CTRL_ALPHA_BLEND_VL2	(0x40)	/* video layer 2 */
-#define LCD_CTRL_ALPHA_BLEND_GL1	(0x80)	/* graphics layer 1 */
-#define LCD_CTRL_ALPHA_BLEND_GL2	(0xC0)	/* graphics layer 2 */
-/* --- bits 8:9 */
-#define LCD_CTRL_ALPHA_TOP_VL1		(0x000)	/* video layer 1 - default */
-#define LCD_CTRL_ALPHA_TOP_VL2		(0x100)	/* video layer 2 */
-#define LCD_CTRL_ALPHA_TOP_GL1		(0x200)	/* graphics layer 1 */
-#define LCD_CTRL_ALPHA_TOP_GL2		(0x300)	/* graphics layer 2 */
-/* --- bits 10:11 */
-#define LCD_CTRL_ALPHA_MIDDLE_VL1	(0x000)	/* video layer 1 - default */
-#define LCD_CTRL_ALPHA_MIDDLE_VL2	(0x400)	/* video layer 2 */
-#define LCD_CTRL_ALPHA_MIDDLE_GL1	(0x800)	/* graphics layer 1 */
-#define LCD_CTRL_ALPHA_MIDDLE_GL2	(0xC00)	/* graphics layer 2 */
-/* --- bits 12:13 */
-#define LCD_CTRL_ALPHA_BOTTOM_VL1	(0x0000)	/* video layer 1 */
-#define LCD_CTRL_ALPHA_BOTTOM_VL2	(0x1000)	/* video layer 2 */
-#define LCD_CTRL_ALPHA_BOTTOM_GL1	(0x2000)	/* graphics layer 1 */
-#define LCD_CTRL_ALPHA_BOTTOM_GL2	(0x3000)	/* graphics layer 2 */
-/* --- bit 14 */
-#define LCD_CTRL_TIM_GEN_ENABLE		(0x4000)	/* timing generator */
-/* --- bit 15 */
-#define LCD_CTRL_DISPLAY_MODE_ONE_SHOT	(0x8000)	/* default continuous */
-/* --- bits 16, 17, 18 */
-#define LCD_CTRL_PWM0_EN		(0x10000)	/* enable PWM 0 */
-#define LCD_CTRL_PWM1_EN		(0x20000)	/* enable PWM 1 */
-#define LCD_CTRL_PWM2_EN		(0x40000)	/* enable PWM 2 */
-/* --- bits 19:20 */
-#define LCD_CTRL_OUTPUT_DISABLED	(0x000000)	/* output disabled */
-#define LCD_CTRL_OUTPUT_ENABLED		(0x080000)
-/* --- bit 21 */
-#define LCD_CTRL_SHARP_TFT		(0x200000)
-/* = bit 21 VSYNC BACK PORCH LEVEL */
-#define LCD_CTRL_BPORCH_ENABLE		(0x00200000)
-/* = bit 22 VSYNC FRONT PORCH LEVEL */
-#define LCD_CTRL_FPORCH_ENABLE		(0x00400000)
-/* = bit 28 enable pipelined (outstanding) DMA reads */
-#define LCD_CTRL_PIPELINE_DMA		(0x10000000)
-
-/* LCD Control register bit fields */
-
-#define EIGHT_BITS			 8
-#define SIXTEEN_BITS			 8
-#define TWENTY_FOUR_BITS		 8
-#define THIRT_TWO_BITS			 8
-
-#define ENABLE				 1
-/*LCD_VSTATUS_COMPARE Vertcal interval in which to generate vertcal
- * interval interrupt
- */
-#define LCD_VSTATUS_VERTICAL_STATUS_MASK	 0x60	/* BITS 13 and 14 */
-#define LCD_VSTATUS_COMPARE_VSYNC		 0x00
-#define LCD_VSTATUS_COMPARE_BACKPORCH		 0x01
-#define LCD_VSTATUS_COMPARE_ACTIVE		 0x10
-#define LCD_VSTATUS_COMPARE_FRONT_PORCH		 0x11
+#define LCD_OUT_FORMAT_CFG			(0x4 * 0x800)
+#define LCD_OUTF_FORMAT_RGB121212                 (0x00)
+#define LCD_OUTF_FORMAT_RGB101010                 (0x01)
+#define LCD_OUTF_FORMAT_RGB888                    (0x02)
+#define LCD_OUTF_FORMAT_RGB666                    (0x03)
+#define LCD_OUTF_FORMAT_RGB565                    (0x04)
+#define LCD_OUTF_FORMAT_RGB444                    (0x05)
+#define LCD_OUTF_FORMAT_MRGB121212                (0x10)
+#define LCD_OUTF_FORMAT_MRGB101010                (0x11)
+#define LCD_OUTF_FORMAT_MRGB888                   (0x12)
+#define LCD_OUTF_FORMAT_MRGB666                   (0x13)
+#define LCD_OUTF_FORMAT_MRGB565                   (0x14)
+#define LCD_OUTF_FORMAT_YCBCR420_8B_LEGACY        (0x08)
+#define LCD_OUTF_FORMAT_YCBCR420_8B_DCI           (0x09)
+#define LCD_OUTF_FORMAT_YCBCR420_8B               (0x0A)
+#define LCD_OUTF_FORMAT_YCBCR420_10B              (0x0B)
+#define LCD_OUTF_FORMAT_YCBCR420_12B              (0x0C)
+#define LCD_OUTF_FORMAT_YCBCR422_8B               (0x0D)
+#define LCD_OUTF_FORMAT_YCBCR422_10B              (0x0E)
+#define LCD_OUTF_FORMAT_YCBCR444                  (0x0F)
+#define LCD_OUTF_FORMAT_MYCBCR420_8B_LEGACY       (0x18)
+#define LCD_OUTF_FORMAT_MYCBCR420_8B_DCI          (0x19)
+#define LCD_OUTF_FORMAT_MYCBCR420_8B              (0x1A)
+#define LCD_OUTF_FORMAT_MYCBCR420_10B             (0x1B)
+#define LCD_OUTF_FORMAT_MYCBCR420_12B             (0x1C)
+#define LCD_OUTF_FORMAT_MYCBCR422_8B              (0x1D)
+#define LCD_OUTF_FORMAT_MYCBCR422_10B             (0x1E)
+#define LCD_OUTF_FORMAT_MYCBCR444                 (0x1F)
+#define LCD_OUTF_BGR_ORDER			  (1 << 5)
+#define LCD_OUTF_Y_ORDER			  (1 << 6)
+#define LCD_OUTF_CRCB_ORDER			  (1 << 7)
 
-/*interrupt bits */
-#define LCD_INT_VERT_COMP			 (1 << 2)
-#define LCD_INT_LINE_CMP			 (1 << 1)
-#define LCD_INT_EOF				 (1 << 0)
+#define LCD_HSYNC_WIDTH				(0x4 * 0x801)
+#define LCD_H_BACKPORCH				(0x4 * 0x802)
+#define LCD_H_ACTIVEWIDTH			(0x4 * 0x803)
+#define LCD_H_FRONTPORCH			(0x4 * 0x804)
+#define LCD_VSYNC_WIDTH				(0x4 * 0x805)
+#define LCD_V_BACKPORCH				(0x4 * 0x806)
+#define LCD_V_ACTIVEHEIGHT			(0x4 * 0x807)
+#define LCD_V_FRONTPORCH			(0x4 * 0x808)
+#define LCD_VSYNC_START				(0x4 * 0x809)
+#define LCD_VSYNC_END				(0x4 * 0x80a)
+#define LCD_V_BACKPORCH_EVEN			(0x4 * 0x80b)
+#define LCD_VSYNC_WIDTH_EVEN			(0x4 * 0x80c)
+#define LCD_V_ACTIVEHEIGHT_EVEN			(0x4 * 0x80d)
+#define LCD_V_FRONTPORCH_EVEN			(0x4 * 0x80e)
+#define LCD_VSYNC_START_EVEN			(0x4 * 0x80f)
+#define LCD_VSYNC_END_EVEN			(0x4 * 0x810)
+#define LCD_TIMING_GEN_TRIG			(0x4 * 0x811)
+#define LCD_PWM0_CTRL				(0x4 * 0x812)
+#define LCD_PWM0_RPT_LEADIN			(0x4 * 0x813)
+#define LCD_PWM0_HIGH_LOW			(0x4 * 0x814)
+#define LCD_PWM1_CTRL				(0x4 * 0x815)
+#define LCD_PWM1_RPT_LEADIN			(0x4 * 0x816)
+#define LCD_PWM1_HIGH_LOW			(0x4 * 0x817)
+#define LCD_PWM2_CTRL				(0x4 * 0x818)
+#define LCD_PWM2_RPT_LEADIN			(0x4 * 0x819)
+#define LCD_PWM2_HIGH_LOW			(0x4 * 0x81a)
+#define LCD_VIDEO0_DMA0_BYTES			(0x4 * 0xb00)
+#define LCD_VIDEO0_DMA0_STATE			(0x4 * 0xb01)
+#define LCD_VIDEO0_DMA1_BYTES			(0x4 * 0xb02)
+#define LCD_VIDEO0_DMA1_STATE			(0x4 * 0xb03)
+#define LCD_VIDEO0_DMA2_BYTES			(0x4 * 0xb04)
+#define LCD_VIDEO0_DMA2_STATE			(0x4 * 0xb05)
+#define LCD_VIDEO1_DMA0_BYTES			(0x4 * 0xb06)
+#define LCD_VIDEO1_DMA0_STATE			(0x4 * 0xb07)
+#define LCD_VIDEO1_DMA1_BYTES			(0x4 * 0xb08)
+#define LCD_VIDEO1_DMA1_STATE			(0x4 * 0xb09)
+#define LCD_VIDEO1_DMA2_BYTES			(0x4 * 0xb0a)
+#define LCD_VIDEO1_DMA2_STATE			(0x4 * 0xb0b)
+#define LCD_GRAPHIC0_DMA_BYTES			(0x4 * 0xb0c)
+#define LCD_GRAPHIC0_DMA_STATE			(0x4 * 0xb0d)
+#define LCD_GRAPHIC1_DMA_BYTES			(0x4 * 0xb0e)
+#define LCD_GRAPHIC1_DMA_STATE			(0x4 * 0xb0f)
 
 #endif /* __KMB_REGS_H__ */
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
