Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C726420FEDE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 459F36E329;
	Tue, 30 Jun 2020 21:29:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9812B6E32B;
 Tue, 30 Jun 2020 21:28:41 +0000 (UTC)
IronPort-SDR: SlTGmFR6cnFjCn1Bno3UQngojs+B+itzCiZ6d1b7ggVokiigy1NuIHiWMxsEQUEza0IUMhLHM5
 HiWKE+s8ozgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="144554722"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="144554722"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:41 -0700
IronPort-SDR: 2oS1NeR6ckqXSHGBxWzRjPnQIJ3NrE/KoMSc7Ul2Zfxbz4k9BR24XfohCWQjdaygOCiRjkPawD
 z+j9xkNu3Msg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066677"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:41 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:27:29 -0700
Message-Id: <1593552491-23698-18-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 17/59] drm/kmb: Part7 of Mipi Tx Initialization
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

This completes the DPHY initialization and Tx initialization.

v2: minor code review changes
Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_dsi.c  | 65 ++++++++++++++++++++++++++++++++++++++----
 drivers/gpu/drm/kmb/kmb_dsi.h  | 18 ++++++++++++
 drivers/gpu/drm/kmb/kmb_regs.h | 15 ++++++++--
 3 files changed, 91 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_dsi.c b/drivers/gpu/drm/kmb/kmb_dsi.c
index b7f23af..51bec35 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.c
+++ b/drivers/gpu/drm/kmb/kmb_dsi.c
@@ -48,6 +48,7 @@
 #define MIPI_TX_CFG_CLK_KHZ         24000
 
 /*DPHY Tx test codes*/
+#define TEST_CODE_FSM_CONTROL				0x03
 #define TEST_CODE_PLL_PROPORTIONAL_CHARGE_PUMP_CTRL	0x0E
 #define TEST_CODE_PLL_INTEGRAL_CHARGE_PUMP_CTRL		0x0F
 #define TEST_CODE_PLL_VCO_CTRL				0x12
@@ -1081,10 +1082,10 @@ static void dphy_init_sequence(struct mipi_ctrl_cfg *cfg, u32 dphy_no,
 				cfg->lane_rate_mbps/2);
 
 		/*Set clksel */
-		kmb_write_bits_mipi(DPHY_INIT_CTRL1, 18, 2, 0x01);
+		kmb_write_bits_mipi(DPHY_INIT_CTRL1, PLL_CLKSEL_0, 2, 0x01);
 
 		/*Set pll_shadow_control */
-		kmb_write_bits_mipi(DPHY_INIT_CTRL1, 16, 1, 0x01);
+		kmb_set_bit_mipi(DPHY_INIT_CTRL1, PLL_SHADOW_CTRL);
 	}
 
 	/*Send NORMAL OPERATION test code */
@@ -1107,7 +1108,48 @@ static void dphy_init_sequence(struct mipi_ctrl_cfg *cfg, u32 dphy_no,
 
 	/* enable DATA LANES */
 	kmb_write_bits_mipi(DPHY_ENABLE, dphy_no * 2, 2,
-			    ((1 << cfg->active_lanes) - 1));
+			((1 << cfg->active_lanes) - 1));
+
+	/*Take D-PHY out of shutdown mode */
+	/* deassert SHUTDOWNZ signal*/
+	SET_DPHY_INIT_CTRL0(dphy_no, SHUTDOWNZ);
+	/*deassert RSTZ signal */
+	SET_DPHY_INIT_CTRL0(dphy_no, RESETZ);
+}
+
+static void dphy_wait_fsm(u32 dphy_no, enum dphy_tx_fsm fsm_state)
+{
+	enum dphy_tx_fsm val = DPHY_TX_POWERDWN;
+
+	do {
+		test_mode_send(dphy_no, TEST_CODE_FSM_CONTROL, 0x80);
+		/*TODO-need to add a time out and return failure */
+		val = GET_TEST_DOUT0_3(dphy_no);
+	} while (val != fsm_state);
+
+}
+
+static u32 wait_init_done(u32 dphy_no, u32 active_lanes)
+{
+	u32 stopstatedata = 0;
+	u32 data_lanes = (1 << active_lanes) - 1;
+
+	do {
+		stopstatedata = GET_STOPSTATE_DATA(dphy_no);
+		/*TODO-need to add a time out and return failure */
+	} while (stopstatedata != data_lanes);
+
+	return 0;
+}
+
+static u32 wait_pll_lock(u32 dphy_no)
+{
+	do {
+		;
+		/*TODO-need to add a time out and return failure */
+	} while (!GET_PLL_LOCK(dphy_no));
+
+	return 0;
 }
 
 static u32 mipi_tx_init_dphy(struct mipi_ctrl_cfg *cfg)
@@ -1133,9 +1175,22 @@ static u32 mipi_tx_init_dphy(struct mipi_ctrl_cfg *cfg)
 		 */
 		/*PHY #N+1 ('slave') */
 		dphy_init_sequence(cfg, dphy_no + 1, MIPI_DPHY_SLAVE);
-		/*TODO PHY #N master */
+
+		dphy_wait_fsm(dphy_no + 1, DPHY_TX_LOCK);
+
+		/*PHY #N master*/
+		dphy_init_sequence(cfg, dphy_no, MIPI_DPHY_MASTER);
+		/* wait for DPHY init to complete */
+		wait_init_done(dphy_no, MIPI_DPHY_D_LANES);
+		wait_init_done(dphy_no + 1,
+				cfg->active_lanes - MIPI_DPHY_D_LANES);
+		wait_pll_lock(dphy_no);
+		wait_pll_lock(dphy_no + 1);
+	} else {	/* Single DPHY */
+		dphy_init_sequence(cfg, dphy_no, MIPI_DPHY_MASTER);
+		wait_init_done(dphy_no, cfg->active_lanes);
+		wait_pll_lock(dphy_no);
 	}
-	/*TODO- Single DPHY */
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.h b/drivers/gpu/drm/kmb/kmb_dsi.h
index d878d27..eb38ae7 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.h
+++ b/drivers/gpu/drm/kmb/kmb_dsi.h
@@ -204,12 +204,30 @@ enum dphy_mode {
 	MIPI_DPHY_MASTER
 };
 
+enum dphy_tx_fsm {
+	DPHY_TX_POWERDWN = 0,
+	DPHY_TX_BGPON,
+	DPHY_TX_TERMCAL,
+	DPHY_TX_TERMCALUP,
+	DPHY_TX_OFFSETCAL,
+	DPHY_TX_LOCK,
+	DPHY_TX_SRCAL,
+	DPHY_TX_IDLE,
+	DPHY_TX_ULP,
+	DPHY_TX_LANESTART,
+	DPHY_TX_CLKALIGN,
+	DPHY_TX_DDLTUNNING,
+	DPHY_TX_ULP_FORCE_PLL,
+	DPHY_TX_LOCK_LOSS
+};
+
 struct mipi_data_type_params {
 	uint8_t size_constraint_pixels;
 	uint8_t size_constraint_bytes;
 	uint8_t pixels_per_pclk;
 	uint8_t bits_per_pclk;
 };
+
 struct mipi_tx_dsi_cfg {
 	uint8_t hfp_blank_en;	/*horizontal front porch blanking enable */
 	uint8_t eotp_en;	/*End of transmission packet enable */
diff --git a/drivers/gpu/drm/kmb/kmb_regs.h b/drivers/gpu/drm/kmb/kmb_regs.h
index dedee04..b6f6acf 100644
--- a/drivers/gpu/drm/kmb/kmb_regs.h
+++ b/drivers/gpu/drm/kmb/kmb_regs.h
@@ -524,9 +524,11 @@
 /* D-PHY regs */
 #define DPHY_ENABLE				(0x100)
 #define DPHY_INIT_CTRL0				(0x104)
-#define DPHY_INIT_CTRL1				(0x108)
 #define   SHUTDOWNZ				0
 #define   RESETZ				12
+#define DPHY_INIT_CTRL1				(0x108)
+#define   PLL_CLKSEL_0				18
+#define   PLL_SHADOW_CTRL			16
 #define DPHY_INIT_CTRL2				(0x10c)
 #define   SET_DPHY_INIT_CTRL0(dphy, offset)	\
 					kmb_set_bit_mipi(DPHY_INIT_CTRL0, \
@@ -540,6 +542,12 @@
 					kmb_write_bits_mipi(DPHY_FREQ_CTRL0_3 \
 					+ ((dphy/4)*4), (dphy % 4) * 8, \
 					6, val)
+
+#define MIPI_DPHY_STAT0_3			(0x134)
+#define	  GET_STOPSTATE_DATA(dphy)	\
+					(((kmb_read_mipi(MIPI_DPHY_STAT0_3 + \
+					(dphy/4)*4)) \
+					>> (((dphy % 4)*8)+4)) & 0x03)
 #define DPHY_TEST_CTRL0				(0x154)
 #define   SET_DPHY_TEST_CTRL0(dphy)	kmb_set_bit_mipi(DPHY_TEST_CTRL0, \
 					(dphy))
@@ -558,8 +566,11 @@
 #define   SET_TEST_DIN0_3(dphy, val)	kmb_write_mipi(DPHY_TEST_DIN0_3 + \
 					4, ((val) << (((dphy)%4)*8)))
 #define DPHY_TEST_DOUT0_3			(0x168)
-#define   GET_TEST_DOUT0_3(dphy)	(readl(DPHY_TEST_DOUT0_3 + 4) \
+#define   GET_TEST_DOUT0_3(dphy)	(kmb_read_mipi(DPHY_TEST_DOUT0_3 + 4) \
 					>> (((dphy)%4)*8) & 0xff)
+#define DPHY_PLL_LOCK				(0x188)
+#define   GET_PLL_LOCK(dphy)		(kmb_read_mipi(DPHY_PLL_LOCK) \
+					& (1 << (dphy - MIPI_DPHY6)))
 #define DPHY_CFG_CLK_EN				(0x18c)
 
 #define MIPI_TX_MSS_LCD_MIPI_CFG		(0x04)
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
