Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9CA84F319
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 11:16:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F11C310F307;
	Fri,  9 Feb 2024 10:16:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gHYBGCro";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A5610F306;
 Fri,  9 Feb 2024 10:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707473806; x=1739009806;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yH0kluFod0TF/GKhooES1JmitYI2ahlu5PxKkaBJp64=;
 b=gHYBGCroOqpwQp9KDNQOUieoanyPLZf3OW0wX04SIsCVEFwl/sL0O5Cu
 9KjEh6f1tMF8C1wbCVV4c3S/oGundtvx6Bx4cRswxDr0UZZgUnZRdQmY/
 J6DOTEqSJCHBWXKTx1U3UfVww8+eDS1+eWeCz8M0bdHOZlCmiavlU8d4I
 V16XYayVtbVoq+d4YcrQJ5fzgJxuE3NuifdKPvsLvCtcyu0f843nmvHCl
 vyB5nolraX+9ZhlBkQLtJHJNGlb/X2lnBMncTLcaIqZzZJEE9uEdyz/Gj
 3rLeK2lqBN0h4NvwmEovmuUxbns58U3FhWE4hf/ULfCddV8eSRD4jpsN5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1307498"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="1307498"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 02:16:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="2244125"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa006.jf.intel.com with ESMTP; 09 Feb 2024 02:16:16 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/5] drm/xe/hdcp: Enable HDCP for XE
Date: Fri,  9 Feb 2024 15:44:11 +0530
Message-Id: <20240209101412.1326176-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240209101412.1326176-1-suraj.kandpal@intel.com>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 180 ++++++++++++++++++++++-
 drivers/gpu/drm/xe/xe_gsc_submit.c       |  15 ++
 drivers/gpu/drm/xe/xe_gsc_submit.h       |   1 +
 3 files changed, 193 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 425db3532ce5..aa8c13916bb6 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -4,12 +4,27 @@
  */
 
 #include <drm/drm_print.h>
+#include <linux/delay.h>
 
+#include "abi/gsc_command_header_abi.h"
 #include "intel_hdcp_gsc.h"
 #include "xe_device_types.h"
 #include "xe_gt.h"
 #include "xe_gsc_proxy.h"
 #include "xe_pm.h"
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
@@ -40,19 +55,178 @@ bool intel_hdcp_gsc_check_status(struct xe_device *xe)
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
+	xe->display.hdcp.hdcp_message = hdcp_message;
+
+	if (ret) {
+		drm_err(&xe->drm, "Could not initialize hdcp_message\n");
+		kfree(hdcp_message);
+	}
+
+	return ret;
+}
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
2.25.1

