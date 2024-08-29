Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9E5964900
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 16:49:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EA6610E6E7;
	Thu, 29 Aug 2024 14:49:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dBBi54Yi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8213D10E6E5;
 Thu, 29 Aug 2024 14:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724942949; x=1756478949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vSzvbaRE5Kzu3mHHnGA3vl8aXYtvC63j9pBvLRsAgUE=;
 b=dBBi54Yio+2oOhP8trdHLLzOXe9v9bs690jTdjh5P+T5UMWJpdZfItEj
 BbsKPZwxnBoRwZRZrTZtBs8wLWZaTXt9VuyE8an1XT27xgj7mqAF+wrZG
 3zgYBxt8afbinvITEtHH01ZF6y5mdNNekbaPLl4/Neu5mimwVmrQ60FWq
 kF68zGNYgf+o+Xp1d4xrGnAdsGZLOajqtbGbOaSeSNh9aY12cIenu3+mL
 ZyNn4mRb+K1kfJOYXcDe+CieacPzAK5qNAm/yCUaM/yiKyYqzRyGv4U1/
 iONOuVOE49a3B9IZEjo97XSFqj4tT/Wn7ErQffh0Te8JweQnVTsYvwTti Q==;
X-CSE-ConnectionGUID: QuPdw2tkRKOFT240rVILOA==
X-CSE-MsgGUID: FAZ/xLhkT+yE1n7+Adj57g==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23728952"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23728952"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:48:35 -0700
X-CSE-ConnectionGUID: hqVN/WsWSpagzc47pCi9SA==
X-CSE-MsgGUID: DRD+/nIaQmqcfovKLVAubA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63592745"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.14])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:48:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 5/6] drm/i915/hdcp: migrate away from kdev_to_i915() in GSC
 messaging
Date: Thu, 29 Aug 2024 17:47:47 +0300
Message-Id: <efd5c4c164c01b7ee50ad43f202b074b373fb810.1724942754.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724942754.git.jani.nikula@intel.com>
References: <cover.1724942754.git.jani.nikula@intel.com>
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

