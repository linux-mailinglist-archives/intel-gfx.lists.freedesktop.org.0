Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD69551389
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89CD510ED5E;
	Mon, 20 Jun 2022 08:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23E8010EDB2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655715579; x=1687251579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mkwjZU2qDr28EkMDQ48cqN0Fp/clxcoSCmZQYtDnOxY=;
 b=bCyeVFQczjjfQhVMSksH90wnB8+XCluB+rZ+eOoGmB/MBzmCLlRcYYD0
 42TV1jFgXQdHgOzIdqF2oSoxtGwKS+5GrwoPzVyVuXpUQeHkOMh0kzbGB
 17/ca92JO48ELW30EuWyqW8aRDCooIvkckJgZFkVg0zCkoH6PHuAqBhhU
 ziDaYft/5jXgueDek3SWpG3t2DWgblxBpRYBKKEbfYyO3j2R4TeI23UXD
 wqNwSUtE352FhDOfnVU8W0lg0nypCDjWgSMk3/b/wd0KAj9dTcMyfDIJ+
 tJzBQwzPYC8ATl6YKUpr6oKB5lHHqvdTRXQt3CGjeZwS74nCMXKxA61p/ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="277391899"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="277391899"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:59:38 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="591083195"
Received: from tsengwil-desk1.itwn.intel.com (HELO gar) ([10.5.231.22])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:59:37 -0700
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 16:59:34 +0800
Message-Id: <20220620085934.25237-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220620075720.23274-1-william.tseng@intel.com>
References: <20220620075720.23274-1-william.tseng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5] drm/i915/dsi: add payload receiving code
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
Cc: William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To support Host to read data from Peripheral after
a DCS read command is sent over DSI.

v1: initial version.
v2:
- adding error message when failing to place BTA.
- returning byte number instead of 0 for the read
function dsi_read_pkt_payld().
v3: fixing coding style warning.
v4:
- correcting the data type of returning data for
the read function dsi_read_pkt_payld().
v5: adding change history as part of commit messages.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c      | 75 +++++++++++++++++++--
 drivers/gpu/drm/i915/display/icl_dsi_regs.h | 13 ++++
 2 files changed, 83 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 19bf717fd4cb..b2aa3c7902f3 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -201,6 +201,69 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
 	return 0;
 }
 
+static int dsi_read_pkt_payld(struct intel_dsi_host *host,
+			      u8 *rx_buf, size_t rx_len)
+{
+	struct intel_dsi *intel_dsi = host->intel_dsi;
+	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
+	enum transcoder dsi_trans = dsi_port_to_transcoder(host->port);
+	u32 tmp, /*hdr_data, */payld_data;
+	u32 payld_dw;
+	size_t payld_read;
+	u8 i;
+
+	/* step2: place a BTA reque */
+	/* check if header credit available */
+	if (!wait_for_header_credits(dev_priv, dsi_trans, 1)) {
+		drm_err(&dev_priv->drm, "not ready to recive payload\n");
+		return -EBUSY;
+	}
+
+	/* place BTA request */
+	tmp = intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans));
+	tmp |= LINK_BTA;
+	intel_de_write(dev_priv, DSI_LP_MSG(dsi_trans), tmp);
+
+	tmp = intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans));
+
+	/* step2a:  */
+	/* step2ai: set Turn-Around Timeout */
+	tmp = intel_de_read(dev_priv, DSI_TA_TO(dsi_trans));
+	tmp &= ~TA_TIMEOUT_VALUE_MASK;
+	tmp |= TA_TIMEOUT_VALUE(intel_dsi->turn_arnd_val);
+	intel_de_write(dev_priv, DSI_TA_TO(dsi_trans), tmp);
+
+	tmp = intel_de_read(dev_priv, DSI_TA_TO(dsi_trans));
+
+	/* step2aii: set maximum allowed time */
+	tmp = intel_de_read(dev_priv, DSI_LPRX_HOST_TO(dsi_trans));
+	tmp &= ~LPRX_TIMEOUT_VALUE_MASK;
+	tmp |= LPRX_TIMEOUT_VALUE(intel_dsi->lp_rx_timeout);
+	intel_de_write(dev_priv, DSI_LPRX_HOST_TO(dsi_trans), tmp);
+
+	tmp = intel_de_read(dev_priv, DSI_LPRX_HOST_TO(dsi_trans));
+
+	/* step4a: wait and read payload */
+	if (wait_for_us(((intel_de_read(dev_priv, DSI_CMD_RXCTL(dsi_trans)) &
+		NUMBER_RX_PLOAD_DW_MASK) >> NUMBER_RX_PLOAD_DW_SHIFT) > 0, 100000)) {
+		drm_err(&dev_priv->drm, "DSI fails to receive payload\n");
+		return -EBUSY;
+	}
+
+	tmp = intel_de_read(dev_priv, DSI_CMD_RXCTL(dsi_trans));
+	payld_dw = (tmp & NUMBER_RX_PLOAD_DW_MASK) >> NUMBER_RX_PLOAD_DW_SHIFT;
+	payld_read = min(rx_len, (size_t)(4 * payld_dw));
+
+	for (i = 0; i < payld_read; i++) {
+		if ((i % 4) == 0)
+			payld_data = intel_de_read(dev_priv, DSI_CMD_RXPYLD(dsi_trans));
+
+		*(rx_buf + i) = (payld_data >> (8 * (i % 4))) & 0xff;
+	}
+
+	return (int)payld_read;
+}
+
 void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -1078,8 +1141,8 @@ static void gen11_dsi_setup_timeouts(struct intel_encoder *encoder,
 	mul = 8 * 1000000;
 	hs_tx_timeout = DIV_ROUND_UP(intel_dsi->hs_tx_timeout * mul,
 				     divisor);
-	lp_rx_timeout = DIV_ROUND_UP(intel_dsi->lp_rx_timeout * mul, divisor);
-	ta_timeout = DIV_ROUND_UP(intel_dsi->turn_arnd_val * mul, divisor);
+	lp_rx_timeout = intel_dsi->lp_rx_timeout;
+	ta_timeout = intel_dsi->turn_arnd_val;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
@@ -1837,9 +1900,11 @@ static ssize_t gen11_dsi_host_transfer(struct mipi_dsi_host *host,
 	if (ret < 0)
 		return ret;
 
-	//TODO: add payload receive code if needed
-
-	ret = sizeof(dsi_pkt.header) + dsi_pkt.payload_length;
+	/* add payload receive code if needed */
+	if (msg->rx_buf && msg->rx_len > 0)
+		ret = dsi_read_pkt_payld(intel_dsi_host, msg->rx_buf, msg->rx_len);
+	else
+		ret = sizeof(dsi_pkt.header) + dsi_pkt.payload_length;
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
index f78f28b8dd94..a77a49b42d60 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
@@ -251,6 +251,18 @@
 #define  NUMBER_RX_PLOAD_DW_MASK	(0xff << 0)
 #define  NUMBER_RX_PLOAD_DW_SHIFT	0
 
+#define _DSI_CMD_RXHDR_0		0x6b0e0
+#define _DSI_CMD_RXHDR_1		0x6b8e0
+#define DSI_CMD_RXHDR(tc)		_MMIO_DSI(tc,	\
+						  _DSI_CMD_RXHDR_0,\
+						  _DSI_CMD_RXHDR_1)
+
+#define _DSI_CMD_RXPYLD_0		0x6b0e4
+#define _DSI_CMD_RXPYLD_1		0x6b8e4
+#define DSI_CMD_RXPYLD(tc)		_MMIO_DSI(tc,	\
+						  _DSI_CMD_RXPYLD_0,\
+						  _DSI_CMD_RXPYLD_1)
+
 #define _DSI_CMD_TXCTL_0		0x6b0d0
 #define _DSI_CMD_TXCTL_1		0x6b8d0
 #define DSI_CMD_TXCTL(tc)		_MMIO_DSI(tc,	\
@@ -294,6 +306,7 @@
 #define  LPTX_IN_PROGRESS		(1 << 17)
 #define  LINK_IN_ULPS			(1 << 16)
 #define  LINK_ULPS_TYPE_LP11		(1 << 8)
+#define  LINK_BTA			(1 << 1)
 #define  LINK_ENTER_ULPS		(1 << 0)
 
 /* DSI timeout registers */
-- 
2.17.1

