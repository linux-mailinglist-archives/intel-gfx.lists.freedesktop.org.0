Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A480C862C9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 18:18:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B505A10E567;
	Tue, 25 Nov 2025 17:18:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="faz8MWaJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D5DD10E566;
 Tue, 25 Nov 2025 17:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764091082; x=1795627082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aHgf2cW3VZ8VMDmLnjGOE9JEUeHAHHErnZi9f71luSQ=;
 b=faz8MWaJJfMshOnTs7ZCoQkN3ih0fWxvxxSVl7F/iJTfjdQBa89U3+Kn
 1Z1yIPA0G0kC1CAPHSrRD1SBaCjpnrsPJr7B4UEp+upwcVj7yQigvN427
 s89BXWQy0wjrmESmSnwQTqiqktYUGZne4RTgg84mWQBtpA+rcPv70PrzW
 IxUsrEEOOPaaTYndnf93tiia4o8SeIcQXhL8Eglj31p0rUs9KWoLhJ4Kj
 ED/WsgtFNUPgTGjrtSuJA3JPmDySjup9xIHfOVCe34h23aZ5MdSHIUeBb
 HqFensx/Pkpv3Y3zOzQN3FIaQwKxXZa2ESabp9lF+bDh38vt9X9eU5/QO w==;
X-CSE-ConnectionGUID: kxZ26w4MQy+Osoe9H0Xl0A==
X-CSE-MsgGUID: z8nK8t9PToyYyN5hXEpGMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="65116527"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="65116527"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 09:18:02 -0800
X-CSE-ConnectionGUID: a8t3GxlmTM2XItBlP7BJ5A==
X-CSE-MsgGUID: YXhpe5nvQCap6GijpukL5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="192336509"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 09:18:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/{i915,
 xe}/hdcp: use parent interface for HDCP GSC calls
Date: Tue, 25 Nov 2025 19:17:44 +0200
Message-ID: <e397073e91f8aa7518754b3b79f65c1936be91ad.1764090990.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764090990.git.jani.nikula@intel.com>
References: <cover.1764090990.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset=UTF-8
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

The HDCP GSC implementation is different for both i915 and xe. Add it to
the display parent interface, and call the hooks via the parent
interface.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h | 22 ------
 .../drm/i915/display/intel_hdcp_gsc_message.c | 78 +++++++++----------
 drivers/gpu/drm/i915/display/intel_parent.c   | 24 ++++++
 drivers/gpu/drm/i915/display/intel_parent.h   | 10 +++
 drivers/gpu/drm/i915/i915_driver.c            |  2 +
 drivers/gpu/drm/i915/i915_hdcp_gsc.c          | 22 ++++--
 drivers/gpu/drm/i915/i915_hdcp_gsc.h          |  9 +++
 drivers/gpu/drm/xe/display/xe_display.c       |  2 +
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 25 ++++--
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.h      |  9 +++
 include/drm/intel/display_parent_interface.h  | 13 ++++
 12 files changed, 139 insertions(+), 81 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/i915/i915_hdcp_gsc.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_hdcp_gsc.h

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 5e1a96223a9c..7114fc405c29 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -29,10 +29,10 @@
 #include "intel_display_types.h"
 #include "intel_dp_mst.h"
 #include "intel_hdcp.h"
-#include "intel_hdcp_gsc.h"
 #include "intel_hdcp_gsc_message.h"
 #include "intel_hdcp_regs.h"
 #include "intel_hdcp_shim.h"
+#include "intel_parent.h"
 #include "intel_pcode.h"
 #include "intel_step.h"
 
@@ -258,7 +258,7 @@ static bool intel_hdcp2_prerequisite(struct intel_connector *connector)
 
 	/* If MTL+ make sure gsc is loaded and proxy is setup */
 	if (USE_HDCP_GSC(display)) {
-		if (!intel_hdcp_gsc_check_status(display->drm))
+		if (!intel_parent_hdcp_gsc_check_status(display))
 			return false;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
deleted file mode 100644
index 9305c14aaffe..000000000000
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __INTEL_HDCP_GSC_H__
-#define __INTEL_HDCP_GSC_H__
-
-#include <linux/types.h>
-
-struct drm_device;
-struct intel_hdcp_gsc_context;
-
-ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
-				void *msg_in, size_t msg_in_len,
-				void *msg_out, size_t msg_out_len);
-bool intel_hdcp_gsc_check_status(struct drm_device *drm);
-
-struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct drm_device *drm);
-void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context *gsc_context);
-
-#endif /* __INTEL_HDCP_GCS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index 98967bb148e3..781667b710b4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -10,8 +10,8 @@
 
 #include "intel_display_core.h"
 #include "intel_display_types.h"
-#include "intel_hdcp_gsc.h"
 #include "intel_hdcp_gsc_message.h"
+#include "intel_parent.h"
 
 static int
 intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
@@ -44,10 +44,9 @@ intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
 	session_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 	session_init_in.protocol = data->protocol;
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, &session_init_in,
-				       sizeof(session_init_in),
-				       &session_init_out,
-				       sizeof(session_init_out));
+	byte = intel_parent_hdcp_gsc_msg_send(display, gsc_context,
+					      &session_init_in, sizeof(session_init_in),
+					      &session_init_out, sizeof(session_init_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
@@ -106,10 +105,9 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
 	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
 	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps, HDCP_2_2_RXCAPS_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, &verify_rxcert_in,
-				       sizeof(verify_rxcert_in),
-				       &verify_rxcert_out,
-				       sizeof(verify_rxcert_out));
+	byte = intel_parent_hdcp_gsc_msg_send(display, gsc_context,
+					      &verify_rxcert_in, sizeof(verify_rxcert_in),
+					      &verify_rxcert_out, sizeof(verify_rxcert_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed: %zd\n", byte);
 		return byte;
@@ -169,10 +167,9 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
 	       HDCP_2_2_H_PRIME_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, &send_hprime_in,
-				       sizeof(send_hprime_in),
-				       &send_hprime_out,
-				       sizeof(send_hprime_out));
+	byte = intel_parent_hdcp_gsc_msg_send(display, gsc_context,
+					      &send_hprime_in, sizeof(send_hprime_in),
+					      &send_hprime_out, sizeof(send_hprime_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
@@ -220,10 +217,9 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *dat
 	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
 	       HDCP_2_2_E_KH_KM_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, &pairing_info_in,
-				       sizeof(pairing_info_in),
-				       &pairing_info_out,
-				       sizeof(pairing_info_out));
+	byte = intel_parent_hdcp_gsc_msg_send(display, gsc_context,
+					      &pairing_info_in, sizeof(pairing_info_in),
+					      &pairing_info_out, sizeof(pairing_info_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
@@ -269,8 +265,9 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev,
 	lc_init_in.port.physical_port = (u8)data->hdcp_ddi;
 	lc_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, &lc_init_in, sizeof(lc_init_in),
-				       &lc_init_out, sizeof(lc_init_out));
+	byte = intel_parent_hdcp_gsc_msg_send(display, gsc_context,
+					      &lc_init_in, sizeof(lc_init_in),
+					      &lc_init_out, sizeof(lc_init_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
@@ -321,10 +318,9 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
 	       HDCP_2_2_L_PRIME_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, &verify_lprime_in,
-				       sizeof(verify_lprime_in),
-				       &verify_lprime_out,
-				       sizeof(verify_lprime_out));
+	byte = intel_parent_hdcp_gsc_msg_send(display, gsc_context,
+					      &verify_lprime_in, sizeof(verify_lprime_in),
+					      &verify_lprime_out, sizeof(verify_lprime_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
@@ -370,8 +366,9 @@ intel_hdcp_gsc_get_session_key(struct device *dev,
 	get_skey_in.port.physical_port = (u8)data->hdcp_ddi;
 	get_skey_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, &get_skey_in, sizeof(get_skey_in),
-				       &get_skey_out, sizeof(get_skey_out));
+	byte = intel_parent_hdcp_gsc_msg_send(display, gsc_context,
+					      &get_skey_in, sizeof(get_skey_in),
+					      &get_skey_out, sizeof(get_skey_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
@@ -434,10 +431,9 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
 	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
 	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, &verify_repeater_in,
-				       sizeof(verify_repeater_in),
-				       &verify_repeater_out,
-				       sizeof(verify_repeater_out));
+	byte = intel_parent_hdcp_gsc_msg_send(display, gsc_context,
+					      &verify_repeater_in, sizeof(verify_repeater_in),
+					      &verify_repeater_out, sizeof(verify_repeater_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
@@ -504,9 +500,9 @@ intel_hdcp_gsc_verify_mprime(struct device *dev,
 
 	verify_mprime_in->k = cpu_to_be16(data->k);
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, verify_mprime_in, cmd_size,
-				       &verify_mprime_out,
-				       sizeof(verify_mprime_out));
+	byte = intel_parent_hdcp_gsc_msg_send(display, gsc_context,
+					      verify_mprime_in, cmd_size,
+					      &verify_mprime_out, sizeof(verify_mprime_out));
 	kfree(verify_mprime_in);
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
@@ -552,10 +548,9 @@ static int intel_hdcp_gsc_enable_authentication(struct device *dev,
 	enable_auth_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 	enable_auth_in.stream_type = data->streams[0].stream_type;
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, &enable_auth_in,
-				       sizeof(enable_auth_in),
-				       &enable_auth_out,
-				       sizeof(enable_auth_out));
+	byte = intel_parent_hdcp_gsc_msg_send(display, gsc_context,
+					      &enable_auth_in, sizeof(enable_auth_in),
+					      &enable_auth_out, sizeof(enable_auth_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
@@ -599,10 +594,9 @@ intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data)
 	session_close_in.port.physical_port = (u8)data->hdcp_ddi;
 	session_close_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, &session_close_in,
-				       sizeof(session_close_in),
-				       &session_close_out,
-				       sizeof(session_close_out));
+	byte = intel_parent_hdcp_gsc_msg_send(display, gsc_context,
+					      &session_close_in, sizeof(session_close_in),
+					      &session_close_out, sizeof(session_close_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
@@ -645,7 +639,7 @@ int intel_hdcp_gsc_init(struct intel_display *display)
 
 	mutex_lock(&display->hdcp.hdcp_mutex);
 
-	gsc_context = intel_hdcp_gsc_context_alloc(display->drm);
+	gsc_context = intel_parent_hdcp_gsc_context_alloc(display);
 	if (IS_ERR(gsc_context)) {
 		ret = PTR_ERR(gsc_context);
 		kfree(arbiter);
@@ -665,7 +659,7 @@ int intel_hdcp_gsc_init(struct intel_display *display)
 
 void intel_hdcp_gsc_fini(struct intel_display *display)
 {
-	intel_hdcp_gsc_context_free(display->hdcp.gsc_context);
+	intel_parent_hdcp_gsc_context_free(display, display->hdcp.gsc_context);
 	display->hdcp.gsc_context = NULL;
 	kfree(display->hdcp.arbiter);
 	display->hdcp.arbiter = NULL;
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 27c7ef34ce48..2ea310cc3509 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -22,6 +22,30 @@
 #include "intel_display_core.h"
 #include "intel_parent.h"
 
+ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
+				       struct intel_hdcp_gsc_context *gsc_context,
+				       void *msg_in, size_t msg_in_len,
+				       void *msg_out, size_t msg_out_len)
+{
+	return display->parent->hdcp->gsc_msg_send(gsc_context, msg_in, msg_in_len, msg_out, msg_out_len);
+}
+
+bool intel_parent_hdcp_gsc_check_status(struct intel_display *display)
+{
+	return display->parent->hdcp->gsc_check_status(display->drm);
+}
+
+struct intel_hdcp_gsc_context *intel_parent_hdcp_gsc_context_alloc(struct intel_display *display)
+{
+	return display->parent->hdcp->gsc_context_alloc(display->drm);
+}
+
+void intel_parent_hdcp_gsc_context_free(struct intel_display *display,
+					struct intel_hdcp_gsc_context *gsc_context)
+{
+	display->parent->hdcp->gsc_context_free(gsc_context);
+}
+
 bool intel_parent_irq_enabled(struct intel_display *display)
 {
 	return display->parent->irq->enabled(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index a8ca40b57ea9..8f91a6f75c53 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -8,6 +8,16 @@
 
 struct dma_fence;
 struct intel_display;
+struct intel_hdcp_gsc_context;
+
+ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
+				       struct intel_hdcp_gsc_context *gsc_context,
+				       void *msg_in, size_t msg_in_len,
+				       void *msg_out, size_t msg_out_len);
+bool intel_parent_hdcp_gsc_check_status(struct intel_display *display);
+struct intel_hdcp_gsc_context *intel_parent_hdcp_gsc_context_alloc(struct intel_display *display);
+void intel_parent_hdcp_gsc_context_free(struct intel_display *display,
+					struct intel_hdcp_gsc_context *gsc_context);
 
 bool intel_parent_irq_enabled(struct intel_display *display);
 void intel_parent_irq_synchronize(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index db0dd25f734d..d98839427ef9 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -96,6 +96,7 @@
 #include "i915_file_private.h"
 #include "i915_getparam.h"
 #include "i915_gmch.h"
+#include "i915_hdcp_gsc.h"
 #include "i915_hwmon.h"
 #include "i915_ioc32.h"
 #include "i915_ioctl.h"
@@ -757,6 +758,7 @@ static void fence_priority_display(struct dma_fence *fence)
 }
 
 static const struct intel_display_parent_interface parent = {
+	.hdcp = &i915_display_hdcp_interface,
 	.rpm = &i915_display_rpm_interface,
 	.irq = &i915_display_irq_interface,
 	.rps = &i915_display_rps_interface,
diff --git a/drivers/gpu/drm/i915/i915_hdcp_gsc.c b/drivers/gpu/drm/i915/i915_hdcp_gsc.c
index 38df5318e13a..9906da2aef1c 100644
--- a/drivers/gpu/drm/i915/i915_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/i915_hdcp_gsc.c
@@ -4,13 +4,14 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/display_parent_interface.h>
 #include <drm/intel/i915_hdcp_interface.h>
 
-#include "display/intel_hdcp_gsc.h"
 #include "gem/i915_gem_region.h"
 #include "gt/intel_gt.h"
 #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 #include "i915_drv.h"
+#include "i915_hdcp_gsc.h"
 
 struct intel_hdcp_gsc_context {
 	struct drm_i915_private *i915;
@@ -19,7 +20,7 @@ struct intel_hdcp_gsc_context {
 	void *hdcp_cmd_out;
 };
 
-bool intel_hdcp_gsc_check_status(struct drm_device *drm)
+static bool intel_hdcp_gsc_check_status(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct intel_gt *gt = i915->media_gt;
@@ -87,7 +88,7 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 	return err;
 }
 
-struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct drm_device *drm)
+static struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 	struct intel_hdcp_gsc_context *gsc_context;
@@ -111,7 +112,7 @@ struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct drm_device *d
 	return gsc_context;
 }
 
-void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context *gsc_context)
+static void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context *gsc_context)
 {
 	if (!gsc_context)
 		return;
@@ -168,9 +169,9 @@ static int intel_gsc_send_sync(struct drm_i915_private *i915,
  * gsc cs memory header as stated in specs after which the normal HDCP payload
  * will follow
  */
-ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
-				void *msg_in, size_t msg_in_len,
-				void *msg_out, size_t msg_out_len)
+static ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
+				       void *msg_in, size_t msg_in_len,
+				       void *msg_out, size_t msg_out_len)
 {
 	struct drm_i915_private *i915 = gsc_context->i915;
 	struct intel_gt *gt = i915->media_gt;
@@ -237,3 +238,10 @@ ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
 err:
 	return ret;
 }
+
+const struct intel_display_hdcp_interface i915_display_hdcp_interface = {
+	.gsc_msg_send = intel_hdcp_gsc_msg_send,
+	.gsc_check_status = intel_hdcp_gsc_check_status,
+	.gsc_context_alloc = intel_hdcp_gsc_context_alloc,
+	.gsc_context_free = intel_hdcp_gsc_context_free,
+};
diff --git a/drivers/gpu/drm/i915/i915_hdcp_gsc.h b/drivers/gpu/drm/i915/i915_hdcp_gsc.h
new file mode 100644
index 000000000000..e0b562cfcde3
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_hdcp_gsc.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_HDCP_GSC_H__
+#define __I915_HDCP_GSC_H__
+
+extern const struct intel_display_hdcp_interface i915_display_hdcp_interface;
+
+#endif /* __I915_HDCP_GSC_H__ */
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 793115077615..9d2aa69ea428 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -37,6 +37,7 @@
 #include "skl_watermark.h"
 #include "xe_display_rpm.h"
 #include "xe_module.h"
+#include "xe_hdcp_gsc.h"
 
 /* Ensure drm and display members are placed properly. */
 INTEL_DISPLAY_MEMBER_STATIC_ASSERT(struct xe_device, drm, display);
@@ -534,6 +535,7 @@ static const struct intel_display_irq_interface xe_display_irq_interface = {
 };
 
 static const struct intel_display_parent_interface parent = {
+	.hdcp = &xe_display_hdcp_interface,
 	.rpm = &xe_display_rpm_interface,
 	.irq = &xe_display_irq_interface,
 };
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 71d21fde1736..07acae121aa7 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -3,18 +3,20 @@
  * Copyright 2023, Intel Corporation.
  */
 
+#include <linux/delay.h>
+
 #include <drm/drm_print.h>
+#include <drm/intel/display_parent_interface.h>
 #include <drm/intel/i915_hdcp_interface.h>
-#include <linux/delay.h>
 
 #include "abi/gsc_command_header_abi.h"
-#include "intel_hdcp_gsc.h"
 #include "xe_bo.h"
 #include "xe_device.h"
 #include "xe_device_types.h"
 #include "xe_force_wake.h"
 #include "xe_gsc_proxy.h"
 #include "xe_gsc_submit.h"
+#include "xe_hdcp_gsc.h"
 #include "xe_map.h"
 #include "xe_pm.h"
 #include "xe_uc_fw.h"
@@ -30,7 +32,7 @@ struct intel_hdcp_gsc_context {
 
 #define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
 
-bool intel_hdcp_gsc_check_status(struct drm_device *drm)
+static bool intel_hdcp_gsc_check_status(struct drm_device *drm)
 {
 	struct xe_device *xe = to_xe_device(drm);
 	struct xe_tile *tile = xe_device_get_root_tile(xe);
@@ -87,7 +89,7 @@ static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
 	return ret;
 }
 
-struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct drm_device *drm)
+static struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct drm_device *drm)
 {
 	struct xe_device *xe = to_xe_device(drm);
 	struct intel_hdcp_gsc_context *gsc_context;
@@ -111,7 +113,7 @@ struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct drm_device *d
 	return gsc_context;
 }
 
-void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context *gsc_context)
+static void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context *gsc_context)
 {
 	if (!gsc_context)
 		return;
@@ -146,9 +148,9 @@ static int xe_gsc_send_sync(struct xe_device *xe,
 	return ret;
 }
 
-ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
-				void *msg_in, size_t msg_in_len,
-				void *msg_out, size_t msg_out_len)
+static ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
+				       void *msg_in, size_t msg_in_len,
+				       void *msg_out, size_t msg_out_len)
 {
 	struct xe_device *xe = gsc_context->xe;
 	const size_t max_msg_size = PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
@@ -198,3 +200,10 @@ ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
 
 	return ret;
 }
+
+const struct intel_display_hdcp_interface xe_display_hdcp_interface = {
+	.gsc_msg_send = intel_hdcp_gsc_msg_send,
+	.gsc_check_status = intel_hdcp_gsc_check_status,
+	.gsc_context_alloc = intel_hdcp_gsc_context_alloc,
+	.gsc_context_free = intel_hdcp_gsc_context_free,
+};
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.h b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.h
new file mode 100644
index 000000000000..c1062e4b62f7
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __XE_HDCP_GSC_H__
+#define __XE_HDCP_GSC_H__
+
+extern const struct intel_display_hdcp_interface xe_display_hdcp_interface;
+
+#endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 4135d1e1a67e..61d1b22adc83 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -8,6 +8,7 @@
 
 struct dma_fence;
 struct drm_device;
+struct intel_hdcp_gsc_context;
 struct ref_tracker;
 
 struct intel_display_rpm_interface {
@@ -26,6 +27,15 @@ struct intel_display_rpm_interface {
 	void (*assert_unblock)(const struct drm_device *drm);
 };
 
+struct intel_display_hdcp_interface {
+	ssize_t (*gsc_msg_send)(struct intel_hdcp_gsc_context *gsc_context,
+				void *msg_in, size_t msg_in_len,
+				void *msg_out, size_t msg_out_len);
+	bool (*gsc_check_status)(struct drm_device *drm);
+	struct intel_hdcp_gsc_context *(*gsc_context_alloc)(struct drm_device *drm);
+	void (*gsc_context_free)(struct intel_hdcp_gsc_context *gsc_context);
+};
+
 struct intel_display_irq_interface {
 	bool (*enabled)(struct drm_device *drm);
 	void (*synchronize)(struct drm_device *drm);
@@ -50,6 +60,9 @@ struct intel_display_rps_interface {
  * check the optional pointers.
  */
 struct intel_display_parent_interface {
+	/** @hdcp: HDCP GSC interface */
+	const struct intel_display_hdcp_interface *hdcp;
+
 	/** @rpm: Runtime PM functions */
 	const struct intel_display_rpm_interface *rpm;
 
-- 
2.47.3

