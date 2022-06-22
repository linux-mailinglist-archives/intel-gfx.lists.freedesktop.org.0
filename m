Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2768554541
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 12:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FD5310E78D;
	Wed, 22 Jun 2022 10:24:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 151B710E78D
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 10:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655893447; x=1687429447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lR0v0f3UoAHjjn+fvisPCghp1sqi88Xm9JTjzE5pSEo=;
 b=cL6OfRBEi0wks25NBhuP5xK/axxJJCUeqrxPOqJwNZaqkevzT71UHtfv
 f2oEQDjddmXxaM8AklYl8q2zGtFUiOkvEpDGUN/l40i27b8BQ/uqfi+h+
 ijM3zQI6xLPyyYGSIQ7VRUyel/HYgFDpf6VFKy3h3vBRX9Pmfc4QJAlGK
 GHYD+yJxEG360QbrIyB4zlQfMCYR92IZ8/vt4j6/gdM2GKh5cyuUaQU5n
 hKmxEZjWqVxveqYm50SIF/ro3YTHMTN5LiQlGohMf9Ou2I2GaJfRlm7Pm
 o7m9XWtNlbrq3Y4Ng/7A+YLn7Z2i5KKE8k2T9zfdNdgd1njmuFAy97XEP Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="279147159"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="279147159"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 03:24:05 -0700
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="715349317"
Received: from tsengwil-desk1.itwn.intel.com (HELO gar) ([10.5.231.22])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 03:24:04 -0700
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 18:24:01 +0800
Message-Id: <20220622102401.23721-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220620085934.25237-1-william.tseng@intel.com>
References: <20220620085934.25237-1-william.tseng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6] drm/i915/dsi: add payload receiving code
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
v6: according to the review comments from Jani,
- drop the commented out variable "hdr_data".
- use int insteaf of u8 as the data type of the loop
variable i.
- use intel_de_rmw() for read-modify-write.
- add new function place_bta_request() to keep
payload receive function clean.
- explicitly clear the READ_UNLOADS_DW bit of
DSI_CMD_RXCTL before reading receive payload.
- use two loops to copy received data.
- remove the unrelated change from this patch,
which is made to gen11_dsi_setup_timeouts().
- drop the comment in gen11_dsi_host_transfer().
- change the condition to call the payload
receive function in gen11_dsi_host_transfer().

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c      | 76 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/icl_dsi_regs.h | 13 ++++
 2 files changed, 86 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 19bf717fd4cb..edf20016af91 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -201,6 +201,75 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
 	return 0;
 }
 
+static bool place_bta_request(struct intel_dsi_host *host)
+{
+	struct intel_dsi *intel_dsi = host->intel_dsi;
+	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
+	enum transcoder dsi_trans = dsi_port_to_transcoder(host->port);
+
+	/* step2a(i): specify Turn-Around timeout */
+	intel_de_rmw(dev_priv, DSI_TA_TO(dsi_trans), TA_TIMEOUT_VALUE_MASK,
+		     TA_TIMEOUT_VALUE(intel_dsi->turn_arnd_val));
+
+	 /* step2a(ii): specify maximum allowed time */
+	intel_de_rmw(dev_priv, DSI_LPRX_HOST_TO(dsi_trans), ~LPRX_TIMEOUT_VALUE_MASK,
+		     LPRX_TIMEOUT_VALUE(intel_dsi->lp_rx_timeout));
+
+	/* check if header credit available */
+	if (!wait_for_header_credits(dev_priv, dsi_trans, 1)) {
+		drm_err(&dev_priv->drm, "not ready to recive payload\n");
+		return false;
+	}
+
+	/* place BTA request */
+	intel_de_rmw(dev_priv, DSI_LP_MSG(dsi_trans), LINK_BTA, LINK_BTA);
+
+	return true;
+}
+
+static int dsi_read_pkt_payld(struct intel_dsi_host *host,
+			      u8 *rx_buf, size_t rx_len)
+{
+	struct intel_dsi *intel_dsi = host->intel_dsi;
+	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
+	enum transcoder dsi_trans = dsi_port_to_transcoder(host->port);
+	u32 tmp, payld_data;
+	u32 payld_dw;
+	int i, j;
+
+	if (rx_len <= 0)
+		return 0;
+
+	/* do not unload receive queue */
+	tmp = intel_de_read(dev_priv, DSI_CMD_RXCTL(dsi_trans));
+	tmp &= ~READ_UNLOADS_DW;
+	intel_de_write(dev_priv, DSI_CMD_RXCTL(dsi_trans), tmp);
+
+	/* step2: place a BTA request */
+	if (!place_bta_request(host))
+		return -EBUSY;
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
+
+	for (i = 0; i < payld_dw; i++) {
+
+		payld_data = intel_de_read(dev_priv, DSI_CMD_RXPYLD(dsi_trans));
+
+		for (j = 0; j < min_t(u32, rx_len - (i * 4), 4); j++)
+			*(rx_buf + (i * 4 + j)) = (payld_data >> 8 * j) & 0xff;
+	}
+
+	return ((i - 1) * 4 + j);
+}
+
 void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -1837,9 +1906,10 @@ static ssize_t gen11_dsi_host_transfer(struct mipi_dsi_host *host,
 	if (ret < 0)
 		return ret;
 
-	//TODO: add payload receive code if needed
-
-	ret = sizeof(dsi_pkt.header) + dsi_pkt.payload_length;
+	if (msg->rx_buf)
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

