Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8062F94C0CB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 17:16:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2659C10E777;
	Thu,  8 Aug 2024 15:16:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AZhgqHZn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 460AD10E77E;
 Thu,  8 Aug 2024 15:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723130201; x=1754666201;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vSzvbaRE5Kzu3mHHnGA3vl8aXYtvC63j9pBvLRsAgUE=;
 b=AZhgqHZnk8j4q4DyMzT4F3enDdgHKyldIFFLwKC45hW/tpl3imjaTkFo
 JPEM4tVp+QD54Wav37hRb/RybVMfZC3J06xR6bAWEdPzvCbdnpwgAAJkU
 nIQAeIcRRW/687zoCtdbBBehlZoprelsc1tMriQqNS1didTsJSBYxdvRJ
 RwCpjpJSRGtm4XN2mf7p2ij8qlQkbs9pNzg7VoIVRrd2ieZIPfo3esO/9
 ystB7RxaLm/emlZ5T4K898FedF/2OOknZi6Eb0ERIsgScLo+5wiEMEsxU
 7rnc6Ui++MH/mXVrrhqPAmLWKtxFplOQBPvXPtkSgnxqh2sG1+iHFGJFO g==;
X-CSE-ConnectionGUID: B2Ku/OceQlW7blmQzqsaMA==
X-CSE-MsgGUID: DCZd5OP9QAGWxSyr+9YO+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="46667097"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="46667097"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:40 -0700
X-CSE-ConnectionGUID: KiD/TIG5S166eh4i1AcNiw==
X-CSE-MsgGUID: d0KIb6kDSzyztNpuBI13VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="56920163"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, lucas.demarchi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 09/10] drm/i915/hdcp: migrate away from kdev_to_i915() in
 GSC messaging
Date: Thu,  8 Aug 2024 18:15:54 +0300
Message-Id: <2425c7660659c94a96ba42078d237da8a032984d.1723129920.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
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

Use to_intel_display() instead of kdev_to_i915() in the HDCP component
API hooks. Avoid further drive-by changes at this point, and just
convert the display pointer to i915, and leave the struct intel_display
conversion for later.

The NULL error checking in the hooks make this a bit cumbersome. I'm not
actually sure they're really required, but don't go down that rabbit
hole just now.

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
 1 file changed, 45 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index 6548e71b4c49..35bdb532bbb3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -7,6 +7,7 @@
 #include <drm/intel/i915_hdcp_interface.h>
 
 #include "i915_drv.h"
+#include "intel_display_types.h"
 #include "intel_hdcp_gsc_message.h"
 
 int
@@ -15,17 +16,19 @@ intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
 {
 	struct wired_cmd_initiate_hdcp2_session_in session_init_in = {};
 	struct wired_cmd_initiate_hdcp2_session_out session_init_out = {};
+	struct intel_display *display;
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !ake_data)
 		return -EINVAL;
 
-	i915 = kdev_to_i915(dev);
-	if (!i915) {
+	display = to_intel_display(dev);
+	if (!display) {
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
+	i915 = to_i915(display->drm);
 
 	session_init_in.header.api_version = HDCP_API_VERSION;
 	session_init_in.header.command_id = WIRED_INITIATE_HDCP2_SESSION;
@@ -72,17 +75,19 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
 {
 	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in = {};
 	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out = {};
+	struct intel_display *display;
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg_sz)
 		return -EINVAL;
 
-	i915 = kdev_to_i915(dev);
-	if (!i915) {
+	display = to_intel_display(dev);
+	if (!display) {
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
+	i915 = to_i915(display->drm);
 
 	verify_rxcert_in.header.api_version = HDCP_API_VERSION;
 	verify_rxcert_in.header.command_id = WIRED_VERIFY_RECEIVER_CERT;
@@ -135,17 +140,19 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 {
 	struct wired_cmd_ake_send_hprime_in send_hprime_in = {};
 	struct wired_cmd_ake_send_hprime_out send_hprime_out = {};
+	struct intel_display *display;
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !rx_hprime)
 		return -EINVAL;
 
-	i915 = kdev_to_i915(dev);
-	if (!i915) {
+	display = to_intel_display(dev);
+	if (!display) {
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
+	i915 = to_i915(display->drm);
 
 	send_hprime_in.header.api_version = HDCP_API_VERSION;
 	send_hprime_in.header.command_id = WIRED_AKE_SEND_HPRIME;
@@ -183,17 +190,19 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *dat
 {
 	struct wired_cmd_ake_send_pairing_info_in pairing_info_in = {};
 	struct wired_cmd_ake_send_pairing_info_out pairing_info_out = {};
+	struct intel_display *display;
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !pairing_info)
 		return -EINVAL;
 
-	i915 = kdev_to_i915(dev);
-	if (!i915) {
+	display = to_intel_display(dev);
+	if (!display) {
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
+	i915 = to_i915(display->drm);
 
 	pairing_info_in.header.api_version = HDCP_API_VERSION;
 	pairing_info_in.header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
@@ -234,17 +243,19 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev,
 {
 	struct wired_cmd_init_locality_check_in lc_init_in = {};
 	struct wired_cmd_init_locality_check_out lc_init_out = {};
+	struct intel_display *display;
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !lc_init_data)
 		return -EINVAL;
 
-	i915 = kdev_to_i915(dev);
-	if (!i915) {
+	display = to_intel_display(dev);
+	if (!display) {
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
+	i915 = to_i915(display->drm);
 
 	lc_init_in.header.api_version = HDCP_API_VERSION;
 	lc_init_in.header.command_id = WIRED_INIT_LOCALITY_CHECK;
@@ -280,17 +291,19 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 {
 	struct wired_cmd_validate_locality_in verify_lprime_in = {};
 	struct wired_cmd_validate_locality_out verify_lprime_out = {};
+	struct intel_display *display;
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !rx_lprime)
 		return -EINVAL;
 
-	i915 = kdev_to_i915(dev);
-	if (!i915) {
+	display = to_intel_display(dev);
+	if (!display) {
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
+	i915 = to_i915(display->drm);
 
 	verify_lprime_in.header.api_version = HDCP_API_VERSION;
 	verify_lprime_in.header.command_id = WIRED_VALIDATE_LOCALITY;
@@ -330,17 +343,19 @@ int intel_hdcp_gsc_get_session_key(struct device *dev,
 {
 	struct wired_cmd_get_session_key_in get_skey_in = {};
 	struct wired_cmd_get_session_key_out get_skey_out = {};
+	struct intel_display *display;
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data || !ske_data)
 		return -EINVAL;
 
-	i915 = kdev_to_i915(dev);
-	if (!i915) {
+	display = to_intel_display(dev);
+	if (!display) {
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
+	i915 = to_i915(display->drm);
 
 	get_skey_in.header.api_version = HDCP_API_VERSION;
 	get_skey_in.header.command_id = WIRED_GET_SESSION_KEY;
@@ -382,17 +397,19 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
 {
 	struct wired_cmd_verify_repeater_in verify_repeater_in = {};
 	struct wired_cmd_verify_repeater_out verify_repeater_out = {};
+	struct intel_display *display;
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !rep_topology || !rep_send_ack || !data)
 		return -EINVAL;
 
-	i915 = kdev_to_i915(dev);
-	if (!i915) {
+	display = to_intel_display(dev);
+	if (!display) {
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
+	i915 = to_i915(display->drm);
 
 	verify_repeater_in.header.api_version = HDCP_API_VERSION;
 	verify_repeater_in.header.command_id = WIRED_VERIFY_REPEATER;
@@ -442,6 +459,7 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
 {
 	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
 	struct wired_cmd_repeater_auth_stream_req_out verify_mprime_out = {};
+	struct intel_display *display;
 	struct drm_i915_private *i915;
 	ssize_t byte;
 	size_t cmd_size;
@@ -449,11 +467,12 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
 	if (!dev || !stream_ready || !data)
 		return -EINVAL;
 
-	i915 = kdev_to_i915(dev);
-	if (!i915) {
+	display = to_intel_display(dev);
+	if (!display) {
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
+	i915 = to_i915(display->drm);
 
 	cmd_size = struct_size(verify_mprime_in, streams, data->k);
 	if (cmd_size == SIZE_MAX)
@@ -504,17 +523,19 @@ int intel_hdcp_gsc_enable_authentication(struct device *dev,
 {
 	struct wired_cmd_enable_auth_in enable_auth_in = {};
 	struct wired_cmd_enable_auth_out enable_auth_out = {};
+	struct intel_display *display;
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data)
 		return -EINVAL;
 
-	i915 = kdev_to_i915(dev);
-	if (!i915) {
+	display = to_intel_display(dev);
+	if (!display) {
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
+	i915 = to_i915(display->drm);
 
 	enable_auth_in.header.api_version = HDCP_API_VERSION;
 	enable_auth_in.header.command_id = WIRED_ENABLE_AUTH;
@@ -549,17 +570,19 @@ intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data)
 {
 	struct wired_cmd_close_session_in session_close_in = {};
 	struct wired_cmd_close_session_out session_close_out = {};
+	struct intel_display *display;
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
 	if (!dev || !data)
 		return -EINVAL;
 
-	i915 = kdev_to_i915(dev);
-	if (!i915) {
+	display = to_intel_display(dev);
+	if (!display) {
 		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
 		return -ENODEV;
 	}
+	i915 = to_i915(display->drm);
 
 	session_close_in.header.api_version = HDCP_API_VERSION;
 	session_close_in.header.command_id = WIRED_CLOSE_SESSION;
-- 
2.39.2

