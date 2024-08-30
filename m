Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C01965E67
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E66D10EA4F;
	Fri, 30 Aug 2024 10:16:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lNEhBsUM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A72DE10E9F5;
 Fri, 30 Aug 2024 10:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725012988; x=1756548988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QTQ1pjaPAmDASaxhRx/iYYHSR4n9CBCIaXO2tso5eu0=;
 b=lNEhBsUM/xhwtB+EtNM9f3XxwGf505BGw5k3POhoorAJBVmiOZ/AROyM
 9/PF2maCAyx9JN/vnQFpgmNjEDITm2B/StIAA7EMm03j7fGo//ijFvfLi
 yFLwwXtw5unT5s4P1s2LRyyryYwwplszBr3ORb5kZTXUwyYH+pFst3647
 /9VpBfFdThF3pAOoROYtivugEwat9PAFcNd+1mJ0YfUeYk3/xnWzUNsLI
 QjVrjPrmltOT/Tb+sUROLG+U7Y8xQDIAgNwFChmL6y+WRieOq3Pv3iVLU
 eU9IKoUoKmQt4zaA24muE6LBh2LRNtqN1Dyw/KaOPkP+OVbqxKD03IKKy A==;
X-CSE-ConnectionGUID: +DGT0J57RbCEHsqjEXmU3Q==
X-CSE-MsgGUID: niM5ac82SD+IbXGViriphQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23164458"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23164458"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:22 -0700
X-CSE-ConnectionGUID: LF9FPKH5SReWjLKJHBGjAQ==
X-CSE-MsgGUID: N/lRiNzSQ4+lTyEaUyIGqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68252511"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/11] drm/i915/dp: convert intel_dp_aux.[ch] to struct
 intel_display
Date: Fri, 30 Aug 2024 13:15:42 +0300
Message-Id: <f295369d573d217323a624fd4b8dc477a6cf183b.1725012870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725012870.git.jani.nikula@intel.com>
References: <cover.1725012870.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_dp_aux.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  13 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   | 114 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dp_aux.h   |   4 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |   6 +-
 4 files changed, 73 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index d85c33eabc47..73369847ed66 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -576,6 +576,7 @@ void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 
 static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK;
 
@@ -589,7 +590,7 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	}
 
 	if (pch_iir & SDE_AUX_MASK)
-		intel_dp_aux_irq_handler(dev_priv);
+		intel_dp_aux_irq_handler(display);
 
 	if (pch_iir & SDE_GMBUS)
 		intel_gmbus_irq_handler(dev_priv);
@@ -664,6 +665,7 @@ static void cpt_serr_int_handler(struct drm_i915_private *dev_priv)
 
 static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_CPT;
 
@@ -677,7 +679,7 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 	}
 
 	if (pch_iir & SDE_AUX_MASK_CPT)
-		intel_dp_aux_irq_handler(dev_priv);
+		intel_dp_aux_irq_handler(display);
 
 	if (pch_iir & SDE_GMBUS_CPT)
 		intel_gmbus_irq_handler(dev_priv);
@@ -709,7 +711,7 @@ void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
 
 	if (de_iir & DE_AUX_CHANNEL_A)
-		intel_dp_aux_irq_handler(dev_priv);
+		intel_dp_aux_irq_handler(display);
 
 	if (de_iir & DE_GSE)
 		intel_opregion_asle_intr(display);
@@ -775,7 +777,7 @@ void ivb_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 	}
 
 	if (de_iir & DE_AUX_CHANNEL_A_IVB)
-		intel_dp_aux_irq_handler(dev_priv);
+		intel_dp_aux_irq_handler(display);
 
 	if (de_iir & DE_GSE_IVB)
 		intel_opregion_asle_intr(display);
@@ -1065,6 +1067,7 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
 
 void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 iir;
 	enum pipe pipe;
 
@@ -1100,7 +1103,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 			intel_uncore_write(&dev_priv->uncore, GEN8_DE_PORT_IIR, iir);
 
 			if (iir & gen8_de_port_aux_mask(dev_priv)) {
-				intel_dp_aux_irq_handler(dev_priv);
+				intel_dp_aux_irq_handler(display);
 				found = true;
 			}
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index cbc817bb0cc3..ff3b44b967c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -17,12 +17,12 @@
 
 #define AUX_CH_NAME_BUFSIZE	6
 
-static const char *aux_ch_name(struct drm_i915_private *i915,
+static const char *aux_ch_name(struct intel_display *display,
 			       char *buf, int size, enum aux_ch aux_ch)
 {
-	if (DISPLAY_VER(i915) >= 13 && aux_ch >= AUX_CH_D_XELPD)
+	if (DISPLAY_VER(display) >= 13 && aux_ch >= AUX_CH_D_XELPD)
 		snprintf(buf, size, "%c", 'A' + aux_ch - AUX_CH_D_XELPD + AUX_CH_D);
-	else if (DISPLAY_VER(i915) >= 12 && aux_ch >= AUX_CH_USBC1)
+	else if (DISPLAY_VER(display) >= 12 && aux_ch >= AUX_CH_USBC1)
 		snprintf(buf, size, "USBC%c", '1' + aux_ch - AUX_CH_USBC1);
 	else
 		snprintf(buf, size, "%c", 'A' + aux_ch);
@@ -55,17 +55,18 @@ static void intel_dp_aux_unpack(u32 src, u8 *dst, int dst_bytes)
 static u32
 intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
 	const unsigned int timeout_ms = 10;
 	u32 status;
 	int ret;
 
-	ret = intel_de_wait_custom(i915, ch_ctl, DP_AUX_CH_CTL_SEND_BUSY, 0,
+	ret = intel_de_wait_custom(display, ch_ctl, DP_AUX_CH_CTL_SEND_BUSY,
+				   0,
 				   2, timeout_ms, &status);
 
 	if (ret == -ETIMEDOUT)
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
 			intel_dp->aux.name, timeout_ms, status);
 
@@ -74,7 +75,7 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 
 static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (index)
 		return 0;
@@ -83,12 +84,12 @@ static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 	 * The clock divider is based off the hrawclk, and would like to run at
 	 * 2MHz.  So, take the hrawclk value and divide by 2000 and use that
 	 */
-	return DIV_ROUND_CLOSEST(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq, 2000);
+	return DIV_ROUND_CLOSEST(DISPLAY_RUNTIME_INFO(display)->rawclk_freq, 2000);
 }
 
 static u32 ilk_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	u32 freq;
 
@@ -101,15 +102,16 @@ static u32 ilk_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 	 * divide by 2000 and use that
 	 */
 	if (dig_port->aux_ch == AUX_CH_A)
-		freq = i915->display.cdclk.hw.cdclk;
+		freq = display->cdclk.hw.cdclk;
 	else
-		freq = DISPLAY_RUNTIME_INFO(i915)->rawclk_freq;
+		freq = DISPLAY_RUNTIME_INFO(display)->rawclk_freq;
 	return DIV_ROUND_CLOSEST(freq, 2000);
 }
 
 static u32 hsw_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
 	if (dig_port->aux_ch != AUX_CH_A && HAS_PCH_LPT_H(i915)) {
@@ -195,8 +197,8 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
 				int send_bytes,
 				u32 unused)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *i915 =	to_i915(dig_port->base.base.dev);
 	u32 ret;
 
 	/*
@@ -221,7 +223,7 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
 	 * Power request bit is already set during aux power well enable.
 	 * Preserve the bit across aux transactions.
 	 */
-	if (DISPLAY_VER(i915) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		ret |= XELPDP_DP_AUX_CH_CTL_POWER_REQUEST;
 
 	return ret;
@@ -233,6 +235,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		  u8 *recv, int recv_size,
 		  u32 aux_send_ctl_flags)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
@@ -291,7 +294,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 
 	/* Try to wait for any previous AUX channel activity */
 	for (try = 0; try < 3; try++) {
-		status = intel_de_read_notrace(i915, ch_ctl);
+		status = intel_de_read_notrace(display, ch_ctl);
 		if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
 			break;
 		msleep(1);
@@ -300,10 +303,10 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
 
 	if (try == 3) {
-		const u32 status = intel_de_read(i915, ch_ctl);
+		const u32 status = intel_de_read(display, ch_ctl);
 
 		if (status != intel_dp->aux_busy_last_status) {
-			drm_WARN(&i915->drm, 1,
+			drm_WARN(display->drm, 1,
 				 "%s: not started (status 0x%08x)\n",
 				 intel_dp->aux.name, status);
 			intel_dp->aux_busy_last_status = status;
@@ -314,7 +317,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	}
 
 	/* Only 5 data registers! */
-	if (drm_WARN_ON(&i915->drm, send_bytes > 20 || recv_size > 20)) {
+	if (drm_WARN_ON(display->drm, send_bytes > 20 || recv_size > 20)) {
 		ret = -E2BIG;
 		goto out;
 	}
@@ -330,17 +333,17 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		for (try = 0; try < 5; try++) {
 			/* Load the send data into the aux channel data registers */
 			for (i = 0; i < send_bytes; i += 4)
-				intel_de_write(i915, ch_data[i >> 2],
+				intel_de_write(display, ch_data[i >> 2],
 					       intel_dp_aux_pack(send + i,
 								 send_bytes - i));
 
 			/* Send the command and wait for it to complete */
-			intel_de_write(i915, ch_ctl, send_ctl);
+			intel_de_write(display, ch_ctl, send_ctl);
 
 			status = intel_dp_aux_wait_done(intel_dp);
 
 			/* Clear done status and any errors */
-			intel_de_write(i915, ch_ctl,
+			intel_de_write(display, ch_ctl,
 				       status | DP_AUX_CH_CTL_DONE |
 				       DP_AUX_CH_CTL_TIME_OUT_ERROR |
 				       DP_AUX_CH_CTL_RECEIVE_ERROR);
@@ -364,7 +367,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	}
 
 	if ((status & DP_AUX_CH_CTL_DONE) == 0) {
-		drm_err(&i915->drm, "%s: not done (status 0x%08x)\n",
+		drm_err(display->drm, "%s: not done (status 0x%08x)\n",
 			intel_dp->aux.name, status);
 		ret = -EBUSY;
 		goto out;
@@ -376,7 +379,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	 * not connected.
 	 */
 	if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
-		drm_err(&i915->drm, "%s: receive error (status 0x%08x)\n",
+		drm_err(display->drm, "%s: receive error (status 0x%08x)\n",
 			intel_dp->aux.name, status);
 		ret = -EIO;
 		goto out;
@@ -387,7 +390,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	 * -- don't fill the kernel log with these
 	 */
 	if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR) {
-		drm_dbg_kms(&i915->drm, "%s: timeout (status 0x%08x)\n",
+		drm_dbg_kms(display->drm, "%s: timeout (status 0x%08x)\n",
 			    intel_dp->aux.name, status);
 		ret = -ETIMEDOUT;
 		goto out;
@@ -402,7 +405,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	 * drm layer takes care for the necessary retries.
 	 */
 	if (recv_bytes == 0 || recv_bytes > 20) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "%s: Forbidden recv_bytes = %d on aux transaction\n",
 			    intel_dp->aux.name, recv_bytes);
 		ret = -EBUSY;
@@ -413,7 +416,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		recv_bytes = recv_size;
 
 	for (i = 0; i < recv_bytes; i += 4)
-		intel_dp_aux_unpack(intel_de_read(i915, ch_data[i >> 2]),
+		intel_dp_aux_unpack(intel_de_read(display, ch_data[i >> 2]),
 				    recv + i, recv_bytes - i);
 
 	ret = recv_bytes;
@@ -462,7 +465,7 @@ static ssize_t
 intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 {
 	struct intel_dp *intel_dp = container_of(aux, struct intel_dp, aux);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 txbuf[20], rxbuf[20];
 	size_t txsize, rxsize;
 	u32 flags = intel_dp_aux_xfer_flags(msg);
@@ -477,10 +480,10 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 		txsize = msg->size ? HEADER_SIZE + msg->size : BARE_ADDRESS_SIZE;
 		rxsize = 2; /* 0 or 1 data bytes */
 
-		if (drm_WARN_ON(&i915->drm, txsize > 20))
+		if (drm_WARN_ON(display->drm, txsize > 20))
 			return -E2BIG;
 
-		drm_WARN_ON(&i915->drm, !msg->buffer != !msg->size);
+		drm_WARN_ON(display->drm, !msg->buffer != !msg->size);
 
 		if (msg->buffer)
 			memcpy(txbuf + HEADER_SIZE, msg->buffer, msg->size);
@@ -505,7 +508,7 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
 		txsize = msg->size ? HEADER_SIZE : BARE_ADDRESS_SIZE;
 		rxsize = msg->size + 1;
 
-		if (drm_WARN_ON(&i915->drm, rxsize > 20))
+		if (drm_WARN_ON(display->drm, rxsize > 20))
 			return -E2BIG;
 
 		ret = intel_dp_aux_xfer(intel_dp, txbuf, txsize,
@@ -715,7 +718,7 @@ static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
 
 static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum aux_ch aux_ch = dig_port->aux_ch;
 
@@ -726,16 +729,16 @@ static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
 	case AUX_CH_USBC2:
 	case AUX_CH_USBC3:
 	case AUX_CH_USBC4:
-		return XELPDP_DP_AUX_CH_CTL(i915, aux_ch);
+		return XELPDP_DP_AUX_CH_CTL(display, aux_ch);
 	default:
 		MISSING_CASE(aux_ch);
-		return XELPDP_DP_AUX_CH_CTL(i915, AUX_CH_A);
+		return XELPDP_DP_AUX_CH_CTL(display, AUX_CH_A);
 	}
 }
 
 static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum aux_ch aux_ch = dig_port->aux_ch;
 
@@ -746,10 +749,10 @@ static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
 	case AUX_CH_USBC2:
 	case AUX_CH_USBC3:
 	case AUX_CH_USBC4:
-		return XELPDP_DP_AUX_CH_DATA(i915, aux_ch, index);
+		return XELPDP_DP_AUX_CH_DATA(display, aux_ch, index);
 	default:
 		MISSING_CASE(aux_ch);
-		return XELPDP_DP_AUX_CH_DATA(i915, AUX_CH_A, index);
+		return XELPDP_DP_AUX_CH_DATA(display, AUX_CH_A, index);
 	}
 }
 
@@ -763,19 +766,20 @@ void intel_dp_aux_fini(struct intel_dp *intel_dp)
 
 void intel_dp_aux_init(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	enum aux_ch aux_ch = dig_port->aux_ch;
 	char buf[AUX_CH_NAME_BUFSIZE];
 
-	if (DISPLAY_VER(i915) >= 14) {
+	if (DISPLAY_VER(display) >= 14) {
 		intel_dp->aux_ch_ctl_reg = xelpdp_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = xelpdp_aux_data_reg;
-	} else if (DISPLAY_VER(i915) >= 12) {
+	} else if (DISPLAY_VER(display) >= 12) {
 		intel_dp->aux_ch_ctl_reg = tgl_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = tgl_aux_data_reg;
-	} else if (DISPLAY_VER(i915) >= 9) {
+	} else if (DISPLAY_VER(display) >= 9) {
 		intel_dp->aux_ch_ctl_reg = skl_aux_ctl_reg;
 		intel_dp->aux_ch_data_reg = skl_aux_data_reg;
 	} else if (HAS_PCH_SPLIT(i915)) {
@@ -789,7 +793,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 		intel_dp->aux_ch_data_reg = g4x_aux_data_reg;
 	}
 
-	if (DISPLAY_VER(i915) >= 9)
+	if (DISPLAY_VER(display) >= 9)
 		intel_dp->get_aux_clock_divider = skl_get_aux_clock_divider;
 	else if (IS_BROADWELL(i915) || IS_HASWELL(i915))
 		intel_dp->get_aux_clock_divider = hsw_get_aux_clock_divider;
@@ -798,17 +802,17 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 	else
 		intel_dp->get_aux_clock_divider = g4x_get_aux_clock_divider;
 
-	if (DISPLAY_VER(i915) >= 9)
+	if (DISPLAY_VER(display) >= 9)
 		intel_dp->get_aux_send_ctl = skl_get_aux_send_ctl;
 	else
 		intel_dp->get_aux_send_ctl = g4x_get_aux_send_ctl;
 
-	intel_dp->aux.drm_dev = &i915->drm;
+	intel_dp->aux.drm_dev = display->drm;
 	drm_dp_aux_init(&intel_dp->aux);
 
 	/* Failure to allocate our preferred name is not critical */
 	intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX %s/%s",
-				       aux_ch_name(i915, buf, sizeof(buf), aux_ch),
+				       aux_ch_name(display, buf, sizeof(buf), aux_ch),
 				       encoder->base.name);
 
 	intel_dp->aux.transfer = intel_dp_aux_transfer;
@@ -817,10 +821,10 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 
 static enum aux_ch default_aux_ch(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
 	/* SKL has DDI E but no AUX E */
-	if (DISPLAY_VER(i915) == 9 && encoder->port == PORT_E)
+	if (DISPLAY_VER(display) == 9 && encoder->port == PORT_E)
 		return AUX_CH_A;
 
 	return (enum aux_ch)encoder->port;
@@ -830,10 +834,10 @@ static struct intel_encoder *
 get_encoder_by_aux_ch(struct intel_encoder *encoder,
 		      enum aux_ch aux_ch)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_encoder *other;
 
-	for_each_intel_encoder(&i915->drm, other) {
+	for_each_intel_encoder(display->drm, other) {
 		if (other == encoder)
 			continue;
 
@@ -849,7 +853,7 @@ get_encoder_by_aux_ch(struct intel_encoder *encoder,
 
 enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_encoder *other;
 	const char *source;
 	enum aux_ch aux_ch;
@@ -870,23 +874,23 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
 
 	other = get_encoder_by_aux_ch(encoder, aux_ch);
 	if (other) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] AUX CH %s already claimed by [ENCODER:%d:%s]\n",
 			    encoder->base.base.id, encoder->base.name,
-			    aux_ch_name(i915, buf, sizeof(buf), aux_ch),
+			    aux_ch_name(display, buf, sizeof(buf), aux_ch),
 			    other->base.base.id, other->base.name);
 		return AUX_CH_NONE;
 	}
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s] Using AUX CH %s (%s)\n",
 		    encoder->base.base.id, encoder->base.name,
-		    aux_ch_name(i915, buf, sizeof(buf), aux_ch), source);
+		    aux_ch_name(display, buf, sizeof(buf), aux_ch), source);
 
 	return aux_ch;
 }
 
-void intel_dp_aux_irq_handler(struct drm_i915_private *i915)
+void intel_dp_aux_irq_handler(struct intel_display *display)
 {
-	wake_up_all(&i915->display.gmbus.wait_queue);
+	wake_up_all(&display->gmbus.wait_queue);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
index 76d1f2ed7c2f..fad5d9c9402c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
@@ -9,7 +9,7 @@
 #include <linux/types.h>
 
 enum aux_ch;
-struct drm_i915_private;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 
@@ -18,7 +18,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp);
 
 enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder);
 
-void intel_dp_aux_irq_handler(struct drm_i915_private *i915);
+void intel_dp_aux_irq_handler(struct intel_display *display);
 u32 intel_dp_aux_pack(const u8 *src, int src_bytes);
 int intel_dp_aux_fw_sync_len(void);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index a1f07ee69a86..2c4e946d5575 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -456,6 +456,7 @@ u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
 
 void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_status)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 pin_mask = 0, long_mask = 0;
 	u32 hotplug_trigger;
 
@@ -477,7 +478,7 @@ void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_status)
 	if ((IS_G4X(dev_priv) ||
 	     IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 	    hotplug_status & DP_AUX_CHANNEL_MASK_INT_STATUS_G4X)
-		intel_dp_aux_irq_handler(dev_priv);
+		intel_dp_aux_irq_handler(display);
 }
 
 void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
@@ -513,6 +514,7 @@ void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
 
 void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
 {
+	struct intel_display *display = &i915->display;
 	enum hpd_pin pin;
 	u32 hotplug_trigger = iir & (XELPDP_DP_ALT_HOTPLUG_MASK | XELPDP_TBT_HOTPLUG_MASK);
 	u32 trigger_aux = iir & XELPDP_AUX_TC_MASK;
@@ -545,7 +547,7 @@ void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
 	}
 
 	if (trigger_aux)
-		intel_dp_aux_irq_handler(i915);
+		intel_dp_aux_irq_handler(display);
 
 	if (!pin_mask && !trigger_aux)
 		drm_err(&i915->drm,
-- 
2.39.2

