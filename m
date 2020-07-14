Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 115F821FF26
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 22:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9B2D6E9C9;
	Tue, 14 Jul 2020 20:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF4C6E97B;
 Tue, 14 Jul 2020 20:58:26 +0000 (UTC)
IronPort-SDR: sBOemAD5WKpho8Yu5B3ocPGKBXKTMI5J3cQLRCCFQahzN04Pj6niOmUnJCer/zItc0nTTDMwLU
 xdn930TA1WeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="150444559"
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="150444559"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 13:58:26 -0700
IronPort-SDR: Jr6IU+jZD/7u4ikDOek3quY77RyalMJ1GwkyN9xbu3x/Fr/AcdESHuweROAY8aoWhZY0kkhDGU
 bDo8bcIxNSyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="316504110"
Received: from ahanamuk-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.251.155.61])
 by orsmga008.jf.intel.com with ESMTP; 14 Jul 2020 13:58:25 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 14 Jul 2020 13:57:01 -0700
Message-Id: <1594760265-11618-16-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH v2 15/59] drm/kmb: Part5 of Mipi Tx
 Intitialization
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

This is part1 of DPHY initialization.

v2: remove kmb_write() as the function provides no benefit over
calling writel() directly.

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_drv.h  |   5 -
 drivers/gpu/drm/kmb/kmb_dsi.c  | 346 ++++++++++++++++++++++++++++++++++++++---
 drivers/gpu/drm/kmb/kmb_dsi.h  |  10 ++
 drivers/gpu/drm/kmb/kmb_regs.h |  48 +++++-
 4 files changed, 376 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_drv.h b/drivers/gpu/drm/kmb/kmb_drv.h
index f1d5b3a..3996c84 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.h
+++ b/drivers/gpu/drm/kmb/kmb_drv.h
@@ -64,11 +64,6 @@ static inline void kmb_write_bits(struct kmb_drm_private *lcd,
 }
 #endif
 
-static inline void kmb_write(void *reg, u32 value)
-{
-	writel(value, reg);
-}
-
 static inline void kmb_write_lcd(unsigned int reg, u32 value)
 {
 	writel(value, (LCD_BASE_ADDR + reg));
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.c b/drivers/gpu/drm/kmb/kmb_dsi.c
index a255210..d15cf6f 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.c
+++ b/drivers/gpu/drm/kmb/kmb_dsi.c
@@ -27,6 +27,13 @@
 #define MIPI_TX_REF_CLK_KHZ         24000
 #define MIPI_TX_CFG_CLK_KHZ         24000
 
+/*DPHY Tx test codes*/
+#define TEST_CODE_HS_FREQ_RANGE_CFG		0x44
+#define TEST_CODE_PLL_ANALOG_PROG		0x1F
+#define TEST_CODE_SLEW_RATE_OVERRIDE_CTRL	0xA0
+#define TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL	0xA3
+#define TEST_CODE_SLEW_RATE_DDL_CYCLES		0xA4
+
 /*
  * These are added here only temporarily for testing,
  * these will eventually go to the device tree sections,
@@ -87,6 +94,77 @@ struct mipi_ctrl_cfg mipi_tx_init_cfg = {
 
 };
 
+typedef struct{
+	uint16_t default_bit_rate_mbps;
+	uint8_t hsfreqrange_code;
+} mipi_hs_freq_range_cfg;
+
+static mipi_hs_freq_range_cfg
+	mipi_hs_freq_range[MIPI_DPHY_DEFAULT_BIT_RATES] = {
+	{.default_bit_rate_mbps = 80, .hsfreqrange_code = 0x00},
+	{.default_bit_rate_mbps = 90, .hsfreqrange_code = 0x10},
+	{.default_bit_rate_mbps = 100, .hsfreqrange_code = 0x20},
+	{.default_bit_rate_mbps = 110, .hsfreqrange_code = 0x30},
+	{.default_bit_rate_mbps = 120, .hsfreqrange_code = 0x01},
+	{.default_bit_rate_mbps = 130, .hsfreqrange_code = 0x11},
+	{.default_bit_rate_mbps = 140, .hsfreqrange_code = 0x21},
+	{.default_bit_rate_mbps = 150, .hsfreqrange_code = 0x31},
+	{.default_bit_rate_mbps = 160, .hsfreqrange_code = 0x02},
+	{.default_bit_rate_mbps = 170, .hsfreqrange_code = 0x12},
+	{.default_bit_rate_mbps = 180, .hsfreqrange_code = 0x22},
+	{.default_bit_rate_mbps = 190, .hsfreqrange_code = 0x32},
+	{.default_bit_rate_mbps = 205, .hsfreqrange_code = 0x03},
+	{.default_bit_rate_mbps = 220, .hsfreqrange_code = 0x13},
+	{.default_bit_rate_mbps = 235, .hsfreqrange_code = 0x23},
+	{.default_bit_rate_mbps = 250, .hsfreqrange_code = 0x33},
+	{.default_bit_rate_mbps = 275, .hsfreqrange_code = 0x04},
+	{.default_bit_rate_mbps = 300, .hsfreqrange_code = 0x14},
+	{.default_bit_rate_mbps = 325, .hsfreqrange_code = 0x25},
+	{.default_bit_rate_mbps = 350, .hsfreqrange_code = 0x35},
+	{.default_bit_rate_mbps = 400, .hsfreqrange_code = 0x05},
+	{.default_bit_rate_mbps = 450, .hsfreqrange_code = 0x16},
+	{.default_bit_rate_mbps = 500, .hsfreqrange_code = 0x26},
+	{.default_bit_rate_mbps = 550, .hsfreqrange_code = 0x37},
+	{.default_bit_rate_mbps = 600, .hsfreqrange_code = 0x07},
+	{.default_bit_rate_mbps = 650, .hsfreqrange_code = 0x18},
+	{.default_bit_rate_mbps = 700, .hsfreqrange_code = 0x28},
+	{.default_bit_rate_mbps = 750, .hsfreqrange_code = 0x39},
+	{.default_bit_rate_mbps = 800, .hsfreqrange_code = 0x09},
+	{.default_bit_rate_mbps = 850, .hsfreqrange_code = 0x19},
+	{.default_bit_rate_mbps = 900, .hsfreqrange_code = 0x29},
+	{.default_bit_rate_mbps = 1000, .hsfreqrange_code = 0x0A},
+	{.default_bit_rate_mbps = 1050, .hsfreqrange_code = 0x1A},
+	{.default_bit_rate_mbps = 1100, .hsfreqrange_code = 0x2A},
+	{.default_bit_rate_mbps = 1150, .hsfreqrange_code = 0x3B},
+	{.default_bit_rate_mbps = 1200, .hsfreqrange_code = 0x0B},
+	{.default_bit_rate_mbps = 1250, .hsfreqrange_code = 0x1B},
+	{.default_bit_rate_mbps = 1300, .hsfreqrange_code = 0x2B},
+	{.default_bit_rate_mbps = 1350, .hsfreqrange_code = 0x3C},
+	{.default_bit_rate_mbps = 1400, .hsfreqrange_code = 0x0C},
+	{.default_bit_rate_mbps = 1450, .hsfreqrange_code = 0x1C},
+	{.default_bit_rate_mbps = 1500, .hsfreqrange_code = 0x2C},
+	{.default_bit_rate_mbps = 1550, .hsfreqrange_code = 0x3D},
+	{.default_bit_rate_mbps = 1600, .hsfreqrange_code = 0x0D},
+	{.default_bit_rate_mbps = 1650, .hsfreqrange_code = 0x1D},
+	{.default_bit_rate_mbps = 1700, .hsfreqrange_code = 0x2E},
+	{.default_bit_rate_mbps = 1750, .hsfreqrange_code = 0x3E},
+	{.default_bit_rate_mbps = 1800, .hsfreqrange_code = 0x0E},
+	{.default_bit_rate_mbps = 1850, .hsfreqrange_code = 0x1E},
+	{.default_bit_rate_mbps = 1900, .hsfreqrange_code = 0x2F},
+	{.default_bit_rate_mbps = 1950, .hsfreqrange_code = 0x3F},
+	{.default_bit_rate_mbps = 2000, .hsfreqrange_code = 0x0F},
+	{.default_bit_rate_mbps = 2050, .hsfreqrange_code = 0x40},
+	{.default_bit_rate_mbps = 2100, .hsfreqrange_code = 0x41},
+	{.default_bit_rate_mbps = 2150, .hsfreqrange_code = 0x42},
+	{.default_bit_rate_mbps = 2200, .hsfreqrange_code = 0x43},
+	{.default_bit_rate_mbps = 2250, .hsfreqrange_code = 0x44},
+	{.default_bit_rate_mbps = 2300, .hsfreqrange_code = 0x45},
+	{.default_bit_rate_mbps = 2350, .hsfreqrange_code = 0x46},
+	{.default_bit_rate_mbps = 2400, .hsfreqrange_code = 0x47},
+	{.default_bit_rate_mbps = 2450, .hsfreqrange_code = 0x48},
+	{.default_bit_rate_mbps = 2500, .hsfreqrange_code = 0x49}
+};
+
 static enum drm_mode_status
 kmb_dsi_mode_valid(struct drm_connector *connector,
 		   struct drm_display_mode *mode)
@@ -324,7 +402,7 @@ static u32 mipi_tx_fg_section_cfg_regs(struct kmb_drm_private *dev_priv,
 		<< MIPI_TX_SECT_DM_SHIFT);	/* bits [24:25] */
 	cfg |= MIPI_TX_SECT_DMA_PACKED;
 	kmb_write_mipi((MIPI_TXm_HS_FGn_SECTo_PH(ctrl_no, frame_id,
-					section)), cfg);
+						 section)), cfg);
 
 	/*unpacked bytes */
 	/*there are 4 frame generators and each fg has 4 sections
@@ -334,8 +412,8 @@ static u32 mipi_tx_fg_section_cfg_regs(struct kmb_drm_private *dev_priv,
 	 *REG_UNPACKED_BYTES1: [15:0]-BYTES2, [31:16]-BYTES3
 	 */
 	reg_adr = MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(ctrl_no, frame_id)
-	+ (section/2)*4;
-	kmb_write_bits_mipi(reg_adr, (section % 2)*16, 16, unpacked_bytes);
+	    + (section / 2) * 4;
+	kmb_write_bits_mipi(reg_adr, (section % 2) * 16, 16, unpacked_bytes);
 
 	/* line config */
 	reg_adr = MIPI_TXm_HS_FGn_SECTo_LINE_CFG(ctrl_no, frame_id, section);
@@ -423,20 +501,20 @@ static void mipi_tx_fg_cfg_regs(struct kmb_drm_private *dev_priv,
 	 *REG_VSYNC_WIDTH0: [15:0]-VSA for channel0, [31:16]-VSA for channel1
 	 *REG_VSYNC_WIDTH1: [15:0]-VSA for channel2, [31:16]-VSA for channel3
 	 */
-	offset = (frame_gen % 2)*16;
-	reg_adr = MIPI_TXm_HS_VSYNC_WIDTHn(ctrl_no, frame_gen/2);
+	offset = (frame_gen % 2) * 16;
+	reg_adr = MIPI_TXm_HS_VSYNC_WIDTHn(ctrl_no, frame_gen / 2);
 	kmb_write_bits_mipi(reg_adr, offset, 16, fg_cfg->vsync_width);
 
-	/*v backporch - same register config like vsync width*/
-	reg_adr = MIPI_TXm_HS_V_BACKPORCHESn(ctrl_no, frame_gen/2);
+	/*v backporch - same register config like vsync width */
+	reg_adr = MIPI_TXm_HS_V_BACKPORCHESn(ctrl_no, frame_gen / 2);
 	kmb_write_bits_mipi(reg_adr, offset, 16, fg_cfg->v_backporch);
 
-	/*v frontporch - same register config like vsync width*/
-	reg_adr = MIPI_TXm_HS_V_FRONTPORCHESn(ctrl_no, frame_gen/2);
+	/*v frontporch - same register config like vsync width */
+	reg_adr = MIPI_TXm_HS_V_FRONTPORCHESn(ctrl_no, frame_gen / 2);
 	kmb_write_bits_mipi(reg_adr, offset, 16, fg_cfg->v_frontporch);
 
-	/*v active - same register config like vsync width*/
-	reg_adr = MIPI_TXm_HS_V_ACTIVEn(ctrl_no, frame_gen/2);
+	/*v active - same register config like vsync width */
+	reg_adr = MIPI_TXm_HS_V_ACTIVEn(ctrl_no, frame_gen / 2);
 	kmb_write_bits_mipi(reg_adr, offset, 16, fg_cfg->v_active);
 
 	/*hsyc width */
@@ -508,7 +586,7 @@ static void mipi_tx_multichannel_fifo_cfg(u8 active_lanes, u8 vchannel_id)
 	u32 fifo_size, fifo_rthreshold;
 	u32 ctrl_no = MIPI_CTRL6;
 
-	/*clear all mc fifo channel sizes and thresholds*/
+	/*clear all mc fifo channel sizes and thresholds */
 	kmb_write_mipi(MIPI_TX_HS_MC_FIFO_CTRL_EN, 0);
 	kmb_write_mipi(MIPI_TX_HS_MC_FIFO_CHAN_ALLOC0, 0);
 	kmb_write_mipi(MIPI_TX_HS_MC_FIFO_CHAN_ALLOC1, 0);
@@ -516,8 +594,7 @@ static void mipi_tx_multichannel_fifo_cfg(u8 active_lanes, u8 vchannel_id)
 	kmb_write_mipi(MIPI_TX_HS_MC_FIFO_RTHRESHOLD1, 0);
 
 	fifo_size = (active_lanes > MIPI_D_LANES_PER_DPHY) ?
-		MIPI_CTRL_4LANE_MAX_MC_FIFO_LOC :
-		MIPI_CTRL_2LANE_MAX_MC_FIFO_LOC;
+	    MIPI_CTRL_4LANE_MAX_MC_FIFO_LOC : MIPI_CTRL_2LANE_MAX_MC_FIFO_LOC;
 	/*MC fifo size for virtual channels 0-3 */
 	/*
 	 *REG_MC_FIFO_CHAN_ALLOC0: [8:0]-channel0, [24:16]-channel1
@@ -525,7 +602,7 @@ static void mipi_tx_multichannel_fifo_cfg(u8 active_lanes, u8 vchannel_id)
 	 */
 	SET_MC_FIFO_CHAN_ALLOC(ctrl_no, vchannel_id, fifo_size);
 
-	/*set threshold to half the fifo size, actual size=size*16*/
+	/*set threshold to half the fifo size, actual size=size*16 */
 	fifo_rthreshold = ((fifo_size + 1) * 8) & BIT_MASK_16;
 	SET_MC_FIFO_RTHRESHOLD(ctrl_no, vchannel_id, fifo_rthreshold);
 
@@ -538,7 +615,7 @@ static void mipi_tx_ctrl_cfg(u8 fg_id, struct mipi_ctrl_cfg *ctrl_cfg)
 	u32 sync_cfg = 0, ctrl = 0, fg_en;
 	u32 ctrl_no = MIPI_CTRL6;
 
-	/*MIPI_TX_HS_SYNC_CFG*/
+	/*MIPI_TX_HS_SYNC_CFG */
 	if (ctrl_cfg->tx_ctrl_cfg.line_sync_pkt_en)
 		sync_cfg |= LINE_SYNC_PKT_ENABLE;
 	if (ctrl_cfg->tx_ctrl_cfg.frame_counter_active)
@@ -567,15 +644,15 @@ static void mipi_tx_ctrl_cfg(u8 fg_id, struct mipi_ctrl_cfg *ctrl_cfg)
 	if (ctrl_cfg->tx_ctrl_cfg.tx_hact_wait_stop)
 		sync_cfg |= HACT_WAIT_STOP(fg_en);
 
-	/* MIPI_TX_HS_CTRL*/
-	ctrl = HS_CTRL_EN | TX_SOURCE; /* type:DSI,source:LCD */
+	/* MIPI_TX_HS_CTRL */
+	ctrl = HS_CTRL_EN | TX_SOURCE;	/* type:DSI,source:LCD */
 	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->eotp_en)
 		ctrl |= DSI_EOTP_EN;
 	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->hfp_blank_en)
 		ctrl |= DSI_CMD_HFP_EN;
 	ctrl |= LCD_VC(fg_id);
 	ctrl |= ACTIVE_LANES(ctrl_cfg->active_lanes - 1);
-	/*67 ns stop time*/
+	/*67 ns stop time */
 	ctrl |= HSEXIT_CNT(0x43);
 
 	kmb_write_mipi(MIPI_TXm_HS_SYNC_CFG(ctrl_no), sync_cfg);
@@ -583,7 +660,7 @@ static void mipi_tx_ctrl_cfg(u8 fg_id, struct mipi_ctrl_cfg *ctrl_cfg)
 }
 
 static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_priv,
-		struct mipi_ctrl_cfg *ctrl_cfg)
+			      struct mipi_ctrl_cfg *ctrl_cfg)
 {
 	u32 ret;
 	u8 active_vchannels = 0;
@@ -624,21 +701,21 @@ static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_priv,
 
 		/* set frame specific parameters */
 		mipi_tx_fg_cfg(dev_priv, frame_id, ctrl_cfg->active_lanes,
-				bits_per_pclk,
-				word_count, ctrl_cfg->lane_rate_mbps,
-				ctrl_cfg->tx_ctrl_cfg.frames[frame_id]);
+			       bits_per_pclk,
+			       word_count, ctrl_cfg->lane_rate_mbps,
+			       ctrl_cfg->tx_ctrl_cfg.frames[frame_id]);
 
 		active_vchannels++;
 
 		/*connect lcd to mipi */
-		kmb_write(MSS_CAM_BASE_ADDR + MIPI_TX_MSS_LCD_MIPI_CFG, 1);
+		writel(1, MSS_CAM_BASE_ADDR + MIPI_TX_MSS_LCD_MIPI_CFG);
 
 		break;
 	}
 
 	if (active_vchannels == 0)
 		return -EINVAL;
-	/*Multi-Channel FIFO Configuration*/
+	/*Multi-Channel FIFO Configuration */
 	mipi_tx_multichannel_fifo_cfg(ctrl_cfg->active_lanes, frame_id);
 
 	/*Frame Generator Enable */
@@ -646,6 +723,222 @@ static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_priv,
 	return ret;
 }
 
+static void test_mode_send(u32 dphy_no, u32 test_code, u32 test_data)
+{
+	/*send the test code first */
+	/*  Steps for code:
+	 * - set testclk HIGH
+	 * - set testdin with test code
+	 * - set testen HIGH
+	 * - set testclk LOW
+	 * - set testen LOW
+	 */
+	SET_DPHY_TEST_CTRL1_CLK(dphy_no);
+	SET_TEST_DIN0_3(dphy_no, test_code);
+	SET_DPHY_TEST_CTRL1_EN(dphy_no);
+	CLR_DPHY_TEST_CTRL1_CLK(dphy_no);
+	CLR_DPHY_TEST_CTRL1_EN(dphy_no);
+
+	/*send the test data next */
+	/*  Steps for data:
+	 * - set testen LOW
+	 * - set testclk LOW
+	 * - set testdin with data
+	 * - set testclk HIGH
+	 */
+	CLR_DPHY_TEST_CTRL1_EN(dphy_no);
+	CLR_DPHY_TEST_CTRL1_CLK(dphy_no);
+	SET_TEST_DIN0_3(dphy_no, test_data);
+	SET_DPHY_TEST_CTRL1_CLK(dphy_no);
+}
+
+static inline void set_test_mode_src_osc_freq_target_low_bits(u32 dphy_no,
+							      u32 freq)
+{
+	/*typical rise/fall time=166,
+	 * refer Table 1207 databook,sr_osc_freq_target[7:0
+	 */
+	test_mode_send(dphy_no, TEST_CODE_SLEW_RATE_DDL_CYCLES, (freq & 0x7f));
+}
+
+static inline void set_test_mode_slew_rate_calib_en(u32 dphy_no)
+{
+	/*do not bypass slew rate calibration algorithm */
+	/*bits[1:0}=srcal_en_ovr_en, srcal_en_ovr, bit[6]=sr_range */
+	test_mode_send(dphy_no, TEST_CODE_SLEW_RATE_OVERRIDE_CTRL,
+		       (0x03 | (1 << 6)));
+}
+
+static inline void set_test_mode_src_osc_freq_target_hi_bits(u32 dphy_no,
+							     u32 freq)
+{
+	u32 data;
+	/*typical rise/fall time=166, refer Table 1207 databook,
+	 * sr_osc_freq_target[11:7
+	 */
+	data = ((freq >> 6) & 0x1f) | (1 << 7);	/*flag this as high nibble */
+	test_mode_send(dphy_no, TEST_CODE_SLEW_RATE_DDL_CYCLES, data);
+}
+
+static void dphy_init_sequence(struct mipi_ctrl_cfg *cfg, u32 dphy_no,
+			       enum dphy_mode mode)
+{
+	u32 test_code = 0;
+	u32 test_data = 0, val;
+	int i;
+
+	/*Set D-PHY in shutdown mode */
+	/*assert RSTZ signal */
+	CLR_DPHY_INIT_CTRL0(dphy_no, RESETZ);
+	/* assert SHUTDOWNZ signal */
+	CLR_DPHY_INIT_CTRL0(dphy_no, SHUTDOWNZ);
+
+	/*Init D-PHY_n */
+	/*Pulse testclear signal to make sure the d-phy configuration starts
+	 * from a clean base
+	 */
+	SET_DPHY_TEST_CTRL0(dphy_no);
+	/*TODO may need to add 15ns delay here */
+	CLR_DPHY_TEST_CTRL0(dphy_no);
+
+	/*Set mastermacro bit - Master or slave mode */
+	test_code = TEST_CODE_MULTIPLE_PHY_CTRL;
+	/*DPHY has its own clock lane enabled (master) */
+	if (mode == MIPI_DPHY_MASTER)
+		test_data = 0x01;
+	else
+		test_data = 0x00;
+
+	/*send the test code and data */
+	test_mode_send(dphy_no, test_code, test_data);
+
+	/*Set the lane data rate */
+	for (i = 0; i < MIPI_DPHY_DEFAULT_BIT_RATES; i++) {
+		if (mipi_hs_freq_range[i].default_bit_rate_mbps <
+		    cfg->lane_rate_mbps)
+			continue;
+		/* send the test code and data */
+		/*bit[6:0] = hsfreqrange_ovr bit[7] = hsfreqrange_ovr_en */
+		test_mode_send(dphy_no, TEST_CODE_HS_FREQ_RANGE_CFG,
+			       (mipi_hs_freq_range[i].hsfreqrange_code
+				& 0x7f) | (1 << 7));
+		break;
+	}
+	/*
+	 * High-Speed Tx Slew Rate Calibration
+	 * BitRate: > 1.5 Gbps && <= 2.5 Gbps: slew rate control OFF
+	 */
+	if (cfg->lane_rate_mbps > 1500) {
+		/*bypass slew rate calibration algorithm */
+		/*bits[1:0} srcal_en_ovr_en, srcal_en_ovr */
+		test_mode_send(dphy_no, TEST_CODE_SLEW_RATE_OVERRIDE_CTRL,
+			       0x02);
+
+		/* disable slew rate calibration */
+		test_mode_send(dphy_no, TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL,
+			       0x00);
+	} else if (cfg->lane_rate_mbps > 1000) {
+		/*BitRate: > 1 Gbps && <= 1.5 Gbps: - slew rate control ON
+		 * typical rise/fall times: 166 ps
+		 */
+
+		/*do not bypass slew rate calibration algorithm */
+		set_test_mode_slew_rate_calib_en(dphy_no);
+
+		/* enable slew rate calibration */
+		test_mode_send(dphy_no, TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL,
+			       0x01);
+
+		/*set sr_osc_freq_target[6:0] */
+		/*typical rise/fall time=166, refer Table 1207 databook */
+		set_test_mode_src_osc_freq_target_low_bits(dphy_no, 0x72f);
+		/*set sr_osc_freq_target[11:7] */
+		set_test_mode_src_osc_freq_target_hi_bits(dphy_no, 0x72f);
+	} else {
+		/*lane_rate_mbps <= 1000 Mbps */
+		/*BitRate:  <= 1 Gbps:
+		 * - slew rate control ON
+		 * - typical rise/fall times: 225 ps
+		 */
+		/*do not bypass slew rate calibration algorithm */
+		set_test_mode_slew_rate_calib_en(dphy_no);
+		/* enable slew rate calibration */
+		test_mode_send(dphy_no, TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL,
+			       0x01);
+
+		/*typical rise/fall time=255, refer Table 1207 databook */
+		set_test_mode_src_osc_freq_target_low_bits(dphy_no, 0x523);
+		/*set sr_osc_freq_target[11:7] */
+		set_test_mode_src_osc_freq_target_hi_bits(dphy_no, 0x523);
+	}
+
+	/*Set cfgclkfreqrange */
+	val = (((cfg->cfg_clk_khz / 1000) - 17) * 4) & 0x3f;
+	SET_DPHY_FREQ_CTRL0_3(dphy_no, val);
+
+	/*Enable config clk for the corresponding d-phy */
+	kmb_set_bit_mipi(DPHY_CFG_CLK_EN, dphy_no);
+
+	/* PLL setup */
+	if (mode == MIPI_DPHY_MASTER) {
+		/*Set PLL regulator in bypass */
+		test_mode_send(dphy_no, TEST_CODE_PLL_ANALOG_PROG, 0x01);
+
+		/*TODO - PLL Parameters Setup */
+	}
+
+	/*Send NORMAL OPERATION test code */
+	test_mode_send(dphy_no, 0x00, 0x00);
+
+	/* Configure BASEDIR for data lanes
+	 * NOTE: basedir only applies to LANE_0 of each D-PHY.
+	 * The other lanes keep their direction based on the D-PHY type,
+	 * either Rx or Tx.
+	 * bits[5:0]  - BaseDir: 1 = Rx
+	 * bits[9:6] - BaseDir: 0 = Tx
+	 */
+	kmb_clr_bit_mipi(DPHY_INIT_CTRL2, dphy_no);
+
+	/* Enable CLOCK LANE - */
+	/*clock lane should be enabled regardless of the direction set for
+	 * the D-PHY (Rx/Tx)
+	 */
+	kmb_clr_bit_mipi(DPHY_INIT_CTRL2, 12 + dphy_no);
+
+	/* enable DATA LANES */
+	kmb_write_bits_mipi(DPHY_ENABLE, dphy_no * 2, 2,
+			    ((1 << cfg->active_lanes) - 1));
+}
+
+static u32 mipi_tx_init_dphy(struct mipi_ctrl_cfg *cfg)
+{
+	u32 dphy_no = MIPI_DPHY6;
+
+	/*multiple D-PHYs needed */
+	if (cfg->active_lanes > MIPI_DPHY_D_LANES) {
+		/*
+		 *Initialization for Tx aggregation mode is done according to
+		 *http://dub30.ir.intel.com/bugzilla/show_bug.cgi?id=27785#c12:
+		 *a. start init PHY1
+		 *b. poll for PHY1 FSM state LOCK
+		 *   b1. reg addr 0x03[3:0] - state_main[3:0] == 5 (LOCK)
+		 *c. poll for PHY1 calibrations done :
+		 *   c1. termination calibration lower section: addr 0x22[5]
+		 *   - rescal_done
+		 *   c2. slewrate calibration (if data rate < = 1500 Mbps):
+		 *     addr 0xA7[3:2] - srcal_done, sr_finished
+		 *d. start init PHY0
+		 *e. poll for PHY0 stopstate
+		 *f. poll for PHY1 stopstate
+		 */
+		/*PHY #N+1 ('slave') */
+		dphy_init_sequence(cfg, dphy_no + 1, MIPI_DPHY_SLAVE);
+		/*TODO PHY #N master */
+	}
+	/*TODO- Single DPHY */
+	return 0;
+}
+
 void kmb_dsi_init(struct drm_device *dev)
 {
 	struct kmb_dsi *kmb_dsi;
@@ -688,4 +981,7 @@ void kmb_dsi_init(struct drm_device *dev)
 
 	/* initialize mipi controller */
 	mipi_tx_init_cntrl(dev_priv, &mipi_tx_init_cfg);
+
+	/*d-phy initialization */
+	mipi_tx_init_dphy(&mipi_tx_init_cfg);
 }
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.h b/drivers/gpu/drm/kmb/kmb_dsi.h
index d1ec5a6..deaee3e 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.h
+++ b/drivers/gpu/drm/kmb/kmb_dsi.h
@@ -38,6 +38,11 @@ struct kmb_connector {
 #define MIPI_D_LANES_PER_DPHY	2
 #define MIPI_CTRL_2LANE_MAX_MC_FIFO_LOC	255
 #define MIPI_CTRL_4LANE_MAX_MC_FIFO_LOC	511
+#define MIPI_DPHY_D_LANES		2  /* 2 Data Lanes per D-PHY*/
+#define MIPI_DPHY_DEFAULT_BIT_RATES 63
+
+/*DPHY Tx test codes */
+#define TEST_CODE_MULTIPLE_PHY_CTRL	0x03
 
 enum mipi_ctrl_num {
 	MIPI_CTRL0 = 0,
@@ -174,6 +179,11 @@ enum mipi_dsi_data_type {
 	DSI_LP_DT_RESERVED_3F = 0x3f
 };
 
+enum dphy_mode {
+	MIPI_DPHY_SLAVE = 0,
+	MIPI_DPHY_MASTER
+};
+
 struct mipi_data_type_params {
 	uint8_t size_constraint_pixels;
 	uint8_t size_constraint_bytes;
diff --git a/drivers/gpu/drm/kmb/kmb_regs.h b/drivers/gpu/drm/kmb/kmb_regs.h
index 381e255..899a5d3 100644
--- a/drivers/gpu/drm/kmb/kmb_regs.h
+++ b/drivers/gpu/drm/kmb/kmb_regs.h
@@ -7,6 +7,7 @@
 #define __KMB_REGS_H__
 
 #define ENABLE					 1
+#define DISABLE					 0
 /*from Data Book section 12.5.8.1 page 4322 */
 #define MIPI_BASE_ADDR                          (void *)(0x20900000)
 /*from Data Book section 12.11.6.1 page 4972 */
@@ -380,8 +381,10 @@
 #define MIPI_TX_HS_CTRL				(0x0)
 #define   MIPI_TXm_HS_CTRL(M)			(MIPI_TX_HS_CTRL + HS_OFFSET(M))
 #define   HS_CTRL_EN				(1 << 0)
-#define   HS_CTRL_CSIDSIN			(1 << 2) /*1:CSI 0:DSI*/
-#define   TX_SOURCE				(1 << 3) /*1:LCD, 0:DMA*/
+/*1:CSI 0:DSI */
+#define   HS_CTRL_CSIDSIN			(1 << 2)
+/*1:LCD, 0:DMA */
+#define   TX_SOURCE				(1 << 3)
 #define   ACTIVE_LANES(n)			((n) << 4)
 #define   LCD_VC(ch)				((ch) << 8)
 #define   DSI_EOTP_EN				(1 << 11)
@@ -498,6 +501,45 @@
 	kmb_write_bits_mipi(MIPI_TXm_HS_MC_FIFO_RTHRESHOLDn(ctrl, vc/2), \
 			(vc % 2)*16, 16, th)
 
+/* D-PHY regs */
+#define DPHY_ENABLE				(0x100)
+#define DPHY_INIT_CTRL0				(0x104)
+#define   SHUTDOWNZ				0
+#define   RESETZ				12
+#define DPHY_INIT_CTRL2				(0x10c)
+#define   SET_DPHY_INIT_CTRL0(dphy, offset)	\
+					kmb_set_bit_mipi(DPHY_INIT_CTRL0, \
+					(dphy+offset))
+#define   CLR_DPHY_INIT_CTRL0(dphy, offset)	\
+					kmb_clr_bit_mipi(DPHY_INIT_CTRL0, \
+					(dphy+offset))
+#define DPHY_FREQ_CTRL0_3			(0x11c)
+#define   SET_DPHY_FREQ_CTRL0_3(dphy, val)	\
+					kmb_write_bits_mipi(DPHY_FREQ_CTRL0_3 \
+					+ ((dphy/4)*4), (dphy % 4) * 8, \
+					6, val)
+#define DPHY_TEST_CTRL0				(0x154)
+#define   SET_DPHY_TEST_CTRL0(dphy)	kmb_set_bit_mipi(DPHY_TEST_CTRL0, \
+					(dphy))
+#define   CLR_DPHY_TEST_CTRL0(dphy)	kmb_clr_bit_mipi(DPHY_TEST_CTRL0, \
+					(dphy))
+#define DPHY_TEST_CTRL1				(0x158)
+#define   SET_DPHY_TEST_CTRL1_CLK(dphy)	kmb_set_bit_mipi(DPHY_TEST_CTRL1, \
+					(dphy))
+#define   CLR_DPHY_TEST_CTRL1_CLK(dphy)	kmb_clr_bit_mipi(DPHY_TEST_CTRL1, \
+					(dphy))
+#define   SET_DPHY_TEST_CTRL1_EN(dphy)	kmb_set_bit_mipi(DPHY_TEST_CTRL1, \
+					(dphy+12))
+#define   CLR_DPHY_TEST_CTRL1_EN(dphy)	kmb_clr_bit_mipi(DPHY_TEST_CTRL1, \
+					(dphy+12))
+#define DPHY_TEST_DIN0_3			(0x15c)
+#define   SET_TEST_DIN0_3(dphy, val)	kmb_write_mipi(DPHY_TEST_DIN0_3 + \
+					4, ((val) << (((dphy)%4)*8)))
+#define DPHY_TEST_DOUT0_3			(0x168)
+#define   GET_TEST_DOUT0_3(dphy)	(readl(DPHY_TEST_DOUT0_3 + 4) \
+					>> (((dphy)%4)*8) & 0xff)
+#define DPHY_CFG_CLK_EN				(0x18c)
+
 #define MIPI_TX_MSS_LCD_MIPI_CFG		(0x04)
-#define BIT_MASK_16			  (0xffff)
+#define BIT_MASK_16				(0xffff)
 #endif /* __KMB_REGS_H__ */
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
