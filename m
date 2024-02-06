Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBFC84BB5E
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 17:49:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B552112CD4;
	Tue,  6 Feb 2024 16:49:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lmpBY+yC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5131112CD4;
 Tue,  6 Feb 2024 16:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707238191; x=1738774191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ThFEUYZAw4yBHJ7q8M3WDzVsAbtfYg4VgBn+i+vO124=;
 b=lmpBY+yCx3dAecZpqlm6srlxhqkljCPiLH6/9QFxk41snvTdW+B5x1DM
 AqgwGrc6DrykcNEz79GNiCgrslC0DY2ty+sT5mgwdYb6JJtpj60+5aa6R
 CSDQtC9GClXuHY9bjUSdp1Dv1UnmfmGJRtCE+xRAkeQZTBy2iPvu4KDj/
 UqnFwMEbRSHz24P+r/rQ0cURQxbqiyr2gF8HSlsfD+1ZlLGniR22Y+EKk
 eP0p1mOmoTWfl3a0eN+xIowQPAp4ycOcfjqkmCt20DBKS00wG+W09ncEW
 hizo1rNYNkMt3i/VKlpBg21uLqVzksSliukmP+UXwxQeVOMbe9cpK5qRt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="11525160"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="11525160"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 08:49:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="24309531"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa002.fm.intel.com with ESMTP; 06 Feb 2024 08:49:47 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com, chaitanya.kumar.borah@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/3] drm/xe/hdcp: Enable HDCP for XE
Date: Tue,  6 Feb 2024 22:17:41 +0530
Message-Id: <20240206164742.1222593-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240206164742.1222593-1-suraj.kandpal@intel.com>
References: <20240206164742.1222593-1-suraj.kandpal@intel.com>
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

--v2
-add kfree at appropriate place [Daniele]
-forward declare drm_i915_private [Daniele]
-remove useless define [Daniele]
-move host session logic to xe_gsc_submit.c [Daniele]
-call xe_gsc_check_and_update_pending directly in an if condition
[Daniele]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |   4 +-
 .../gpu/drm/xe/abi/gsc_command_header_abi.h   |   2 +
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 180 +++++++++++++++++-
 drivers/gpu/drm/xe/xe_gsc_submit.c            |  19 ++
 drivers/gpu/drm/xe/xe_gsc_submit.h            |   1 +
 5 files changed, 200 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index e44f60f00e8b..9e895f714f90 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -123,8 +123,10 @@ static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
 	i915->display.hdcp.hdcp_message = hdcp_message;
 	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message);
 
-	if (ret)
+	if (ret) {
 		drm_err(&i915->drm, "Could not initialize hdcp_message\n");
+		kfree(hdcp_message);
+	}
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/xe/abi/gsc_command_header_abi.h b/drivers/gpu/drm/xe/abi/gsc_command_header_abi.h
index a4c2646803b5..d2fbf71439be 100644
--- a/drivers/gpu/drm/xe/abi/gsc_command_header_abi.h
+++ b/drivers/gpu/drm/xe/abi/gsc_command_header_abi.h
@@ -21,6 +21,8 @@ struct intel_gsc_mtl_header {
 
 	/* FW allows host to decide host_session handle as it sees fit. */
 	u64 host_session_handle;
+#define HECI_MEADDRESS_PXP 17
+#define HECI_MEADDRESS_HDCP 18
 
 	/* handle generated by FW for messages that need to be re-submitted */
 	u64 gsc_message_handle;
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 0f11a39333e2..dbcd10617a1b 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -3,8 +3,24 @@
  * Copyright 2023, Intel Corporation.
  */
 
-#include "i915_drv.h"
+#include <linux/delay.h>
+
+#include "abi/gsc_command_header_abi.h"
 #include "intel_hdcp_gsc.h"
+#include "xe_bo.h"
+#include "xe_map.h"
+#include "xe_gsc_submit.h"
+
+#define HECI_MEADDRESS_HDCP 18
+
+struct drm_i915_private;
+struct intel_hdcp_gsc_message {
+	struct xe_bo *hdcp_bo;
+	u64 hdcp_cmd_in;
+	u64 hdcp_cmd_out;
+};
+
+#define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
 
 bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
 {
@@ -13,22 +29,176 @@ bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
 
 bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915)
 {
-	return false;
+	return true;
+}
+
+/*This function helps allocate memory for the command that we will send to gsc cs */
+static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
+					     struct intel_hdcp_gsc_message *hdcp_message)
+{
+	struct xe_bo *bo = NULL;
+	u64 cmd_in, cmd_out;
+	int err, ret = 0;
+
+	/* allocate object of two page for HDCP command memory and store it */
+	xe_device_mem_access_get(i915);
+	bo = xe_bo_create_pin_map(i915, xe_device_get_root_tile(i915), NULL, PAGE_SIZE * 2,
+				  ttm_bo_type_kernel,
+				  XE_BO_CREATE_SYSTEM_BIT |
+				  XE_BO_CREATE_GGTT_BIT);
+
+	if (IS_ERR(bo)) {
+		drm_err(&i915->drm, "Failed to allocate bo for HDCP streaming command!\n");
+		ret = err;
+		goto out;
+	}
+
+	cmd_in = xe_bo_ggtt_addr(bo);
+	cmd_out = cmd_in + PAGE_SIZE;
+	xe_map_memset(i915, &bo->vmap, 0, 0, bo->size);
+
+	hdcp_message->hdcp_bo = bo;
+	hdcp_message->hdcp_cmd_in = cmd_in;
+	hdcp_message->hdcp_cmd_out = cmd_out;
+out:
+	xe_device_mem_access_put(i915);
+	return ret;
+}
+
+static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
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
+	i915->display.hdcp.hdcp_message = hdcp_message;
+	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message);
+
+	if (ret)
+		drm_err(&i915->drm, "Could not initialize hdcp_message\n");
+
+	return ret;
 }
 
 int intel_hdcp_gsc_init(struct drm_i915_private *i915)
 {
-	drm_info(&i915->drm, "HDCP support not yet implemented\n");
-	return -ENODEV;
+	struct i915_hdcp_arbiter *data;
+	int ret;
+
+	data = kzalloc(sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	mutex_lock(&i915->display.hdcp.hdcp_mutex);
+	i915->display.hdcp.arbiter = data;
+	i915->display.hdcp.arbiter->hdcp_dev = i915->drm.dev;
+	i915->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
+	ret = intel_hdcp_gsc_hdcp2_init(i915);
+	if (ret)
+		kfree(data);
+
+	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
+
+	return ret;
 }
 
 void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
 {
+	struct intel_hdcp_gsc_message *hdcp_message =
+					i915->display.hdcp.hdcp_message;
+
+	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
+	kfree(hdcp_message);
+
 }
 
+static int xe_gsc_send_sync(struct drm_i915_private *i915,
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
+		drm_err(&i915->drm, "failed to send gsc HDCP msg (%d)\n", ret);
+		return ret;
+	}
+
+	if (xe_gsc_check_and_update_pending(i915, map, 0, map, addr_out_off))
+		return -EAGAIN;
+
+	ret = xe_gsc_read_out_header(i915, map, addr_out_off,
+				     sizeof(struct hdcp_cmd_header), NULL);
+
+	return ret;
+}
 ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 				size_t msg_in_len, u8 *msg_out,
 				size_t msg_out_len)
 {
-	return -ENODEV;
+	const size_t max_msg_size = PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
+	struct intel_hdcp_gsc_message *hdcp_message;
+	u64 host_session_id;
+	u32 msg_size_in, msg_size_out, addr_in_wr_off = 0, addr_out_off;
+	int ret, tries = 0;
+
+	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size) {
+		ret = -ENOSPC;
+		goto out;
+	}
+
+	msg_size_in = msg_in_len + HDCP_GSC_HEADER_SIZE;
+	msg_size_out = msg_out_len + HDCP_GSC_HEADER_SIZE;
+	hdcp_message = i915->display.hdcp.hdcp_message;
+	addr_out_off = PAGE_SIZE;
+
+	get_random_bytes(&host_session_id, sizeof(u64));
+	host_session_id = xe_gsc_get_host_session_id(HECI_MEADDRESS_HDCP);
+	xe_device_mem_access_get(i915);
+	addr_in_wr_off = xe_gsc_emit_header(i915, &hdcp_message->hdcp_bo->vmap,
+					    addr_in_wr_off, HECI_MEADDRESS_HDCP,
+					    host_session_id, msg_in_len);
+	xe_map_memcpy_to(i915, &hdcp_message->hdcp_bo->vmap, addr_in_wr_off,
+			 msg_in, msg_in_len);
+	/*
+	 * Keep sending request in case the pending bit is set no need to add
+	 * message handle as we are using same address hence loc. of header is
+	 * same and it will contain the message handle. we will send the message
+	 * 20 times each message 50 ms apart
+	 */
+	do {
+		ret = xe_gsc_send_sync(i915, hdcp_message, msg_size_in, msg_size_out,
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
+	xe_map_memcpy_from(i915, msg_out, &hdcp_message->hdcp_bo->vmap,
+			   addr_out_off + HDCP_GSC_HEADER_SIZE,
+			   msg_out_len);
+
+out:
+	xe_device_mem_access_put(i915);
+	return ret;
 }
diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.c b/drivers/gpu/drm/xe/xe_gsc_submit.c
index 348994b271be..57793b0acfc3 100644
--- a/drivers/gpu/drm/xe/xe_gsc_submit.c
+++ b/drivers/gpu/drm/xe/xe_gsc_submit.c
@@ -33,6 +33,7 @@
  * include the client id in the top 8 bits of the handle.
  */
 #define HOST_SESSION_CLIENT_MASK GENMASK_ULL(63, 56)
+#define HOST_SESSION_PXP_SINGLE BIT_ULL(60)
 
 static struct xe_gt *
 gsc_to_gt(struct xe_gsc *gsc)
@@ -40,6 +41,24 @@ gsc_to_gt(struct xe_gsc *gsc)
 	return container_of(gsc, struct xe_gt, uc.gsc);
 }
 
+/**
+ * xe_gsc_get_host_session_id - Create host session id based on HECI
+ * client address
+ * @heci_client_id: client id identifying the type of command (see abi for values)
+ *
+ * Returns: random host_session_id which can be used to send messages to gsc cs
+ */
+u64 xe_gsc_get_host_session_id(u8 heci_client_id)
+{
+	u64 host_session_id;
+
+	get_random_bytes(&host_session_id, sizeof(u64));
+	host_session_id &= ~HOST_SESSION_CLIENT_MASK;
+	if (host_session_id && heci_client_id == HECI_MEADDRESS_PXP)
+		host_session_id |= HOST_SESSION_PXP_SINGLE;
+	return host_session_id;
+};
+
 /**
  * xe_gsc_emit_header - write the MTL GSC header in memory
  * @xe: the Xe device
diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.h b/drivers/gpu/drm/xe/xe_gsc_submit.h
index 1939855031a6..f3359b6659b8 100644
--- a/drivers/gpu/drm/xe/xe_gsc_submit.h
+++ b/drivers/gpu/drm/xe/xe_gsc_submit.h
@@ -28,4 +28,5 @@ int xe_gsc_read_out_header(struct xe_device *xe,
 int xe_gsc_pkt_submit_kernel(struct xe_gsc *gsc, u64 addr_in, u32 size_in,
 			     u64 addr_out, u32 size_out);
 
+u64 xe_gsc_get_host_session_id(u8 heci_client_id);
 #endif
-- 
2.25.1

