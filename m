Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 049E870CFC3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 02:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C3CC10E3B5;
	Tue, 23 May 2023 00:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C453210E306
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684802793; x=1716338793;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5HkrKS0g8rAh4NK7gFxuGFNbB3554xY1lwhvkhhGAQE=;
 b=i1dXjQJYuG2gcCOOlvzUFVdaV+hEusM8qzEt8Hz1q7iUFLntdwQksATL
 hPT2rluxVWBR7IaebVdx4jGiE6D3OVqT7I10BK+kbQHJKYC91V3HUpQSs
 Xji3vhzRWHJiNqAei5zaCN1A4zMpYgpSbyDcxX0jHA+5SkQreU5QIeXuL
 A+h8BbBBUpnHDjPAnCZb3NLHktR2U3Z8La53722hiEENyfo5oaBlYnrCb
 KlkdNpqcukzQOvso9wpJ/WMT7Hg8zFX0rUtvuRUCdRjvj3xJXlY2aspZO
 NviCUjTldyW0Eo3HYL0ptYfGDXZioEPGeF0TKrYGMluDYsPPLYjALH6MD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="351932926"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="351932926"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 17:46:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="877985953"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="877985953"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2023 17:46:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 May 2023 06:14:53 +0530
Message-Id: <20230523004455.1206533-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230523004455.1206533-1-suraj.kandpal@intel.com>
References: <20230523004455.1206533-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/hdcp: Rename dev_priv to i915
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rename dev_priv to i915 to keep up with latest code standards.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 630 +++++++++++-----------
 drivers/gpu/drm/i915/display/intel_hdcp.h |   6 +-
 2 files changed, 318 insertions(+), 318 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index dd539106ee5a..19c0b779e435 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -164,7 +164,7 @@ bool intel_hdcp_capable(struct intel_connector *connector)
 bool intel_hdcp2_capable(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	bool capable = false;
 
@@ -173,8 +173,8 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 		return false;
 
 	/* If MTL+ make sure gsc is loaded and proxy is setup */
-	if (intel_hdcp_gsc_cs_required(dev_priv)) {
-		struct intel_gt *gt = dev_priv->media_gt;
+	if (intel_hdcp_gsc_cs_required(i915)) {
+		struct intel_gt *gt = i915->media_gt;
 		struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
 
 		if (!gsc || !intel_uc_fw_is_running(&gsc->fw))
@@ -182,12 +182,12 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	}
 
 	/* MEI/GSC interface is solid depending on which is used */
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	if (!dev_priv->display.hdcp.comp_added ||  !dev_priv->display.hdcp.master) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.master) {
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return false;
 	}
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	/* Sink's capability for HDCP2.2 */
 	hdcp->shim->hdcp_2_2_capable(dig_port, &capable);
@@ -195,20 +195,20 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	return capable;
 }
 
-static bool intel_hdcp_in_use(struct drm_i915_private *dev_priv,
+static bool intel_hdcp_in_use(struct drm_i915_private *i915,
 			      enum transcoder cpu_transcoder, enum port port)
 {
-	return intel_de_read(dev_priv,
-	                     HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
-	       HDCP_STATUS_ENC;
+	return intel_de_read(i915,
+			     HDCP_STATUS(i915, cpu_transcoder, port)) &
+		HDCP_STATUS_ENC;
 }
 
-static bool intel_hdcp2_in_use(struct drm_i915_private *dev_priv,
+static bool intel_hdcp2_in_use(struct drm_i915_private *i915,
 			       enum transcoder cpu_transcoder, enum port port)
 {
-	return intel_de_read(dev_priv,
-	                     HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
-	       LINK_ENCRYPTION_STATUS;
+	return intel_de_read(i915,
+			     HDCP2_STATUS(i915, cpu_transcoder, port)) &
+		LINK_ENCRYPTION_STATUS;
 }
 
 static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
@@ -232,7 +232,7 @@ static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
 	return 0;
 }
 
-static bool hdcp_key_loadable(struct drm_i915_private *dev_priv)
+static bool hdcp_key_loadable(struct drm_i915_private *i915)
 {
 	enum i915_power_well_id id;
 	intel_wakeref_t wakeref;
@@ -242,14 +242,14 @@ static bool hdcp_key_loadable(struct drm_i915_private *dev_priv)
 	 * On HSW and BDW, Display HW loads the Key as soon as Display resumes.
 	 * On all BXT+, SW can load the keys only when the PW#1 is turned on.
 	 */
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
+	if (IS_HASWELL(i915) || IS_BROADWELL(i915))
 		id = HSW_DISP_PW_GLOBAL;
 	else
 		id = SKL_DISP_PW_1;
 
 	/* PG1 (power well #1) needs to be enabled */
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
-		enabled = intel_display_power_well_is_enabled(dev_priv, id);
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
+		enabled = intel_display_power_well_is_enabled(i915, id);
 
 	/*
 	 * Another req for hdcp key loadability is enabled state of pll for
@@ -260,19 +260,19 @@ static bool hdcp_key_loadable(struct drm_i915_private *dev_priv)
 	return enabled;
 }
 
-static void intel_hdcp_clear_keys(struct drm_i915_private *dev_priv)
+static void intel_hdcp_clear_keys(struct drm_i915_private *i915)
 {
-	intel_de_write(dev_priv, HDCP_KEY_CONF, HDCP_CLEAR_KEYS_TRIGGER);
-	intel_de_write(dev_priv, HDCP_KEY_STATUS,
+	intel_de_write(i915, HDCP_KEY_CONF, HDCP_CLEAR_KEYS_TRIGGER);
+	intel_de_write(i915, HDCP_KEY_STATUS,
 		       HDCP_KEY_LOAD_DONE | HDCP_KEY_LOAD_STATUS | HDCP_FUSE_IN_PROGRESS | HDCP_FUSE_ERROR | HDCP_FUSE_DONE);
 }
 
-static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
+static int intel_hdcp_load_keys(struct drm_i915_private *i915)
 {
 	int ret;
 	u32 val;
 
-	val = intel_de_read(dev_priv, HDCP_KEY_STATUS);
+	val = intel_de_read(i915, HDCP_KEY_STATUS);
 	if ((val & HDCP_KEY_LOAD_DONE) && (val & HDCP_KEY_LOAD_STATUS))
 		return 0;
 
@@ -280,8 +280,8 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 	 * On HSW and BDW HW loads the HDCP1.4 Key when Display comes
 	 * out of reset. So if Key is not already loaded, its an error state.
 	 */
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
-		if (!(intel_de_read(dev_priv, HDCP_KEY_STATUS) & HDCP_KEY_LOAD_DONE))
+	if (IS_HASWELL(i915) || IS_BROADWELL(i915))
+		if (!(intel_de_read(i915, HDCP_KEY_STATUS) & HDCP_KEY_LOAD_DONE))
 			return -ENXIO;
 
 	/*
@@ -292,20 +292,20 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 	 * process from other platforms. These platforms use the GT Driver
 	 * Mailbox interface.
 	 */
-	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) {
-		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_LOAD_HDCP_KEYS, 1);
+	if (DISPLAY_VER(i915) == 9 && !IS_BROXTON(i915)) {
+		ret = snb_pcode_write(&i915->uncore, SKL_PCODE_LOAD_HDCP_KEYS, 1);
 		if (ret) {
-			drm_err(&dev_priv->drm,
+			drm_err(&i915->drm,
 				"Failed to initiate HDCP key load (%d)\n",
 				ret);
 			return ret;
 		}
 	} else {
-		intel_de_write(dev_priv, HDCP_KEY_CONF, HDCP_KEY_LOAD_TRIGGER);
+		intel_de_write(i915, HDCP_KEY_CONF, HDCP_KEY_LOAD_TRIGGER);
 	}
 
 	/* Wait for the keys to load (500us) */
-	ret = __intel_wait_for_register(&dev_priv->uncore, HDCP_KEY_STATUS,
+	ret = __intel_wait_for_register(&i915->uncore, HDCP_KEY_STATUS,
 					HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD_DONE,
 					10, 1, &val);
 	if (ret)
@@ -314,27 +314,27 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
 		return -ENXIO;
 
 	/* Send Aksv over to PCH display for use in authentication */
-	intel_de_write(dev_priv, HDCP_KEY_CONF, HDCP_AKSV_SEND_TRIGGER);
+	intel_de_write(i915, HDCP_KEY_CONF, HDCP_AKSV_SEND_TRIGGER);
 
 	return 0;
 }
 
 /* Returns updated SHA-1 index */
-static int intel_write_sha_text(struct drm_i915_private *dev_priv, u32 sha_text)
+static int intel_write_sha_text(struct drm_i915_private *i915, u32 sha_text)
 {
-	intel_de_write(dev_priv, HDCP_SHA_TEXT, sha_text);
-	if (intel_de_wait_for_set(dev_priv, HDCP_REP_CTL, HDCP_SHA1_READY, 1)) {
-		drm_err(&dev_priv->drm, "Timed out waiting for SHA1 ready\n");
+	intel_de_write(i915, HDCP_SHA_TEXT, sha_text);
+	if (intel_de_wait_for_set(i915, HDCP_REP_CTL, HDCP_SHA1_READY, 1)) {
+		drm_err(&i915->drm, "Timed out waiting for SHA1 ready\n");
 		return -ETIMEDOUT;
 	}
 	return 0;
 }
 
 static
-u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *dev_priv,
+u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *i915,
 				enum transcoder cpu_transcoder, enum port port)
 {
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(i915) >= 12) {
 		switch (cpu_transcoder) {
 		case TRANSCODER_A:
 			return HDCP_TRANSA_REP_PRESENT |
@@ -349,7 +349,7 @@ u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *dev_priv,
 			return HDCP_TRANSD_REP_PRESENT |
 			       HDCP_TRANSD_SHA1_M0;
 		default:
-			drm_err(&dev_priv->drm, "Unknown transcoder %d\n",
+			drm_err(&i915->drm, "Unknown transcoder %d\n",
 				cpu_transcoder);
 			return -EINVAL;
 		}
@@ -367,7 +367,7 @@ u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *dev_priv,
 	case PORT_E:
 		return HDCP_DDIE_REP_PRESENT | HDCP_DDIE_SHA1_M0;
 	default:
-		drm_err(&dev_priv->drm, "Unknown port %d\n", port);
+		drm_err(&i915->drm, "Unknown port %d\n", port);
 		return -EINVAL;
 	}
 }
@@ -378,7 +378,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 				u8 *ksv_fifo, u8 num_downstream, u8 *bstatus)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	enum transcoder cpu_transcoder = connector->hdcp.cpu_transcoder;
 	enum port port = dig_port->base.port;
 	u32 vprime, sha_text, sha_leftovers, rep_ctl;
@@ -389,7 +389,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		ret = shim->read_v_prime_part(dig_port, i, &vprime);
 		if (ret)
 			return ret;
-		intel_de_write(dev_priv, HDCP_SHA_V_PRIME(i), vprime);
+		intel_de_write(i915, HDCP_SHA_V_PRIME(i), vprime);
 	}
 
 	/*
@@ -405,8 +405,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 	sha_idx = 0;
 	sha_text = 0;
 	sha_leftovers = 0;
-	rep_ctl = intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder, port);
-	intel_de_write(dev_priv, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+	rep_ctl = intel_hdcp_get_repeater_ctl(i915, cpu_transcoder, port);
+	intel_de_write(i915, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
 	for (i = 0; i < num_downstream; i++) {
 		unsigned int sha_empty;
 		u8 *ksv = &ksv_fifo[i * DRM_HDCP_KSV_LEN];
@@ -418,14 +418,14 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 			sha_text |= ksv[j] << off;
 		}
 
-		ret = intel_write_sha_text(dev_priv, sha_text);
+		ret = intel_write_sha_text(i915, sha_text);
 		if (ret < 0)
 			return ret;
 
 		/* Programming guide writes this every 64 bytes */
 		sha_idx += sizeof(sha_text);
 		if (!(sha_idx % 64))
-			intel_de_write(dev_priv, HDCP_REP_CTL,
+			intel_de_write(i915, HDCP_REP_CTL,
 				       rep_ctl | HDCP_SHA1_TEXT_32);
 
 		/* Store the leftover bytes from the ksv in sha_text */
@@ -442,7 +442,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		if (sizeof(sha_text) > sha_leftovers)
 			continue;
 
-		ret = intel_write_sha_text(dev_priv, sha_text);
+		ret = intel_write_sha_text(i915, sha_text);
 		if (ret < 0)
 			return ret;
 		sha_leftovers = 0;
@@ -458,73 +458,73 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 	 */
 	if (sha_leftovers == 0) {
 		/* Write 16 bits of text, 16 bits of M0 */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_16);
-		ret = intel_write_sha_text(dev_priv,
+		ret = intel_write_sha_text(i915,
 					   bstatus[0] << 8 | bstatus[1]);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 32 bits of M0 */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_0);
-		ret = intel_write_sha_text(dev_priv, 0);
+		ret = intel_write_sha_text(i915, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 16 bits of M0 */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_16);
-		ret = intel_write_sha_text(dev_priv, 0);
+		ret = intel_write_sha_text(i915, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 	} else if (sha_leftovers == 1) {
 		/* Write 24 bits of text, 8 bits of M0 */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_24);
 		sha_text |= bstatus[0] << 16 | bstatus[1] << 8;
 		/* Only 24-bits of data, must be in the LSB */
 		sha_text = (sha_text & 0xffffff00) >> 8;
-		ret = intel_write_sha_text(dev_priv, sha_text);
+		ret = intel_write_sha_text(i915, sha_text);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 32 bits of M0 */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_0);
-		ret = intel_write_sha_text(dev_priv, 0);
+		ret = intel_write_sha_text(i915, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 24 bits of M0 */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_8);
-		ret = intel_write_sha_text(dev_priv, 0);
+		ret = intel_write_sha_text(i915, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 	} else if (sha_leftovers == 2) {
 		/* Write 32 bits of text */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_32);
 		sha_text |= bstatus[0] << 8 | bstatus[1];
-		ret = intel_write_sha_text(dev_priv, sha_text);
+		ret = intel_write_sha_text(i915, sha_text);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 64 bits of M0 */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_0);
 		for (i = 0; i < 2; i++) {
-			ret = intel_write_sha_text(dev_priv, 0);
+			ret = intel_write_sha_text(i915, 0);
 			if (ret < 0)
 				return ret;
 			sha_idx += sizeof(sha_text);
@@ -534,56 +534,56 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		 * Terminate the SHA-1 stream by hand. For the other leftover
 		 * cases this is appended by the hardware.
 		 */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_32);
 		sha_text = DRM_HDCP_SHA1_TERMINATOR << 24;
-		ret = intel_write_sha_text(dev_priv, sha_text);
+		ret = intel_write_sha_text(i915, sha_text);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 	} else if (sha_leftovers == 3) {
 		/* Write 32 bits of text (filled from LSB) */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_32);
 		sha_text |= bstatus[0];
-		ret = intel_write_sha_text(dev_priv, sha_text);
+		ret = intel_write_sha_text(i915, sha_text);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 8 bits of text (filled from LSB), 24 bits of M0 */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_8);
-		ret = intel_write_sha_text(dev_priv, bstatus[1]);
+		ret = intel_write_sha_text(i915, bstatus[1]);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 32 bits of M0 */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_0);
-		ret = intel_write_sha_text(dev_priv, 0);
+		ret = intel_write_sha_text(i915, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 8 bits of M0 */
-		intel_de_write(dev_priv, HDCP_REP_CTL,
+		intel_de_write(i915, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_24);
-		ret = intel_write_sha_text(dev_priv, 0);
+		ret = intel_write_sha_text(i915, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 	} else {
-		drm_dbg_kms(&dev_priv->drm, "Invalid number of leftovers %d\n",
+		drm_dbg_kms(&i915->drm, "Invalid number of leftovers %d\n",
 			    sha_leftovers);
 		return -EINVAL;
 	}
 
-	intel_de_write(dev_priv, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+	intel_de_write(i915, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
 	/* Fill up to 64-4 bytes with zeros (leave the last write for length) */
 	while ((sha_idx % 64) < (64 - sizeof(sha_text))) {
-		ret = intel_write_sha_text(dev_priv, 0);
+		ret = intel_write_sha_text(i915, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
@@ -595,20 +595,20 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 	 *  - 10 bytes for BINFO/BSTATUS(2), M0(8)
 	 */
 	sha_text = (num_downstream * 5 + 10) * 8;
-	ret = intel_write_sha_text(dev_priv, sha_text);
+	ret = intel_write_sha_text(i915, sha_text);
 	if (ret < 0)
 		return ret;
 
 	/* Tell the HW we're done with the hash and wait for it to ACK */
-	intel_de_write(dev_priv, HDCP_REP_CTL,
+	intel_de_write(i915, HDCP_REP_CTL,
 		       rep_ctl | HDCP_SHA1_COMPLETE_HASH);
-	if (intel_de_wait_for_set(dev_priv, HDCP_REP_CTL,
+	if (intel_de_wait_for_set(i915, HDCP_REP_CTL,
 				  HDCP_SHA1_COMPLETE, 1)) {
-		drm_err(&dev_priv->drm, "Timed out waiting for SHA1 complete\n");
+		drm_err(&i915->drm, "Timed out waiting for SHA1 complete\n");
 		return -ETIMEDOUT;
 	}
-	if (!(intel_de_read(dev_priv, HDCP_REP_CTL) & HDCP_SHA1_V_MATCH)) {
-		drm_dbg_kms(&dev_priv->drm, "SHA-1 mismatch, HDCP failed\n");
+	if (!(intel_de_read(i915, HDCP_REP_CTL) & HDCP_SHA1_V_MATCH)) {
+		drm_dbg_kms(&i915->drm, "SHA-1 mismatch, HDCP failed\n");
 		return -ENXIO;
 	}
 
@@ -620,14 +620,14 @@ static
 int intel_hdcp_auth_downstream(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
 	u8 bstatus[2], num_downstream, *ksv_fifo;
 	int ret, i, tries = 3;
 
 	ret = intel_hdcp_poll_ksv_fifo(dig_port, shim);
 	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "KSV list failed to become ready (%d)\n", ret);
 		return ret;
 	}
@@ -638,7 +638,7 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 
 	if (DRM_HDCP_MAX_DEVICE_EXCEEDED(bstatus[0]) ||
 	    DRM_HDCP_MAX_CASCADE_EXCEEDED(bstatus[1])) {
-		drm_dbg_kms(&dev_priv->drm, "Max Topology Limit Exceeded\n");
+		drm_dbg_kms(&i915->drm, "Max Topology Limit Exceeded\n");
 		return -EPERM;
 	}
 
@@ -651,14 +651,14 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 	 */
 	num_downstream = DRM_HDCP_NUM_DOWNSTREAM(bstatus[0]);
 	if (num_downstream == 0) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "Repeater with zero downstream devices\n");
 		return -EINVAL;
 	}
 
 	ksv_fifo = kcalloc(DRM_HDCP_KSV_LEN, num_downstream, GFP_KERNEL);
 	if (!ksv_fifo) {
-		drm_dbg_kms(&dev_priv->drm, "Out of mem: ksv_fifo\n");
+		drm_dbg_kms(&i915->drm, "Out of mem: ksv_fifo\n");
 		return -ENOMEM;
 	}
 
@@ -666,9 +666,9 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 	if (ret)
 		goto err;
 
-	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm, ksv_fifo,
+	if (drm_hdcp_check_ksvs_revoked(&i915->drm, ksv_fifo,
 					num_downstream) > 0) {
-		drm_err(&dev_priv->drm, "Revoked Ksv(s) in ksv_fifo\n");
+		drm_err(&i915->drm, "Revoked Ksv(s) in ksv_fifo\n");
 		ret = -EPERM;
 		goto err;
 	}
@@ -686,12 +686,12 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 	}
 
 	if (i == tries) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "V Prime validation failed.(%d)\n", ret);
 		goto err;
 	}
 
-	drm_dbg_kms(&dev_priv->drm, "HDCP is enabled (%d downstream devices)\n",
+	drm_dbg_kms(&i915->drm, "HDCP is enabled (%d downstream devices)\n",
 		    num_downstream);
 	ret = 0;
 err:
@@ -703,7 +703,7 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 static int intel_hdcp_auth(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
 	enum transcoder cpu_transcoder = connector->hdcp.cpu_transcoder;
@@ -735,7 +735,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		if (ret)
 			return ret;
 		if (!hdcp_capable) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(&i915->drm,
 				    "Panel is not HDCP capable\n");
 			return -EINVAL;
 		}
@@ -743,24 +743,24 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
 	/* Initialize An with 2 random values and acquire it */
 	for (i = 0; i < 2; i++)
-		intel_de_write(dev_priv,
-			       HDCP_ANINIT(dev_priv, cpu_transcoder, port),
+		intel_de_write(i915,
+			       HDCP_ANINIT(i915, cpu_transcoder, port),
 			       get_random_u32());
-	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port),
+	intel_de_write(i915, HDCP_CONF(i915, cpu_transcoder, port),
 		       HDCP_CONF_CAPTURE_AN);
 
 	/* Wait for An to be acquired */
-	if (intel_de_wait_for_set(dev_priv,
-				  HDCP_STATUS(dev_priv, cpu_transcoder, port),
+	if (intel_de_wait_for_set(i915,
+				  HDCP_STATUS(i915, cpu_transcoder, port),
 				  HDCP_STATUS_AN_READY, 1)) {
-		drm_err(&dev_priv->drm, "Timed out waiting for An\n");
+		drm_err(&i915->drm, "Timed out waiting for An\n");
 		return -ETIMEDOUT;
 	}
 
-	an.reg[0] = intel_de_read(dev_priv,
-				  HDCP_ANLO(dev_priv, cpu_transcoder, port));
-	an.reg[1] = intel_de_read(dev_priv,
-				  HDCP_ANHI(dev_priv, cpu_transcoder, port));
+	an.reg[0] = intel_de_read(i915,
+				  HDCP_ANLO(i915, cpu_transcoder, port));
+	an.reg[1] = intel_de_read(i915,
+				  HDCP_ANHI(i915, cpu_transcoder, port));
 	ret = shim->write_an_aksv(dig_port, an.shim);
 	if (ret)
 		return ret;
@@ -773,34 +773,34 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm, bksv.shim, 1) > 0) {
-		drm_err(&dev_priv->drm, "BKSV is revoked\n");
+	if (drm_hdcp_check_ksvs_revoked(&i915->drm, bksv.shim, 1) > 0) {
+		drm_err(&i915->drm, "BKSV is revoked\n");
 		return -EPERM;
 	}
 
-	intel_de_write(dev_priv, HDCP_BKSVLO(dev_priv, cpu_transcoder, port),
+	intel_de_write(i915, HDCP_BKSVLO(i915, cpu_transcoder, port),
 		       bksv.reg[0]);
-	intel_de_write(dev_priv, HDCP_BKSVHI(dev_priv, cpu_transcoder, port),
+	intel_de_write(i915, HDCP_BKSVHI(i915, cpu_transcoder, port),
 		       bksv.reg[1]);
 
 	ret = shim->repeater_present(dig_port, &repeater_present);
 	if (ret)
 		return ret;
 	if (repeater_present)
-		intel_de_write(dev_priv, HDCP_REP_CTL,
-			       intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder, port));
+		intel_de_write(i915, HDCP_REP_CTL,
+			       intel_hdcp_get_repeater_ctl(i915, cpu_transcoder, port));
 
 	ret = shim->toggle_signalling(dig_port, cpu_transcoder, true);
 	if (ret)
 		return ret;
 
-	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port),
+	intel_de_write(i915, HDCP_CONF(i915, cpu_transcoder, port),
 		       HDCP_CONF_AUTH_AND_ENC);
 
 	/* Wait for R0 ready */
-	if (wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
+	if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
 		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
-		drm_err(&dev_priv->drm, "Timed out waiting for R0 ready\n");
+		drm_err(&i915->drm, "Timed out waiting for R0 ready\n");
 		return -ETIMEDOUT;
 	}
 
@@ -826,30 +826,30 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		ret = shim->read_ri_prime(dig_port, ri.shim);
 		if (ret)
 			return ret;
-		intel_de_write(dev_priv,
-			       HDCP_RPRIME(dev_priv, cpu_transcoder, port),
+		intel_de_write(i915,
+			       HDCP_RPRIME(i915, cpu_transcoder, port),
 			       ri.reg);
 
 		/* Wait for Ri prime match */
-		if (!wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
+		if (!wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
 			      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1))
 			break;
 	}
 
 	if (i == tries) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "Timed out waiting for Ri prime match (%x)\n",
-			    intel_de_read(dev_priv, HDCP_STATUS(dev_priv,
-					  cpu_transcoder, port)));
+			    intel_de_read(i915,
+					  HDCP_STATUS(i915, cpu_transcoder, port)));
 		return -ETIMEDOUT;
 	}
 
 	/* Wait for encryption confirmation */
-	if (intel_de_wait_for_set(dev_priv,
-				  HDCP_STATUS(dev_priv, cpu_transcoder, port),
+	if (intel_de_wait_for_set(i915,
+				  HDCP_STATUS(i915, cpu_transcoder, port),
 				  HDCP_STATUS_ENC,
 				  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
-		drm_err(&dev_priv->drm, "Timed out waiting for encryption\n");
+		drm_err(&i915->drm, "Timed out waiting for encryption\n");
 		return -ETIMEDOUT;
 	}
 
@@ -857,42 +857,42 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	if (shim->stream_encryption) {
 		ret = shim->stream_encryption(connector, true);
 		if (ret) {
-			drm_err(&dev_priv->drm, "[%s:%d] Failed to enable HDCP 1.4 stream enc\n",
+			drm_err(&i915->drm, "[%s:%d] Failed to enable HDCP 1.4 stream enc\n",
 				connector->base.name, connector->base.base.id);
 			return ret;
 		}
-		drm_dbg_kms(&dev_priv->drm, "HDCP 1.4 transcoder: %s stream encrypted\n",
+		drm_dbg_kms(&i915->drm, "HDCP 1.4 transcoder: %s stream encrypted\n",
 			    transcoder_name(hdcp->stream_transcoder));
 	}
 
 	if (repeater_present)
 		return intel_hdcp_auth_downstream(connector);
 
-	drm_dbg_kms(&dev_priv->drm, "HDCP is enabled (no repeater present)\n");
+	drm_dbg_kms(&i915->drm, "HDCP is enabled (no repeater present)\n");
 	return 0;
 }
 
 static int _intel_hdcp_disable(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	u32 repeater_ctl;
 	int ret;
 
-	drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP is being disabled...\n",
+	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP is being disabled...\n",
 		    connector->base.name, connector->base.base.id);
 
 	if (hdcp->shim->stream_encryption) {
 		ret = hdcp->shim->stream_encryption(connector, false);
 		if (ret) {
-			drm_err(&dev_priv->drm, "[%s:%d] Failed to disable HDCP 1.4 stream enc\n",
+			drm_err(&i915->drm, "[%s:%d] Failed to disable HDCP 1.4 stream enc\n",
 				connector->base.name, connector->base.base.id);
 			return ret;
 		}
-		drm_dbg_kms(&dev_priv->drm, "HDCP 1.4 transcoder: %s stream encryption disabled\n",
+		drm_dbg_kms(&i915->drm, "HDCP 1.4 transcoder: %s stream encryption disabled\n",
 			    transcoder_name(hdcp->stream_transcoder));
 		/*
 		 * If there are other connectors on this port using HDCP,
@@ -904,51 +904,51 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 	}
 
 	hdcp->hdcp_encrypted = false;
-	intel_de_write(dev_priv, HDCP_CONF(dev_priv, cpu_transcoder, port), 0);
-	if (intel_de_wait_for_clear(dev_priv,
-				    HDCP_STATUS(dev_priv, cpu_transcoder, port),
+	intel_de_write(i915, HDCP_CONF(i915, cpu_transcoder, port), 0);
+	if (intel_de_wait_for_clear(i915,
+				    HDCP_STATUS(i915, cpu_transcoder, port),
 				    ~0, HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
-		drm_err(&dev_priv->drm,
+		drm_err(&i915->drm,
 			"Failed to disable HDCP, timeout clearing status\n");
 		return -ETIMEDOUT;
 	}
 
-	repeater_ctl = intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder,
+	repeater_ctl = intel_hdcp_get_repeater_ctl(i915, cpu_transcoder,
 						   port);
-	intel_de_rmw(dev_priv, HDCP_REP_CTL, repeater_ctl, 0);
+	intel_de_rmw(i915, HDCP_REP_CTL, repeater_ctl, 0);
 
 	ret = hdcp->shim->toggle_signalling(dig_port, cpu_transcoder, false);
 	if (ret) {
-		drm_err(&dev_priv->drm, "Failed to disable HDCP signalling\n");
+		drm_err(&i915->drm, "Failed to disable HDCP signalling\n");
 		return ret;
 	}
 
-	drm_dbg_kms(&dev_priv->drm, "HDCP is disabled\n");
+	drm_dbg_kms(&i915->drm, "HDCP is disabled\n");
 	return 0;
 }
 
 static int _intel_hdcp_enable(struct intel_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int i, ret, tries = 3;
 
-	drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP is being enabled...\n",
+	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP is being enabled...\n",
 		    connector->base.name, connector->base.base.id);
 
-	if (!hdcp_key_loadable(dev_priv)) {
-		drm_err(&dev_priv->drm, "HDCP key Load is not possible\n");
+	if (!hdcp_key_loadable(i915)) {
+		drm_err(&i915->drm, "HDCP key Load is not possible\n");
 		return -ENXIO;
 	}
 
 	for (i = 0; i < KEY_LOAD_TRIES; i++) {
-		ret = intel_hdcp_load_keys(dev_priv);
+		ret = intel_hdcp_load_keys(i915);
 		if (!ret)
 			break;
-		intel_hdcp_clear_keys(dev_priv);
+		intel_hdcp_clear_keys(i915);
 	}
 	if (ret) {
-		drm_err(&dev_priv->drm, "Could not load HDCP keys, (%d)\n",
+		drm_err(&i915->drm, "Could not load HDCP keys, (%d)\n",
 			ret);
 		return ret;
 	}
@@ -961,13 +961,13 @@ static int _intel_hdcp_enable(struct intel_connector *connector)
 			return 0;
 		}
 
-		drm_dbg_kms(&dev_priv->drm, "HDCP Auth failure (%d)\n", ret);
+		drm_dbg_kms(&i915->drm, "HDCP Auth failure (%d)\n", ret);
 
 		/* Ensuring HDCP encryption and signalling are stopped. */
 		_intel_hdcp_disable(connector);
 	}
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "HDCP authentication failed (%d tries/%d)\n", tries, ret);
 	return ret;
 }
@@ -1009,7 +1009,7 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 static int intel_hdcp_check_link(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder;
@@ -1027,12 +1027,12 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	if (drm_WARN_ON(&dev_priv->drm,
-			!intel_hdcp_in_use(dev_priv, cpu_transcoder, port))) {
-		drm_err(&dev_priv->drm,
+	if (drm_WARN_ON(&i915->drm,
+			!intel_hdcp_in_use(i915, cpu_transcoder, port))) {
+		drm_err(&i915->drm,
 			"%s:%d HDCP link stopped encryption,%x\n",
 			connector->base.name, connector->base.base.id,
-			intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)));
+			intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)));
 		ret = -ENXIO;
 		intel_hdcp_update_value(connector,
 					DRM_MODE_CONTENT_PROTECTION_DESIRED,
@@ -1048,13 +1048,13 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "[%s:%d] HDCP link failed, retrying authentication\n",
 		    connector->base.name, connector->base.base.id);
 
 	ret = _intel_hdcp_disable(connector);
 	if (ret) {
-		drm_err(&dev_priv->drm, "Failed to disable hdcp (%d)\n", ret);
+		drm_err(&i915->drm, "Failed to disable hdcp (%d)\n", ret);
 		intel_hdcp_update_value(connector,
 					DRM_MODE_CONTENT_PROTECTION_DESIRED,
 					true);
@@ -1063,7 +1063,7 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 
 	ret = _intel_hdcp_enable(connector);
 	if (ret) {
-		drm_err(&dev_priv->drm, "Failed to enable hdcp (%d)\n", ret);
+		drm_err(&i915->drm, "Failed to enable hdcp (%d)\n", ret);
 		intel_hdcp_update_value(connector,
 					DRM_MODE_CONTENT_PROTECTION_DESIRED,
 					true);
@@ -1081,9 +1081,9 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 	struct intel_hdcp *hdcp = container_of(work, struct intel_hdcp,
 					       prop_work);
 	struct intel_connector *connector = intel_hdcp_to_connector(hdcp);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex, NULL);
+	drm_modeset_lock(&i915->drm.mode_config.connection_mutex, NULL);
 	mutex_lock(&hdcp->mutex);
 
 	/*
@@ -1096,15 +1096,15 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 						   hdcp->value);
 
 	mutex_unlock(&hdcp->mutex);
-	drm_modeset_unlock(&dev_priv->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
 
 	drm_connector_put(&connector->base);
 }
 
-bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port)
+bool is_hdcp_supported(struct drm_i915_private *i915, enum port port)
 {
-	return RUNTIME_INFO(dev_priv)->has_hdcp &&
-		(DISPLAY_VER(dev_priv) >= 12 || port < PORT_E);
+	return RUNTIME_INFO(i915)->has_hdcp &&
+		(DISPLAY_VER(i915) >= 12 || port < PORT_E);
 }
 
 static int
@@ -1113,23 +1113,23 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_master *arbiter;
 	int ret;
 
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	arbiter = dev_priv->display.hdcp.master;
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	arbiter = i915->display.hdcp.master;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->initiate_hdcp2_session(arbiter->hdcp_dev, data, ake_data);
 	if (ret)
-		drm_dbg_kms(&dev_priv->drm, "Prepare_ake_init failed. %d\n",
+		drm_dbg_kms(&i915->drm, "Prepare_ake_init failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1143,15 +1143,15 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_master *arbiter;
 	int ret;
 
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	arbiter = dev_priv->display.hdcp.master;
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	arbiter = i915->display.hdcp.master;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
@@ -1159,9 +1159,9 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 							 rx_cert, paired,
 							 ek_pub_km, msg_sz);
 	if (ret < 0)
-		drm_dbg_kms(&dev_priv->drm, "Verify rx_cert failed. %d\n",
+		drm_dbg_kms(&i915->drm, "Verify rx_cert failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1171,22 +1171,22 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_master *arbiter;
 	int ret;
 
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	arbiter = dev_priv->display.hdcp.master;
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	arbiter = i915->display.hdcp.master;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->verify_hprime(arbiter->hdcp_dev, data, rx_hprime);
 	if (ret < 0)
-		drm_dbg_kms(&dev_priv->drm, "Verify hprime failed. %d\n", ret);
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		drm_dbg_kms(&i915->drm, "Verify hprime failed. %d\n", ret);
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1197,23 +1197,23 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_master *arbiter;
 	int ret;
 
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	arbiter = dev_priv->display.hdcp.master;
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	arbiter = i915->display.hdcp.master;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->store_pairing_info(arbiter->hdcp_dev, data, pairing_info);
 	if (ret < 0)
-		drm_dbg_kms(&dev_priv->drm, "Store pairing info failed. %d\n",
+		drm_dbg_kms(&i915->drm, "Store pairing info failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1224,23 +1224,23 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_master *arbiter;
 	int ret;
 
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	arbiter = dev_priv->display.hdcp.master;
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	arbiter = i915->display.hdcp.master;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->initiate_locality_check(arbiter->hdcp_dev, data, lc_init);
 	if (ret < 0)
-		drm_dbg_kms(&dev_priv->drm, "Prepare lc_init failed. %d\n",
+		drm_dbg_kms(&i915->drm, "Prepare lc_init failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1251,23 +1251,23 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_master *arbiter;
 	int ret;
 
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	arbiter = dev_priv->display.hdcp.master;
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	arbiter = i915->display.hdcp.master;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->verify_lprime(arbiter->hdcp_dev, data, rx_lprime);
 	if (ret < 0)
-		drm_dbg_kms(&dev_priv->drm, "Verify L_Prime failed. %d\n",
+		drm_dbg_kms(&i915->drm, "Verify L_Prime failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1277,23 +1277,23 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_master *arbiter;
 	int ret;
 
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	arbiter = dev_priv->display.hdcp.master;
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	arbiter = i915->display.hdcp.master;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->get_session_key(arbiter->hdcp_dev, data, ske_data);
 	if (ret < 0)
-		drm_dbg_kms(&dev_priv->drm, "Get session key failed. %d\n",
+		drm_dbg_kms(&i915->drm, "Get session key failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1306,15 +1306,15 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_master *arbiter;
 	int ret;
 
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	arbiter = dev_priv->display.hdcp.master;
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	arbiter = i915->display.hdcp.master;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
@@ -1323,9 +1323,9 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 							    rep_topology,
 							    rep_send_ack);
 	if (ret < 0)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "Verify rep topology failed. %d\n", ret);
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1336,22 +1336,22 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_master *arbiter;
 	int ret;
 
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	arbiter = dev_priv->display.hdcp.master;
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	arbiter = i915->display.hdcp.master;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->verify_mprime(arbiter->hdcp_dev, data, stream_ready);
 	if (ret < 0)
-		drm_dbg_kms(&dev_priv->drm, "Verify mprime failed. %d\n", ret);
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		drm_dbg_kms(&i915->drm, "Verify mprime failed. %d\n", ret);
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1360,23 +1360,23 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_master *arbiter;
 	int ret;
 
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	arbiter = dev_priv->display.hdcp.master;
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	arbiter = i915->display.hdcp.master;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->enable_hdcp_authentication(arbiter->hdcp_dev, data);
 	if (ret < 0)
-		drm_dbg_kms(&dev_priv->drm, "Enable hdcp auth failed. %d\n",
+		drm_dbg_kms(&i915->drm, "Enable hdcp auth failed. %d\n",
 			    ret);
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1384,21 +1384,21 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 static int hdcp2_close_session(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_master *arbiter;
 	int ret;
 
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	arbiter = dev_priv->display.hdcp.master;
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	arbiter = i915->display.hdcp.master;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->close_hdcp_session(arbiter->hdcp_dev,
 					     &dig_port->hdcp_port_data);
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return ret;
 }
@@ -1412,7 +1412,7 @@ static int hdcp2_deauthenticate_port(struct intel_connector *connector)
 static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
 		struct hdcp2_ake_init ake_init;
@@ -1444,16 +1444,16 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 		return ret;
 
 	if (msgs.send_cert.rx_caps[0] != HDCP_2_2_RX_CAPS_VERSION_VAL) {
-		drm_dbg_kms(&dev_priv->drm, "cert.rx_caps dont claim HDCP2.2\n");
+		drm_dbg_kms(&i915->drm, "cert.rx_caps dont claim HDCP2.2\n");
 		return -EINVAL;
 	}
 
 	hdcp->is_repeater = HDCP_2_2_RX_REPEATER(msgs.send_cert.rx_caps[2]);
 
-	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm,
+	if (drm_hdcp_check_ksvs_revoked(&i915->drm,
 					msgs.send_cert.cert_rx.receiver_id,
 					1) > 0) {
-		drm_err(&dev_priv->drm, "Receiver ID is revoked\n");
+		drm_err(&i915->drm, "Receiver ID is revoked\n");
 		return -EPERM;
 	}
 
@@ -1607,7 +1607,7 @@ static
 int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
 		struct hdcp2_rep_send_receiverid_list recvid_list;
@@ -1627,7 +1627,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 
 	if (HDCP_2_2_MAX_CASCADE_EXCEEDED(rx_info[1]) ||
 	    HDCP_2_2_MAX_DEVS_EXCEEDED(rx_info[1])) {
-		drm_dbg_kms(&dev_priv->drm, "Topology Max Size Exceeded\n");
+		drm_dbg_kms(&i915->drm, "Topology Max Size Exceeded\n");
 		return -EINVAL;
 	}
 
@@ -1644,23 +1644,23 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 		drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
 
 	if (!hdcp->hdcp2_encrypted && seq_num_v) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "Non zero Seq_num_v at first RecvId_List msg\n");
 		return -EINVAL;
 	}
 
 	if (seq_num_v < hdcp->seq_num_v) {
 		/* Roll over of the seq_num_v from repeater. Reauthenticate. */
-		drm_dbg_kms(&dev_priv->drm, "Seq_num_v roll over.\n");
+		drm_dbg_kms(&i915->drm, "Seq_num_v roll over.\n");
 		return -EINVAL;
 	}
 
 	device_cnt = (HDCP_2_2_DEV_COUNT_HI(rx_info[0]) << 4 |
 		      HDCP_2_2_DEV_COUNT_LO(rx_info[1]));
-	if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm,
+	if (drm_hdcp_check_ksvs_revoked(&i915->drm,
 					msgs.recvid_list.receiver_ids,
 					device_cnt) > 0) {
-		drm_err(&dev_priv->drm, "Revoked receiver ID(s) is in list\n");
+		drm_err(&i915->drm, "Revoked receiver ID(s) is in list\n");
 		return -EPERM;
 	}
 
@@ -1729,16 +1729,16 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	enum port port = dig_port->base.port;
 	int ret = 0;
 
-	if (!(intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
+	if (!(intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)) &
 			    LINK_ENCRYPTION_STATUS)) {
-		drm_err(&dev_priv->drm, "[%s:%d] HDCP 2.2 Link is not encrypted\n",
+		drm_err(&i915->drm, "[%s:%d] HDCP 2.2 Link is not encrypted\n",
 			connector->base.name, connector->base.base.id);
 		ret = -EPERM;
 		goto link_recover;
@@ -1747,11 +1747,11 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 	if (hdcp->shim->stream_2_2_encryption) {
 		ret = hdcp->shim->stream_2_2_encryption(connector, true);
 		if (ret) {
-			drm_err(&dev_priv->drm, "[%s:%d] Failed to enable HDCP 2.2 stream enc\n",
+			drm_err(&i915->drm, "[%s:%d] Failed to enable HDCP 2.2 stream enc\n",
 				connector->base.name, connector->base.base.id);
 			return ret;
 		}
-		drm_dbg_kms(&dev_priv->drm, "HDCP 2.2 transcoder: %s stream encrypted\n",
+		drm_dbg_kms(&i915->drm, "HDCP 2.2 transcoder: %s stream encrypted\n",
 			    transcoder_name(hdcp->stream_transcoder));
 	}
 
@@ -1759,7 +1759,7 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 
 link_recover:
 	if (hdcp2_deauthenticate_port(connector) < 0)
-		drm_dbg_kms(&dev_priv->drm, "Port deauth failed.\n");
+		drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
 
 	dig_port->hdcp_auth_status = false;
 	data->k = 0;
@@ -1770,34 +1770,34 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 static int hdcp2_enable_encryption(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	int ret;
 
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
+	drm_WARN_ON(&i915->drm,
+		    intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)) &
 		    LINK_ENCRYPTION_STATUS);
 	if (hdcp->shim->toggle_signalling) {
 		ret = hdcp->shim->toggle_signalling(dig_port, cpu_transcoder,
 						    true);
 		if (ret) {
-			drm_err(&dev_priv->drm,
+			drm_err(&i915->drm,
 				"Failed to enable HDCP signalling. %d\n",
 				ret);
 			return ret;
 		}
 	}
 
-	if (intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
+	if (intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)) &
 	    LINK_AUTH_STATUS)
 		/* Link is Authenticated. Now set for Encryption */
-		intel_de_rmw(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
+		intel_de_rmw(i915, HDCP2_CTL(i915, cpu_transcoder, port),
 			     0, CTL_LINK_ENCRYPTION_REQ);
 
-	ret = intel_de_wait_for_set(dev_priv,
-				    HDCP2_STATUS(dev_priv, cpu_transcoder,
+	ret = intel_de_wait_for_set(i915,
+				    HDCP2_STATUS(i915, cpu_transcoder,
 						 port),
 				    LINK_ENCRYPTION_STATUS,
 				    HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
@@ -1809,31 +1809,31 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 static int hdcp2_disable_encryption(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	int ret;
 
-	drm_WARN_ON(&dev_priv->drm, !(intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
+	drm_WARN_ON(&i915->drm, !(intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)) &
 				      LINK_ENCRYPTION_STATUS));
 
-	intel_de_rmw(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
+	intel_de_rmw(i915, HDCP2_CTL(i915, cpu_transcoder, port),
 		     CTL_LINK_ENCRYPTION_REQ, 0);
 
-	ret = intel_de_wait_for_clear(dev_priv,
-				      HDCP2_STATUS(dev_priv, cpu_transcoder,
+	ret = intel_de_wait_for_clear(i915,
+				      HDCP2_STATUS(i915, cpu_transcoder,
 						   port),
 				      LINK_ENCRYPTION_STATUS,
 				      HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
 	if (ret == -ETIMEDOUT)
-		drm_dbg_kms(&dev_priv->drm, "Disable Encryption Timedout");
+		drm_dbg_kms(&i915->drm, "Disable Encryption Timedout");
 
 	if (hdcp->shim->toggle_signalling) {
 		ret = hdcp->shim->toggle_signalling(dig_port, cpu_transcoder,
 						    false);
 		if (ret) {
-			drm_err(&dev_priv->drm,
+			drm_err(&i915->drm,
 				"Failed to disable HDCP signalling. %d\n",
 				ret);
 			return ret;
@@ -1993,7 +1993,7 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
 static int intel_hdcp2_check_link(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder;
@@ -2010,11 +2010,11 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	if (drm_WARN_ON(&dev_priv->drm,
-			!intel_hdcp2_in_use(dev_priv, cpu_transcoder, port))) {
-		drm_err(&dev_priv->drm,
+	if (drm_WARN_ON(&i915->drm,
+			!intel_hdcp2_in_use(i915, cpu_transcoder, port))) {
+		drm_err(&i915->drm,
 			"HDCP2.2 link stopped the encryption, %x\n",
-			intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)));
+			intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)));
 		ret = -ENXIO;
 		_intel_hdcp2_disable(connector, true);
 		intel_hdcp_update_value(connector,
@@ -2037,7 +2037,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 		if (hdcp->value == DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
 			goto out;
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "HDCP2.2 Downstream topology change\n");
 		ret = hdcp2_authenticate_repeater_topology(connector);
 		if (!ret) {
@@ -2046,19 +2046,19 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 					true);
 			goto out;
 		}
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "[%s:%d] Repeater topology auth failed.(%d)\n",
 			    connector->base.name, connector->base.base.id,
 			    ret);
 	} else {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "[%s:%d] HDCP2.2 link failed, retrying auth\n",
 			    connector->base.name, connector->base.base.id);
 	}
 
 	ret = _intel_hdcp2_disable(connector, true);
 	if (ret) {
-		drm_err(&dev_priv->drm,
+		drm_err(&i915->drm,
 			"[%s:%d] Failed to disable hdcp2.2 (%d)\n",
 			connector->base.name, connector->base.base.id, ret);
 		intel_hdcp_update_value(connector,
@@ -2068,7 +2068,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 
 	ret = _intel_hdcp2_enable(connector);
 	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "[%s:%d] Failed to enable hdcp2.2 (%d)\n",
 			    connector->base.name, connector->base.base.id,
 			    ret);
@@ -2105,13 +2105,13 @@ static void intel_hdcp_check_work(struct work_struct *work)
 static int i915_hdcp_component_bind(struct device *i915_kdev,
 				    struct device *mei_kdev, void *data)
 {
-	struct drm_i915_private *dev_priv = kdev_to_i915(i915_kdev);
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 
-	drm_dbg(&dev_priv->drm, "I915 HDCP comp bind\n");
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	dev_priv->display.hdcp.master = (struct i915_hdcp_master *)data;
-	dev_priv->display.hdcp.master->hdcp_dev = mei_kdev;
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	drm_dbg(&i915->drm, "I915 HDCP comp bind\n");
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	i915->display.hdcp.master = (struct i915_hdcp_master *)data;
+	i915->display.hdcp.master->hdcp_dev = mei_kdev;
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
 	return 0;
 }
@@ -2119,12 +2119,12 @@ static int i915_hdcp_component_bind(struct device *i915_kdev,
 static void i915_hdcp_component_unbind(struct device *i915_kdev,
 				       struct device *mei_kdev, void *data)
 {
-	struct drm_i915_private *dev_priv = kdev_to_i915(i915_kdev);
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 
-	drm_dbg(&dev_priv->drm, "I915 HDCP comp unbind\n");
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	dev_priv->display.hdcp.master = NULL;
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	drm_dbg(&i915->drm, "I915 HDCP comp unbind\n");
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	i915->display.hdcp.master = NULL;
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 }
 
 static const struct component_ops i915_hdcp_ops = {
@@ -2158,11 +2158,11 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 				     struct intel_digital_port *dig_port,
 				     const struct intel_hdcp_shim *shim)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	enum port port = dig_port->base.port;
 
-	if (DISPLAY_VER(dev_priv) < 12)
+	if (DISPLAY_VER(i915) < 12)
 		data->hdcp_ddi = intel_get_hdcp_ddi_index(port);
 	else
 		/*
@@ -2182,55 +2182,55 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 	data->protocol = (u8)shim->protocol;
 
 	if (!data->streams)
-		data->streams = kcalloc(INTEL_NUM_PIPES(dev_priv),
+		data->streams = kcalloc(INTEL_NUM_PIPES(i915),
 					sizeof(struct hdcp2_streamid_type),
 					GFP_KERNEL);
 	if (!data->streams) {
-		drm_err(&dev_priv->drm, "Out of Memory\n");
+		drm_err(&i915->drm, "Out of Memory\n");
 		return -ENOMEM;
 	}
 
 	return 0;
 }
 
-static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)
+static bool is_hdcp2_supported(struct drm_i915_private *i915)
 {
-	if (intel_hdcp_gsc_cs_required(dev_priv))
+	if (intel_hdcp_gsc_cs_required(i915))
 		return true;
 
 	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
 		return false;
 
-	return (DISPLAY_VER(dev_priv) >= 10 ||
-		IS_KABYLAKE(dev_priv) ||
-		IS_COFFEELAKE(dev_priv) ||
-		IS_COMETLAKE(dev_priv));
+	return (DISPLAY_VER(i915) >= 10 ||
+		IS_KABYLAKE(i915) ||
+		IS_COFFEELAKE(i915) ||
+		IS_COMETLAKE(i915));
 }
 
-void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
+void intel_hdcp_component_init(struct drm_i915_private *i915)
 {
 	int ret;
 
-	if (!is_hdcp2_supported(dev_priv))
+	if (!is_hdcp2_supported(i915))
 		return;
 
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	drm_WARN_ON(&dev_priv->drm, dev_priv->display.hdcp.comp_added);
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	drm_WARN_ON(&i915->drm, i915->display.hdcp.comp_added);
 
-	dev_priv->display.hdcp.comp_added = true;
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
-	if (intel_hdcp_gsc_cs_required(dev_priv))
-		ret = intel_hdcp_gsc_init(dev_priv);
+	i915->display.hdcp.comp_added = true;
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
+	if (intel_hdcp_gsc_cs_required(i915))
+		ret = intel_hdcp_gsc_init(i915);
 	else
-		ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
+		ret = component_add_typed(i915->drm.dev, &i915_hdcp_ops,
 					  I915_COMPONENT_HDCP);
 
 	if (ret < 0) {
-		drm_dbg_kms(&dev_priv->drm, "Failed at fw component add(%d)\n",
+		drm_dbg_kms(&i915->drm, "Failed at fw component add(%d)\n",
 			    ret);
-		mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-		dev_priv->display.hdcp.comp_added = false;
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+		mutex_lock(&i915->display.hdcp.comp_mutex);
+		i915->display.hdcp.comp_added = false;
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return;
 	}
 }
@@ -2256,14 +2256,14 @@ int intel_hdcp_init(struct intel_connector *connector,
 		    struct intel_digital_port *dig_port,
 		    const struct intel_hdcp_shim *shim)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
 	if (!shim)
 		return -EINVAL;
 
-	if (is_hdcp2_supported(dev_priv))
+	if (is_hdcp2_supported(i915))
 		intel_hdcp2_init(connector, dig_port, shim);
 
 	ret =
@@ -2335,7 +2335,7 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
 		      const struct intel_crtc_state *pipe_config,
 		      const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
@@ -2347,14 +2347,14 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
 		return -ENOENT;
 
 	if (!connector->encoder) {
-		drm_err(&dev_priv->drm, "[%s:%d] encoder is not initialized\n",
+		drm_err(&i915->drm, "[%s:%d] encoder is not initialized\n",
 			connector->base.name, connector->base.base.id);
 		return -ENODEV;
 	}
 
 	mutex_lock(&hdcp->mutex);
 	mutex_lock(&dig_port->hdcp_mutex);
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(&i915->drm,
 		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
 	hdcp->content_type = (u8)conn_state->content_type;
 
@@ -2366,7 +2366,7 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
 		hdcp->stream_transcoder = INVALID_TRANSCODER;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(i915) >= 12)
 		dig_port->hdcp_port_data.hdcp_transcoder =
 			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
 
@@ -2382,7 +2382,7 @@ int intel_hdcp_enable(struct intel_atomic_state *state,
 				check_link_interval =
 					DRM_HDCP2_CHECK_PERIOD_MS;
 		} else {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(&i915->drm,
 				    "Set content streams failed: (%d)\n",
 				    ret);
 		}
@@ -2498,21 +2498,21 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 }
 
-void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
+void intel_hdcp_component_fini(struct drm_i915_private *i915)
 {
-	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
-	if (!dev_priv->display.hdcp.comp_added) {
-		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	mutex_lock(&i915->display.hdcp.comp_mutex);
+	if (!i915->display.hdcp.comp_added) {
+		mutex_unlock(&i915->display.hdcp.comp_mutex);
 		return;
 	}
 
-	dev_priv->display.hdcp.comp_added = false;
-	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
+	i915->display.hdcp.comp_added = false;
+	mutex_unlock(&i915->display.hdcp.comp_mutex);
 
-	if (intel_hdcp_gsc_cs_required(dev_priv))
-		intel_hdcp_gsc_fini(dev_priv);
+	if (intel_hdcp_gsc_cs_required(i915))
+		intel_hdcp_gsc_fini(i915);
 	else
-		component_del(dev_priv->drm.dev, &i915_hdcp_ops);
+		component_del(i915->drm.dev, &i915_hdcp_ops);
 }
 
 void intel_hdcp_cleanup(struct intel_connector *connector)
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index ce283f4f69fd..5997c52a0958 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -37,11 +37,11 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 			    struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
-bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port);
+bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
 bool intel_hdcp_capable(struct intel_connector *connector);
 bool intel_hdcp2_capable(struct intel_connector *connector);
-void intel_hdcp_component_init(struct drm_i915_private *dev_priv);
-void intel_hdcp_component_fini(struct drm_i915_private *dev_priv);
+void intel_hdcp_component_init(struct drm_i915_private *i915);
+void intel_hdcp_component_fini(struct drm_i915_private *i915);
 void intel_hdcp_cleanup(struct intel_connector *connector);
 void intel_hdcp_handle_cp_irq(struct intel_connector *connector);
 
-- 
2.25.1

