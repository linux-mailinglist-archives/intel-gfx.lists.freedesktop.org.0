Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D29F3A9B8B2
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 22:02:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58E6510E86F;
	Thu, 24 Apr 2025 20:02:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TGaV3qBN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE3C10E86D;
 Thu, 24 Apr 2025 20:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745524941; x=1777060941;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UN1MANm6YdXPv4O17f9XQN4CWQ0hcyMvSscKj/Cd75I=;
 b=TGaV3qBNwVzXAvckUOtAdaJofuxhy83/cU3FKDEzt6v9RZNJwe4rSE08
 KvyIjZ/oLoOi2wD1Y8VpfVqT/5WYhuiZgcugTzeDynYEo6uIUneqf1J64
 uBT2MozO4/E5Jph/d5HpAZWd8a2aSywTJwIuO7egetp1mtctTo23BzJXP
 beEHWufQG3xE1/AKkg/lKecgo0HLr6F3u05C87DZqpEIwJtxFU6shDFQg
 YmLW8G3Pmn2fAP2dRnx8jLGLBPfrCbZtNcX/MkOIIUyi+HyrzmO7JGU24
 A+tN6pmIY8Ew2jZ+zPR2vQgMOKWJHYJ73xHzIgX4McDxWM/XcxON6QAiN g==;
X-CSE-ConnectionGUID: J2JEGnvJSd+uIggG+o1EyQ==
X-CSE-MsgGUID: u1vS2LFDTHeG9vGxj/n2rw==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58543425"
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="58543425"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:20 -0700
X-CSE-ConnectionGUID: 0wKXN828T16rn9iNkmZ8UA==
X-CSE-MsgGUID: 1FcXhfYcTYCr+G4GrwP1aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="137788383"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.48])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 06/10] drm/i915/hdcp: pass the context to the HDCP GSC message
 interface
Date: Thu, 24 Apr 2025 23:01:38 +0300
Message-Id: <df1653212f9014e717701b017e78e0017884b870.1745524803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1745524803.git.jani.nikula@intel.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
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

The opaque HDCP GSC context nicely abstracts the differences between
drivers. Pass that instead of struct drm_i915_private or struct
xe_device to intel_hdcp_gsc_msg_send(). We can store the driver specific
data in the context.

This lets us drop the dependency on i915_drv.h from
intel_hdcp_gsc_message.c.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 11 +--
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  7 +-
 .../drm/i915/display/intel_hdcp_gsc_message.c | 70 ++++++++++---------
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 12 ++--
 4 files changed, 52 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index efcd3a4b41ed..77c4df6c6181 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -13,6 +13,7 @@
 #include "intel_hdcp_gsc.h"
 
 struct intel_hdcp_gsc_context {
+	struct drm_i915_private *i915;
 	struct i915_vma *vma;
 	void *hdcp_cmd_in;
 	void *hdcp_cmd_out;
@@ -80,6 +81,7 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 	gsc_context->hdcp_cmd_in = cmd_in;
 	gsc_context->hdcp_cmd_out = cmd_out;
 	gsc_context->vma = vma;
+	gsc_context->i915 = i915;
 
 	return 0;
 
@@ -171,14 +173,14 @@ static int intel_gsc_send_sync(struct drm_i915_private *i915,
  * gsc cs memory header as stated in specs after which the normal HDCP payload
  * will follow
  */
-ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
-				size_t msg_in_len, u8 *msg_out,
-				size_t msg_out_len)
+ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
+				u8 *msg_in, size_t msg_in_len,
+				u8 *msg_out, size_t msg_out_len)
 {
+	struct drm_i915_private *i915 = gsc_context->i915;
 	struct intel_gt *gt = i915->media_gt;
 	struct intel_gsc_mtl_header *header_in, *header_out;
 	const size_t max_msg_size = PAGE_SIZE - sizeof(*header_in);
-	struct intel_hdcp_gsc_context *gsc_context;
 	u64 addr_in, addr_out, host_session_id;
 	u32 reply_size, msg_size_in, msg_size_out;
 	int ret, tries = 0;
@@ -191,7 +193,6 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 
 	msg_size_in = msg_in_len + sizeof(*header_in);
 	msg_size_out = msg_out_len + sizeof(*header_out);
-	gsc_context = i915->display.hdcp.gsc_context;
 	header_in = gsc_context->hdcp_cmd_in;
 	header_out = gsc_context->hdcp_cmd_out;
 	addr_in = i915_ggtt_offset(gsc_context->vma);
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index 227c00a837d8..7133e631a938 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -9,14 +9,13 @@
 #include <linux/err.h>
 #include <linux/types.h>
 
-struct drm_i915_private;
 struct intel_display;
 struct intel_hdcp_gsc_context;
 
 bool intel_hdcp_gsc_cs_required(struct intel_display *display);
-ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
-				size_t msg_in_len, u8 *msg_out,
-				size_t msg_out_len);
+ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
+				u8 *msg_in, size_t msg_in_len,
+				u8 *msg_out, size_t msg_out_len);
 bool intel_hdcp_gsc_check_status(struct intel_display *display);
 
 struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index 92143226858c..d87f61d773ca 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -4,9 +4,11 @@
  */
 
 #include <linux/err.h>
+
+#include <drm/drm_print.h>
 #include <drm/intel/i915_hdcp_interface.h>
 
-#include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_hdcp_gsc.h"
 #include "intel_hdcp_gsc_message.h"
@@ -17,8 +19,8 @@ intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
 {
 	struct wired_cmd_initiate_hdcp2_session_in session_init_in = {};
 	struct wired_cmd_initiate_hdcp2_session_out session_init_out = {};
+	struct intel_hdcp_gsc_context *gsc_context;
 	struct intel_display *display;
-	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !ake_data)
@@ -29,7 +31,7 @@ intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
-	i915 = to_i915(display->drm);
+	gsc_context = display->hdcp.gsc_context;
 
 	session_init_in.header.api_version = HDCP_API_VERSION;
 	session_init_in.header.command_id = WIRED_INITIATE_HDCP2_SESSION;
@@ -42,7 +44,7 @@ intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
 	session_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 	session_init_in.protocol = data->protocol;
 
-	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&session_init_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&session_init_in,
 				       sizeof(session_init_in),
 				       (u8 *)&session_init_out,
 				       sizeof(session_init_out));
@@ -76,8 +78,8 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
 {
 	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in = {};
 	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out = {};
+	struct intel_hdcp_gsc_context *gsc_context;
 	struct intel_display *display;
-	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg_sz)
@@ -88,7 +90,7 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
-	i915 = to_i915(display->drm);
+	gsc_context = display->hdcp.gsc_context;
 
 	verify_rxcert_in.header.api_version = HDCP_API_VERSION;
 	verify_rxcert_in.header.command_id = WIRED_VERIFY_RECEIVER_CERT;
@@ -104,7 +106,7 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
 	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
 	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps, HDCP_2_2_RXCAPS_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_rxcert_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&verify_rxcert_in,
 				       sizeof(verify_rxcert_in),
 				       (u8 *)&verify_rxcert_out,
 				       sizeof(verify_rxcert_out));
@@ -141,8 +143,8 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 {
 	struct wired_cmd_ake_send_hprime_in send_hprime_in = {};
 	struct wired_cmd_ake_send_hprime_out send_hprime_out = {};
+	struct intel_hdcp_gsc_context *gsc_context;
 	struct intel_display *display;
-	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !rx_hprime)
@@ -153,7 +155,7 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
-	i915 = to_i915(display->drm);
+	gsc_context = display->hdcp.gsc_context;
 
 	send_hprime_in.header.api_version = HDCP_API_VERSION;
 	send_hprime_in.header.command_id = WIRED_AKE_SEND_HPRIME;
@@ -167,7 +169,7 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
 	       HDCP_2_2_H_PRIME_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&send_hprime_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&send_hprime_in,
 				       sizeof(send_hprime_in),
 				       (u8 *)&send_hprime_out,
 				       sizeof(send_hprime_out));
@@ -191,8 +193,8 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *dat
 {
 	struct wired_cmd_ake_send_pairing_info_in pairing_info_in = {};
 	struct wired_cmd_ake_send_pairing_info_out pairing_info_out = {};
+	struct intel_hdcp_gsc_context *gsc_context;
 	struct intel_display *display;
-	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !pairing_info)
@@ -203,7 +205,7 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *dat
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
-	i915 = to_i915(display->drm);
+	gsc_context = display->hdcp.gsc_context;
 
 	pairing_info_in.header.api_version = HDCP_API_VERSION;
 	pairing_info_in.header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
@@ -218,7 +220,7 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *dat
 	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
 	       HDCP_2_2_E_KH_KM_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&pairing_info_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&pairing_info_in,
 				       sizeof(pairing_info_in),
 				       (u8 *)&pairing_info_out,
 				       sizeof(pairing_info_out));
@@ -244,8 +246,8 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev,
 {
 	struct wired_cmd_init_locality_check_in lc_init_in = {};
 	struct wired_cmd_init_locality_check_out lc_init_out = {};
+	struct intel_hdcp_gsc_context *gsc_context;
 	struct intel_display *display;
-	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !lc_init_data)
@@ -256,7 +258,7 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev,
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
-	i915 = to_i915(display->drm);
+	gsc_context = display->hdcp.gsc_context;
 
 	lc_init_in.header.api_version = HDCP_API_VERSION;
 	lc_init_in.header.command_id = WIRED_INIT_LOCALITY_CHECK;
@@ -267,7 +269,7 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev,
 	lc_init_in.port.physical_port = (u8)data->hdcp_ddi;
 	lc_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
-	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&lc_init_in, sizeof(lc_init_in),
+	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&lc_init_in, sizeof(lc_init_in),
 				       (u8 *)&lc_init_out, sizeof(lc_init_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
@@ -292,8 +294,8 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 {
 	struct wired_cmd_validate_locality_in verify_lprime_in = {};
 	struct wired_cmd_validate_locality_out verify_lprime_out = {};
+	struct intel_hdcp_gsc_context *gsc_context;
 	struct intel_display *display;
-	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !rx_lprime)
@@ -304,7 +306,7 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
-	i915 = to_i915(display->drm);
+	gsc_context = display->hdcp.gsc_context;
 
 	verify_lprime_in.header.api_version = HDCP_API_VERSION;
 	verify_lprime_in.header.command_id = WIRED_VALIDATE_LOCALITY;
@@ -319,7 +321,7 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
 	       HDCP_2_2_L_PRIME_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_lprime_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&verify_lprime_in,
 				       sizeof(verify_lprime_in),
 				       (u8 *)&verify_lprime_out,
 				       sizeof(verify_lprime_out));
@@ -345,8 +347,8 @@ intel_hdcp_gsc_get_session_key(struct device *dev,
 {
 	struct wired_cmd_get_session_key_in get_skey_in = {};
 	struct wired_cmd_get_session_key_out get_skey_out = {};
+	struct intel_hdcp_gsc_context *gsc_context;
 	struct intel_display *display;
-	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !ske_data)
@@ -357,7 +359,7 @@ intel_hdcp_gsc_get_session_key(struct device *dev,
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
-	i915 = to_i915(display->drm);
+	gsc_context = display->hdcp.gsc_context;
 
 	get_skey_in.header.api_version = HDCP_API_VERSION;
 	get_skey_in.header.command_id = WIRED_GET_SESSION_KEY;
@@ -368,7 +370,7 @@ intel_hdcp_gsc_get_session_key(struct device *dev,
 	get_skey_in.port.physical_port = (u8)data->hdcp_ddi;
 	get_skey_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
-	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&get_skey_in, sizeof(get_skey_in),
+	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&get_skey_in, sizeof(get_skey_in),
 				       (u8 *)&get_skey_out, sizeof(get_skey_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
@@ -399,8 +401,8 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
 {
 	struct wired_cmd_verify_repeater_in verify_repeater_in = {};
 	struct wired_cmd_verify_repeater_out verify_repeater_out = {};
+	struct intel_hdcp_gsc_context *gsc_context;
 	struct intel_display *display;
-	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !rep_topology || !rep_send_ack || !data)
@@ -411,7 +413,7 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
-	i915 = to_i915(display->drm);
+	gsc_context = display->hdcp.gsc_context;
 
 	verify_repeater_in.header.api_version = HDCP_API_VERSION;
 	verify_repeater_in.header.command_id = WIRED_VERIFY_REPEATER;
@@ -432,7 +434,7 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
 	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
 	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_repeater_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&verify_repeater_in,
 				       sizeof(verify_repeater_in),
 				       (u8 *)&verify_repeater_out,
 				       sizeof(verify_repeater_out));
@@ -462,8 +464,8 @@ intel_hdcp_gsc_verify_mprime(struct device *dev,
 {
 	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
 	struct wired_cmd_repeater_auth_stream_req_out verify_mprime_out = {};
+	struct intel_hdcp_gsc_context *gsc_context;
 	struct intel_display *display;
-	struct drm_i915_private *i915;
 	ssize_t byte;
 	size_t cmd_size;
 
@@ -475,7 +477,7 @@ intel_hdcp_gsc_verify_mprime(struct device *dev,
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
-	i915 = to_i915(display->drm);
+	gsc_context = display->hdcp.gsc_context;
 
 	cmd_size = struct_size(verify_mprime_in, streams, data->k);
 	if (cmd_size == SIZE_MAX)
@@ -502,7 +504,7 @@ intel_hdcp_gsc_verify_mprime(struct device *dev,
 
 	verify_mprime_in->k = cpu_to_be16(data->k);
 
-	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)verify_mprime_in, cmd_size,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)verify_mprime_in, cmd_size,
 				       (u8 *)&verify_mprime_out,
 				       sizeof(verify_mprime_out));
 	kfree(verify_mprime_in);
@@ -526,8 +528,8 @@ static int intel_hdcp_gsc_enable_authentication(struct device *dev,
 {
 	struct wired_cmd_enable_auth_in enable_auth_in = {};
 	struct wired_cmd_enable_auth_out enable_auth_out = {};
+	struct intel_hdcp_gsc_context *gsc_context;
 	struct intel_display *display;
-	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data)
@@ -538,7 +540,7 @@ static int intel_hdcp_gsc_enable_authentication(struct device *dev,
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
-	i915 = to_i915(display->drm);
+	gsc_context = display->hdcp.gsc_context;
 
 	enable_auth_in.header.api_version = HDCP_API_VERSION;
 	enable_auth_in.header.command_id = WIRED_ENABLE_AUTH;
@@ -550,7 +552,7 @@ static int intel_hdcp_gsc_enable_authentication(struct device *dev,
 	enable_auth_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 	enable_auth_in.stream_type = data->streams[0].stream_type;
 
-	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&enable_auth_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&enable_auth_in,
 				       sizeof(enable_auth_in),
 				       (u8 *)&enable_auth_out,
 				       sizeof(enable_auth_out));
@@ -573,8 +575,8 @@ intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data)
 {
 	struct wired_cmd_close_session_in session_close_in = {};
 	struct wired_cmd_close_session_out session_close_out = {};
+	struct intel_hdcp_gsc_context *gsc_context;
 	struct intel_display *display;
-	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data)
@@ -585,7 +587,7 @@ intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data)
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
-	i915 = to_i915(display->drm);
+	gsc_context = display->hdcp.gsc_context;
 
 	session_close_in.header.api_version = HDCP_API_VERSION;
 	session_close_in.header.command_id = WIRED_CLOSE_SESSION;
@@ -597,7 +599,7 @@ intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data)
 	session_close_in.port.physical_port = (u8)data->hdcp_ddi;
 	session_close_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
-	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&session_close_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&session_close_in,
 				       sizeof(session_close_in),
 				       (u8 *)&session_close_out,
 				       sizeof(session_close_out));
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 16458c1ddbe6..7b8237a5aeee 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -22,6 +22,7 @@
 #define HECI_MEADDRESS_HDCP 18
 
 struct intel_hdcp_gsc_context {
+	struct xe_device *xe;
 	struct xe_bo *hdcp_bo;
 	u64 hdcp_cmd_in;
 	u64 hdcp_cmd_out;
@@ -95,6 +96,8 @@ static int intel_hdcp_gsc_initialize_message(struct intel_display *display,
 	gsc_context->hdcp_bo = bo;
 	gsc_context->hdcp_cmd_in = cmd_in;
 	gsc_context->hdcp_cmd_out = cmd_out;
+	gsc_context->xe = xe;
+
 out:
 	return ret;
 }
@@ -157,12 +160,12 @@ static int xe_gsc_send_sync(struct xe_device *xe,
 	return ret;
 }
 
-ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
-				size_t msg_in_len, u8 *msg_out,
-				size_t msg_out_len)
+ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
+				u8 *msg_in, size_t msg_in_len,
+				u8 *msg_out, size_t msg_out_len)
 {
+	struct xe_device *xe = gsc_context->xe;
 	const size_t max_msg_size = PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
-	struct intel_hdcp_gsc_context *gsc_context;
 	u64 host_session_id;
 	u32 msg_size_in, msg_size_out;
 	u32 addr_out_off, addr_in_wr_off = 0;
@@ -175,7 +178,6 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
 
 	msg_size_in = msg_in_len + HDCP_GSC_HEADER_SIZE;
 	msg_size_out = msg_out_len + HDCP_GSC_HEADER_SIZE;
-	gsc_context = xe->display.hdcp.gsc_context;
 	addr_out_off = PAGE_SIZE;
 
 	host_session_id = xe_gsc_create_host_session_id();
-- 
2.39.5

