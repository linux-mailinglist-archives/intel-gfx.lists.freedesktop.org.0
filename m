Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE86E974DFC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 11:08:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B065B10E934;
	Wed, 11 Sep 2024 09:08:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LYN4hTO0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F3D10E934;
 Wed, 11 Sep 2024 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726045734; x=1757581734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qRVE2I1MRP6nTjriTWfIronmK4PBBFR3ja86HfvUSLY=;
 b=LYN4hTO0EI9bA9rxF7ILnz7CmRO2TiAgn145lsnM2aSO+Mp1CvQ+afL5
 /b02Mz5rTPh7Um4BNJLEYPyA3yebl1ugnYxVHI2As13CBjtop1yoHk+gF
 wOkFh2+gep3UcPXXlboK6C61UTbYQ1RE/UGDVwBQweZfHBG93LXyHTNz/
 ENaonujgx5+J1C6w/cKacz1sEKDXG9TAVf2B9JrJb6p6pRgXxiAcLYIxk
 nm9lWoh5G8Ap8/S5edIoF5aoEwjJc3imzHY7Ok/ylkrm72GbhtSW44pHd
 Z890Nv2J62lzbTGeZ3yS9hQXace++AE4JLpfifAT7xkDOl0q8ROR+LAjr w==;
X-CSE-ConnectionGUID: ckBMp4qHR7CBee3QQqMccA==
X-CSE-MsgGUID: fQpoAMhdStKVPBjU9s6kzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="50245715"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="50245715"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 02:08:53 -0700
X-CSE-ConnectionGUID: KgRwUfHkSqaMn8vXwKnsQw==
X-CSE-MsgGUID: nJ51VZw3TT2doEYbEAdt6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="67253329"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 11 Sep 2024 02:08:51 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hdcp: Use intel_display in hdcp_gsc
Date: Wed, 11 Sep 2024 14:35:40 +0530
Message-ID: <20240911090540.643155-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240911090540.643155-1-suraj.kandpal@intel.com>
References: <20240911090540.643155-1-suraj.kandpal@intel.com>
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

Use intel_display structure instead of drm_i915_private wherever
possible in hdcp_gsc related files.

--v2
-make intel_hdcp_gsc_hdcp2_init accept intel_display [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 31 ++++++-------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  4 +-
 .../drm/i915/display/intel_hdcp_gsc_message.c | 44 +++++++++----------
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 37 ++++++++--------
 5 files changed, 61 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index b964af7425cf..2afa92321b08 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2307,7 +2307,7 @@ void intel_hdcp_component_init(struct drm_i915_private *i915)
 	display->hdcp.comp_added = true;
 	mutex_unlock(&display->hdcp.hdcp_mutex);
 	if (intel_hdcp_gsc_cs_required(display))
-		ret = intel_hdcp_gsc_init(i915);
+		ret = intel_hdcp_gsc_init(display);
 	else
 		ret = component_add_typed(display->drm->dev, &i915_hdcp_ops,
 					  I915_COMPONENT_HDCP);
@@ -2570,7 +2570,7 @@ void intel_hdcp_component_fini(struct drm_i915_private *i915)
 	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	if (intel_hdcp_gsc_cs_required(display))
-		intel_hdcp_gsc_fini(i915);
+		intel_hdcp_gsc_fini(display);
 	else
 		component_del(display->drm->dev, &i915_hdcp_ops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index dc5cc1d54c85..55965844d829 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -107,8 +107,9 @@ static const struct i915_hdcp_ops gsc_hdcp_ops = {
 	.close_hdcp_session = intel_hdcp_gsc_close_session,
 };
 
-static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
+static int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_hdcp_gsc_message *hdcp_message;
 	int ret;
 
@@ -121,19 +122,19 @@ static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
 	 * NOTE: No need to lock the comp mutex here as it is already
 	 * going to be taken before this function called
 	 */
-	i915->display.hdcp.hdcp_message = hdcp_message;
+	display->hdcp.hdcp_message = hdcp_message;
 	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message);
 
 	if (ret)
-		drm_err(&i915->drm, "Could not initialize hdcp_message\n");
+		drm_err(display->drm, "Could not initialize hdcp_message\n");
 
 	return ret;
 }
 
-static void intel_hdcp_gsc_free_message(struct drm_i915_private *i915)
+static void intel_hdcp_gsc_free_message(struct intel_display *display)
 {
 	struct intel_hdcp_gsc_message *hdcp_message =
-					i915->display.hdcp.hdcp_message;
+					display->hdcp.hdcp_message;
 
 	hdcp_message->hdcp_cmd_in = NULL;
 	hdcp_message->hdcp_cmd_out = NULL;
@@ -141,7 +142,7 @@ static void intel_hdcp_gsc_free_message(struct drm_i915_private *i915)
 	kfree(hdcp_message);
 }
 
-int intel_hdcp_gsc_init(struct drm_i915_private *i915)
+int intel_hdcp_gsc_init(struct intel_display *display)
 {
 	struct i915_hdcp_arbiter *data;
 	int ret;
@@ -150,20 +151,20 @@ int intel_hdcp_gsc_init(struct drm_i915_private *i915)
 	if (!data)
 		return -ENOMEM;
 
-	mutex_lock(&i915->display.hdcp.hdcp_mutex);
-	i915->display.hdcp.arbiter = data;
-	i915->display.hdcp.arbiter->hdcp_dev = i915->drm.dev;
-	i915->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
-	ret = intel_hdcp_gsc_hdcp2_init(i915);
-	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	display->hdcp.arbiter = data;
+	display->hdcp.arbiter->hdcp_dev = display->drm->dev;
+	display->hdcp.arbiter->ops = &gsc_hdcp_ops;
+	ret = intel_hdcp_gsc_hdcp2_init(display);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
 
-void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
+void intel_hdcp_gsc_fini(struct intel_display *display)
 {
-	intel_hdcp_gsc_free_message(i915);
-	kfree(i915->display.hdcp.arbiter);
+	intel_hdcp_gsc_free_message(display);
+	kfree(display->hdcp.arbiter);
 }
 
 static int intel_gsc_send_sync(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index b6aabd855478..5695a5e4f609 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -17,8 +17,8 @@ bool intel_hdcp_gsc_cs_required(struct intel_display *display);
 ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 				size_t msg_in_len, u8 *msg_out,
 				size_t msg_out_len);
-int intel_hdcp_gsc_init(struct drm_i915_private *i915);
-void intel_hdcp_gsc_fini(struct drm_i915_private *i915);
+int intel_hdcp_gsc_init(struct intel_display *display);
+void intel_hdcp_gsc_fini(struct intel_display *display);
 bool intel_hdcp_gsc_check_status(struct intel_display *display);
 
 #endif /* __INTEL_HDCP_GCS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index 35bdb532bbb3..129104fa9b16 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -46,12 +46,12 @@ intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
 				       (u8 *)&session_init_out,
 				       sizeof(session_init_out));
 	if (byte < 0) {
-		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
 	}
 
 	if (session_init_out.header.status != FW_HDCP_STATUS_SUCCESS) {
-		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
+		drm_dbg_kms(display->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
 			    WIRED_INITIATE_HDCP2_SESSION,
 			    session_init_out.header.status);
 		return -EIO;
@@ -108,12 +108,12 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
 				       (u8 *)&verify_rxcert_out,
 				       sizeof(verify_rxcert_out));
 	if (byte < 0) {
-		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed: %zd\n", byte);
+		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed: %zd\n", byte);
 		return byte;
 	}
 
 	if (verify_rxcert_out.header.status != FW_HDCP_STATUS_SUCCESS) {
-		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
+		drm_dbg_kms(display->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
 			    WIRED_VERIFY_RECEIVER_CERT,
 			    verify_rxcert_out.header.status);
 		return -EIO;
@@ -171,12 +171,12 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 				       (u8 *)&send_hprime_out,
 				       sizeof(send_hprime_out));
 	if (byte < 0) {
-		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
 	}
 
 	if (send_hprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
-		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
+		drm_dbg_kms(display->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
 			    WIRED_AKE_SEND_HPRIME, send_hprime_out.header.status);
 		return -EIO;
 	}
@@ -222,12 +222,12 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *dat
 				       (u8 *)&pairing_info_out,
 				       sizeof(pairing_info_out));
 	if (byte < 0) {
-		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
 	}
 
 	if (pairing_info_out.header.status != FW_HDCP_STATUS_SUCCESS) {
-		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. Status: 0x%X\n",
+		drm_dbg_kms(display->drm, "FW cmd 0x%08X failed. Status: 0x%X\n",
 			    WIRED_AKE_SEND_PAIRING_INFO,
 			    pairing_info_out.header.status);
 		return -EIO;
@@ -269,12 +269,12 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev,
 	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&lc_init_in, sizeof(lc_init_in),
 				       (u8 *)&lc_init_out, sizeof(lc_init_out));
 	if (byte < 0) {
-		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
 	}
 
 	if (lc_init_out.header.status != FW_HDCP_STATUS_SUCCESS) {
-		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. status: 0x%X\n",
+		drm_dbg_kms(display->drm, "FW cmd 0x%08X Failed. status: 0x%X\n",
 			    WIRED_INIT_LOCALITY_CHECK, lc_init_out.header.status);
 		return -EIO;
 	}
@@ -323,12 +323,12 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 				       (u8 *)&verify_lprime_out,
 				       sizeof(verify_lprime_out));
 	if (byte < 0) {
-		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
 	}
 
 	if (verify_lprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
-		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
+		drm_dbg_kms(display->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
 			    WIRED_VALIDATE_LOCALITY,
 			    verify_lprime_out.header.status);
 		return -EIO;
@@ -369,12 +369,12 @@ int intel_hdcp_gsc_get_session_key(struct device *dev,
 	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&get_skey_in, sizeof(get_skey_in),
 				       (u8 *)&get_skey_out, sizeof(get_skey_out));
 	if (byte < 0) {
-		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
 	}
 
 	if (get_skey_out.header.status != FW_HDCP_STATUS_SUCCESS) {
-		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
+		drm_dbg_kms(display->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
 			    WIRED_GET_SESSION_KEY, get_skey_out.header.status);
 		return -EIO;
 	}
@@ -435,12 +435,12 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
 				       (u8 *)&verify_repeater_out,
 				       sizeof(verify_repeater_out));
 	if (byte < 0) {
-		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
 	}
 
 	if (verify_repeater_out.header.status != FW_HDCP_STATUS_SUCCESS) {
-		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
+		drm_dbg_kms(display->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
 			    WIRED_VERIFY_REPEATER,
 			    verify_repeater_out.header.status);
 		return -EIO;
@@ -504,12 +504,12 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
 				       sizeof(verify_mprime_out));
 	kfree(verify_mprime_in);
 	if (byte < 0) {
-		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
 	}
 
 	if (verify_mprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
-		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
+		drm_dbg_kms(display->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
 			    WIRED_REPEATER_AUTH_STREAM_REQ,
 			    verify_mprime_out.header.status);
 		return -EIO;
@@ -552,12 +552,12 @@ int intel_hdcp_gsc_enable_authentication(struct device *dev,
 				       (u8 *)&enable_auth_out,
 				       sizeof(enable_auth_out));
 	if (byte < 0) {
-		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
 	}
 
 	if (enable_auth_out.header.status != FW_HDCP_STATUS_SUCCESS) {
-		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
+		drm_dbg_kms(display->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
 			    WIRED_ENABLE_AUTH, enable_auth_out.header.status);
 		return -EIO;
 	}
@@ -599,12 +599,12 @@ intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data)
 				       (u8 *)&session_close_out,
 				       sizeof(session_close_out));
 	if (byte < 0) {
-		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
+		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
 	}
 
 	if (session_close_out.header.status != FW_HDCP_STATUS_SUCCESS) {
-		drm_dbg_kms(&i915->drm, "Session Close Failed. status: 0x%X\n",
+		drm_dbg_kms(display->drm, "Session Close Failed. status: 0x%X\n",
 			    session_close_out.header.status);
 		return -EIO;
 	}
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 5badf90b26de..231677129a35 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -67,9 +67,10 @@ bool intel_hdcp_gsc_check_status(struct intel_display *display)
 }
 
 /*This function helps allocate memory for the command that we will send to gsc cs */
-static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
+static int intel_hdcp_gsc_initialize_message(struct intel_display *display,
 					     struct intel_hdcp_gsc_message *hdcp_message)
 {
+	struct xe_device *xe = to_xe_device(display->drm);
 	struct xe_bo *bo = NULL;
 	u64 cmd_in, cmd_out;
 	int ret = 0;
@@ -81,7 +82,7 @@ static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
 				  XE_BO_FLAG_GGTT);
 
 	if (IS_ERR(bo)) {
-		drm_err(&xe->drm, "Failed to allocate bo for HDCP streaming command!\n");
+		drm_err(display->drm, "Failed to allocate bo for HDCP streaming command!\n");
 		ret = PTR_ERR(bo);
 		goto out;
 	}
@@ -97,7 +98,7 @@ static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
 	return ret;
 }
 
-static int intel_hdcp_gsc_hdcp2_init(struct xe_device *xe)
+static int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
 {
 	struct intel_hdcp_gsc_message *hdcp_message;
 	int ret;
@@ -111,14 +112,14 @@ static int intel_hdcp_gsc_hdcp2_init(struct xe_device *xe)
 	 * NOTE: No need to lock the comp mutex here as it is already
 	 * going to be taken before this function called
 	 */
-	ret = intel_hdcp_gsc_initialize_message(xe, hdcp_message);
+	ret = intel_hdcp_gsc_initialize_message(display, hdcp_message);
 	if (ret) {
-		drm_err(&xe->drm, "Could not initialize hdcp_message\n");
+		drm_err(display->drm, "Could not initialize hdcp_message\n");
 		kfree(hdcp_message);
 		return ret;
 	}
 
-	xe->display.hdcp.hdcp_message = hdcp_message;
+	display->hdcp.hdcp_message = hdcp_message;
 	return ret;
 }
 
@@ -138,7 +139,7 @@ static const struct i915_hdcp_ops gsc_hdcp_ops = {
 	.close_hdcp_session = intel_hdcp_gsc_close_session,
 };
 
-int intel_hdcp_gsc_init(struct xe_device *xe)
+int intel_hdcp_gsc_init(struct intel_display *display)
 {
 	struct i915_hdcp_arbiter *data;
 	int ret;
@@ -147,33 +148,33 @@ int intel_hdcp_gsc_init(struct xe_device *xe)
 	if (!data)
 		return -ENOMEM;
 
-	mutex_lock(&xe->display.hdcp.hdcp_mutex);
-	xe->display.hdcp.arbiter = data;
-	xe->display.hdcp.arbiter->hdcp_dev = xe->drm.dev;
-	xe->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
-	ret = intel_hdcp_gsc_hdcp2_init(xe);
+	mutex_lock(&display->hdcp.hdcp_mutex);
+	display->hdcp.arbiter = data;
+	display->hdcp.arbiter->hdcp_dev = display->drm->dev;
+	display->hdcp.arbiter->ops = &gsc_hdcp_ops;
+	ret = intel_hdcp_gsc_hdcp2_init(display);
 	if (ret)
 		kfree(data);
 
-	mutex_unlock(&xe->display.hdcp.hdcp_mutex);
+	mutex_unlock(&display->hdcp.hdcp_mutex);
 
 	return ret;
 }
 
-void intel_hdcp_gsc_fini(struct xe_device *xe)
+void intel_hdcp_gsc_fini(struct intel_display *display)
 {
 	struct intel_hdcp_gsc_message *hdcp_message =
-					xe->display.hdcp.hdcp_message;
-	struct i915_hdcp_arbiter *arb = xe->display.hdcp.arbiter;
+					display->hdcp.hdcp_message;
+	struct i915_hdcp_arbiter *arb = display->hdcp.arbiter;
 
 	if (hdcp_message) {
 		xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
 		kfree(hdcp_message);
-		xe->display.hdcp.hdcp_message = NULL;
+		display->hdcp.hdcp_message = NULL;
 	}
 
 	kfree(arb);
-	xe->display.hdcp.arbiter = NULL;
+	display->hdcp.arbiter = NULL;
 }
 
 static int xe_gsc_send_sync(struct xe_device *xe,
-- 
2.43.2

