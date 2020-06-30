Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB3720FED0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:29:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2BE56E342;
	Tue, 30 Jun 2020 21:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A7316E31D;
 Tue, 30 Jun 2020 21:28:40 +0000 (UTC)
IronPort-SDR: IDVxE8P8WrH58E+k0QAf3e5nec7yrNQ7WuZxs/DjApoOkS1MU3YH2qEriKl6X9cNb9wPwXKExP
 BdqzMZxhcXiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="144554700"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="144554700"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:39 -0700
IronPort-SDR: a4XpBlnpNIwb1z+XjAF08efwARnogtyGF6/x/CxS1ufrgWRdoMtKhgFV0+lq0siuN5pYCu1kqz
 8lEEK5BhsWww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066652"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:39 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:27:25 -0700
Message-Id: <1593552491-23698-14-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 13/59] drm/kmb: Part4 of Mipi Tx Initialization
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

This initializes the mipi high speed transmitter CTRL and SYNC
configuration registers.

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_dsi.c  | 55 ++++++++++++++++++++++++++++++++++++++++--
 drivers/gpu/drm/kmb/kmb_regs.h | 29 +++++++++++++++++++++-
 2 files changed, 81 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_dsi.c b/drivers/gpu/drm/kmb/kmb_dsi.c
index 92a62e5..886a8ac 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.c
+++ b/drivers/gpu/drm/kmb/kmb_dsi.c
@@ -553,6 +553,55 @@ static void mipi_tx_multichannel_fifo_cfg(u8 active_lanes, u8 vchannel_id)
 	kmb_set_bit_mipi(MIPI_TXm_HS_MC_FIFO_CTRL_EN(ctrl_no), vchannel_id);
 }
 
+static void mipi_tx_ctrl_cfg(u8 fg_id, struct mipi_ctrl_cfg *ctrl_cfg)
+{
+	u32 sync_cfg = 0, ctrl = 0, fg_en;
+	u32 ctrl_no = MIPI_CTRL6;
+
+	/*MIPI_TX_HS_SYNC_CFG*/
+	if (ctrl_cfg->tx_ctrl_cfg.line_sync_pkt_en)
+		sync_cfg |= LINE_SYNC_PKT_ENABLE;
+	if (ctrl_cfg->tx_ctrl_cfg.frame_counter_active)
+		sync_cfg |= FRAME_COUNTER_ACTIVE;
+	if (ctrl_cfg->tx_ctrl_cfg.line_counter_active)
+		sync_cfg |= LINE_COUNTER_ACTIVE;
+	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->v_blanking)
+		sync_cfg |= DSI_V_BLANKING;
+	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->hsa_blanking)
+		sync_cfg |= DSI_HSA_BLANKING;
+	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->hbp_blanking)
+		sync_cfg |= DSI_HBP_BLANKING;
+	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->hfp_blanking)
+		sync_cfg |= DSI_HFP_BLANKING;
+	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->sync_pulse_eventn)
+		sync_cfg |= DSI_SYNC_PULSE_EVENTN;
+	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->lpm_first_vsa_line)
+		sync_cfg |= DSI_LPM_FIRST_VSA_LINE;
+	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->lpm_last_vfp_line)
+		sync_cfg |= DSI_LPM_LAST_VFP_LINE;
+	/* enable frame generator */
+	fg_en = 1 << fg_id;
+	sync_cfg |= FRAME_GEN_EN(fg_en);
+	if (ctrl_cfg->tx_ctrl_cfg.tx_always_use_hact)
+		sync_cfg |= ALWAYS_USE_HACT(fg_en);
+	if (ctrl_cfg->tx_ctrl_cfg.tx_hact_wait_stop)
+		sync_cfg |= HACT_WAIT_STOP(fg_en);
+
+	/* MIPI_TX_HS_CTRL*/
+	ctrl = HS_CTRL_EN | TX_SOURCE; /* type:DSI,source:LCD */
+	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->eotp_en)
+		ctrl |= DSI_EOTP_EN;
+	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->hfp_blank_en)
+		ctrl |= DSI_CMD_HFP_EN;
+	ctrl |= LCD_VC(fg_id);
+	ctrl |= ACTIVE_LANES(ctrl_cfg->active_lanes - 1);
+	/*67 ns stop time*/
+	ctrl |= HSEXIT_CNT(0x43);
+
+	kmb_write_mipi(MIPI_TXm_HS_SYNC_CFG(ctrl_no), sync_cfg);
+	kmb_write_mipi(MIPI_TXm_HS_CTRL(ctrl_no), ctrl);
+}
+
 static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_priv,
 		struct mipi_ctrl_cfg *ctrl_cfg)
 {
@@ -596,8 +645,7 @@ static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_priv,
 		/* set frame specific parameters */
 		mipi_tx_fg_cfg(dev_priv, frame_id, ctrl_cfg->active_lanes,
 				bits_per_pclk,
-				word_count,
-				ctrl_cfg->lane_rate_mbps,
+				word_count, ctrl_cfg->lane_rate_mbps,
 				ctrl_cfg->tx_ctrl_cfg.frames[frame_id]);
 
 		active_vchannels++;
@@ -612,6 +660,9 @@ static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_priv,
 		return -EINVAL;
 	/*Multi-Channel FIFO Configuration*/
 	mipi_tx_multichannel_fifo_cfg(ctrl_cfg->active_lanes, frame_id);
+
+	/*Frame Generator Enable */
+	mipi_tx_ctrl_cfg(frame_id, ctrl_cfg);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/kmb/kmb_regs.h b/drivers/gpu/drm/kmb/kmb_regs.h
index d6fcead..9a5f371 100644
--- a/drivers/gpu/drm/kmb/kmb_regs.h
+++ b/drivers/gpu/drm/kmb/kmb_regs.h
@@ -398,7 +398,35 @@
 #define MIPI_CTRL_HS_BASE_ADDR			(0x400)
 
 #define MIPI_TX_HS_CTRL				(0x0)
+#define   MIPI_TXm_HS_CTRL(M)			(MIPI_TX_HS_CTRL + (0x400*M))
+#define   HS_CTRL_EN				(1 << 0)
+#define   HS_CTRL_CSIDSIN			(1 << 2) /*1:CSI 0:DSI*/
+#define   TX_SOURCE				(1 << 3) /*1:LCD, 0:DMA*/
+#define   ACTIVE_LANES(n)			((n) << 4)
+#define   LCD_VC(ch)				((ch) << 8)
+#define   DSI_EOTP_EN				(1 << 11)
+#define   DSI_CMD_HFP_EN			(1 << 12)
+#define   CRC_EN				(1 << 14)
+#define   HSEXIT_CNT(n)				((n) << 16)
+#define   HSCLKIDLE_CNT				(1 << 24)
 #define MIPI_TX_HS_SYNC_CFG			(0x8)
+#define   MIPI_TXm_HS_SYNC_CFG(M)		(MIPI_TX_HS_SYNC_CFG \
+						+ (0x400*M))
+#define   LINE_SYNC_PKT_ENABLE			(1 << 0)
+#define   FRAME_COUNTER_ACTIVE			(1 << 1)
+#define   LINE_COUNTER_ACTIVE			(1 << 2)
+#define   DSI_V_BLANKING			(1 << 4)
+#define   DSI_HSA_BLANKING			(1 << 5)
+#define   DSI_HBP_BLANKING			(1 << 6)
+#define   DSI_HFP_BLANKING			(1 << 7)
+#define   DSI_SYNC_PULSE_EVENTN			(1 << 8)
+#define   DSI_LPM_FIRST_VSA_LINE		(1 << 9)
+#define   DSI_LPM_LAST_VFP_LINE			(1 << 10)
+#define   WAIT_ALL_SECT				(1 << 11)
+#define   WAIT_TRIG_POS				(1 << 15)
+#define   ALWAYS_USE_HACT(f)			((f) << 19)
+#define   FRAME_GEN_EN(f)			((f) << 23)
+#define   HACT_WAIT_STOP(f)			((f) << 28)
 #define MIPI_TX0_HS_FG0_SECT0_PH		(0x40)
 #define MIPI_TXm_HS_FGn_SECTo_PH(M, N, O)	(MIPI_TX0_HS_FG0_SECT0_PH + \
 						(0x400*M) + (0x2C*N) + (8*O))
@@ -454,7 +482,6 @@
 #define MIPI_TX_HS_LLP_H_FRONTPORCH0		(0x15c)
 #define MIPI_TXm_HS_LLP_H_FRONTPORCHn(M, N)	(MIPI_TX_HS_LLP_H_FRONTPORCH0 \
 						+ (0x400*M) + (0x4*N))
-
 #define MIPI_TX_HS_MC_FIFO_CTRL_EN		(0x194)
 #define MIPI_TXm_HS_MC_FIFO_CTRL_EN(M)		(MIPI_TX_HS_MC_FIFO_CTRL_EN \
 						+ (0x400*M))
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
