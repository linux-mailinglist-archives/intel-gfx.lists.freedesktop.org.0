Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2EA381571
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 05:10:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D55396F4E9;
	Sat, 15 May 2021 03:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5813C6F4D7
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 May 2021 03:10:43 +0000 (UTC)
IronPort-SDR: mYNxO6um4AqsS2FAMkvojjU94SGgWlPCYSeX17tAaDOpIG3Kxoy2BXymy4KmXyeySEL2tmK7xr
 uSdFclQnrfOg==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="187383706"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="187383706"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:42 -0700
IronPort-SDR: MLbNlausKgLxTo1lzzXFy/u8pCy1X0xwHeXEd0ZiAtBJ31npM4lZnwpAUKc0+/dqNS9bGQiD0z
 3ZdvpJhMpQ8w==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="392901201"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 20:10:26 -0700
Message-Id: <20210515031035.2561658-15-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210515031035.2561658-1-matthew.d.roper@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 14/23] drm/i915/adl_p: Tx escape clock with
 DSI
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Mika Kahola <mika.kahola@intel.com>

Today when the DSI controller is paired with the Combo-PHY it
uses the high-speed (HS) Word clock for its low power (LP)
transmit PPI communication to the DPHY. The interface signaling
only changes state at an Escape clock frequency (i.e. its
effectively running on a virtual Tx Escape clock that is controlled
by counters w/in the controller), but all the interface flops are
running off the HS clock.

This has the following drawbacks:

 * It is a deviation from the PPI spec which assumes signaling is
   running on a physical Escape clock
 * The PV timings are over constrained (HS timed to 312.5MHz vs.
   an Escape clock of 20MHz max)

This feature is proposing to change the LP Tx communication between
the controller and the DPHY from a virtual Tx Escape clock to a physical
clock.

To do this we need to program two "M" divisors. One for the usual
DSI_ESC_CLK_DIV and DPHY_ESC_CLK_DIV register and one for MIPIO_DWORD8.

For DSI_ESC_CLK_DIV and DPHY_ESC_CLK_DIV registers the "M" is calculated
as following

Nt = ceil(f_link/160) (theoretical word clock)
Nact = max[3, Nt + (Nt + 1)%2] (actual word clock)
M = Nact * 8

For MIPIO_DWORD8 register, the divisor "M" is calculated as following

M = (Nact - 1)/2

BSpec: 55171

Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 21 +++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h        |  6 ++++++
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ce544e20f35c..27251b97f0c3 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -363,10 +363,19 @@ static void gen11_dsi_program_esc_clk_div(struct intel_encoder *encoder,
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 	int afe_clk_khz;
-	u32 esc_clk_div_m;
+	int theo_word_clk, act_word_clk;
+	u32 esc_clk_div_m, esc_clk_div_m_phy;
 
 	afe_clk_khz = afe_clk(encoder, crtc_state);
-	esc_clk_div_m = DIV_ROUND_UP(afe_clk_khz, DSI_MAX_ESC_CLK);
+
+	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv)) {
+		theo_word_clk = DIV_ROUND_UP(afe_clk_khz, 8 * DSI_MAX_ESC_CLK);
+		act_word_clk = max(3, theo_word_clk + (theo_word_clk + 1) % 2);
+		esc_clk_div_m = act_word_clk * 8;
+		esc_clk_div_m_phy = (act_word_clk - 1)/2;
+	} else {
+		esc_clk_div_m = DIV_ROUND_UP(afe_clk_khz, DSI_MAX_ESC_CLK);
+	}
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		intel_de_write(dev_priv, ICL_DSI_ESC_CLK_DIV(port),
@@ -379,6 +388,14 @@ static void gen11_dsi_program_esc_clk_div(struct intel_encoder *encoder,
 			       esc_clk_div_m & ICL_ESC_CLK_DIV_MASK);
 		intel_de_posting_read(dev_priv, ICL_DPHY_ESC_CLK_DIV(port));
 	}
+
+	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv)) {
+		for_each_dsi_port(port, intel_dsi->ports) {
+			intel_de_write(dev_priv, ADL_MIPIO_DW(port, 8),
+				       esc_clk_div_m_phy & TX_ESC_CLK_DIV_PHY);
+			intel_de_posting_read(dev_priv, ADL_MIPIO_DW(port, 8));
+		}
+	}
 }
 
 static void get_dsi_io_power_domains(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0e7a2616b3cd..2906dff26868 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11336,6 +11336,12 @@ enum skl_power_gate {
 #define  ICL_ESC_CLK_DIV_SHIFT			0
 #define DSI_MAX_ESC_CLK			20000		/* in KHz */
 
+#define _ADL_MIPIO_REG			0x180
+#define ADL_MIPIO_DW(port, dw)		_MMIO(_ICL_COMBOPHY(port) + _ADL_MIPIO_REG + 4 * (dw))
+#define   TX_ESC_CLK_DIV_PHY_SEL	REGBIT(16)
+#define   TX_ESC_CLK_DIV_PHY_MASK	REG_GENMASK(23, 16)
+#define   TX_ESC_CLK_DIV_PHY		REG_FIELD_PREP(TX_ESC_CLK_DIV_PHY_MASK, 0x7f)
+
 #define _DSI_CMD_FRMCTL_0		0x6b034
 #define _DSI_CMD_FRMCTL_1		0x6b834
 #define DSI_CMD_FRMCTL(port)		_MMIO_PORT(port,	\
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
