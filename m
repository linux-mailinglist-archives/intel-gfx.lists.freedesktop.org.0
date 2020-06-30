Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FB520FEDA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F30086E33F;
	Tue, 30 Jun 2020 21:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 277306E329;
 Tue, 30 Jun 2020 21:28:44 +0000 (UTC)
IronPort-SDR: YGqXhdCWlYSBGHmzXIjyJAAwb/j5tXGbWvKoHonvqgSnk97YK6FESgm6MTmG47lvgn/bcC0YO+
 s+RuoE0+V7lQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="144554754"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="144554754"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:44 -0700
IronPort-SDR: FPQwgxEsF9Ok2J5L19EgTiBpnNSIgB0qCtszY7q+DAe2nKSEl3NjLUl5dOYwxHvjqwC7yIVtN2
 nJUMskzLkQaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066703"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:43 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:27:35 -0700
Message-Id: <1593552491-23698-24-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 23/59] drm/kmb: Additional register programming
 to update_plane
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

These changes are ported from Myriadx which has additional registers
updated for planes. This change does the following
reinitialize plane interrupts
program Cb/Cr for planar formats
set LCD_CTRL_VHSYNC_IDLE_LVL
set output format and configure csc

v2: code review changes

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_drv.h   |  16 ++++
 drivers/gpu/drm/kmb/kmb_plane.c | 183 ++++++++++++++++++++++++++++++++--------
 drivers/gpu/drm/kmb/kmb_regs.h  |  72 ++++++++++------
 3 files changed, 210 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_drv.h b/drivers/gpu/drm/kmb/kmb_drv.h
index dcaeb11..50efa8a 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.h
+++ b/drivers/gpu/drm/kmb/kmb_drv.h
@@ -112,6 +112,22 @@ static inline u32 kmb_read_lcd(struct kmb_drm_private *dev_p, unsigned int reg)
 	return readl(dev_p->lcd_mmio + reg);
 }
 
+static inline void kmb_set_bitmask_lcd(struct kmb_drm_private *dev_p,
+		unsigned int reg, u32 mask)
+{
+	u32 reg_val = kmb_read_lcd(dev_p->lcd_mmio, reg);
+
+	kmb_write_lcd(dev_p->lcd_mmio, reg, (reg_val | mask));
+}
+
+static inline void kmb_clr_bitmask_lcd(struct kmb_drm_private *dev_p,
+		unsigned int reg, u32 mask)
+{
+	u32 reg_val = kmb_read_lcd(dev_p->lcd_mmio, reg);
+
+	kmb_write_lcd(dev_p->lcd_mmio, reg, (reg_val & (~mask)));
+}
+
 static inline u32 kmb_read_mipi(struct kmb_drm_private *dev_p, unsigned int reg)
 {
 	return readl(dev_p->mipi_mmio + reg);
diff --git a/drivers/gpu/drm/kmb/kmb_plane.c b/drivers/gpu/drm/kmb/kmb_plane.c
index 3841d96..026df49 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.c
+++ b/drivers/gpu/drm/kmb/kmb_plane.c
@@ -76,6 +76,46 @@ static const u32 kmb_formats_v[] = {
 	DRM_FORMAT_NV12, DRM_FORMAT_NV21,
 };
 
+#define LCD_INT_VL0_ERR (LAYER0_DMA_FIFO_UNDEFLOW | \
+			LAYER0_DMA_FIFO_OVERFLOW | \
+			LAYER0_DMA_CB_FIFO_OVERFLOW | \
+			LAYER0_DMA_CB_FIFO_UNDERFLOW | \
+			LAYER0_DMA_CR_FIFO_OVERFLOW | \
+			LAYER0_DMA_CR_FIFO_UNDERFLOW)
+
+#define LCD_INT_VL1_ERR (LAYER1_DMA_FIFO_UNDERFLOW | \
+			LAYER1_DMA_FIFO_OVERFLOW | \
+			LAYER1_DMA_CB_FIFO_OVERFLOW | \
+			LAYER1_DMA_CB_FIFO_UNDERFLOW | \
+			LAYER1_DMA_CR_FIFO_OVERFLOW | \
+			LAYER1_DMA_CR_FIFO_UNDERFLOW)
+
+#define LCD_INT_GL0_ERR (LAYER2_DMA_FIFO_OVERFLOW | LAYER2_DMA_FIFO_UNDERFLOW)
+
+#define LCD_INT_GL1_ERR (LAYER3_DMA_FIFO_OVERFLOW | LAYER3_DMA_FIFO_UNDERFLOW)
+
+#define LCD_INT_VL0 (LAYER0_DMA_DONE | LAYER0_DMA_IDLE | LCD_INT_VL0_ERR)
+
+#define LCD_INT_VL1 (LAYER1_DMA_DONE | LAYER1_DMA_IDLE | LCD_INT_VL1_ERR)
+
+#define LCD_INT_GL0 (LAYER2_DMA_DONE | LAYER2_DMA_IDLE | LCD_INT_GL0_ERR)
+
+#define LCD_INT_GL1 (LAYER3_DMA_DONE | LAYER3_DMA_IDLE | LCD_INT_GL1_ERR)
+
+const uint32_t layer_irqs[] = {
+				LCD_INT_VL0,
+				LCD_INT_VL1,
+				LCD_INT_GL0,
+				LCD_INT_GL1
+			      };
+/*Conversion (yuv->rgb) matrix from myriadx */
+static const u32 csc_coef_lcd[] = {
+	1024, 0, 1436,
+	1024, -352, -731,
+	1024, 1814, 0,
+	-179, 125, -226
+};
+
 static unsigned int check_pixel_format(struct drm_plane *plane, u32 format)
 {
 	int i;
@@ -217,6 +257,24 @@ unsigned int set_bits_per_pixel(const struct drm_format_info *format)
 	return val;
 }
 
+static void config_csc(struct kmb_drm_private *dev_p, int plane_id)
+{
+	/*YUV to RGB conversion using the fixed matrix csc_coef_lcd */
+	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_COEFF11(plane_id), csc_coef_lcd[0]);
+	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_COEFF12(plane_id), csc_coef_lcd[1]);
+	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_COEFF13(plane_id), csc_coef_lcd[2]);
+	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_COEFF21(plane_id), csc_coef_lcd[3]);
+	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_COEFF22(plane_id), csc_coef_lcd[4]);
+	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_COEFF23(plane_id), csc_coef_lcd[5]);
+	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_COEFF31(plane_id), csc_coef_lcd[6]);
+	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_COEFF32(plane_id), csc_coef_lcd[7]);
+	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_COEFF33(plane_id), csc_coef_lcd[8]);
+	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_OFF1(plane_id), csc_coef_lcd[9]);
+	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_OFF2(plane_id), csc_coef_lcd[10]);
+	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_OFF3(plane_id), csc_coef_lcd[11]);
+	kmb_set_bitmask_lcd(dev_p, LCD_LAYERn_CFG(plane_id), LCD_LAYER_CSC_EN);
+}
+
 static void kmb_plane_atomic_update(struct drm_plane *plane,
 				    struct drm_plane_state *state)
 {
@@ -231,6 +289,7 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	unsigned int ctrl = 0, val = 0, out_format = 0;
 	unsigned int src_w, src_h, crtc_x, crtc_y;
 	unsigned char plane_id = kmb_plane->id;
+	int num_planes = fb->format->num_planes;
 
 	if (!fb)
 		return;
@@ -249,68 +308,122 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 
 	val = set_pixel_format(fb->format->format);
 	val |= set_bits_per_pixel(fb->format);
-	/*CHECKME Leon drvr sets it to 50 try this for now */
-	val |= LCD_LAYER_FIFO_50;
+	/*CHECKME Leon drvr sets it to 100 try this for now */
+	val |= LCD_LAYER_FIFO_100;
 	kmb_write_lcd(dev_p, LCD_LAYERn_CFG(plane_id), val);
 
-	switch (plane_id) {
-	case LAYER_0:
-		ctrl = LCD_CTRL_VL1_ENABLE;
-		break;
-	case LAYER_1:
-		ctrl = LCD_CTRL_VL2_ENABLE;
-		break;
-	case LAYER_2:
-		ctrl = LCD_CTRL_GL1_ENABLE;
-		break;
-	case LAYER_3:
-		ctrl = LCD_CTRL_GL2_ENABLE;
-		break;
-	}
-
-	ctrl |= LCD_CTRL_ENABLE;
-	ctrl |= LCD_CTRL_PROGRESSIVE | LCD_CTRL_TIM_GEN_ENABLE
-		| LCD_CTRL_OUTPUT_ENABLED;
-	kmb_write_lcd(dev_p, LCD_CONTROL, ctrl);
+	/*re-initialize interrupts */
+	kmb_clr_bitmask_lcd(dev_p, LCD_INT_ENABLE, layer_irqs[plane_id]);
+	kmb_set_bitmask_lcd(dev_p, LCD_INT_CLEAR, layer_irqs[plane_id]);
+	kmb_set_bitmask_lcd(dev_p, LCD_INT_ENABLE, layer_irqs[plane_id]);
 
 	/*TBD check visible? */
 
-	/* we may have to set LCD_DMA_VSTRIDE_ENABLE in the future */
 	dma_cfg = LCD_DMA_LAYER_ENABLE | LCD_DMA_LAYER_AUTO_UPDATE
-	    | LCD_DMA_LAYER_CONT_UPDATE | LCD_DMA_LAYER_AXI_BURST_1;
+		  | LCD_DMA_LAYER_CONT_UPDATE | LCD_DMA_LAYER_AXI_BURST_1
+		  | LCD_DMA_LAYER_VSTRIDE_EN;
 
 	/* disable DMA first */
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
 			~LCD_DMA_LAYER_ENABLE);
 
-	addr = drm_fb_cma_get_gem_addr(fb, plane->state, plane_id);
+	/* pinpong mode is enabled - at the end of DMA transfer, start new
+	 * transfer alternatively using main and shadow register settings.
+	 * So update both main and shadow registers
+	 */
+	addr = drm_fb_cma_get_gem_addr(fb, plane->state, 0);
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_ADDR(plane_id), addr);
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_SHADOW(plane_id), addr);
 
 	width = fb->width;
 	height = fb->height;
-	dma_len = width * height * fb->format->cpp[plane_id];
+	dma_len = width * height * fb->format->cpp[0];
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LEN(plane_id), dma_len);
+	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LEN_SHADOW(plane_id), dma_len);
 
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LINE_VSTRIDE(plane_id),
-		fb->pitches[plane_id]);
+			fb->pitches[0]);
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LINE_WIDTH(plane_id),
-			(width*fb->format->cpp[plane_id]));
+			(width*fb->format->cpp[0]));
+
+	/*program Cb/Cr for planar formats*/
+	if (num_planes > 1) {
+		if (fb->format->format == DRM_FORMAT_YUV420 ||
+				fb->format->format == DRM_FORMAT_YVU420)
+			width /= 2;
+		addr = drm_fb_cma_get_gem_addr(fb, plane->state, LAYER_1);
+		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_CB_ADR(plane_id),
+				addr);
+		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_CB_SHADOW(plane_id),
+				addr);
+		kmb_write_lcd(dev_p,
+				LCD_LAYERn_DMA_CB_LINE_VSTRIDE(plane_id),
+				fb->pitches[LAYER_1]);
+		kmb_write_lcd(dev_p,
+				LCD_LAYERn_DMA_CB_LINE_WIDTH(plane_id),
+				(width*fb->format->cpp[0]));
+		if (num_planes == 3) {
+			addr = drm_fb_cma_get_gem_addr(fb, plane->state,
+					LAYER_2);
+			kmb_write_lcd(dev_p,
+				LCD_LAYERn_DMA_START_CR_ADR(plane_id),
+				addr);
+			kmb_write_lcd(dev_p,
+				LCD_LAYERn_DMA_START_CR_SHADOW(plane_id),
+				addr);
+			kmb_write_lcd(dev_p,
+				LCD_LAYERn_DMA_CR_LINE_VSTRIDE(plane_id),
+				fb->pitches[LAYER_2]);
+			kmb_write_lcd(dev_p,
+				LCD_LAYERn_DMA_CR_LINE_WIDTH(plane_id),
+				(width*fb->format->cpp[0]));
+		}
+	}
 
 	/* enable DMA */
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id), dma_cfg);
 
-	/* FIXME no doc on how to set output format - may need to change
-	 * this later
+	switch (plane_id) {
+	case LAYER_0:
+		ctrl = LCD_CTRL_VL1_ENABLE;
+		break;
+	case LAYER_1:
+		ctrl = LCD_CTRL_VL2_ENABLE;
+		break;
+	case LAYER_2:
+		ctrl = LCD_CTRL_GL1_ENABLE;
+		break;
+	case LAYER_3:
+		ctrl = LCD_CTRL_GL2_ENABLE;
+		break;
+	}
+
+	ctrl |= LCD_CTRL_ENABLE;
+	ctrl |= LCD_CTRL_PROGRESSIVE | LCD_CTRL_TIM_GEN_ENABLE
+		| LCD_CTRL_CONTINUOUS | LCD_CTRL_OUTPUT_ENABLED;
+
+	/*LCD is connected to MIPI on kmb
+	 * Therefore this bit is required for DSI Tx
+	 */
+	ctrl |= LCD_CTRL_VHSYNC_IDLE_LVL;
+
+	kmb_write_lcd(dev_p, LCD_CONTROL, ctrl);
+
+	/* FIXME no doc on how to set output format,these values are taken
+	 * from the Myriadx tests
 	 */
-	if (val & LCD_LAYER_BGR_ORDER)
-		out_format |= LCD_OUTF_BGR_ORDER;
-	else if (val & LCD_LAYER_CRCB_ORDER)
-		out_format |= LCD_OUTF_CRCB_ORDER;
+	out_format |= LCD_OUTF_FORMAT_RGB888;
+
+	if (val & LCD_LAYER_PLANAR_STORAGE) {
+		/*enable CSC if input is planar and output is RGB */
+		config_csc(dev_p, plane_id);
+	}
+
+	/*set background color to white*/
+	kmb_write_lcd(dev_p, LCD_BG_COLOUR_LS, 0xffffff);
+	/*leave RGB order,conversion mode and clip mode to default*/
 	/* do not interleave RGB channels for mipi Tx compatibility */
 	out_format |= LCD_OUTF_MIPI_RGB_MODE;
-	/* pixel format from LCD_LAYER_CFG */
-	out_format |= ((val >> 9) & 0x1F);
 	kmb_write_lcd(dev_p, LCD_OUT_FORMAT_CFG, out_format);
 }
 
diff --git a/drivers/gpu/drm/kmb/kmb_regs.h b/drivers/gpu/drm/kmb/kmb_regs.h
index 5f7aff7..bb80bc5 100644
--- a/drivers/gpu/drm/kmb/kmb_regs.h
+++ b/drivers/gpu/drm/kmb/kmb_regs.h
@@ -65,7 +65,8 @@
 #define LCD_CTRL_ALPHA_BOTTOM_GL1		  (2<<12)
 #define LCD_CTRL_ALPHA_BOTTOM_GL2		  (3<<12)
 #define LCD_CTRL_TIM_GEN_ENABLE			  (1<<14)
-#define LCD_CTRL_DISPLAY_MODE_ONE_SHOT		  (1<<15)
+#define LCD_CTRL_CONTINUOUS			  (0<<15)
+#define LCD_CTRL_ONE_SHOT			  (1<<15)
 #define LCD_CTRL_PWM0_EN			  (1<<16)
 #define LCD_CTRL_PWM1_EN			  (1<<17)
 #define LCD_CTRL_PWM2_EN			  (1<<18)
@@ -74,36 +75,37 @@
 #define LCD_CTRL_BPORCH_ENABLE			  (1<<21)
 #define LCD_CTRL_FPORCH_ENABLE			  (1<<22)
 #define LCD_CTRL_PIPELINE_DMA			  (1<<28)
+#define LCD_CTRL_VHSYNC_IDLE_LVL		  (1<<31)
 
 /*interrupts */
 #define LCD_INT_STATUS				(0x4 * 0x001)
 #define LCD_INT_EOF				  (1<<0)
 #define LCD_INT_LINE_CMP			  (1<<1)
 #define LCD_INT_VERT_COMP			  (1<<2)
-#define LAYER0_DMA_DONE_BIT			  (1<<3)
-#define LAYER0_DMA_IDLE_BIT			  (1<<4)
-#define LAYER0_DMA_OVERFLOW_BIT			  (1<<5)
-#define LAYER0_DMA_FIFO_UNDEFLOW_BIT		  (1<<6)
-#define LAYER0_DMA_CB_FIFO_OVERFLOW_BIT		  (1<<7)
-#define LAYER0_DMA_CB_FIFO_UNDERFLOW_BIT	  (1<<8)
-#define LAYER0_DMA_CR_FIFO_OVERFLOW_BIT		  (1<<9)
-#define LAYER0_DMA_CR_FIFO_UNDERFLOW_BIT	  (1<<10)
-#define LAYER1_DMA_DONE_BIT			  (1<<11)
-#define LAYER1_DMA_IDLE_BIT			  (1<<12)
-#define LAYER1_DMA_OVERFLOW_BIT			  (1<<13)
-#define LAYER1_DMA_FIFO_UNDERFLOW_BIT		  (1<<14)
-#define LAYER1_DMA_CB_FIFO_OVERFLOW_BIT		  (1<<15)
-#define LAYER1_DMA_CB_FIFO_UNDERFLOW_BIT	  (1<<16)
-#define LAYER1_DMA_CR_FIFO_OVERFLOW_BIT		  (1<<17)
-#define LAYER1_DMA_CR_FIFO_UNDERFLOW_BIT	  (1<<18)
-#define LAYER2_DMA_DONE_BIT			  (1<<19)
-#define LAYER2_DMA_IDLE_BIT			  (1<<20)
-#define LAYER2_DMA_OVERFLOW_BIT			  (1<<21)
-#define LAYER2_DMA_FIFO_UNDERFLOW_BIT		  (1<<22)
-#define LAYER3_DMA_DONE_BIT			  (1<<23)
-#define LAYER3_DMA_IDLE_BIT			  (1<<24)
-#define LAYER3_DMA_OVERFLOW_BIT			  (1<<25)
-#define LAYER3_DMA_FIFO_UNDERFLOW_BIT		  (1<<26)
+#define LAYER0_DMA_DONE				  (1<<3)
+#define LAYER0_DMA_IDLE				  (1<<4)
+#define LAYER0_DMA_FIFO_OVERFLOW		  (1<<5)
+#define LAYER0_DMA_FIFO_UNDEFLOW		  (1<<6)
+#define LAYER0_DMA_CB_FIFO_OVERFLOW		  (1<<7)
+#define LAYER0_DMA_CB_FIFO_UNDERFLOW		  (1<<8)
+#define LAYER0_DMA_CR_FIFO_OVERFLOW		  (1<<9)
+#define LAYER0_DMA_CR_FIFO_UNDERFLOW		  (1<<10)
+#define LAYER1_DMA_DONE				  (1<<11)
+#define LAYER1_DMA_IDLE				  (1<<12)
+#define LAYER1_DMA_FIFO_OVERFLOW		  (1<<13)
+#define LAYER1_DMA_FIFO_UNDERFLOW		  (1<<14)
+#define LAYER1_DMA_CB_FIFO_OVERFLOW		  (1<<15)
+#define LAYER1_DMA_CB_FIFO_UNDERFLOW		  (1<<16)
+#define LAYER1_DMA_CR_FIFO_OVERFLOW		  (1<<17)
+#define LAYER1_DMA_CR_FIFO_UNDERFLOW		  (1<<18)
+#define LAYER2_DMA_DONE				  (1<<19)
+#define LAYER2_DMA_IDLE				  (1<<20)
+#define LAYER2_DMA_FIFO_OVERFLOW		  (1<<21)
+#define LAYER2_DMA_FIFO_UNDERFLOW		  (1<<22)
+#define LAYER3_DMA_DONE				  (1<<23)
+#define LAYER3_DMA_IDLE				  (1<<24)
+#define LAYER3_DMA_FIFO_OVERFLOW		  (1<<25)
+#define LAYER3_DMA_FIFO_UNDERFLOW		  (1<<26)
 
 #define LCD_INT_ENABLE				(0x4 * 0x002)
 #define LCD_INT_CLEAR				(0x4 * 0x003)
@@ -271,7 +273,7 @@
 #define LCD_DMA_LAYER_AXI_BURST_14		  (0xe<<5)
 #define LCD_DMA_LAYER_AXI_BURST_15		  (0xf<<5)
 #define LCD_DMA_LAYER_AXI_BURST_16		  (0x10<<5)
-#define LCD_DMA_LAYER_V_STRIDE_EN		  (1<<10)
+#define LCD_DMA_LAYER_VSTRIDE_EN		  (1<<10)
 
 #define LCD_LAYER0_DMA_START_ADR		(0x4 * 0x118)
 #define LCD_LAYERn_DMA_START_ADDR(N)		(LCD_LAYER0_DMA_START_ADR \
@@ -300,13 +302,30 @@
 #define LCD_LAYER0_CFG2				(0x4 * 0x120)
 #define LCD_LAYERn_CFG2(N)			(LCD_LAYER0_CFG2 + (0x400*N))
 #define LCD_LAYER0_DMA_START_CB_ADR		(0x4 * 0x700)
+#define LCD_LAYERn_DMA_START_CB_ADR(N)		(LCD_LAYER0_DMA_START_CB_ADR + \
+						(0x20*N))
 #define LCD_LAYER0_DMA_START_CB_SHADOW		(0x4 * 0x701)
+#define LCD_LAYERn_DMA_START_CB_SHADOW(N)	(LCD_LAYER0_DMA_START_CB_SHADOW\
+						+ (0x20*N))
 #define LCD_LAYER0_DMA_CB_LINE_WIDTH		(0x4 * 0x702)
+#define LCD_LAYERn_DMA_CB_LINE_WIDTH(N)		(LCD_LAYER0_DMA_CB_LINE_WIDTH +\
+						(0x20*N))
 #define LCD_LAYER0_DMA_CB_LINE_VSTRIDE		(0x4 * 0x703)
+#define LCD_LAYERn_DMA_CB_LINE_VSTRIDE(N)	(LCD_LAYER0_DMA_CB_LINE_VSTRIDE\
+						+ (0x20*N))
 #define LCD_LAYER0_DMA_START_CR_ADR		(0x4 * 0x704)
+#define LCD_LAYERn_DMA_START_CR_ADR(N)		(LCD_LAYER0_DMA_START_CR_ADR + \
+						(0x20*N))
 #define LCD_LAYER0_DMA_START_CR_SHADOW		(0x4 * 0x705)
+#define LCD_LAYERn_DMA_START_CR_SHADOW(N)	\
+						(LCD_LAYER0_DMA_START_CR_SHADOW\
+						 + (0x20*N))
 #define LCD_LAYER0_DMA_CR_LINE_WIDTH		(0x4 * 0x706)
+#define LCD_LAYERn_DMA_CR_LINE_WIDTH(N)		(LCD_LAYER0_DMA_CR_LINE_WIDTH +\
+						(0x20*N))
 #define LCD_LAYER0_DMA_CR_LINE_VSTRIDE		(0x4 * 0x707)
+#define LCD_LAYERn_DMA_CR_LINE_VSTRIDE(N)	(LCD_LAYER0_DMA_CR_LINE_VSTRIDE\
+						+ (0x20*N))
 #define LCD_LAYER1_DMA_START_CB_ADR		(0x4 * 0x708)
 #define LCD_LAYER1_DMA_START_CB_SHADOW		(0x4 * 0x709)
 #define LCD_LAYER1_DMA_CB_LINE_WIDTH		(0x4 * 0x70a)
@@ -350,6 +369,7 @@
 #define LCD_OUTF_BGR_ORDER			  (1 << 5)
 #define LCD_OUTF_Y_ORDER			  (1 << 6)
 #define LCD_OUTF_CRCB_ORDER			  (1 << 7)
+#define LCD_OUTF_RGB_CONV_MODE			  (1 << 14)
 #define LCD_OUTF_MIPI_RGB_MODE			  (1 << 18)
 
 #define LCD_HSYNC_WIDTH				(0x4 * 0x801)
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
