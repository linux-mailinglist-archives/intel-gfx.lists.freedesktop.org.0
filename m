Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5325A9B8AB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 22:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 501AD10E860;
	Thu, 24 Apr 2025 20:02:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g3J8g2Uz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C66310E860;
 Thu, 24 Apr 2025 20:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745524920; x=1777060920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=apLrDdsPsGAZRG0JASDdC10xRJTftew7T2Jcio7gaJw=;
 b=g3J8g2UzmUxj9LihlmcwPRrIk0sK4TF9V/UVNBQDjFZrRHl3KxDIV0Pr
 1bFYcNxWMEDmpWuaG8EIdSxiZvAPiHDuisCNLI5ilGLD6SkAzJRvme/Sm
 M+5GNyqDtIFzGjfoa6WQk5CNMXsiRqCS4CY/yTVTBpju5ozz4VgthKkkJ
 +kRXJZYkatzfKX3/cRsIUQFfh3jis2XHqvbflD4Utkcq0LhjBmK83UP+U
 p8JccR9xw7/oKFf0IHXkNTr7CFa75s2ebBQSN6D/jowLGaCEBsZVMW6If
 dDk7WzC2GSt4YLWjfEoUePRmVZSt3l8iIjQdNGaVuu0NxG9UN9k9xgASv g==;
X-CSE-ConnectionGUID: 8d1tTyT6TCi3q00+TsFT9A==
X-CSE-MsgGUID: VUc4dXk1S7yWrGsC/7IhWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58543394"
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="58543394"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:02:00 -0700
X-CSE-ConnectionGUID: 7R19yE6QSZWdV685ViAHyw==
X-CSE-MsgGUID: gDNxmFwSStW822U8Fpn0VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="137788283"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.48])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:01:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 02/10] drm/i915/hdcp: deduplicate and refactor HDCP GSC ops
 initialization
Date: Thu, 24 Apr 2025 23:01:34 +0300
Message-Id: <21e7871b35d4c7d13f016b5ecb4f10e5be72c531.1745524803.git.jani.nikula@intel.com>
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

The gsc_hdcp_ops is duplicated and initialized exactly the same way in
two different places (for i915 and xe), and requires forward
declarations for all the hooks. Deduplicate, and make the functions
static.

There are slight differences in the i915 and xe implementations of
intel_hdcp_gsc_init() and intel_hdcp_gsc_fini(). Take the best of both,
and improve.

We need to expose intel_hdcp_gsc_hdcp2_init() and
intel_hdcp_gsc_free_message() for this, and create the latter for xe.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  1 +
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 46 +---------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  5 +-
 .../drm/i915/display/intel_hdcp_gsc_message.c | 84 +++++++++++++++----
 .../drm/i915/display/intel_hdcp_gsc_message.h | 58 +------------
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 50 +----------
 6 files changed, 79 insertions(+), 165 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 411f17655f89..4857685c4020 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -27,6 +27,7 @@
 #include "intel_dp_mst.h"
 #include "intel_hdcp.h"
 #include "intel_hdcp_gsc.h"
+#include "intel_hdcp_gsc_message.h"
 #include "intel_hdcp_regs.h"
 #include "intel_hdcp_shim.h"
 #include "intel_pcode.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 55965844d829..92a3ad2166f6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -11,7 +11,6 @@
 #include "i915_drv.h"
 #include "i915_utils.h"
 #include "intel_hdcp_gsc.h"
-#include "intel_hdcp_gsc_message.h"
 
 struct intel_hdcp_gsc_message {
 	struct i915_vma *vma;
@@ -91,23 +90,7 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 	return err;
 }
 
-static const struct i915_hdcp_ops gsc_hdcp_ops = {
-	.initiate_hdcp2_session = intel_hdcp_gsc_initiate_session,
-	.verify_receiver_cert_prepare_km =
-				intel_hdcp_gsc_verify_receiver_cert_prepare_km,
-	.verify_hprime = intel_hdcp_gsc_verify_hprime,
-	.store_pairing_info = intel_hdcp_gsc_store_pairing_info,
-	.initiate_locality_check = intel_hdcp_gsc_initiate_locality_check,
-	.verify_lprime = intel_hdcp_gsc_verify_lprime,
-	.get_session_key = intel_hdcp_gsc_get_session_key,
-	.repeater_check_flow_prepare_ack =
-				intel_hdcp_gsc_repeater_check_flow_prepare_ack,
-	.verify_mprime = intel_hdcp_gsc_verify_mprime,
-	.enable_hdcp_authentication = intel_hdcp_gsc_enable_authentication,
-	.close_hdcp_session = intel_hdcp_gsc_close_session,
-};
-
-static int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
+int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_hdcp_gsc_message *hdcp_message;
@@ -131,7 +114,7 @@ static int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
 	return ret;
 }
 
-static void intel_hdcp_gsc_free_message(struct intel_display *display)
+void intel_hdcp_gsc_free_message(struct intel_display *display)
 {
 	struct intel_hdcp_gsc_message *hdcp_message =
 					display->hdcp.hdcp_message;
@@ -142,31 +125,6 @@ static void intel_hdcp_gsc_free_message(struct intel_display *display)
 	kfree(hdcp_message);
 }
 
-int intel_hdcp_gsc_init(struct intel_display *display)
-{
-	struct i915_hdcp_arbiter *data;
-	int ret;
-
-	data = kzalloc(sizeof(struct i915_hdcp_arbiter), GFP_KERNEL);
-	if (!data)
-		return -ENOMEM;
-
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	display->hdcp.arbiter = data;
-	display->hdcp.arbiter->hdcp_dev = display->drm->dev;
-	display->hdcp.arbiter->ops = &gsc_hdcp_ops;
-	ret = intel_hdcp_gsc_hdcp2_init(display);
-	mutex_unlock(&display->hdcp.hdcp_mutex);
-
-	return ret;
-}
-
-void intel_hdcp_gsc_fini(struct intel_display *display)
-{
-	intel_hdcp_gsc_free_message(display);
-	kfree(display->hdcp.arbiter);
-}
-
 static int intel_gsc_send_sync(struct drm_i915_private *i915,
 			       struct intel_gsc_mtl_header *header_in,
 			       struct intel_gsc_mtl_header *header_out,
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
index 5695a5e4f609..ad41e7e80095 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -17,8 +17,9 @@ bool intel_hdcp_gsc_cs_required(struct intel_display *display);
 ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 				size_t msg_in_len, u8 *msg_out,
 				size_t msg_out_len);
-int intel_hdcp_gsc_init(struct intel_display *display);
-void intel_hdcp_gsc_fini(struct intel_display *display);
 bool intel_hdcp_gsc_check_status(struct intel_display *display);
 
+int intel_hdcp_gsc_hdcp2_init(struct intel_display *display);
+void intel_hdcp_gsc_free_message(struct intel_display *display);
+
 #endif /* __INTEL_HDCP_GCS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index d4620b54beba..8e2aafff71d5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -11,7 +11,7 @@
 #include "intel_hdcp_gsc.h"
 #include "intel_hdcp_gsc_message.h"
 
-int
+static int
 intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
 				struct hdcp2_ake_init *ake_data)
 {
@@ -65,7 +65,7 @@ intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
 	return 0;
 }
 
-int
+static int
 intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
 					       struct hdcp_port_data *data,
 					       struct hdcp2_ake_send_cert *rx_cert,
@@ -135,7 +135,7 @@ intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
 	return 0;
 }
 
-int
+static int
 intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 			     struct hdcp2_ake_send_hprime *rx_hprime)
 {
@@ -185,7 +185,7 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
 	return 0;
 }
 
-int
+static int
 intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
 				  struct hdcp2_ake_send_pairing_info *pairing_info)
 {
@@ -237,7 +237,7 @@ intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *dat
 	return 0;
 }
 
-int
+static int
 intel_hdcp_gsc_initiate_locality_check(struct device *dev,
 				       struct hdcp_port_data *data,
 				       struct hdcp2_lc_init *lc_init_data)
@@ -286,7 +286,7 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev,
 	return 0;
 }
 
-int
+static int
 intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 			     struct hdcp2_lc_send_lprime *rx_lprime)
 {
@@ -338,9 +338,10 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
 	return 0;
 }
 
-int intel_hdcp_gsc_get_session_key(struct device *dev,
-				   struct hdcp_port_data *data,
-				   struct hdcp2_ske_send_eks *ske_data)
+static int
+intel_hdcp_gsc_get_session_key(struct device *dev,
+			       struct hdcp_port_data *data,
+			       struct hdcp2_ske_send_eks *ske_data)
 {
 	struct wired_cmd_get_session_key_in get_skey_in = {};
 	struct wired_cmd_get_session_key_out get_skey_out = {};
@@ -388,7 +389,7 @@ int intel_hdcp_gsc_get_session_key(struct device *dev,
 	return 0;
 }
 
-int
+static int
 intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
 					       struct hdcp_port_data *data,
 					       struct hdcp2_rep_send_receiverid_list
@@ -454,9 +455,10 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
 	return 0;
 }
 
-int intel_hdcp_gsc_verify_mprime(struct device *dev,
-				 struct hdcp_port_data *data,
-				 struct hdcp2_rep_stream_ready *stream_ready)
+static int
+intel_hdcp_gsc_verify_mprime(struct device *dev,
+			     struct hdcp_port_data *data,
+			     struct hdcp2_rep_stream_ready *stream_ready)
 {
 	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
 	struct wired_cmd_repeater_auth_stream_req_out verify_mprime_out = {};
@@ -519,8 +521,8 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev,
 	return 0;
 }
 
-int intel_hdcp_gsc_enable_authentication(struct device *dev,
-					 struct hdcp_port_data *data)
+static int intel_hdcp_gsc_enable_authentication(struct device *dev,
+						struct hdcp_port_data *data)
 {
 	struct wired_cmd_enable_auth_in enable_auth_in = {};
 	struct wired_cmd_enable_auth_out enable_auth_out = {};
@@ -566,7 +568,7 @@ int intel_hdcp_gsc_enable_authentication(struct device *dev,
 	return 0;
 }
 
-int
+static int
 intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data)
 {
 	struct wired_cmd_close_session_in session_close_in = {};
@@ -612,3 +614,53 @@ intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data)
 
 	return 0;
 }
+
+static const struct i915_hdcp_ops gsc_hdcp_ops = {
+	.initiate_hdcp2_session = intel_hdcp_gsc_initiate_session,
+	.verify_receiver_cert_prepare_km =
+				intel_hdcp_gsc_verify_receiver_cert_prepare_km,
+	.verify_hprime = intel_hdcp_gsc_verify_hprime,
+	.store_pairing_info = intel_hdcp_gsc_store_pairing_info,
+	.initiate_locality_check = intel_hdcp_gsc_initiate_locality_check,
+	.verify_lprime = intel_hdcp_gsc_verify_lprime,
+	.get_session_key = intel_hdcp_gsc_get_session_key,
+	.repeater_check_flow_prepare_ack =
+				intel_hdcp_gsc_repeater_check_flow_prepare_ack,
+	.verify_mprime = intel_hdcp_gsc_verify_mprime,
+	.enable_hdcp_authentication = intel_hdcp_gsc_enable_authentication,
+	.close_hdcp_session = intel_hdcp_gsc_close_session,
+};
+
+int intel_hdcp_gsc_init(struct intel_display *display)
+{
+	struct i915_hdcp_arbiter *arbiter;
+	int ret;
+
+	arbiter = kzalloc(sizeof(*arbiter), GFP_KERNEL);
+	if (!arbiter)
+		return -ENOMEM;
+
+	mutex_lock(&display->hdcp.hdcp_mutex);
+
+	ret = intel_hdcp_gsc_hdcp2_init(display);
+	if (ret) {
+		kfree(arbiter);
+		goto out;
+	}
+
+	display->hdcp.arbiter = arbiter;
+	display->hdcp.arbiter->hdcp_dev = display->drm->dev;
+	display->hdcp.arbiter->ops = &gsc_hdcp_ops;
+
+out:
+	mutex_unlock(&display->hdcp.hdcp_mutex);
+
+	return ret;
+}
+
+void intel_hdcp_gsc_fini(struct intel_display *display)
+{
+	intel_hdcp_gsc_free_message(display);
+	kfree(display->hdcp.arbiter);
+	display->hdcp.arbiter = NULL;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
index 1af2f7c745fd..9f54157a4a3e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
@@ -6,63 +6,9 @@
 #ifndef __INTEL_HDCP_GSC_MESSAGE_H__
 #define __INTEL_HDCP_GSC_MESSAGE_H__
 
-#include <linux/types.h>
-
-struct device;
-struct hdcp_port_data;
-struct hdcp2_ake_init;
-struct hdcp2_ake_send_cert;
-struct hdcp2_ake_no_stored_km;
-struct hdcp2_ake_send_hprime;
-struct hdcp2_ake_send_pairing_info;
-struct hdcp2_lc_init;
-struct hdcp2_lc_send_lprime;
-struct hdcp2_ske_send_eks;
-struct hdcp2_rep_send_receiverid_list;
-struct hdcp2_rep_send_ack;
-struct hdcp2_rep_stream_ready;
 struct intel_display;
 
-int
-intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_data *data,
-				struct hdcp2_ake_init *ake_data);
-int
-intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
-					       struct hdcp_port_data *data,
-					       struct hdcp2_ake_send_cert *rx_cert,
-					       bool *km_stored,
-					       struct hdcp2_ake_no_stored_km
-					       *ek_pub_km,
-					       size_t *msg_sz);
-int
-intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data *data,
-			     struct hdcp2_ake_send_hprime *rx_hprime);
-int
-intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
-				  struct hdcp2_ake_send_pairing_info *pairing_info);
-int
-intel_hdcp_gsc_initiate_locality_check(struct device *dev,
-				       struct hdcp_port_data *data,
-				       struct hdcp2_lc_init *lc_init_data);
-int
-intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *data,
-			     struct hdcp2_lc_send_lprime *rx_lprime);
-int intel_hdcp_gsc_get_session_key(struct device *dev,
-				   struct hdcp_port_data *data,
-				   struct hdcp2_ske_send_eks *ske_data);
-int
-intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
-					       struct hdcp_port_data *data,
-					       struct hdcp2_rep_send_receiverid_list
-					       *rep_topology,
-					       struct hdcp2_rep_send_ack
-					       *rep_send_ack);
-int intel_hdcp_gsc_verify_mprime(struct device *dev,
-				 struct hdcp_port_data *data,
-				 struct hdcp2_rep_stream_ready *stream_ready);
-int intel_hdcp_gsc_enable_authentication(struct device *dev,
-					 struct hdcp_port_data *data);
-int
-intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data *data);
+int intel_hdcp_gsc_init(struct intel_display *display);
+void intel_hdcp_gsc_fini(struct intel_display *display);
 
 #endif /* __INTEL_HDCP_GSC_MESSAGE_H__ */
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 7c02323e9531..21cfecf077bf 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -9,7 +9,6 @@
 
 #include "abi/gsc_command_header_abi.h"
 #include "intel_hdcp_gsc.h"
-#include "intel_hdcp_gsc_message.h"
 #include "xe_bo.h"
 #include "xe_device.h"
 #include "xe_device_types.h"
@@ -100,7 +99,7 @@ static int intel_hdcp_gsc_initialize_message(struct intel_display *display,
 	return ret;
 }
 
-static int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
+int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
 {
 	struct intel_hdcp_gsc_message *hdcp_message;
 	int ret;
@@ -125,58 +124,15 @@ static int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
 	return ret;
 }
 
-static const struct i915_hdcp_ops gsc_hdcp_ops = {
-	.initiate_hdcp2_session = intel_hdcp_gsc_initiate_session,
-	.verify_receiver_cert_prepare_km =
-				intel_hdcp_gsc_verify_receiver_cert_prepare_km,
-	.verify_hprime = intel_hdcp_gsc_verify_hprime,
-	.store_pairing_info = intel_hdcp_gsc_store_pairing_info,
-	.initiate_locality_check = intel_hdcp_gsc_initiate_locality_check,
-	.verify_lprime = intel_hdcp_gsc_verify_lprime,
-	.get_session_key = intel_hdcp_gsc_get_session_key,
-	.repeater_check_flow_prepare_ack =
-				intel_hdcp_gsc_repeater_check_flow_prepare_ack,
-	.verify_mprime = intel_hdcp_gsc_verify_mprime,
-	.enable_hdcp_authentication = intel_hdcp_gsc_enable_authentication,
-	.close_hdcp_session = intel_hdcp_gsc_close_session,
-};
-
-int intel_hdcp_gsc_init(struct intel_display *display)
-{
-	struct i915_hdcp_arbiter *data;
-	int ret;
-
-	data = kzalloc(sizeof(*data), GFP_KERNEL);
-	if (!data)
-		return -ENOMEM;
-
-	mutex_lock(&display->hdcp.hdcp_mutex);
-	display->hdcp.arbiter = data;
-	display->hdcp.arbiter->hdcp_dev = display->drm->dev;
-	display->hdcp.arbiter->ops = &gsc_hdcp_ops;
-	ret = intel_hdcp_gsc_hdcp2_init(display);
-	if (ret)
-		kfree(data);
-
-	mutex_unlock(&display->hdcp.hdcp_mutex);
-
-	return ret;
-}
-
-void intel_hdcp_gsc_fini(struct intel_display *display)
+void intel_hdcp_gsc_free_message(struct intel_display *display)
 {
-	struct intel_hdcp_gsc_message *hdcp_message =
-					display->hdcp.hdcp_message;
-	struct i915_hdcp_arbiter *arb = display->hdcp.arbiter;
+	struct intel_hdcp_gsc_message *hdcp_message = display->hdcp.hdcp_message;
 
 	if (hdcp_message) {
 		xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
 		kfree(hdcp_message);
 		display->hdcp.hdcp_message = NULL;
 	}
-
-	kfree(arb);
-	display->hdcp.arbiter = NULL;
 }
 
 static int xe_gsc_send_sync(struct xe_device *xe,
-- 
2.39.5

