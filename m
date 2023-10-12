Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA277C6DFD
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C157410E13C;
	Thu, 12 Oct 2023 12:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9239810E13C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697113491; x=1728649491;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qljeMlPVqMwOgZA6AVSfICILXTi2+xKFh/0EBDNggWI=;
 b=LX9mNVDiYLGfbBtyKZ518JdYKZujltDlNJkFLm7b9NSRGd8pFGBWJAtg
 ND4zJSXGb+yZzxGhLp7FLMo5xtXYXgqSDPeMTpv1cNNIC3L4Qr5uADiGt
 djwHnV6g6ZXnWFxPQzhaZlYBeSqWDZ5szLNi1475JTFfjyOpsdgv/D8oB
 i+xRtWoVVMl26L5lm2dgrgn/R4bXE1VAw57C36JlXQWCZhd45zGcNBidD
 0PbfDZfxTUXP7wOZqECY4WdQtnuSSe33VGqGEKH71/w31f8J5raDrwr6j
 59vilIu2TqOAnaIFWb7+4KP1loTtwO19hb/zUXbHMnHgUKGTBCum+gf9D g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382140842"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="382140842"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:24:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844978995"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844978995"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:24:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:24:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 15:24:38 +0300
Message-ID: <20231012122442.15718-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
References: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/hdcp: Clean up zero initializers
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Just use a simple {} to zero initialize arrays/structs instead
of the hodgepodge of stuff we are using currently.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_hdcp_gsc_message.c | 44 +++++++++----------
 1 file changed, 21 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index caa9f0b25729..240b00849f3d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -13,9 +13,8 @@ int
 intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
 				struct hdcp2_ake_init *ake_data)
 {
-	struct wired_cmd_initiate_hdcp2_session_in session_init_in = { { 0 } };
-	struct wired_cmd_initiate_hdcp2_session_out
-						session_init_out = { { 0 } };
+	struct wired_cmd_initiate_hdcp2_session_in session_init_in = {};
+	struct wired_cmd_initiate_hdcp2_session_out session_init_out = {};
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
@@ -71,8 +70,8 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
 					       *ek_pub_km,
 					       size_t *msg_sz)
 {
-	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in = { { 0 } };
-	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out = { { 0 } };
+	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in = {};
+	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out = {};
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
@@ -134,8 +133,8 @@ int
 intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 			     struct hdcp2_ake_send_hprime *rx_hprime)
 {
-	struct wired_cmd_ake_send_hprime_in send_hprime_in = { { 0 } };
-	struct wired_cmd_ake_send_hprime_out send_hprime_out = { { 0 } };
+	struct wired_cmd_ake_send_hprime_in send_hprime_in = {};
+	struct wired_cmd_ake_send_hprime_out send_hprime_out = {};
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
@@ -182,8 +181,8 @@ int
 intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
 				  struct hdcp2_ake_send_pairing_info *pairing_info)
 {
-	struct wired_cmd_ake_send_pairing_info_in pairing_info_in = { { 0 } };
-	struct wired_cmd_ake_send_pairing_info_out pairing_info_out = { { 0 } };
+	struct wired_cmd_ake_send_pairing_info_in pairing_info_in = {};
+	struct wired_cmd_ake_send_pairing_info_out pairing_info_out = {};
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
@@ -233,8 +232,8 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev,
 				       struct hdcp_port_data *data,
 				       struct hdcp2_lc_init *lc_init_data)
 {
-	struct wired_cmd_init_locality_check_in lc_init_in = { { 0 } };
-	struct wired_cmd_init_locality_check_out lc_init_out = { { 0 } };
+	struct wired_cmd_init_locality_check_in lc_init_in = {};
+	struct wired_cmd_init_locality_check_out lc_init_out = {};
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
@@ -279,8 +278,8 @@ int
 intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 			     struct hdcp2_lc_send_lprime *rx_lprime)
 {
-	struct wired_cmd_validate_locality_in verify_lprime_in = { { 0 } };
-	struct wired_cmd_validate_locality_out verify_lprime_out = { { 0 } };
+	struct wired_cmd_validate_locality_in verify_lprime_in = {};
+	struct wired_cmd_validate_locality_out verify_lprime_out = {};
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
@@ -329,8 +328,8 @@ int intel_hdcp_gsc_get_session_key(struct device *dev,
 				   struct hdcp_port_data *data,
 				   struct hdcp2_ske_send_eks *ske_data)
 {
-	struct wired_cmd_get_session_key_in get_skey_in = { { 0 } };
-	struct wired_cmd_get_session_key_out get_skey_out = { { 0 } };
+	struct wired_cmd_get_session_key_in get_skey_in = {};
+	struct wired_cmd_get_session_key_out get_skey_out = {};
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
@@ -381,8 +380,8 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
 					       struct hdcp2_rep_send_ack
 					       *rep_send_ack)
 {
-	struct wired_cmd_verify_repeater_in verify_repeater_in = { { 0 } };
-	struct wired_cmd_verify_repeater_out verify_repeater_out = { { 0 } };
+	struct wired_cmd_verify_repeater_in verify_repeater_in = {};
+	struct wired_cmd_verify_repeater_out verify_repeater_out = {};
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
@@ -442,8 +441,7 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
 				 struct hdcp2_rep_stream_ready *stream_ready)
 {
 	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
-	struct wired_cmd_repeater_auth_stream_req_out
-					verify_mprime_out = { { 0 } };
+	struct wired_cmd_repeater_auth_stream_req_out verify_mprime_out = {};
 	struct drm_i915_private *i915;
 	ssize_t byte;
 	size_t cmd_size;
@@ -504,8 +502,8 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
 int intel_hdcp_gsc_enable_authentication(struct device *dev,
 					 struct hdcp_port_data *data)
 {
-	struct wired_cmd_enable_auth_in enable_auth_in = { { 0 } };
-	struct wired_cmd_enable_auth_out enable_auth_out = { { 0 } };
+	struct wired_cmd_enable_auth_in enable_auth_in = {};
+	struct wired_cmd_enable_auth_out enable_auth_out = {};
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
@@ -549,8 +547,8 @@ int intel_hdcp_gsc_enable_authentication(struct device *dev,
 int
 intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data)
 {
-	struct wired_cmd_close_session_in session_close_in = { { 0 } };
-	struct wired_cmd_close_session_out session_close_out = { { 0 } };
+	struct wired_cmd_close_session_in session_close_in = {};
+	struct wired_cmd_close_session_out session_close_out = {};
 	struct drm_i915_private *i915;
 	ssize_t byte;
 
-- 
2.41.0

