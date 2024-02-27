Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8F38688AA
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 06:34:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69EEA10F029;
	Tue, 27 Feb 2024 05:34:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RPT5OSUg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD5010E86B;
 Tue, 27 Feb 2024 05:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709012049; x=1740548049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cGg3eDfcPGqhWGkjJyVHe48AOEigrnOekTiX872w6oE=;
 b=RPT5OSUgflbJur0bpng8Q44XuYggHEqhYiCcgAfPCA8i5AJbaIkgX99b
 VCyghGOHUZvkSNXejwsB33nk/PMFaqhHVmaGw8tVSECvREPy2/qNMt074
 FW4iPedVA6jUSt2uXBGa0Ez8eW74rdzr9KqBBemgGnS/YNHhtAPU5HI/F
 OlknF/tP+6oVpjqcDpL0f0edlJKGJviMQ7MgmhFRdL1i1aVzBMVpJfB6d
 AwzqoBfUvB8Q0dhpgd9ccPmP0Dhewah29yFpOXASDZb8+qVDa2sBxV6dm
 9XdqCMhroBSIyX/u5hNEiHQaxOh9uv9JB3GJ1/VypxsGMRRSoZZNBnpnf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3182905"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="3182905"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 21:34:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6857604"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 26 Feb 2024 21:34:07 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 4/4] drm/xe/hdcp: Enable HDCP for XE
Date: Tue, 27 Feb 2024 11:02:04 +0530
Message-ID: <20240227053204.1748920-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240227053204.1748920-1-suraj.kandpal@intel.com>
References: <20240227053204.1748920-1-suraj.kandpal@intel.com>
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

Enable HDCP for Xe by defining functions which take care of
interaction of HDCP as a client with the GSC CS interface.
Add intel_hdcp_gsc_message to Makefile and add corresponding
changes to xe_hdcp_gsc.c to make it build.

--v2
-add kfree at appropriate place [Daniele]
-remove useless define [Daniele]
-move host session logic to xe_gsc_submit.c [Daniele]
-call xe_gsc_check_and_update_pending directly in an if condition
[Daniele]
-use xe_device instead of drm_i915_private [Daniele]

--v3
-use xe prefix for newly exposed function [Daniele]
-remove client specific defines from intel_gsc_mtl_header [Daniele]
-add missing kfree() [Daniele]
-have NULL check for hdcp_message in finish function [Daniele]
-dont have too many variable declarations in the same line [Daniele]

--v4
-don't point the hdcp_message structure in xe_device to anything
until it properly gets initialized [Daniele]

--v5
-Squash commits for buildability

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/xe/Makefile              |   1 +
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 198 ++++++++++++++++++++++-
 drivers/gpu/drm/xe/xe_gsc_submit.c       |  15 ++
 drivers/gpu/drm/xe/xe_gsc_submit.h       |   1 +
 4 files changed, 212 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index c531210695db..2b654c908ff3 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -254,6 +254,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_global_state.o \
 	i915-display/intel_gmbus.o \
 	i915-display/intel_hdcp.o \
+	i915-display/intel_hdcp_gsc_message.o \
 	i915-display/intel_hdmi.o \
 	i915-display/intel_hotplug.o \
 	i915-display/intel_hotplug_irq.o \
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 0de06e0373ef..bb3bddcd5747 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -4,14 +4,31 @@
  */
 
 #include <drm/drm_print.h>
+#include <linux/delay.h>
+#include <drm/i915_hdcp_interface.h>
 
+#include "abi/gsc_command_header_abi.h"
 #include "intel_hdcp_gsc.h"
+#include "intel_hdcp_gsc_message.h"
 #include "xe_device_types.h"
 #include "xe_device.h"
 #include "xe_gt.h"
 #include "xe_gsc_proxy.h"
 #include "xe_pm.h"
 #include "xe_uc_fw.h"
+#include "xe_bo.h"
+#include "xe_map.h"
+#include "xe_gsc_submit.h"
+
+#define HECI_MEADDRESS_HDCP 18
+
+struct intel_hdcp_gsc_message {
+	struct xe_bo *hdcp_bo;
+	u64 hdcp_cmd_in;
+	u64 hdcp_cmd_out;
+};
+
+#define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
 
 bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
 {
@@ -45,19 +62,194 @@ bool intel_hdcp_gsc_check_status(struct xe_device *xe)
 	return ret;
 }
 
+/*This function helps allocate memory for the command that we will send to gsc cs */
+static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
+					     struct intel_hdcp_gsc_message *hdcp_message)
+{
+	struct xe_bo *bo = NULL;
+	u64 cmd_in, cmd_out;
+	int ret = 0;
+
+	/* allocate object of two page for HDCP command memory and store it */
+	xe_device_mem_access_get(xe);
+	bo = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, PAGE_SIZE * 2,
+				  ttm_bo_type_kernel,
+				  XE_BO_CREATE_SYSTEM_BIT |
+				  XE_BO_CREATE_GGTT_BIT);
+
+	if (IS_ERR(bo)) {
+		drm_err(&xe->drm, "Failed to allocate bo for HDCP streaming command!\n");
+		ret = PTR_ERR(bo);
+		goto out;
+	}
+
+	cmd_in = xe_bo_ggtt_addr(bo);
+	cmd_out = cmd_in + PAGE_SIZE;
+	xe_map_memset(xe, &bo->vmap, 0, 0, bo->size);
+
+	hdcp_message->hdcp_bo = bo;
+	hdcp_message->hdcp_cmd_in = cmd_in;
+	hdcp_message->hdcp_cmd_out = cmd_out;
+out:
+	xe_device_mem_access_put(xe);
+	return ret;
+}
+
+static int intel_hdcp_gsc_hdcp2_init(struct xe_device *xe)
+{
+	struct intel_hdcp_gsc_message *hdcp_message;
+	int ret;
+
+	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
+
+	if (!hdcp_message)
+		return -ENOMEM;
+
+	/*
+	 * NOTE: No need to lock the comp mutex here as it is already
+	 * going to be taken before this function called
+	 */
+	ret = intel_hdcp_gsc_initialize_message(xe, hdcp_message);
+	if (ret) {
+		drm_err(&xe->drm, "Could not initialize hdcp_message\n");
+		kfree(hdcp_message);
+		return ret;
+	}
+
+	xe->display.hdcp.hdcp_message = hdcp_message;
+	return ret;
+}
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
 int intel_hdcp_gsc_init(struct xe_device *xe)
 {
-	drm_dbg_kms(&xe->drm, "HDCP support not yet implemented\n");
-	return -ENODEV;
+	struct i915_hdcp_arbiter *data;
+	int ret;
+
+	data = kzalloc(sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	mutex_lock(&xe->display.hdcp.hdcp_mutex);
+	xe->display.hdcp.arbiter = data;
+	xe->display.hdcp.arbiter->hdcp_dev = xe->drm.dev;
+	xe->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
+	ret = intel_hdcp_gsc_hdcp2_init(xe);
+	if (ret)
+		kfree(data);
+
+	mutex_unlock(&xe->display.hdcp.hdcp_mutex);
+
+	return ret;
 }
 
 void intel_hdcp_gsc_fini(struct xe_device *xe)
 {
+	struct intel_hdcp_gsc_message *hdcp_message =
+					xe->display.hdcp.hdcp_message;
+
+	if (!hdcp_message)
+		return;
+
+	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
+	kfree(hdcp_message);
+}
+
+static int xe_gsc_send_sync(struct xe_device *xe,
+			    struct intel_hdcp_gsc_message *hdcp_message,
+			    u32 msg_size_in, u32 msg_size_out,
+			    u32 addr_out_off)
+{
+	struct xe_gt *gt = hdcp_message->hdcp_bo->tile->media_gt;
+	struct iosys_map *map = &hdcp_message->hdcp_bo->vmap;
+	struct xe_gsc *gsc = &gt->uc.gsc;
+	int ret;
+
+	ret = xe_gsc_pkt_submit_kernel(gsc, hdcp_message->hdcp_cmd_in, msg_size_in,
+				       hdcp_message->hdcp_cmd_out, msg_size_out);
+	if (ret) {
+		drm_err(&xe->drm, "failed to send gsc HDCP msg (%d)\n", ret);
+		return ret;
+	}
+
+	if (xe_gsc_check_and_update_pending(xe, map, 0, map, addr_out_off))
+		return -EAGAIN;
+
+	ret = xe_gsc_read_out_header(xe, map, addr_out_off,
+				     sizeof(struct hdcp_cmd_header), NULL);
+
+	return ret;
 }
 
 ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
 				size_t msg_in_len, u8 *msg_out,
 				size_t msg_out_len)
 {
-	return -ENODEV;
+	const size_t max_msg_size = PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
+	struct intel_hdcp_gsc_message *hdcp_message;
+	u64 host_session_id;
+	u32 msg_size_in, msg_size_out;
+	u32 addr_out_off, addr_in_wr_off = 0;
+	int ret, tries = 0;
+
+	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size) {
+		ret = -ENOSPC;
+		goto out;
+	}
+
+	msg_size_in = msg_in_len + HDCP_GSC_HEADER_SIZE;
+	msg_size_out = msg_out_len + HDCP_GSC_HEADER_SIZE;
+	hdcp_message = xe->display.hdcp.hdcp_message;
+	addr_out_off = PAGE_SIZE;
+
+	host_session_id = xe_gsc_create_host_session_id();
+	xe_device_mem_access_get(xe);
+	addr_in_wr_off = xe_gsc_emit_header(xe, &hdcp_message->hdcp_bo->vmap,
+					    addr_in_wr_off, HECI_MEADDRESS_HDCP,
+					    host_session_id, msg_in_len);
+	xe_map_memcpy_to(xe, &hdcp_message->hdcp_bo->vmap, addr_in_wr_off,
+			 msg_in, msg_in_len);
+	/*
+	 * Keep sending request in case the pending bit is set no need to add
+	 * message handle as we are using same address hence loc. of header is
+	 * same and it will contain the message handle. we will send the message
+	 * 20 times each message 50 ms apart
+	 */
+	do {
+		ret = xe_gsc_send_sync(xe, hdcp_message, msg_size_in, msg_size_out,
+				       addr_out_off);
+
+		/* Only try again if gsc says so */
+		if (ret != -EAGAIN)
+			break;
+
+		msleep(50);
+
+	} while (++tries < 20);
+
+	if (ret)
+		goto out;
+
+	xe_map_memcpy_from(xe, msg_out, &hdcp_message->hdcp_bo->vmap,
+			   addr_out_off + HDCP_GSC_HEADER_SIZE,
+			   msg_out_len);
+
+out:
+	xe_device_mem_access_put(xe);
+	return ret;
 }
diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.c b/drivers/gpu/drm/xe/xe_gsc_submit.c
index 348994b271be..9a18f5667db3 100644
--- a/drivers/gpu/drm/xe/xe_gsc_submit.c
+++ b/drivers/gpu/drm/xe/xe_gsc_submit.c
@@ -40,6 +40,21 @@ gsc_to_gt(struct xe_gsc *gsc)
 	return container_of(gsc, struct xe_gt, uc.gsc);
 }
 
+/**
+ * xe_gsc_get_host_session_id - Creates a random 64 bit host_session id with
+ * bits 56-63 masked.
+ *
+ * Returns: random host_session_id which can be used to send messages to gsc cs
+ */
+u64 xe_gsc_create_host_session_id(void)
+{
+	u64 host_session_id;
+
+	get_random_bytes(&host_session_id, sizeof(u64));
+	host_session_id &= ~HOST_SESSION_CLIENT_MASK;
+	return host_session_id;
+}
+
 /**
  * xe_gsc_emit_header - write the MTL GSC header in memory
  * @xe: the Xe device
diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.h b/drivers/gpu/drm/xe/xe_gsc_submit.h
index 1939855031a6..1416b5745a4c 100644
--- a/drivers/gpu/drm/xe/xe_gsc_submit.h
+++ b/drivers/gpu/drm/xe/xe_gsc_submit.h
@@ -28,4 +28,5 @@ int xe_gsc_read_out_header(struct xe_device *xe,
 int xe_gsc_pkt_submit_kernel(struct xe_gsc *gsc, u64 addr_in, u32 size_in,
 			     u64 addr_out, u32 size_out);
 
+u64 xe_gsc_create_host_session_id(void);
 #endif
-- 
2.43.2

