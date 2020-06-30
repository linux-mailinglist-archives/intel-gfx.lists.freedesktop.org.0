Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A89420FED4
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72DEC6E365;
	Tue, 30 Jun 2020 21:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC1BB6E2E9;
 Tue, 30 Jun 2020 21:28:37 +0000 (UTC)
IronPort-SDR: 9BKRwr5fagG1SHRqOiAjN7EsHtK7EdR0x5mEHZweBDE3NJMUL73VqNpGQ37kewZZrW6TRfRGxz
 2bpJb9piomDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="146386946"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="146386946"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:37 -0700
IronPort-SDR: +VFihYEMo92PmIkumML1wLwt/nn0mdnR20biCVZQ4NDha3sHgBKW0evkLLc8DTkIhi07EDzl+A
 bTG/1mWmN+aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066636"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:37 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:27:21 -0700
Message-Id: <1593552491-23698-10-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 09/59] drm/kmb: Part 1 of Mipi Tx Initialization
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

Mipi TX frame section configuration

This is the first part in the MIPI controller initialization.
Compute and set the right values in MIPI TX frame section configuration
registers like packet header(PH), unpacked bytes and line config.

v2: added more comments to clarify assumptions
v3: improved code readability as per code review
Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_drv.h  |  14 ++
 drivers/gpu/drm/kmb/kmb_dsi.c  | 330 +++++++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/kmb/kmb_dsi.h  | 232 +++++++++++++++++++++++++++++
 drivers/gpu/drm/kmb/kmb_regs.h |  25 ++++
 4 files changed, 601 insertions(+)

diff --git a/drivers/gpu/drm/kmb/kmb_drv.h b/drivers/gpu/drm/kmb/kmb_drv.h
index 637e9a2..46be8cb 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.h
+++ b/drivers/gpu/drm/kmb/kmb_drv.h
@@ -62,6 +62,20 @@ static inline u32 kmb_read(struct kmb_drm_private *lcd, unsigned int reg)
 	return readl(lcd->mmio + reg);
 }
 
+static inline void kmb_write_bits(struct kmb_drm_private *lcd,
+				  unsigned int reg, u32 offset, u32 num_bits,
+				  u32 value)
+{
+	u32 reg_val = kmb_read(lcd, reg);
+	u32 mask = (1 << num_bits) - 1;
+
+	value &= mask;
+	mask <<= offset;
+	reg_val &= (~mask);
+	reg_val |= (value << offset);
+	writel(reg_val, lcd->mmio + reg);
+}
+
 int kmb_setup_crtc(struct drm_device *dev);
 void kmb_set_scanout(struct kmb_drm_private *lcd);
 #endif /* __KMB_DRV_H__ */
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.c b/drivers/gpu/drm/kmb/kmb_dsi.c
index 5e2aff1..17e1383 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.c
+++ b/drivers/gpu/drm/kmb/kmb_dsi.c
@@ -30,11 +30,83 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
+#include <drm/drm_print.h>
 #include <linux/slab.h>
 #include <linux/gpio/consumer.h>
 #include "kmb_drv.h"
+#include "kmb_regs.h"
 #include "kmb_dsi.h"
 
+#define IMG_WIDTH_PX      1920
+#define IMG_HEIGHT_LINES  1080
+#define LCD_BYTESPP       1
+
+/*MIPI TX CFG*/
+#define MIPI_TX_ACTIVE_LANES        4
+#define MIPI_TX_LANE_DATA_RATE_MBPS 888
+#define MIPI_TX_REF_CLK_KHZ         24000
+#define MIPI_TX_CFG_CLK_KHZ         24000
+
+/*
+ * These are added here only temporarily for testing,
+ * these will eventually go to the device tree sections,
+ * and can be used as a refernce later for device tree additions
+ */
+struct mipi_tx_frame_section_cfg mipi_tx_frame0_sect_cfg = {
+	.width_pixels = IMG_WIDTH_PX,
+	.height_lines = IMG_HEIGHT_LINES,
+	.data_type = DSI_LP_DT_PPS_RGB888_24B,
+	.data_mode = MIPI_DATA_MODE1,
+	.dma_packed = 0
+};
+
+struct mipi_tx_frame_cfg mipitx_frame0_cfg = {
+	.sections[0] = &mipi_tx_frame0_sect_cfg,
+	.sections[1] = NULL,
+	.sections[2] = NULL,
+	.sections[3] = NULL,
+	.vsync_width = 5,
+	.v_backporch = 36,
+	.v_frontporch = 4,
+	.hsync_width = 44,
+	.h_backporch = 148,
+	.h_frontporch = 88
+};
+
+struct mipi_tx_dsi_cfg mipitx_dsi_cfg = {
+	.hfp_blank_en = 0,
+	.eotp_en = 0,
+	.lpm_last_vfp_line = 0,
+	.lpm_first_vsa_line = 0,
+	.sync_pulse_eventn = DSI_VIDEO_MODE_NO_BURST_EVENT,
+	.hfp_blanking = SEND_BLANK_PACKET,
+	.hbp_blanking = SEND_BLANK_PACKET,
+	.hsa_blanking = SEND_BLANK_PACKET,
+	.v_blanking = SEND_BLANK_PACKET,
+};
+
+struct mipi_ctrl_cfg mipi_tx_init_cfg = {
+	.index = MIPI_CTRL6,
+	.type = MIPI_DSI,
+	.dir = MIPI_TX,
+	.active_lanes = MIPI_TX_ACTIVE_LANES,
+	.lane_rate_mbps = MIPI_TX_LANE_DATA_RATE_MBPS,
+	.ref_clk_khz = MIPI_TX_REF_CLK_KHZ,
+	.cfg_clk_khz = MIPI_TX_CFG_CLK_KHZ,
+	.data_if = MIPI_IF_PARALLEL,
+	.tx_ctrl_cfg = {
+			.frames[0] = &mipitx_frame0_cfg,
+			.frames[1] = NULL,
+			.frames[2] = NULL,
+			.frames[3] = NULL,
+			.tx_dsi_cfg = &mipitx_dsi_cfg,
+			.line_sync_pkt_en = 0,
+			.line_counter_active = 0,
+			.frame_counter_active = 0,
+			}
+
+};
+
 static enum drm_mode_status
 kmb_dsi_mode_valid(struct drm_connector *connector,
 		   struct drm_display_mode *mode)
@@ -131,6 +203,261 @@ static struct kmb_dsi_host *kmb_dsi_host_init(struct kmb_dsi *kmb_dsi)
 	return host;
 }
 
+u32 mipi_get_datatype_params(u32 data_type, u32 data_mode,
+			     struct mipi_data_type_params *params)
+{
+	struct mipi_data_type_params data_type_parameters;
+
+	switch (data_type) {
+	case DSI_LP_DT_PPS_YCBCR420_12B:
+		data_type_parameters.size_constraint_pixels = 2;
+		data_type_parameters.size_constraint_bytes = 3;
+		switch (data_mode) {
+			/* case 0 not supported according to MDK */
+		case 1:
+		case 2:
+		case 3:
+			data_type_parameters.pixels_per_pclk = 2;
+			data_type_parameters.bits_per_pclk = 24;
+			break;
+		default:
+			DRM_ERROR("DSI: Invalid data_mode %d\n", data_mode);
+			return -EINVAL;
+		};
+		break;
+	case DSI_LP_DT_PPS_YCBCR422_16B:
+		data_type_parameters.size_constraint_pixels = 2;
+		data_type_parameters.size_constraint_bytes = 4;
+		switch (data_mode) {
+			/* case 0 and 1 not supported according to MDK */
+		case 2:
+			data_type_parameters.pixels_per_pclk = 1;
+			data_type_parameters.bits_per_pclk = 16;
+			break;
+		case 3:
+			data_type_parameters.pixels_per_pclk = 2;
+			data_type_parameters.bits_per_pclk = 32;
+			break;
+		default:
+			DRM_ERROR("DSI: Invalid data_mode %d\n", data_mode);
+			return -EINVAL;
+		};
+		break;
+	case DSI_LP_DT_LPPS_YCBCR422_20B:
+	case DSI_LP_DT_PPS_YCBCR422_24B:
+		data_type_parameters.size_constraint_pixels = 2;
+		data_type_parameters.size_constraint_bytes = 6;
+		switch (data_mode) {
+			/* case 0 not supported according to MDK */
+		case 1:
+		case 2:
+		case 3:
+			data_type_parameters.pixels_per_pclk = 1;
+			data_type_parameters.bits_per_pclk = 24;
+			break;
+		default:
+			DRM_ERROR("DSI: Invalid data_mode %d\n", data_mode);
+			return -EINVAL;
+		};
+		break;
+	case DSI_LP_DT_PPS_RGB565_16B:
+		data_type_parameters.size_constraint_pixels = 1;
+		data_type_parameters.size_constraint_bytes = 2;
+		switch (data_mode) {
+		case 0:
+		case 1:
+			data_type_parameters.pixels_per_pclk = 1;
+			data_type_parameters.bits_per_pclk = 16;
+			break;
+		case 2:
+		case 3:
+			data_type_parameters.pixels_per_pclk = 2;
+			data_type_parameters.bits_per_pclk = 32;
+			break;
+		default:
+			DRM_ERROR("DSI: Invalid data_mode %d\n", data_mode);
+			return -EINVAL;
+		};
+		break;
+	case DSI_LP_DT_PPS_RGB666_18B:
+		data_type_parameters.size_constraint_pixels = 4;
+		data_type_parameters.size_constraint_bytes = 9;
+		data_type_parameters.bits_per_pclk = 18;
+		data_type_parameters.pixels_per_pclk = 1;
+		break;
+	case DSI_LP_DT_LPPS_RGB666_18B:
+	case DSI_LP_DT_PPS_RGB888_24B:
+		data_type_parameters.size_constraint_pixels = 1;
+		data_type_parameters.size_constraint_bytes = 3;
+		data_type_parameters.bits_per_pclk = 24;
+		data_type_parameters.pixels_per_pclk = 1;
+		break;
+	case DSI_LP_DT_PPS_RGB101010_30B:
+		data_type_parameters.size_constraint_pixels = 4;
+		data_type_parameters.size_constraint_bytes = 15;
+		data_type_parameters.bits_per_pclk = 30;
+		data_type_parameters.pixels_per_pclk = 1;
+		break;
+
+	default:
+		DRM_ERROR("DSI: Invalid data_type %d\n", data_type);
+		return -EINVAL;
+	}
+
+	*params = data_type_parameters;
+	return 0;
+}
+
+static u32 compute_wc(u32 width_px, u8 size_constr_p, u8 size_constr_b)
+{
+	/* calculate the word count for each long packet */
+	return (((width_px / size_constr_p) * size_constr_b) & 0xffff);
+}
+
+static u32 compute_unpacked_bytes(u32 wc, u8 bits_per_pclk)
+{
+	/*number of PCLK cycles needed to transfer a line */
+	/* with each PCLK cycle, 4 Bytes are sent through the PPL module */
+	return ((wc * 8) / bits_per_pclk) * 4;
+}
+
+static u32 mipi_tx_fg_section_cfg_regs(struct kmb_drm_private *dev_priv,
+				       u8 frame_id, u8 section,
+				       u32 height_lines, u32 unpacked_bytes,
+				       struct mipi_tx_frame_sect_phcfg *ph_cfg)
+{
+	u32 cfg = 0;
+	u32 ctrl_no = MIPI_CTRL6;
+	u32 reg_adr;
+
+	/*frame section packet header */
+	/*word count */
+	cfg = (ph_cfg->wc & MIPI_TX_SECT_WC_MASK) << 0;	/* bits [15:0] */
+	/*data type */
+	cfg |= ((ph_cfg->data_type & MIPI_TX_SECT_DT_MASK)
+		<< MIPI_TX_SECT_DT_SHIFT);	/* bits [21:16] */
+	/* virtual channel */
+	cfg |= ((ph_cfg->vchannel & MIPI_TX_SECT_VC_MASK)
+		<< MIPI_TX_SECT_VC_SHIFT);	/* bits [23:22] */
+	/* data mode */
+	cfg |= ((ph_cfg->data_mode & MIPI_TX_SECT_DM_MASK)
+		<< MIPI_TX_SECT_DM_SHIFT);	/* bits [24:25] */
+	cfg |= MIPI_TX_SECT_DMA_PACKED;
+	kmb_write(dev_priv,
+		  (MIPI_TXm_HS_FGn_SECTo_PH(ctrl_no, frame_id, section)), cfg);
+
+	/*unpacked bytes */
+	/*there are 4 frame generators and each fg has 4 sections
+	 *there are 2 registers for unpacked bytes -
+	 *# bytes each section occupies in memory
+	 *REG_UNPACKED_BYTES0: [15:0]-BYTES0, [31:16]-BYTES1
+	 *REG_UNPACKED_BYTES1: [15:0]-BYTES2, [31:16]-BYTES3
+	 */
+	reg_adr =
+	    MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(ctrl_no,
+						 frame_id) + (section / 2) * 4;
+	kmb_write_bits(dev_priv, reg_adr, (section % 2) * 16, 16,
+		       unpacked_bytes);
+
+	/* line config */
+	reg_adr = MIPI_TXm_HS_FGn_SECTo_LINE_CFG(ctrl_no, frame_id, section);
+	kmb_write(dev_priv, reg_adr, height_lines);
+	return 0;
+}
+
+static u32 mipi_tx_fg_section_cfg(struct kmb_drm_private *dev_priv,
+				  u8 frame_id,
+				  u8 section,
+				  struct mipi_tx_frame_section_cfg *frame_scfg,
+				  u32 *bits_per_pclk, u32 *wc)
+{
+	u32 ret = 0;
+	u32 unpacked_bytes;
+	struct mipi_data_type_params data_type_parameters;
+	struct mipi_tx_frame_sect_phcfg ph_cfg;
+
+	ret =
+	    mipi_get_datatype_params(frame_scfg->data_type,
+				     frame_scfg->data_mode,
+				     &data_type_parameters);
+	if (ret)
+		return ret;
+	/*
+	 * packet width has to be a multiple of the minimum packet width
+	 * (in pixels) set for each data type
+	 */
+	if (frame_scfg->width_pixels %
+	    data_type_parameters.size_constraint_pixels != 0)
+		return -EINVAL;
+
+	*wc = compute_wc(frame_scfg->width_pixels,
+			 data_type_parameters.size_constraint_pixels,
+			 data_type_parameters.size_constraint_bytes);
+
+	unpacked_bytes =
+	    compute_unpacked_bytes(*wc, data_type_parameters.bits_per_pclk);
+
+	ph_cfg.wc = *wc;
+	ph_cfg.data_mode = frame_scfg->data_mode;
+	ph_cfg.data_type = frame_scfg->data_type;
+	ph_cfg.vchannel = frame_id;
+
+	mipi_tx_fg_section_cfg_regs(dev_priv, frame_id, section,
+				    frame_scfg->height_lines, unpacked_bytes,
+				    &ph_cfg);
+
+	/*caller needs bits_per_clk for additional caluclations */
+	*bits_per_pclk = data_type_parameters.bits_per_pclk;
+	return 0;
+}
+
+static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_priv,
+			      struct mipi_ctrl_cfg *ctrl_cfg)
+{
+	u32 ret;
+	u8 frame_id, sect;
+	u32 bits_per_pclk = 0;
+	u32 word_count = 0;
+
+	/*This is the order in which mipi tx needs to be initialized
+	 * set frame section parameters
+	 * set frame specific parameters
+	 * connect lcd to mipi
+	 * multi channel fifo cfg
+	 * set mipitxcctrlcfg
+	 */
+
+	for (frame_id = 0; frame_id < 4; frame_id++) {
+		/* find valid frame, assume only one valid frame */
+		if (ctrl_cfg->tx_ctrl_cfg.frames[frame_id] == NULL)
+			continue;
+
+		/*TODO - assume there is only one valid section in a frame, so
+		 * bits_per_pclk and word_count are only set once
+		 */
+		for (sect = 0; sect < MIPI_CTRL_VIRTUAL_CHANNELS; sect++) {
+			if (ctrl_cfg->tx_ctrl_cfg.frames[frame_id]->sections[sect]
+					== NULL)
+				continue;
+
+			ret = mipi_tx_fg_section_cfg(dev_priv, frame_id, sect,
+						     ctrl_cfg->tx_ctrl_cfg.frames[frame_id]->sections[sect],
+						     &bits_per_pclk,
+						     &word_count);
+			if (ret)
+				return ret;
+
+		}
+
+		/*function for setting frame sepecific parameters will be
+		 * called here bits_per_pclk and word_count will be passed
+		 * in to this function
+		 */
+
+	}
+	return ret;
+}
+
 void kmb_dsi_init(struct drm_device *dev)
 {
 	struct kmb_dsi *kmb_dsi;
@@ -138,6 +465,7 @@ void kmb_dsi_init(struct drm_device *dev)
 	struct kmb_connector *kmb_connector;
 	struct drm_connector *connector;
 	struct kmb_dsi_host *host;
+	struct kmb_drm_private *dev_priv = dev->dev_private;
 
 	kmb_dsi = kzalloc(sizeof(*kmb_dsi), GFP_KERNEL);
 	if (!kmb_dsi)
@@ -170,4 +498,6 @@ void kmb_dsi_init(struct drm_device *dev)
 	connector->encoder = encoder;
 	drm_connector_attach_encoder(connector, encoder);
 
+	/* initialize mipi controller */
+	mipi_tx_init_cntrl(dev_priv, &mipi_tx_init_cfg);
 }
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.h b/drivers/gpu/drm/kmb/kmb_dsi.h
index 88810ee..88b865f 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.h
+++ b/drivers/gpu/drm/kmb/kmb_dsi.h
@@ -52,6 +52,238 @@ struct kmb_connector {
 	struct drm_display_mode *fixed_mode;
 };
 
+#define MIPI_TX_FRAME_GEN	4
+#define MIPI_TX_FRAME_GEN_SECTIONS 4
+#define MIPI_CTRL_VIRTUAL_CHANNELS 4
+
+enum mipi_ctrl_num {
+	MIPI_CTRL0 = 0,
+	MIPI_CTRL1,
+	MIPI_CTRL2,
+	MIPI_CTRL3,
+	MIPI_CTRL4,
+	MIPI_CTRL5,
+	MIPI_CTRL6,
+	MIPI_CTRL7,
+	MIPI_CTRL8,
+	MIPI_CTRL9,
+	MIPI_CTRL_NA
+};
+
+enum mipi_dphy_num {
+	MIPI_DPHY0 = 0,
+	MIPI_DPHY1,
+	MIPI_DPHY2,
+	MIPI_DPHY3,
+	MIPI_DPHY4,
+	MIPI_DPHY5,
+	MIPI_DPHY6,
+	MIPI_DPHY7,
+	MIPI_DPHY8,
+	MIPI_DPHY9,
+	MIPI_DPHY_NA
+};
+
+enum mipi_dir {
+	MIPI_RX,
+	MIPI_TX
+};
+
+enum mipi_ctrl_type {
+	MIPI_DSI,
+	MIPI_CSI
+};
+
+enum mipi_data_if {
+	MIPI_IF_DMA,
+	MIPI_IF_PARALLEL
+};
+
+enum mipi_data_mode {
+	MIPI_DATA_MODE0,
+	MIPI_DATA_MODE1,
+	MIPI_DATA_MODE2,
+	MIPI_DATA_MODE3
+};
+
+enum mipi_dsi_video_mode {
+	DSI_VIDEO_MODE_NO_BURST_PULSE,
+	DSI_VIDEO_MODE_NO_BURST_EVENT,
+	DSI_VIDEO_MODE_BURST
+};
+
+enum mipi_dsi_blanking_mode {
+	TRANSITION_TO_LOW_POWER,
+	SEND_BLANK_PACKET
+};
+
+enum mipi_dsi_eotp {
+	DSI_EOTP_DISABLED,
+	DSI_EOTP_ENABLES
+};
+
+enum mipi_dsi_data_type {
+	DSI_SP_DT_RESERVED_00 = 0x00,
+	DSI_SP_DT_VSYNC_START = 0x01,
+	DSI_SP_DT_COLOR_MODE_OFF = 0x02,
+	DSI_SP_DT_GENERIC_SHORT_WR = 0x03,
+	DSI_SP_DT_GENERIC_RD = 0x04,
+	DSI_SP_DT_DCS_SHORT_WR = 0x05,
+	DSI_SP_DT_DCS_RD = 0x06,
+	DSI_SP_DT_EOTP = 0x08,
+	DSI_LP_DT_NULL = 0x09,
+	DSI_LP_DT_RESERVED_0A = 0x0a,
+	DSI_LP_DT_RESERVED_0B = 0x0b,
+	DSI_LP_DT_LPPS_YCBCR422_20B = 0x0c,
+	DSI_LP_DT_PPS_RGB101010_30B = 0x0d,
+	DSI_LP_DT_PPS_RGB565_16B = 0x0e,
+	DSI_LP_DT_RESERVED_0F = 0x0f,
+
+	DSI_SP_DT_RESERVED_10 = 0x10,
+	DSI_SP_DT_VSYNC_END = 0x11,
+	DSI_SP_DT_COLOR_MODE_ON = 0x12,
+	DSI_SP_DT_GENERIC_SHORT_WR_1PAR = 0x13,
+	DSI_SP_DT_GENERIC_RD_1PAR = 0x14,
+	DSI_SP_DT_DCS_SHORT_WR_1PAR = 0x15,
+	DSI_SP_DT_RESERVED_16 = 0x16,
+	DSI_SP_DT_RESERVED_17 = 0x17,
+	DSI_SP_DT_RESERVED_18 = 0x18,
+	DSI_LP_DT_BLANK = 0x19,
+	DSI_LP_DT_RESERVED_1A = 0x1a,
+	DSI_LP_DT_RESERVED_1B = 0x1b,
+	DSI_LP_DT_PPS_YCBCR422_24B = 0x1c,
+	DSI_LP_DT_PPS_RGB121212_36B = 0x1d,
+	DSI_LP_DT_PPS_RGB666_18B = 0x1e,
+	DSI_LP_DT_RESERVED_1F = 0x1f,
+
+	DSI_SP_DT_RESERVED_20 = 0x20,
+	DSI_SP_DT_HSYNC_START = 0x21,
+	DSI_SP_DT_SHUT_DOWN_PERIPH_CMD = 0x22,
+	DSI_SP_DT_GENERIC_SHORT_WR_2PAR = 0x23,
+	DSI_SP_DT_GENERIC_RD_2PAR = 0x24,
+	DSI_SP_DT_RESERVED_25 = 0x25,
+	DSI_SP_DT_RESERVED_26 = 0x26,
+	DSI_SP_DT_RESERVED_27 = 0x27,
+	DSI_SP_DT_RESERVED_28 = 0x28,
+	DSI_LP_DT_GENERIC_LONG_WR = 0x29,
+	DSI_LP_DT_RESERVED_2A = 0x2a,
+	DSI_LP_DT_RESERVED_2B = 0x2b,
+	DSI_LP_DT_PPS_YCBCR422_16B = 0x2c,
+	DSI_LP_DT_RESERVED_2D = 0x2d,
+	DSI_LP_DT_LPPS_RGB666_18B = 0x2e,
+	DSI_LP_DT_RESERVED_2F = 0x2f,
+
+	DSI_SP_DT_RESERVED_30 = 0x30,
+	DSI_SP_DT_HSYNC_END = 0x31,
+	DSI_SP_DT_TURN_ON_PERIPH_CMD = 0x32,
+	DSI_SP_DT_RESERVED_33 = 0x33,
+	DSI_SP_DT_RESERVED_34 = 0x34,
+	DSI_SP_DT_RESERVED_35 = 0x35,
+	DSI_SP_DT_RESERVED_36 = 0x36,
+	DSI_SP_DT_SET_MAX_RETURN_PKT_SIZE = 0x37,
+	DSI_SP_DT_RESERVED_38 = 0x38,
+	DSI_LP_DT_DSC_LONG_WR = 0x39,
+	DSI_LP_DT_RESERVED_3A = 0x3a,
+	DSI_LP_DT_RESERVED_3B = 0x3b,
+	DSI_LP_DT_RESERVED_3C = 0x3c,
+	DSI_LP_DT_PPS_YCBCR420_12B = 0x3d,
+	DSI_LP_DT_PPS_RGB888_24B = 0x3e,
+	DSI_LP_DT_RESERVED_3F = 0x3f
+};
+
+struct mipi_data_type_params {
+	uint8_t size_constraint_pixels;
+	uint8_t size_constraint_bytes;
+	uint8_t pixels_per_pclk;
+	uint8_t bits_per_pclk;
+};
+struct mipi_tx_dsi_cfg {
+	uint8_t hfp_blank_en;	/*horizontal front porch blanking enable */
+	uint8_t eotp_en;	/*End of transmission packet enable */
+	/*last vertical front porch blanking mode */
+	uint8_t lpm_last_vfp_line;
+	/*first vertical sync active blanking mode */
+	uint8_t lpm_first_vsa_line;
+	uint8_t sync_pulse_eventn;	/*sync type */
+	uint8_t hfp_blanking;	/*horizontal front porch blanking mode */
+	uint8_t hbp_blanking;	/*horizontal back porch blanking mode */
+	uint8_t hsa_blanking;	/*horizontal sync active blanking mode */
+	uint8_t v_blanking;	/*vertical timing blanking mode */
+};
+
+struct mipi_tx_frame_section_cfg {
+	uint32_t dma_v_stride;
+	uint16_t dma_v_scale_cfg;
+	uint16_t width_pixels;	/*  Frame width */
+	uint16_t height_lines;
+	uint8_t dma_packed;
+	uint8_t bpp;
+	uint8_t bpp_unpacked;
+	uint8_t dma_h_stride;
+	uint8_t data_type;
+	uint8_t data_mode;
+	uint8_t dma_flip_rotate_sel;
+};
+
+struct mipi_tx_frame_timing_cfg {
+	uint32_t bpp;
+	uint32_t lane_rate_mbps;
+	uint32_t hsync_width;
+	uint32_t h_backporch;
+	uint32_t h_frontporch;
+	uint32_t h_active;
+	uint16_t vsync_width;
+	uint16_t v_backporch;
+	uint16_t v_frontporch;
+	uint16_t v_active;
+	uint8_t active_lanes;
+};
+
+struct mipi_tx_frame_sect_phcfg {
+	uint32_t wc;
+	enum mipi_data_mode data_mode;
+	enum mipi_dsi_data_type data_type;
+	uint8_t vchannel;
+};
+
+struct mipi_tx_frame_cfg {
+	struct mipi_tx_frame_section_cfg *sections[MIPI_TX_FRAME_GEN_SECTIONS];
+	uint32_t hsync_width;	/*in pixels */
+	uint32_t h_backporch;	/*in pixels */
+	uint32_t h_frontporch;	/*in pixels */
+	uint16_t vsync_width;	/*in lines */
+	uint16_t v_backporch;	/*in lines */
+	uint16_t v_frontporch;	/*in lines */
+};
+
+struct mipi_tx_ctrl_cfg {
+	struct mipi_tx_frame_cfg *frames[MIPI_TX_FRAME_GEN];
+	struct mipi_tx_dsi_cfg *tx_dsi_cfg;
+	uint8_t line_sync_pkt_en;
+	uint8_t line_counter_active;
+	uint8_t frame_counter_active;
+	uint8_t tx_hsclkkidle_cnt;
+	uint8_t tx_hsexit_cnt;
+	uint8_t tx_crc_en;
+	uint8_t tx_hact_wait_stop;
+	uint8_t tx_always_use_hact;
+	uint8_t tx_wait_trig;
+	uint8_t tx_wait_all_sect;
+};
+
+/*configuration structure for MIPI control */
+struct mipi_ctrl_cfg {
+	/* controller index : CTRL6 for connecting to LCD */
+	uint8_t index;
+	uint8_t type;		/* controller type : MIPI_DSI */
+	uint8_t dir;		/* controller direction : MIPI_TX */
+	uint8_t active_lanes;	/* # active lanes per controller 2/4 */
+	uint32_t lane_rate_mbps;	/*MBPS */
+	uint32_t ref_clk_khz;
+	uint32_t cfg_clk_khz;
+	uint32_t data_if;	/*MIPI_IF_DMA or MIPI_IF_PARALLEL */
+	struct mipi_tx_ctrl_cfg tx_ctrl_cfg;
+};
 void kmb_dsi_init(struct drm_device *dev);
 void kmb_plane_destroy(struct drm_plane *plane);
 
diff --git a/drivers/gpu/drm/kmb/kmb_regs.h b/drivers/gpu/drm/kmb/kmb_regs.h
index 299ab99..06324ba 100644
--- a/drivers/gpu/drm/kmb/kmb_regs.h
+++ b/drivers/gpu/drm/kmb/kmb_regs.h
@@ -385,4 +385,29 @@
 #define LCD_GRAPHIC1_DMA_BYTES			(0x4 * 0xb0e)
 #define LCD_GRAPHIC1_DMA_STATE			(0x4 * 0xb0f)
 
+/***************************************************************************
+ *		   MIPI controller control register defines
+ ***********************************************i****************************/
+#define MIPI_BASE_ADDR				(0x20900000)
+#define MIPI0_HS_BASE_ADDR			(MIPI_BASE_ADDR + 0x400)
+#define MIPI_CTRL_HS_BASE_ADDR			(0x400)
+#define MIPI_TX0_HS_FG0_SECT0_PH		(0x40)
+#define MIPI_TXm_HS_FGn_SECTo_PH(M, N, O)	(MIPI_TX0_HS_FG0_SECT0_PH + \
+						(0x400*M) + (0x2C*N) + (8*O))
+#define MIPI_TX_SECT_WC_MASK			  (0xffff)
+#define	MIPI_TX_SECT_VC_MASK			  (3)
+#define MIPI_TX_SECT_VC_SHIFT			  (22)
+#define MIPI_TX_SECT_DT_MASK			  (0x3f)
+#define MIPI_TX_SECT_DT_SHIFT			  (16)
+#define MIPI_TX_SECT_DM_MASK			  (3)
+#define MIPI_TX_SECT_DM_SHIFT			  (24)
+#define MIPI_TX_SECT_DMA_PACKED			  (1<<26)
+#define MIPI_TX_HS_FG0_SECT_UNPACKED_BYTES0	(0x60)
+#define MIPI_TX_HS_FG0_SECT_UNPACKED_BYTES1	(0x64)
+#define MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(M, N) \
+		(MIPI_TX_HS_FG0_SECT_UNPACKED_BYTES0 + (0x400*M) + (0x2C*N))
+#define MIPI_TXm_HS_FGn_SECTo_LINE_CFG(M, N, O)	(MIPI_TX_HS_FG0_SECT0_LINE_CFG \
+				+ (0x400*M) + (0x2C*N) + (8*O))
+#define MIPI_TX_HS_FG0_SECT0_LINE_CFG		(0x44)
+
 #endif /* __KMB_REGS_H__ */
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
