Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B11A9B8B3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 22:02:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065DD10E870;
	Thu, 24 Apr 2025 20:02:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cMYNUAYs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB27810E870;
 Thu, 24 Apr 2025 20:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745524946; x=1777060946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qcjhbdiBZWdq1yMo8fXYIw+8GpZWuAfkHHfpheb4Kfk=;
 b=cMYNUAYsdqDfz3U91mE+NmP7MIpquN+eTXAenleil4bmr4aNsgARvGyf
 nrhOzTpAkxOE1zh1SAG9pW6uKhVk7yOtpLmVgwC0YNXrD0PyApPGKJR76
 esxnpqQPZ+KtQ+G6iWONSK8QAZvnjgqK2aumB4/rwvLntbTY6oTWyO8Vd
 Im2bnE0+V0E2HcFQ2CNlcnV8iMGWbf9sEA1ahFdUbOoLOmwjrwoU/pAVx
 kRj9j+YrEziMVQVU+y9wvJHDpPlKcRXd7ZRJGc8Wj5f9/wLrPKXIHw9zA
 w/5ki57GuNqkK06Bobxt8iDIWXRdMPJvO4ay98lNPlAxdVxhGg/uMe+HD w==;
X-CSE-ConnectionGUID: EPqCmaJhQ+yKg+97eAMIUw==
X-CSE-MsgGUID: u16i+FzpRTagrLG49c2CBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58543436"
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="58543436"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:26 -0700
X-CSE-ConnectionGUID: vET2Evr5TT25mYUGvPHGRA==
X-CSE-MsgGUID: J0/8eAnSQ+Wsjt+xcUSujg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="133637167"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.48])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 07/10] drm/i915/hdcp: switch the HDCP GSC message interface
 from u8* to void*
Date: Thu, 24 Apr 2025 23:01:39 +0300
Message-Id: <ea005adb713e85b797d83204c80de0a2a8e5ab47.1745524803.git.jani.nikula@intel.com>
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

The in/out buffers are just opaque data, and don't need to be considered
u8*. Switching to void* lets us drop a ton of unnecessary casts.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  4 +-
 .../drm/i915/display/intel_hdcp_gsc_message.c | 44 +++++++++----------
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      |  4 +-
 4 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 77c4df6c6181..1ea2c7204444 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -174,8 +174,8 @@ static int intel_gsc_send_sync(struct drm_i915_private *i915,
  * will follow
  */
 ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
-				u8 *msg_in, size_t msg_in_len,
-				u8 *msg_out, size_t msg_out_len)
+				void *msg_in, size_t msg_in_len,
+				void *msg_out, size_t msg_out_len)
 {
 	struct drm_i915_private *i915 = gsc_context->i915;
 	struct intel_gt *gt = i915->media_gt;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index 7133e631a938..fbef56db54f2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -14,8 +14,8 @@ struct intel_hdcp_gsc_context;
 
 bool intel_hdcp_gsc_cs_required(struct intel_display *display);
 ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
-				u8 *msg_in, size_t msg_in_len,
-				u8 *msg_out, size_t msg_out_len);
+				void *msg_in, size_t msg_in_len,
+				void *msg_out, size_t msg_out_len);
 bool intel_hdcp_gsc_check_status(struct intel_display *display);
 
 struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index d87f61d773ca..4226e8705d2b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -44,9 +44,9 @@ intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
 	session_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 	session_init_in.protocol = data->protocol;
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&session_init_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, &session_init_in,
 				       sizeof(session_init_in),
-				       (u8 *)&session_init_out,
+				       &session_init_out,
 				       sizeof(session_init_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
@@ -106,9 +106,9 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
 	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
 	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps, HDCP_2_2_RXCAPS_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&verify_rxcert_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, &verify_rxcert_in,
 				       sizeof(verify_rxcert_in),
-				       (u8 *)&verify_rxcert_out,
+				       &verify_rxcert_out,
 				       sizeof(verify_rxcert_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed: %zd\n", byte);
@@ -169,9 +169,9 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
 	       HDCP_2_2_H_PRIME_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&send_hprime_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, &send_hprime_in,
 				       sizeof(send_hprime_in),
-				       (u8 *)&send_hprime_out,
+				       &send_hprime_out,
 				       sizeof(send_hprime_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
@@ -220,9 +220,9 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *dat
 	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
 	       HDCP_2_2_E_KH_KM_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&pairing_info_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, &pairing_info_in,
 				       sizeof(pairing_info_in),
-				       (u8 *)&pairing_info_out,
+				       &pairing_info_out,
 				       sizeof(pairing_info_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
@@ -269,8 +269,8 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev,
 	lc_init_in.port.physical_port = (u8)data->hdcp_ddi;
 	lc_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&lc_init_in, sizeof(lc_init_in),
-				       (u8 *)&lc_init_out, sizeof(lc_init_out));
+	byte = intel_hdcp_gsc_msg_send(gsc_context, &lc_init_in, sizeof(lc_init_in),
+				       &lc_init_out, sizeof(lc_init_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
@@ -321,9 +321,9 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
 	       HDCP_2_2_L_PRIME_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&verify_lprime_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, &verify_lprime_in,
 				       sizeof(verify_lprime_in),
-				       (u8 *)&verify_lprime_out,
+				       &verify_lprime_out,
 				       sizeof(verify_lprime_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
@@ -370,8 +370,8 @@ intel_hdcp_gsc_get_session_key(struct device *dev,
 	get_skey_in.port.physical_port = (u8)data->hdcp_ddi;
 	get_skey_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&get_skey_in, sizeof(get_skey_in),
-				       (u8 *)&get_skey_out, sizeof(get_skey_out));
+	byte = intel_hdcp_gsc_msg_send(gsc_context, &get_skey_in, sizeof(get_skey_in),
+				       &get_skey_out, sizeof(get_skey_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
 		return byte;
@@ -434,9 +434,9 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
 	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
 	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&verify_repeater_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, &verify_repeater_in,
 				       sizeof(verify_repeater_in),
-				       (u8 *)&verify_repeater_out,
+				       &verify_repeater_out,
 				       sizeof(verify_repeater_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
@@ -504,8 +504,8 @@ intel_hdcp_gsc_verify_mprime(struct device *dev,
 
 	verify_mprime_in->k = cpu_to_be16(data->k);
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)verify_mprime_in, cmd_size,
-				       (u8 *)&verify_mprime_out,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, verify_mprime_in, cmd_size,
+				       &verify_mprime_out,
 				       sizeof(verify_mprime_out));
 	kfree(verify_mprime_in);
 	if (byte < 0) {
@@ -552,9 +552,9 @@ static int intel_hdcp_gsc_enable_authentication(struct device *dev,
 	enable_auth_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 	enable_auth_in.stream_type = data->streams[0].stream_type;
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&enable_auth_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, &enable_auth_in,
 				       sizeof(enable_auth_in),
-				       (u8 *)&enable_auth_out,
+				       &enable_auth_out,
 				       sizeof(enable_auth_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
@@ -599,9 +599,9 @@ intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data)
 	session_close_in.port.physical_port = (u8)data->hdcp_ddi;
 	session_close_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
 
-	byte = intel_hdcp_gsc_msg_send(gsc_context, (u8 *)&session_close_in,
+	byte = intel_hdcp_gsc_msg_send(gsc_context, &session_close_in,
 				       sizeof(session_close_in),
-				       (u8 *)&session_close_out,
+				       &session_close_out,
 				       sizeof(session_close_out));
 	if (byte < 0) {
 		drm_dbg_kms(display->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 7b8237a5aeee..7712d53627f0 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -161,8 +161,8 @@ static int xe_gsc_send_sync(struct xe_device *xe,
 }
 
 ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
-				u8 *msg_in, size_t msg_in_len,
-				u8 *msg_out, size_t msg_out_len)
+				void *msg_in, size_t msg_in_len,
+				void *msg_out, size_t msg_out_len)
 {
 	struct xe_device *xe = gsc_context->xe;
 	const size_t max_msg_size = PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
-- 
2.39.5

