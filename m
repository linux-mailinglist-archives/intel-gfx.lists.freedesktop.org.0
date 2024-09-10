Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FF7972B2D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 09:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F243110E735;
	Tue, 10 Sep 2024 07:49:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TkdLJqLM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 915D810E71D;
 Tue, 10 Sep 2024 07:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725954597; x=1757490597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a/zsumU3D1EwG7qSX+hNZ9mp4BVT+GQBpgCF1UOo7S0=;
 b=TkdLJqLMzl1HkiYvivoSiYaFEYPXW7jyuKoxqpAADshWiZBkRMPtnHVJ
 IKdn2iIBkcmhloiO3/AnMhoSMvm0oDtRv+mKV5u678m0gC0MuD/EQp7nt
 WeBf2iP682hBpvEFpBJD/jST3kDkNCC6tHROK5b3Lsfo74KGw4rQdGGBa
 SkcNbvSZBrFOCYONZhxNYXKuVZRkFQD3p10UkuFEl4GUUz9k5gb4D4bTL
 g1zXhabjDP4RO/gVwn3amSIdBewm9ZEtxAtTFdaQLuVUsGk3uMTGnDbNx
 8t6V5b6doXcDw2ZSLPR3FQ2N+8S1e4a0pf3UGNfcKOwY9ebfyZYbhIXzh w==;
X-CSE-ConnectionGUID: LUOzVex6TziPODtgomeGlw==
X-CSE-MsgGUID: W9mGesS4Tk2dS0oJ8sYbcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24230987"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="24230987"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 00:49:56 -0700
X-CSE-ConnectionGUID: nfY8y7YwQbysdsEvK8b8gw==
X-CSE-MsgGUID: UyNN4ZupTVKQAS+Mhukpyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="66571806"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa006.fm.intel.com with ESMTP; 10 Sep 2024 00:49:53 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/hdcp: Move to using intel_display in intel_hdcp
Date: Tue, 10 Sep 2024 13:17:10 +0530
Message-ID: <20240910074712.544007-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240910074712.544007-1-suraj.kandpal@intel.com>
References: <20240910074712.544007-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Move to using intel_display wherever possible in intel_hdcp.c
as a part of code refactor.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 669 +++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |   9 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   5 +-
 .../drm/i915/display/intel_hdcp_gsc_message.h |   3 +-
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      |   7 +-
 5 files changed, 352 insertions(+), 341 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ebec03bc88e9..964372f4343b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -36,20 +36,20 @@ static void
 intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 				      struct intel_hdcp *hdcp)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder->base.dev);
 
 	/* Here we assume HDMI is in TMDS mode of operation */
 	if (encoder->type != INTEL_OUTPUT_HDMI)
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
-		if (IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
-			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
+	if (DISPLAY_VER(display) >= 14) {
+		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
+			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
 				     0, HDCP_LINE_REKEY_DISABLE);
-		else if (IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
-			 IS_DISPLAY_VER_STEP(dev_priv, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
-			intel_de_rmw(dev_priv,
-				     TRANS_DDI_FUNC_CTL(dev_priv, hdcp->cpu_transcoder),
+		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
+			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
+			intel_de_rmw(display,
+				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
 				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
 	}
 }
@@ -99,7 +99,7 @@ intel_hdcp_required_content_stream(struct intel_atomic_state *state,
 	struct drm_connector_list_iter conn_iter;
 	struct intel_digital_port *conn_dig_port;
 	struct intel_connector *connector;
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port->base.base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	bool enforce_type0 = false;
 	int k;
@@ -112,7 +112,7 @@ intel_hdcp_required_content_stream(struct intel_atomic_state *state,
 	if (!dig_port->hdcp_mst_type1_capable)
 		enforce_type0 = true;
 
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		if (connector->base.status == connector_status_disconnected)
 			continue;
@@ -134,7 +134,7 @@ intel_hdcp_required_content_stream(struct intel_atomic_state *state,
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
-	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) || data->k == 0))
+	if (drm_WARN_ON(display->drm, data->k > INTEL_NUM_PIPES(display) || data->k == 0))
 		return -EINVAL;
 
 	/*
@@ -182,7 +182,7 @@ static
 int intel_hdcp_read_valid_bksv(struct intel_digital_port *dig_port,
 			       const struct intel_hdcp_shim *shim, u8 *bksv)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port->base.base.dev);
 	int ret, i, tries = 2;
 
 	/* HDCP spec states that we must retry the bksv if it is invalid */
@@ -194,7 +194,7 @@ int intel_hdcp_read_valid_bksv(struct intel_digital_port *dig_port,
 			break;
 	}
 	if (i == tries) {
-		drm_dbg_kms(&i915->drm, "Bksv is invalid\n");
+		drm_dbg_kms(display->drm, "Bksv is invalid\n");
 		return -ENODEV;
 	}
 
@@ -233,7 +233,7 @@ bool intel_hdcp_get_capability(struct intel_connector *connector)
  */
 static bool intel_hdcp2_prerequisite(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 
 	/* I915 support for HDCP2.2 */
@@ -241,18 +241,18 @@ static bool intel_hdcp2_prerequisite(struct intel_connector *connector)
 		return false;
 
 	/* If MTL+ make sure gsc is loaded and proxy is setup */
-	if (intel_hdcp_gsc_cs_required(i915)) {
-		if (!intel_hdcp_gsc_check_status(i915))
+	if (intel_hdcp_gsc_cs_required(display)) {
+		if (!intel_hdcp_gsc_check_status(display))
 			return false;
 	}
 
 	/* MEI/GSC interface is solid depending on which is used */
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	if (!i915->display.hdcp.comp_added ||  !i915->display.hdcp.arbiter) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	if (!display->hdcp.comp_added || !display->hdcp.arbiter) {
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return false;
 	}
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return true;
 }
@@ -288,19 +288,19 @@ void intel_hdcp_get_remote_capability(struct intel_connector *connector,
 		*hdcp2_capable = false;
 }
 
-static bool intel_hdcp_in_use(struct drm_i915_private *i915,
+static bool intel_hdcp_in_use(struct intel_display *display,
 			      enum transcoder cpu_transcoder, enum port port)
 {
-	return intel_de_read(i915,
-			     HDCP_STATUS(i915, cpu_transcoder, port)) &
+	return intel_de_read(display,
+			     HDCP_STATUS(display, cpu_transcoder, port)) &
 		HDCP_STATUS_ENC;
 }
 
-static bool intel_hdcp2_in_use(struct drm_i915_private *i915,
+static bool intel_hdcp2_in_use(struct intel_display *display,
 			       enum transcoder cpu_transcoder, enum port port)
 {
-	return intel_de_read(i915,
-			     HDCP2_STATUS(i915, cpu_transcoder, port)) &
+	return intel_de_read(display,
+			     HDCP2_STATUS(display, cpu_transcoder, port)) &
 		LINK_ENCRYPTION_STATUS;
 }
 
@@ -325,8 +325,9 @@ static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
 	return 0;
 }
 
-static bool hdcp_key_loadable(struct drm_i915_private *i915)
+static bool hdcp_key_loadable(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	enum i915_power_well_id id;
 	intel_wakeref_t wakeref;
 	bool enabled = false;
@@ -353,19 +354,20 @@ static bool hdcp_key_loadable(struct drm_i915_private *i915)
 	return enabled;
 }
 
-static void intel_hdcp_clear_keys(struct drm_i915_private *i915)
+static void intel_hdcp_clear_keys(struct intel_display *display)
 {
-	intel_de_write(i915, HDCP_KEY_CONF, HDCP_CLEAR_KEYS_TRIGGER);
-	intel_de_write(i915, HDCP_KEY_STATUS,
+	intel_de_write(display, HDCP_KEY_CONF, HDCP_CLEAR_KEYS_TRIGGER);
+	intel_de_write(display, HDCP_KEY_STATUS,
 		       HDCP_KEY_LOAD_DONE | HDCP_KEY_LOAD_STATUS | HDCP_FUSE_IN_PROGRESS | HDCP_FUSE_ERROR | HDCP_FUSE_DONE);
 }
 
-static int intel_hdcp_load_keys(struct drm_i915_private *i915)
+static int intel_hdcp_load_keys(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 	u32 val;
 
-	val = intel_de_read(i915, HDCP_KEY_STATUS);
+	val = intel_de_read(display, HDCP_KEY_STATUS);
 	if ((val & HDCP_KEY_LOAD_DONE) && (val & HDCP_KEY_LOAD_STATUS))
 		return 0;
 
@@ -374,7 +376,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *i915)
 	 * out of reset. So if Key is not already loaded, its an error state.
 	 */
 	if (IS_HASWELL(i915) || IS_BROADWELL(i915))
-		if (!(intel_de_read(i915, HDCP_KEY_STATUS) & HDCP_KEY_LOAD_DONE))
+		if (!(intel_de_read(display, HDCP_KEY_STATUS) & HDCP_KEY_LOAD_DONE))
 			return -ENXIO;
 
 	/*
@@ -385,20 +387,20 @@ static int intel_hdcp_load_keys(struct drm_i915_private *i915)
 	 * process from other platforms. These platforms use the GT Driver
 	 * Mailbox interface.
 	 */
-	if (DISPLAY_VER(i915) == 9 && !IS_BROXTON(i915)) {
+	if (DISPLAY_VER(display) == 9 && !IS_BROXTON(i915)) {
 		ret = snb_pcode_write(&i915->uncore, SKL_PCODE_LOAD_HDCP_KEYS, 1);
 		if (ret) {
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"Failed to initiate HDCP key load (%d)\n",
 				ret);
 			return ret;
 		}
 	} else {
-		intel_de_write(i915, HDCP_KEY_CONF, HDCP_KEY_LOAD_TRIGGER);
+		intel_de_write(display, HDCP_KEY_CONF, HDCP_KEY_LOAD_TRIGGER);
 	}
 
 	/* Wait for the keys to load (500us) */
-	ret = intel_de_wait_custom(i915, HDCP_KEY_STATUS,
+	ret = intel_de_wait_custom(display, HDCP_KEY_STATUS,
 				   HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD_DONE,
 				   10, 1, &val);
 	if (ret)
@@ -407,27 +409,27 @@ static int intel_hdcp_load_keys(struct drm_i915_private *i915)
 		return -ENXIO;
 
 	/* Send Aksv over to PCH display for use in authentication */
-	intel_de_write(i915, HDCP_KEY_CONF, HDCP_AKSV_SEND_TRIGGER);
+	intel_de_write(display, HDCP_KEY_CONF, HDCP_AKSV_SEND_TRIGGER);
 
 	return 0;
 }
 
 /* Returns updated SHA-1 index */
-static int intel_write_sha_text(struct drm_i915_private *i915, u32 sha_text)
+static int intel_write_sha_text(struct intel_display *display, u32 sha_text)
 {
-	intel_de_write(i915, HDCP_SHA_TEXT, sha_text);
-	if (intel_de_wait_for_set(i915, HDCP_REP_CTL, HDCP_SHA1_READY, 1)) {
-		drm_err(&i915->drm, "Timed out waiting for SHA1 ready\n");
+	intel_de_write(display, HDCP_SHA_TEXT, sha_text);
+	if (intel_de_wait_for_set(display, HDCP_REP_CTL, HDCP_SHA1_READY, 1)) {
+		drm_err(display->drm, "Timed out waiting for SHA1 ready\n");
 		return -ETIMEDOUT;
 	}
 	return 0;
 }
 
 static
-u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *i915,
+u32 intel_hdcp_get_repeater_ctl(struct intel_display *display,
 				enum transcoder cpu_transcoder, enum port port)
 {
-	if (DISPLAY_VER(i915) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		switch (cpu_transcoder) {
 		case TRANSCODER_A:
 			return HDCP_TRANSA_REP_PRESENT |
@@ -442,7 +444,7 @@ u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *i915,
 			return HDCP_TRANSD_REP_PRESENT |
 			       HDCP_TRANSD_SHA1_M0;
 		default:
-			drm_err(&i915->drm, "Unknown transcoder %d\n",
+			drm_err(display->drm, "Unknown transcoder %d\n",
 				cpu_transcoder);
 			return 0;
 		}
@@ -460,7 +462,7 @@ u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *i915,
 	case PORT_E:
 		return HDCP_DDIE_REP_PRESENT | HDCP_DDIE_SHA1_M0;
 	default:
-		drm_err(&i915->drm, "Unknown port %d\n", port);
+		drm_err(display->drm, "Unknown port %d\n", port);
 		return 0;
 	}
 }
@@ -471,7 +473,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 				u8 *ksv_fifo, u8 num_downstream, u8 *bstatus)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	enum transcoder cpu_transcoder = connector->hdcp.cpu_transcoder;
 	enum port port = dig_port->base.port;
 	u32 vprime, sha_text, sha_leftovers, rep_ctl;
@@ -482,7 +484,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		ret = shim->read_v_prime_part(dig_port, i, &vprime);
 		if (ret)
 			return ret;
-		intel_de_write(i915, HDCP_SHA_V_PRIME(i), vprime);
+		intel_de_write(display, HDCP_SHA_V_PRIME(i), vprime);
 	}
 
 	/*
@@ -498,8 +500,8 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 	sha_idx = 0;
 	sha_text = 0;
 	sha_leftovers = 0;
-	rep_ctl = intel_hdcp_get_repeater_ctl(i915, cpu_transcoder, port);
-	intel_de_write(i915, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+	rep_ctl = intel_hdcp_get_repeater_ctl(display, cpu_transcoder, port);
+	intel_de_write(display, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
 	for (i = 0; i < num_downstream; i++) {
 		unsigned int sha_empty;
 		u8 *ksv = &ksv_fifo[i * DRM_HDCP_KSV_LEN];
@@ -511,14 +513,14 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 			sha_text |= ksv[j] << off;
 		}
 
-		ret = intel_write_sha_text(i915, sha_text);
+		ret = intel_write_sha_text(display, sha_text);
 		if (ret < 0)
 			return ret;
 
 		/* Programming guide writes this every 64 bytes */
 		sha_idx += sizeof(sha_text);
 		if (!(sha_idx % 64))
-			intel_de_write(i915, HDCP_REP_CTL,
+			intel_de_write(display, HDCP_REP_CTL,
 				       rep_ctl | HDCP_SHA1_TEXT_32);
 
 		/* Store the leftover bytes from the ksv in sha_text */
@@ -535,7 +537,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		if (sizeof(sha_text) > sha_leftovers)
 			continue;
 
-		ret = intel_write_sha_text(i915, sha_text);
+		ret = intel_write_sha_text(display, sha_text);
 		if (ret < 0)
 			return ret;
 		sha_leftovers = 0;
@@ -551,73 +553,73 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 	 */
 	if (sha_leftovers == 0) {
 		/* Write 16 bits of text, 16 bits of M0 */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_16);
-		ret = intel_write_sha_text(i915,
+		ret = intel_write_sha_text(display,
 					   bstatus[0] << 8 | bstatus[1]);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 32 bits of M0 */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_0);
-		ret = intel_write_sha_text(i915, 0);
+		ret = intel_write_sha_text(display, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 16 bits of M0 */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_16);
-		ret = intel_write_sha_text(i915, 0);
+		ret = intel_write_sha_text(display, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 	} else if (sha_leftovers == 1) {
 		/* Write 24 bits of text, 8 bits of M0 */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_24);
 		sha_text |= bstatus[0] << 16 | bstatus[1] << 8;
 		/* Only 24-bits of data, must be in the LSB */
 		sha_text = (sha_text & 0xffffff00) >> 8;
-		ret = intel_write_sha_text(i915, sha_text);
+		ret = intel_write_sha_text(display, sha_text);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 32 bits of M0 */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_0);
-		ret = intel_write_sha_text(i915, 0);
+		ret = intel_write_sha_text(display, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 24 bits of M0 */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_8);
-		ret = intel_write_sha_text(i915, 0);
+		ret = intel_write_sha_text(display, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 	} else if (sha_leftovers == 2) {
 		/* Write 32 bits of text */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_32);
 		sha_text |= bstatus[0] << 8 | bstatus[1];
-		ret = intel_write_sha_text(i915, sha_text);
+		ret = intel_write_sha_text(display, sha_text);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 64 bits of M0 */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_0);
 		for (i = 0; i < 2; i++) {
-			ret = intel_write_sha_text(i915, 0);
+			ret = intel_write_sha_text(display, 0);
 			if (ret < 0)
 				return ret;
 			sha_idx += sizeof(sha_text);
@@ -627,56 +629,56 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 		 * Terminate the SHA-1 stream by hand. For the other leftover
 		 * cases this is appended by the hardware.
 		 */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_32);
 		sha_text = DRM_HDCP_SHA1_TERMINATOR << 24;
-		ret = intel_write_sha_text(i915, sha_text);
+		ret = intel_write_sha_text(display, sha_text);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 	} else if (sha_leftovers == 3) {
 		/* Write 32 bits of text (filled from LSB) */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_32);
 		sha_text |= bstatus[0];
-		ret = intel_write_sha_text(i915, sha_text);
+		ret = intel_write_sha_text(display, sha_text);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 8 bits of text (filled from LSB), 24 bits of M0 */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_8);
-		ret = intel_write_sha_text(i915, bstatus[1]);
+		ret = intel_write_sha_text(display, bstatus[1]);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 32 bits of M0 */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_0);
-		ret = intel_write_sha_text(i915, 0);
+		ret = intel_write_sha_text(display, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
 		/* Write 8 bits of M0 */
-		intel_de_write(i915, HDCP_REP_CTL,
+		intel_de_write(display, HDCP_REP_CTL,
 			       rep_ctl | HDCP_SHA1_TEXT_24);
-		ret = intel_write_sha_text(i915, 0);
+		ret = intel_write_sha_text(display, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 	} else {
-		drm_dbg_kms(&i915->drm, "Invalid number of leftovers %d\n",
+		drm_dbg_kms(display->drm, "Invalid number of leftovers %d\n",
 			    sha_leftovers);
 		return -EINVAL;
 	}
 
-	intel_de_write(i915, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+	intel_de_write(display, HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
 	/* Fill up to 64-4 bytes with zeros (leave the last write for length) */
 	while ((sha_idx % 64) < (64 - sizeof(sha_text))) {
-		ret = intel_write_sha_text(i915, 0);
+		ret = intel_write_sha_text(display, 0);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
@@ -688,20 +690,20 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 	 *  - 10 bytes for BINFO/BSTATUS(2), M0(8)
 	 */
 	sha_text = (num_downstream * 5 + 10) * 8;
-	ret = intel_write_sha_text(i915, sha_text);
+	ret = intel_write_sha_text(display, sha_text);
 	if (ret < 0)
 		return ret;
 
 	/* Tell the HW we're done with the hash and wait for it to ACK */
-	intel_de_write(i915, HDCP_REP_CTL,
+	intel_de_write(display, HDCP_REP_CTL,
 		       rep_ctl | HDCP_SHA1_COMPLETE_HASH);
-	if (intel_de_wait_for_set(i915, HDCP_REP_CTL,
+	if (intel_de_wait_for_set(display, HDCP_REP_CTL,
 				  HDCP_SHA1_COMPLETE, 1)) {
-		drm_err(&i915->drm, "Timed out waiting for SHA1 complete\n");
+		drm_err(display->drm, "Timed out waiting for SHA1 complete\n");
 		return -ETIMEDOUT;
 	}
-	if (!(intel_de_read(i915, HDCP_REP_CTL) & HDCP_SHA1_V_MATCH)) {
-		drm_dbg_kms(&i915->drm, "SHA-1 mismatch, HDCP failed\n");
+	if (!(intel_de_read(display, HDCP_REP_CTL) & HDCP_SHA1_V_MATCH)) {
+		drm_dbg_kms(display->drm, "SHA-1 mismatch, HDCP failed\n");
 		return -ENXIO;
 	}
 
@@ -713,14 +715,14 @@ static
 int intel_hdcp_auth_downstream(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	const struct intel_hdcp_shim *shim = connector->hdcp.shim;
 	u8 bstatus[2], num_downstream, *ksv_fifo;
 	int ret, i, tries = 3;
 
 	ret = intel_hdcp_poll_ksv_fifo(dig_port, shim);
 	if (ret) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "KSV list failed to become ready (%d)\n", ret);
 		return ret;
 	}
@@ -731,7 +733,7 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 
 	if (DRM_HDCP_MAX_DEVICE_EXCEEDED(bstatus[0]) ||
 	    DRM_HDCP_MAX_CASCADE_EXCEEDED(bstatus[1])) {
-		drm_dbg_kms(&i915->drm, "Max Topology Limit Exceeded\n");
+		drm_dbg_kms(display->drm, "Max Topology Limit Exceeded\n");
 		return -EPERM;
 	}
 
@@ -744,14 +746,14 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 	 */
 	num_downstream = DRM_HDCP_NUM_DOWNSTREAM(bstatus[0]);
 	if (num_downstream == 0) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Repeater with zero downstream devices\n");
 		return -EINVAL;
 	}
 
 	ksv_fifo = kcalloc(DRM_HDCP_KSV_LEN, num_downstream, GFP_KERNEL);
 	if (!ksv_fifo) {
-		drm_dbg_kms(&i915->drm, "Out of mem: ksv_fifo\n");
+		drm_dbg_kms(display->drm, "Out of mem: ksv_fifo\n");
 		return -ENOMEM;
 	}
 
@@ -759,9 +761,9 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 	if (ret)
 		goto err;
 
-	if (drm_hdcp_check_ksvs_revoked(&i915->drm, ksv_fifo,
+	if (drm_hdcp_check_ksvs_revoked(display->drm, ksv_fifo,
 					num_downstream) > 0) {
-		drm_err(&i915->drm, "Revoked Ksv(s) in ksv_fifo\n");
+		drm_err(display->drm, "Revoked Ksv(s) in ksv_fifo\n");
 		ret = -EPERM;
 		goto err;
 	}
@@ -779,12 +781,12 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 	}
 
 	if (i == tries) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "V Prime validation failed.(%d)\n", ret);
 		goto err;
 	}
 
-	drm_dbg_kms(&i915->drm, "HDCP is enabled (%d downstream devices)\n",
+	drm_dbg_kms(display->drm, "HDCP is enabled (%d downstream devices)\n",
 		    num_downstream);
 	ret = 0;
 err:
@@ -796,7 +798,7 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
 static int intel_hdcp_auth(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
 	enum transcoder cpu_transcoder = connector->hdcp.cpu_transcoder;
@@ -828,7 +830,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		if (ret)
 			return ret;
 		if (!hdcp_capable) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Panel is not HDCP capable\n");
 			return -EINVAL;
 		}
@@ -836,24 +838,24 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
 	/* Initialize An with 2 random values and acquire it */
 	for (i = 0; i < 2; i++)
-		intel_de_write(i915,
-			       HDCP_ANINIT(i915, cpu_transcoder, port),
+		intel_de_write(display,
+			       HDCP_ANINIT(display, cpu_transcoder, port),
 			       get_random_u32());
-	intel_de_write(i915, HDCP_CONF(i915, cpu_transcoder, port),
+	intel_de_write(display, HDCP_CONF(display, cpu_transcoder, port),
 		       HDCP_CONF_CAPTURE_AN);
 
 	/* Wait for An to be acquired */
-	if (intel_de_wait_for_set(i915,
-				  HDCP_STATUS(i915, cpu_transcoder, port),
+	if (intel_de_wait_for_set(display,
+				  HDCP_STATUS(display, cpu_transcoder, port),
 				  HDCP_STATUS_AN_READY, 1)) {
-		drm_err(&i915->drm, "Timed out waiting for An\n");
+		drm_err(display->drm, "Timed out waiting for An\n");
 		return -ETIMEDOUT;
 	}
 
-	an.reg[0] = intel_de_read(i915,
-				  HDCP_ANLO(i915, cpu_transcoder, port));
-	an.reg[1] = intel_de_read(i915,
-				  HDCP_ANHI(i915, cpu_transcoder, port));
+	an.reg[0] = intel_de_read(display,
+				  HDCP_ANLO(display, cpu_transcoder, port));
+	an.reg[1] = intel_de_read(display,
+				  HDCP_ANHI(display, cpu_transcoder, port));
 	ret = shim->write_an_aksv(dig_port, an.shim);
 	if (ret)
 		return ret;
@@ -866,34 +868,34 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	if (ret < 0)
 		return ret;
 
-	if (drm_hdcp_check_ksvs_revoked(&i915->drm, bksv.shim, 1) > 0) {
-		drm_err(&i915->drm, "BKSV is revoked\n");
+	if (drm_hdcp_check_ksvs_revoked(display->drm, bksv.shim, 1) > 0) {
+		drm_err(display->drm, "BKSV is revoked\n");
 		return -EPERM;
 	}
 
-	intel_de_write(i915, HDCP_BKSVLO(i915, cpu_transcoder, port),
+	intel_de_write(display, HDCP_BKSVLO(display, cpu_transcoder, port),
 		       bksv.reg[0]);
-	intel_de_write(i915, HDCP_BKSVHI(i915, cpu_transcoder, port),
+	intel_de_write(display, HDCP_BKSVHI(display, cpu_transcoder, port),
 		       bksv.reg[1]);
 
 	ret = shim->repeater_present(dig_port, &repeater_present);
 	if (ret)
 		return ret;
 	if (repeater_present)
-		intel_de_write(i915, HDCP_REP_CTL,
-			       intel_hdcp_get_repeater_ctl(i915, cpu_transcoder, port));
+		intel_de_write(display, HDCP_REP_CTL,
+			       intel_hdcp_get_repeater_ctl(display, cpu_transcoder, port));
 
 	ret = shim->toggle_signalling(dig_port, cpu_transcoder, true);
 	if (ret)
 		return ret;
 
-	intel_de_write(i915, HDCP_CONF(i915, cpu_transcoder, port),
+	intel_de_write(display, HDCP_CONF(display, cpu_transcoder, port),
 		       HDCP_CONF_AUTH_AND_ENC);
 
 	/* Wait for R0 ready */
-	if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
+	if (wait_for(intel_de_read(display, HDCP_STATUS(display, cpu_transcoder, port)) &
 		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
-		drm_err(&i915->drm, "Timed out waiting for R0 ready\n");
+		drm_err(display->drm, "Timed out waiting for R0 ready\n");
 		return -ETIMEDOUT;
 	}
 
@@ -919,30 +921,30 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 		ret = shim->read_ri_prime(dig_port, ri.shim);
 		if (ret)
 			return ret;
-		intel_de_write(i915,
-			       HDCP_RPRIME(i915, cpu_transcoder, port),
+		intel_de_write(display,
+			       HDCP_RPRIME(display, cpu_transcoder, port),
 			       ri.reg);
 
 		/* Wait for Ri prime match */
-		if (!wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
+		if (!wait_for(intel_de_read(display, HDCP_STATUS(display, cpu_transcoder, port)) &
 			      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1))
 			break;
 	}
 
 	if (i == tries) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Timed out waiting for Ri prime match (%x)\n",
-			    intel_de_read(i915,
-					  HDCP_STATUS(i915, cpu_transcoder, port)));
+			    intel_de_read(display,
+					  HDCP_STATUS(display, cpu_transcoder, port)));
 		return -ETIMEDOUT;
 	}
 
 	/* Wait for encryption confirmation */
-	if (intel_de_wait_for_set(i915,
-				  HDCP_STATUS(i915, cpu_transcoder, port),
+	if (intel_de_wait_for_set(display,
+				  HDCP_STATUS(display, cpu_transcoder, port),
 				  HDCP_STATUS_ENC,
 				  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
-		drm_err(&i915->drm, "Timed out waiting for encryption\n");
+		drm_err(display->drm, "Timed out waiting for encryption\n");
 		return -ETIMEDOUT;
 	}
 
@@ -950,42 +952,42 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 	if (shim->stream_encryption) {
 		ret = shim->stream_encryption(connector, true);
 		if (ret) {
-			drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to enable HDCP 1.4 stream enc\n",
+			drm_err(display->drm, "[CONNECTOR:%d:%s] Failed to enable HDCP 1.4 stream enc\n",
 				connector->base.base.id, connector->base.name);
 			return ret;
 		}
-		drm_dbg_kms(&i915->drm, "HDCP 1.4 transcoder: %s stream encrypted\n",
+		drm_dbg_kms(display->drm, "HDCP 1.4 transcoder: %s stream encrypted\n",
 			    transcoder_name(hdcp->stream_transcoder));
 	}
 
 	if (repeater_present)
 		return intel_hdcp_auth_downstream(connector);
 
-	drm_dbg_kms(&i915->drm, "HDCP is enabled (no repeater present)\n");
+	drm_dbg_kms(display->drm, "HDCP is enabled (no repeater present)\n");
 	return 0;
 }
 
 static int _intel_hdcp_disable(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	u32 repeater_ctl;
 	int ret;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] HDCP is being disabled...\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] HDCP is being disabled...\n",
 		    connector->base.base.id, connector->base.name);
 
 	if (hdcp->shim->stream_encryption) {
 		ret = hdcp->shim->stream_encryption(connector, false);
 		if (ret) {
-			drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to disable HDCP 1.4 stream enc\n",
+			drm_err(display->drm, "[CONNECTOR:%d:%s] Failed to disable HDCP 1.4 stream enc\n",
 				connector->base.base.id, connector->base.name);
 			return ret;
 		}
-		drm_dbg_kms(&i915->drm, "HDCP 1.4 transcoder: %s stream encryption disabled\n",
+		drm_dbg_kms(display->drm, "HDCP 1.4 transcoder: %s stream encryption disabled\n",
 			    transcoder_name(hdcp->stream_transcoder));
 		/*
 		 * If there are other connectors on this port using HDCP,
@@ -997,51 +999,51 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
 	}
 
 	hdcp->hdcp_encrypted = false;
-	intel_de_write(i915, HDCP_CONF(i915, cpu_transcoder, port), 0);
-	if (intel_de_wait_for_clear(i915,
-				    HDCP_STATUS(i915, cpu_transcoder, port),
+	intel_de_write(display, HDCP_CONF(display, cpu_transcoder, port), 0);
+	if (intel_de_wait_for_clear(display,
+				    HDCP_STATUS(display, cpu_transcoder, port),
 				    ~0, HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"Failed to disable HDCP, timeout clearing status\n");
 		return -ETIMEDOUT;
 	}
 
-	repeater_ctl = intel_hdcp_get_repeater_ctl(i915, cpu_transcoder,
+	repeater_ctl = intel_hdcp_get_repeater_ctl(display, cpu_transcoder,
 						   port);
-	intel_de_rmw(i915, HDCP_REP_CTL, repeater_ctl, 0);
+	intel_de_rmw(display, HDCP_REP_CTL, repeater_ctl, 0);
 
 	ret = hdcp->shim->toggle_signalling(dig_port, cpu_transcoder, false);
 	if (ret) {
-		drm_err(&i915->drm, "Failed to disable HDCP signalling\n");
+		drm_err(display->drm, "Failed to disable HDCP signalling\n");
 		return ret;
 	}
 
-	drm_dbg_kms(&i915->drm, "HDCP is disabled\n");
+	drm_dbg_kms(display->drm, "HDCP is disabled\n");
 	return 0;
 }
 
 static int intel_hdcp1_enable(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int i, ret, tries = 3;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] HDCP is being enabled...\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] HDCP is being enabled...\n",
 		    connector->base.base.id, connector->base.name);
 
-	if (!hdcp_key_loadable(i915)) {
-		drm_err(&i915->drm, "HDCP key Load is not possible\n");
+	if (!hdcp_key_loadable(display)) {
+		drm_err(display->drm, "HDCP key Load is not possible\n");
 		return -ENXIO;
 	}
 
 	for (i = 0; i < KEY_LOAD_TRIES; i++) {
-		ret = intel_hdcp_load_keys(i915);
+		ret = intel_hdcp_load_keys(display);
 		if (!ret)
 			break;
-		intel_hdcp_clear_keys(i915);
+		intel_hdcp_clear_keys(display);
 	}
 	if (ret) {
-		drm_err(&i915->drm, "Could not load HDCP keys, (%d)\n",
+		drm_err(display->drm, "Could not load HDCP keys, (%d)\n",
 			ret);
 		return ret;
 	}
@@ -1054,13 +1056,13 @@ static int intel_hdcp1_enable(struct intel_connector *connector)
 			return 0;
 		}
 
-		drm_dbg_kms(&i915->drm, "HDCP Auth failure (%d)\n", ret);
+		drm_dbg_kms(display->drm, "HDCP Auth failure (%d)\n", ret);
 
 		/* Ensuring HDCP encryption and signalling are stopped. */
 		_intel_hdcp_disable(connector);
 	}
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "HDCP authentication failed (%d tries/%d)\n", tries, ret);
 	return ret;
 }
@@ -1074,9 +1076,9 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 				    u64 value, bool update_property)
 {
 	struct drm_device *dev = connector->base.dev;
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	drm_WARN_ON(connector->base.dev, !mutex_is_locked(&hdcp->mutex));
 
@@ -1103,7 +1105,7 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 static int intel_hdcp_check_link(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder;
@@ -1121,12 +1123,12 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	if (drm_WARN_ON(&i915->drm,
-			!intel_hdcp_in_use(i915, cpu_transcoder, port))) {
-		drm_err(&i915->drm,
+	if (drm_WARN_ON(display->drm,
+			!intel_hdcp_in_use(display, cpu_transcoder, port))) {
+		drm_err(display->drm,
 			"[CONNECTOR:%d:%s] HDCP link stopped encryption,%x\n",
 			connector->base.base.id, connector->base.name,
-			intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)));
+			intel_de_read(display, HDCP_STATUS(display, cpu_transcoder, port)));
 		ret = -ENXIO;
 		intel_hdcp_update_value(connector,
 					DRM_MODE_CONTENT_PROTECTION_DESIRED,
@@ -1142,13 +1144,13 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] HDCP link failed, retrying authentication\n",
 		    connector->base.base.id, connector->base.name);
 
 	ret = _intel_hdcp_disable(connector);
 	if (ret) {
-		drm_err(&i915->drm, "Failed to disable hdcp (%d)\n", ret);
+		drm_err(display->drm, "Failed to disable hdcp (%d)\n", ret);
 		intel_hdcp_update_value(connector,
 					DRM_MODE_CONTENT_PROTECTION_DESIRED,
 					true);
@@ -1169,9 +1171,9 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 	struct intel_hdcp *hdcp = container_of(work, struct intel_hdcp,
 					       prop_work);
 	struct intel_connector *connector = intel_hdcp_to_connector(hdcp);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 
-	drm_modeset_lock(&i915->drm.mode_config.connection_mutex, NULL);
+	drm_modeset_lock(&display->drm->mode_config.connection_mutex, NULL);
 	mutex_lock(&hdcp->mutex);
 
 	/*
@@ -1184,7 +1186,7 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 						   hdcp->value);
 
 	mutex_unlock(&hdcp->mutex);
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	drm_connector_put(&connector->base);
 }
@@ -1200,24 +1202,24 @@ hdcp2_prepare_ake_init(struct intel_connector *connector,
 		       struct hdcp2_ake_init *ake_data)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	arbiter = i915->display.hdcp.arbiter;
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->initiate_hdcp2_session(arbiter->hdcp_dev, data, ake_data);
 	if (ret)
-		drm_dbg_kms(&i915->drm, "Prepare_ake_init failed. %d\n",
+		drm_dbg_kms(display->drm, "Prepare_ake_init failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1230,16 +1232,16 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 				size_t *msg_sz)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	arbiter = i915->display.hdcp.arbiter;
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
@@ -1247,9 +1249,9 @@ hdcp2_verify_rx_cert_prepare_km(struct intel_connector *connector,
 							 rx_cert, paired,
 							 ek_pub_km, msg_sz);
 	if (ret < 0)
-		drm_dbg_kms(&i915->drm, "Verify rx_cert failed. %d\n",
+		drm_dbg_kms(display->drm, "Verify rx_cert failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1258,23 +1260,23 @@ static int hdcp2_verify_hprime(struct intel_connector *connector,
 			       struct hdcp2_ake_send_hprime *rx_hprime)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	arbiter = i915->display.hdcp.arbiter;
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->verify_hprime(arbiter->hdcp_dev, data, rx_hprime);
 	if (ret < 0)
-		drm_dbg_kms(&i915->drm, "Verify hprime failed. %d\n", ret);
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		drm_dbg_kms(display->drm, "Verify hprime failed. %d\n", ret);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1284,24 +1286,24 @@ hdcp2_store_pairing_info(struct intel_connector *connector,
 			 struct hdcp2_ake_send_pairing_info *pairing_info)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	arbiter = i915->display.hdcp.arbiter;
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->store_pairing_info(arbiter->hdcp_dev, data, pairing_info);
 	if (ret < 0)
-		drm_dbg_kms(&i915->drm, "Store pairing info failed. %d\n",
+		drm_dbg_kms(display->drm, "Store pairing info failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1311,24 +1313,24 @@ hdcp2_prepare_lc_init(struct intel_connector *connector,
 		      struct hdcp2_lc_init *lc_init)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	arbiter = i915->display.hdcp.arbiter;
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->initiate_locality_check(arbiter->hdcp_dev, data, lc_init);
 	if (ret < 0)
-		drm_dbg_kms(&i915->drm, "Prepare lc_init failed. %d\n",
+		drm_dbg_kms(display->drm, "Prepare lc_init failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1338,24 +1340,24 @@ hdcp2_verify_lprime(struct intel_connector *connector,
 		    struct hdcp2_lc_send_lprime *rx_lprime)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	arbiter = i915->display.hdcp.arbiter;
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->verify_lprime(arbiter->hdcp_dev, data, rx_lprime);
 	if (ret < 0)
-		drm_dbg_kms(&i915->drm, "Verify L_Prime failed. %d\n",
+		drm_dbg_kms(display->drm, "Verify L_Prime failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1364,24 +1366,24 @@ static int hdcp2_prepare_skey(struct intel_connector *connector,
 			      struct hdcp2_ske_send_eks *ske_data)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	arbiter = i915->display.hdcp.arbiter;
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->get_session_key(arbiter->hdcp_dev, data, ske_data);
 	if (ret < 0)
-		drm_dbg_kms(&i915->drm, "Get session key failed. %d\n",
+		drm_dbg_kms(display->drm, "Get session key failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1393,16 +1395,16 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 				      struct hdcp2_rep_send_ack *rep_send_ack)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	arbiter = i915->display.hdcp.arbiter;
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
@@ -1411,9 +1413,9 @@ hdcp2_verify_rep_topology_prepare_ack(struct intel_connector *connector,
 							    rep_topology,
 							    rep_send_ack);
 	if (ret < 0)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Verify rep topology failed. %d\n", ret);
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1423,23 +1425,23 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 		    struct hdcp2_rep_stream_ready *stream_ready)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	arbiter = i915->display.hdcp.arbiter;
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->verify_mprime(arbiter->hdcp_dev, data, stream_ready);
 	if (ret < 0)
-		drm_dbg_kms(&i915->drm, "Verify mprime failed. %d\n", ret);
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		drm_dbg_kms(display->drm, "Verify mprime failed. %d\n", ret);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1447,24 +1449,24 @@ hdcp2_verify_mprime(struct intel_connector *connector,
 static int hdcp2_authenticate_port(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	arbiter = i915->display.hdcp.arbiter;
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->enable_hdcp_authentication(arbiter->hdcp_dev, data);
 	if (ret < 0)
-		drm_dbg_kms(&i915->drm, "Enable hdcp auth failed. %d\n",
+		drm_dbg_kms(display->drm, "Enable hdcp auth failed. %d\n",
 			    ret);
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1472,21 +1474,21 @@ static int hdcp2_authenticate_port(struct intel_connector *connector)
 static int hdcp2_close_session(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct i915_hdcp_arbiter *arbiter;
 	int ret;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	arbiter = i915->display.hdcp.arbiter;
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	arbiter = display->hdcp.arbiter;
 
 	if (!arbiter || !arbiter->ops) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return -EINVAL;
 	}
 
 	ret = arbiter->ops->close_hdcp_session(arbiter->hdcp_dev,
 					     &dig_port->hdcp_port_data);
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
@@ -1499,7 +1501,7 @@ static int hdcp2_deauthenticate_port(struct intel_connector *connector)
 /* Authentication flow starts from here */
 static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
 		struct hdcp2_ake_init ake_init;
@@ -1531,16 +1533,16 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
 		return ret;
 
 	if (msgs.send_cert.rx_caps[0] != HDCP_2_2_RX_CAPS_VERSION_VAL) {
-		drm_dbg_kms(&i915->drm, "cert.rx_caps dont claim HDCP2.2\n");
+		drm_dbg_kms(display->drm, "cert.rx_caps dont claim HDCP2.2\n");
 		return -EINVAL;
 	}
 
 	hdcp->is_repeater = HDCP_2_2_RX_REPEATER(msgs.send_cert.rx_caps[2]);
 
-	if (drm_hdcp_check_ksvs_revoked(&i915->drm,
+	if (drm_hdcp_check_ksvs_revoked(display->drm,
 					msgs.send_cert.cert_rx.receiver_id,
 					1) > 0) {
-		drm_err(&i915->drm, "Receiver ID is revoked\n");
+		drm_err(display->drm, "Receiver ID is revoked\n");
 		return -EPERM;
 	}
 
@@ -1692,7 +1694,7 @@ static
 int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	union {
 		struct hdcp2_rep_send_receiverid_list recvid_list;
@@ -1712,7 +1714,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 
 	if (HDCP_2_2_MAX_CASCADE_EXCEEDED(rx_info[1]) ||
 	    HDCP_2_2_MAX_DEVS_EXCEEDED(rx_info[1])) {
-		drm_dbg_kms(&i915->drm, "Topology Max Size Exceeded\n");
+		drm_dbg_kms(display->drm, "Topology Max Size Exceeded\n");
 		return -EINVAL;
 	}
 
@@ -1725,7 +1727,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 		!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]);
 
 	if (!dig_port->hdcp_mst_type1_capable && hdcp->content_type) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "HDCP1.x or 2.0 Legacy Device Downstream\n");
 		return -EINVAL;
 	}
@@ -1735,23 +1737,23 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 		drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
 
 	if (!hdcp->hdcp2_encrypted && seq_num_v) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Non zero Seq_num_v at first RecvId_List msg\n");
 		return -EINVAL;
 	}
 
 	if (seq_num_v < hdcp->seq_num_v) {
 		/* Roll over of the seq_num_v from repeater. Reauthenticate. */
-		drm_dbg_kms(&i915->drm, "Seq_num_v roll over.\n");
+		drm_dbg_kms(display->drm, "Seq_num_v roll over.\n");
 		return -EINVAL;
 	}
 
 	device_cnt = (HDCP_2_2_DEV_COUNT_HI(rx_info[0]) << 4 |
 		      HDCP_2_2_DEV_COUNT_LO(rx_info[1]));
-	if (drm_hdcp_check_ksvs_revoked(&i915->drm,
+	if (drm_hdcp_check_ksvs_revoked(display->drm,
 					msgs.recvid_list.receiver_ids,
 					device_cnt) > 0) {
-		drm_err(&i915->drm, "Revoked receiver ID(s) is in list\n");
+		drm_err(display->drm, "Revoked receiver ID(s) is in list\n");
 		return -EPERM;
 	}
 
@@ -1772,27 +1774,27 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
 
 static int hdcp2_authenticate_sink(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	const struct intel_hdcp_shim *shim = hdcp->shim;
 	int ret;
 
 	ret = hdcp2_authentication_key_exchange(connector);
 	if (ret < 0) {
-		drm_dbg_kms(&i915->drm, "AKE Failed. Err : %d\n", ret);
+		drm_dbg_kms(display->drm, "AKE Failed. Err : %d\n", ret);
 		return ret;
 	}
 
 	ret = hdcp2_locality_check(connector);
 	if (ret < 0) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Locality Check failed. Err : %d\n", ret);
 		return ret;
 	}
 
 	ret = hdcp2_session_key_exchange(connector);
 	if (ret < 0) {
-		drm_dbg_kms(&i915->drm, "SKE Failed. Err : %d\n", ret);
+		drm_dbg_kms(display->drm, "SKE Failed. Err : %d\n", ret);
 		return ret;
 	}
 
@@ -1807,7 +1809,7 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 	if (hdcp->is_repeater) {
 		ret = hdcp2_authenticate_repeater_topology(connector);
 		if (ret < 0) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Repeater Auth Failed. Err: %d\n", ret);
 			return ret;
 		}
@@ -1819,16 +1821,16 @@ static int hdcp2_authenticate_sink(struct intel_connector *connector)
 static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	enum port port = dig_port->base.port;
 	int ret = 0;
 
-	if (!(intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)) &
+	if (!(intel_de_read(display, HDCP2_STATUS(display, cpu_transcoder, port)) &
 			    LINK_ENCRYPTION_STATUS)) {
-		drm_err(&i915->drm, "[CONNECTOR:%d:%s] HDCP 2.2 Link is not encrypted\n",
+		drm_err(display->drm, "[CONNECTOR:%d:%s] HDCP 2.2 Link is not encrypted\n",
 			connector->base.base.id, connector->base.name);
 		ret = -EPERM;
 		goto link_recover;
@@ -1837,11 +1839,11 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 	if (hdcp->shim->stream_2_2_encryption) {
 		ret = hdcp->shim->stream_2_2_encryption(connector, true);
 		if (ret) {
-			drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to enable HDCP 2.2 stream enc\n",
+			drm_err(display->drm, "[CONNECTOR:%d:%s] Failed to enable HDCP 2.2 stream enc\n",
 				connector->base.base.id, connector->base.name);
 			return ret;
 		}
-		drm_dbg_kms(&i915->drm, "HDCP 2.2 transcoder: %s stream encrypted\n",
+		drm_dbg_kms(display->drm, "HDCP 2.2 transcoder: %s stream encrypted\n",
 			    transcoder_name(hdcp->stream_transcoder));
 	}
 
@@ -1849,7 +1851,7 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 
 link_recover:
 	if (hdcp2_deauthenticate_port(connector) < 0)
-		drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
+		drm_dbg_kms(display->drm, "Port deauth failed.\n");
 
 	dig_port->hdcp_auth_status = false;
 	data->k = 0;
@@ -1860,34 +1862,34 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
 static int hdcp2_enable_encryption(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	int ret;
 
-	drm_WARN_ON(&i915->drm,
-		    intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)) &
+	drm_WARN_ON(display->drm,
+		    intel_de_read(display, HDCP2_STATUS(display, cpu_transcoder, port)) &
 		    LINK_ENCRYPTION_STATUS);
 	if (hdcp->shim->toggle_signalling) {
 		ret = hdcp->shim->toggle_signalling(dig_port, cpu_transcoder,
 						    true);
 		if (ret) {
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"Failed to enable HDCP signalling. %d\n",
 				ret);
 			return ret;
 		}
 	}
 
-	if (intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)) &
+	if (intel_de_read(display, HDCP2_STATUS(display, cpu_transcoder, port)) &
 	    LINK_AUTH_STATUS)
 		/* Link is Authenticated. Now set for Encryption */
-		intel_de_rmw(i915, HDCP2_CTL(i915, cpu_transcoder, port),
+		intel_de_rmw(display, HDCP2_CTL(display, cpu_transcoder, port),
 			     0, CTL_LINK_ENCRYPTION_REQ);
 
-	ret = intel_de_wait_for_set(i915,
-				    HDCP2_STATUS(i915, cpu_transcoder,
+	ret = intel_de_wait_for_set(display,
+				    HDCP2_STATUS(display, cpu_transcoder,
 						 port),
 				    LINK_ENCRYPTION_STATUS,
 				    HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
@@ -1899,31 +1901,32 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
 static int hdcp2_disable_encryption(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->cpu_transcoder;
 	int ret;
 
-	drm_WARN_ON(&i915->drm, !(intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)) &
-				      LINK_ENCRYPTION_STATUS));
+	drm_WARN_ON(display->drm,
+		    !(intel_de_read(display, HDCP2_STATUS(display, cpu_transcoder, port)) &
+				    LINK_ENCRYPTION_STATUS));
 
-	intel_de_rmw(i915, HDCP2_CTL(i915, cpu_transcoder, port),
+	intel_de_rmw(display, HDCP2_CTL(display, cpu_transcoder, port),
 		     CTL_LINK_ENCRYPTION_REQ, 0);
 
-	ret = intel_de_wait_for_clear(i915,
-				      HDCP2_STATUS(i915, cpu_transcoder,
+	ret = intel_de_wait_for_clear(display,
+				      HDCP2_STATUS(display, cpu_transcoder,
 						   port),
 				      LINK_ENCRYPTION_STATUS,
 				      HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS);
 	if (ret == -ETIMEDOUT)
-		drm_dbg_kms(&i915->drm, "Disable Encryption Timedout");
+		drm_dbg_kms(display->drm, "Disable Encryption Timedout");
 
 	if (hdcp->shim->toggle_signalling) {
 		ret = hdcp->shim->toggle_signalling(dig_port, cpu_transcoder,
 						    false);
 		if (ret) {
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"Failed to disable HDCP signalling. %d\n",
 				ret);
 			return ret;
@@ -1936,7 +1939,7 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
 static int
 hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	int i, tries = 3, ret;
 
 	if (!connector->hdcp.is_repeater)
@@ -1949,12 +1952,12 @@ hdcp2_propagate_stream_management_info(struct intel_connector *connector)
 
 		/* Lets restart the auth incase of seq_num_m roll over */
 		if (connector->hdcp.seq_num_m > HDCP_2_2_SEQ_NUM_MAX) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "seq_num_m roll over.(%d)\n", ret);
 			break;
 		}
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "HDCP2 stream management %d of %d Failed.(%d)\n",
 			    i + 1, tries, ret);
 	}
@@ -1966,7 +1969,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
 					  struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	int ret = 0, i, tries = 3;
 
 	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
@@ -1974,7 +1977,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
 		if (!ret) {
 			ret = intel_hdcp_prepare_streams(state, connector);
 			if (ret) {
-				drm_dbg_kms(&i915->drm,
+				drm_dbg_kms(display->drm,
 					    "Prepare stream failed.(%d)\n",
 					    ret);
 				break;
@@ -1982,7 +1985,7 @@ static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
 
 			ret = hdcp2_propagate_stream_management_info(connector);
 			if (ret) {
-				drm_dbg_kms(&i915->drm,
+				drm_dbg_kms(display->drm,
 					    "Stream management failed.(%d)\n",
 					    ret);
 				break;
@@ -1991,15 +1994,15 @@ static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
 			ret = hdcp2_authenticate_port(connector);
 			if (!ret)
 				break;
-			drm_dbg_kms(&i915->drm, "HDCP2 port auth failed.(%d)\n",
+			drm_dbg_kms(display->drm, "HDCP2 port auth failed.(%d)\n",
 				    ret);
 		}
 
 		/* Clearing the mei hdcp session */
-		drm_dbg_kms(&i915->drm, "HDCP2.2 Auth %d of %d Failed.(%d)\n",
+		drm_dbg_kms(display->drm, "HDCP2.2 Auth %d of %d Failed.(%d)\n",
 			    i + 1, tries, ret);
 		if (hdcp2_deauthenticate_port(connector) < 0)
-			drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
+			drm_dbg_kms(display->drm, "Port deauth failed.\n");
 	}
 
 	if (!ret && !dig_port->hdcp_auth_status) {
@@ -2010,10 +2013,10 @@ static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
 		msleep(HDCP_2_2_DELAY_BEFORE_ENCRYPTION_EN);
 		ret = hdcp2_enable_encryption(connector);
 		if (ret < 0) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Encryption Enable Failed.(%d)\n", ret);
 			if (hdcp2_deauthenticate_port(connector) < 0)
-				drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
+				drm_dbg_kms(display->drm, "Port deauth failed.\n");
 		}
 	}
 
@@ -2026,11 +2029,11 @@ static int hdcp2_authenticate_and_encrypt(struct intel_atomic_state *state,
 static int _intel_hdcp2_enable(struct intel_atomic_state *state,
 			       struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] HDCP2.2 is being enabled. Type: %d\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] HDCP2.2 is being enabled. Type: %d\n",
 		    connector->base.base.id, connector->base.name,
 		    hdcp->content_type);
 
@@ -2038,12 +2041,12 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *state,
 
 	ret = hdcp2_authenticate_and_encrypt(state, connector);
 	if (ret) {
-		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
+		drm_dbg_kms(display->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
 			    hdcp->content_type, ret);
 		return ret;
 	}
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] HDCP2.2 is enabled. Type %d\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] HDCP2.2 is enabled. Type %d\n",
 		    connector->base.base.id, connector->base.name,
 		    hdcp->content_type);
 
@@ -2055,22 +2058,22 @@ static int
 _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] HDCP2.2 is being Disabled\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] HDCP2.2 is being Disabled\n",
 		    connector->base.base.id, connector->base.name);
 
 	if (hdcp->shim->stream_2_2_encryption) {
 		ret = hdcp->shim->stream_2_2_encryption(connector, false);
 		if (ret) {
-			drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to disable HDCP 2.2 stream enc\n",
+			drm_err(display->drm, "[CONNECTOR:%d:%s] Failed to disable HDCP 2.2 stream enc\n",
 				connector->base.base.id, connector->base.name);
 			return ret;
 		}
-		drm_dbg_kms(&i915->drm, "HDCP 2.2 transcoder: %s stream encryption disabled\n",
+		drm_dbg_kms(display->drm, "HDCP 2.2 transcoder: %s stream encryption disabled\n",
 			    transcoder_name(hdcp->stream_transcoder));
 
 		if (dig_port->num_hdcp_streams > 0 && !hdcp2_link_recovery)
@@ -2080,7 +2083,7 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
 	ret = hdcp2_disable_encryption(connector);
 
 	if (hdcp2_deauthenticate_port(connector) < 0)
-		drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
+		drm_dbg_kms(display->drm, "Port deauth failed.\n");
 
 	connector->hdcp.hdcp2_encrypted = false;
 	dig_port->hdcp_auth_status = false;
@@ -2093,7 +2096,7 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
 static int intel_hdcp2_check_link(struct intel_connector *connector)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder;
@@ -2110,11 +2113,11 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 		goto out;
 	}
 
-	if (drm_WARN_ON(&i915->drm,
-			!intel_hdcp2_in_use(i915, cpu_transcoder, port))) {
-		drm_err(&i915->drm,
+	if (drm_WARN_ON(display->drm,
+			!intel_hdcp2_in_use(display, cpu_transcoder, port))) {
+		drm_err(display->drm,
 			"HDCP2.2 link stopped the encryption, %x\n",
-			intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)));
+			intel_de_read(display, HDCP2_STATUS(display, cpu_transcoder, port)));
 		ret = -ENXIO;
 		_intel_hdcp2_disable(connector, true);
 		intel_hdcp_update_value(connector,
@@ -2137,17 +2140,17 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
 		if (hdcp->value == DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
 			goto out;
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "HDCP2.2 Downstream topology change\n");
 	} else {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CONNECTOR:%d:%s] HDCP2.2 link failed, retrying auth\n",
 			    connector->base.base.id, connector->base.name);
 	}
 
 	ret = _intel_hdcp2_disable(connector, true);
 	if (ret) {
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"[CONNECTOR:%d:%s] Failed to disable hdcp2.2 (%d)\n",
 			connector->base.base.id, connector->base.name, ret);
 		intel_hdcp_update_value(connector,
@@ -2186,13 +2189,12 @@ static int i915_hdcp_component_bind(struct device *drv_kdev,
 				    struct device *mei_kdev, void *data)
 {
 	struct intel_display *display = to_intel_display(drv_kdev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	drm_dbg(&i915->drm, "I915 HDCP comp bind\n");
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	i915->display.hdcp.arbiter = (struct i915_hdcp_arbiter *)data;
-	i915->display.hdcp.arbiter->hdcp_dev = mei_kdev;
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	drm_dbg(display->drm, "I915 HDCP comp bind\n");
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	display->hdcp.arbiter = (struct i915_hdcp_arbiter *)data;
+	display->hdcp.arbiter->hdcp_dev = mei_kdev;
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return 0;
 }
@@ -2201,12 +2203,11 @@ static void i915_hdcp_component_unbind(struct device *drv_kdev,
 				       struct device *mei_kdev, void *data)
 {
 	struct intel_display *display = to_intel_display(drv_kdev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	drm_dbg(&i915->drm, "I915 HDCP comp unbind\n");
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	i915->display.hdcp.arbiter = NULL;
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	drm_dbg(display->drm, "I915 HDCP comp unbind\n");
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	display->hdcp.arbiter = NULL;
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 }
 
 static const struct component_ops i915_hdcp_ops = {
@@ -2240,11 +2241,11 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 				     struct intel_digital_port *dig_port,
 				     const struct intel_hdcp_shim *shim)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	enum port port = dig_port->base.port;
 
-	if (DISPLAY_VER(i915) < 12)
+	if (DISPLAY_VER(display) < 12)
 		data->hdcp_ddi = intel_get_hdcp_ddi_index(port);
 	else
 		/*
@@ -2264,11 +2265,11 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 	data->protocol = (u8)shim->protocol;
 
 	if (!data->streams)
-		data->streams = kcalloc(INTEL_NUM_PIPES(i915),
+		data->streams = kcalloc(INTEL_NUM_PIPES(display),
 					sizeof(struct hdcp2_streamid_type),
 					GFP_KERNEL);
 	if (!data->streams) {
-		drm_err(&i915->drm, "Out of Memory\n");
+		drm_err(display->drm, "Out of Memory\n");
 		return -ENOMEM;
 	}
 
@@ -2277,13 +2278,15 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 
 static bool is_hdcp2_supported(struct drm_i915_private *i915)
 {
-	if (intel_hdcp_gsc_cs_required(i915))
+	struct intel_display *display = to_intel_display(&i915->drm);
+
+	if (intel_hdcp_gsc_cs_required(display))
 		return true;
 
 	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
 		return false;
 
-	return (DISPLAY_VER(i915) >= 10 ||
+	return (DISPLAY_VER(display) >= 10 ||
 		IS_KABYLAKE(i915) ||
 		IS_COFFEELAKE(i915) ||
 		IS_COMETLAKE(i915));
@@ -2291,28 +2294,29 @@ static bool is_hdcp2_supported(struct drm_i915_private *i915)
 
 void intel_hdcp_component_init(struct drm_i915_private *i915)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	int ret;
 
 	if (!is_hdcp2_supported(i915))
 		return;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	drm_WARN_ON(&i915->drm, i915->display.hdcp.comp_added);
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	drm_WARN_ON(display->drm, display->hdcp.comp_added);
 
-	i915->display.hdcp.comp_added = true;
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
-	if (intel_hdcp_gsc_cs_required(i915))
+	display->hdcp.comp_added = true;
+	mutex_unlock(&display->hdcp.hdcp_mutex);
+	if (intel_hdcp_gsc_cs_required(display))
 		ret = intel_hdcp_gsc_init(i915);
 	else
-		ret = component_add_typed(i915->drm.dev, &i915_hdcp_ops,
+		ret = component_add_typed(display->drm->dev, &i915_hdcp_ops,
 					  I915_COMPONENT_HDCP);
 
 	if (ret < 0) {
-		drm_dbg_kms(&i915->drm, "Failed at fw component add(%d)\n",
+		drm_dbg_kms(display->drm, "Failed at fw component add(%d)\n",
 			    ret);
-		mutex_lock(&i915->display.hdcp.hdcp_mutex);
-		i915->display.hdcp.comp_added = false;
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+		mutex_lock(&display->hdcp.hdcp_mutex);
+		display->hdcp.comp_added = false;
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return;
 	}
 }
@@ -2321,13 +2325,13 @@ static void intel_hdcp2_init(struct intel_connector *connector,
 			     struct intel_digital_port *dig_port,
 			     const struct intel_hdcp_shim *shim)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
 	ret = initialize_hdcp_port_data(connector, dig_port, shim);
 	if (ret) {
-		drm_dbg_kms(&i915->drm, "Mei hdcp data init failed\n");
+		drm_dbg_kms(display->drm, "Mei hdcp data init failed\n");
 		return;
 	}
 
@@ -2374,6 +2378,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
+	struct intel_display *display = to_intel_display(connector->base.dev);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	unsigned long check_link_interval = DRM_HDCP_CHECK_PERIOD_MS;
@@ -2383,14 +2388,14 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 		return -ENOENT;
 
 	if (!connector->encoder) {
-		drm_err(&i915->drm, "[CONNECTOR:%d:%s] encoder is not initialized\n",
+		drm_err(display->drm, "[CONNECTOR:%d:%s] encoder is not initialized\n",
 			connector->base.base.id, connector->base.name);
 		return -ENODEV;
 	}
 
 	mutex_lock(&hdcp->mutex);
 	mutex_lock(&dig_port->hdcp_mutex);
-	drm_WARN_ON(&i915->drm,
+	drm_WARN_ON(display->drm,
 		    hdcp->value == DRM_MODE_CONTENT_PROTECTION_ENABLED);
 	hdcp->content_type = (u8)conn_state->hdcp_content_type;
 
@@ -2552,19 +2557,21 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 
 void intel_hdcp_component_fini(struct drm_i915_private *i915)
 {
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	if (!i915->display.hdcp.comp_added) {
-		mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	struct intel_display *display = to_intel_display(&i915->drm);
+
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	if (!display->hdcp.comp_added) {
+		mutex_unlock(&display->hdcp.hdcp_mutex);
 		return;
 	}
 
-	i915->display.hdcp.comp_added = false;
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	display->hdcp.comp_added = false;
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
-	if (intel_hdcp_gsc_cs_required(i915))
+	if (intel_hdcp_gsc_cs_required(display))
 		intel_hdcp_gsc_fini(i915);
 	else
-		component_del(i915->drm.dev, &i915_hdcp_ops);
+		component_del(display->drm->dev, &i915_hdcp_ops);
 }
 
 void intel_hdcp_cleanup(struct intel_connector *connector)
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 16afeb8a3a8d..dc5cc1d54c85 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -19,18 +19,19 @@ struct intel_hdcp_gsc_message {
 	void *hdcp_cmd_out;
 };
 
-bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
+bool intel_hdcp_gsc_cs_required(struct intel_display *display)
 {
-	return DISPLAY_VER(i915) >= 14;
+	return DISPLAY_VER(display) >= 14;
 }
 
-bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915)
+bool intel_hdcp_gsc_check_status(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_gt *gt = i915->media_gt;
 	struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
 
 	if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "GSC components required for HDCP2.2 are not ready\n");
 		return false;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index 5f610df61cc9..b6aabd855478 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -10,14 +10,15 @@
 #include <linux/types.h>
 
 struct drm_i915_private;
+struct intel_display;
 struct intel_hdcp_gsc_message;
 
-bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);
+bool intel_hdcp_gsc_cs_required(struct intel_display *display);
 ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 				size_t msg_in_len, u8 *msg_out,
 				size_t msg_out_len);
 int intel_hdcp_gsc_init(struct drm_i915_private *i915);
 void intel_hdcp_gsc_fini(struct drm_i915_private *i915);
-bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915);
+bool intel_hdcp_gsc_check_status(struct intel_display *display);
 
 #endif /* __INTEL_HDCP_GCS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
index ce199d6f6232..2d597f27e931 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
@@ -22,11 +22,12 @@ struct hdcp2_ske_send_eks;
 struct hdcp2_rep_send_receiverid_list;
 struct hdcp2_rep_send_ack;
 struct hdcp2_rep_stream_ready;
+struct intel_display;
 
 ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 				size_t msg_in_len, u8 *msg_out,
 				size_t msg_out_len);
-bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915);
+bool intel_hdcp_gsc_check_status(struct intel_display *display);
 int
 intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
 				struct hdcp2_ake_init *ake_data);
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 6619a40aed15..5badf90b26de 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -30,13 +30,14 @@ struct intel_hdcp_gsc_message {
 
 #define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
 
-bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
+bool intel_hdcp_gsc_cs_required(struct intel_display *display)
 {
-	return DISPLAY_VER(xe) >= 14;
+	return DISPLAY_VER(display) >= 14;
 }
 
-bool intel_hdcp_gsc_check_status(struct xe_device *xe)
+bool intel_hdcp_gsc_check_status(struct intel_display *display)
 {
+	struct xe_device *xe = to_xe_device(display->drm);
 	struct xe_tile *tile = xe_device_get_root_tile(xe);
 	struct xe_gt *gt = tile->media_gt;
 	struct xe_gsc *gsc = &gt->uc.gsc;
-- 
2.43.2

