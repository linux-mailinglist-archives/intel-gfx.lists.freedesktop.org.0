Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 225D9846AE2
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 09:40:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 825BB10E5F1;
	Fri,  2 Feb 2024 08:40:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eVi64K6i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7927910E561;
 Fri,  2 Feb 2024 08:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706863201; x=1738399201;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g+T3vmGGqO9Y8iySxQytAeCCqYM3jXNVjQyiH8+08BI=;
 b=eVi64K6iDi8fnWuXkHKn1McYN2ec340uErd0+ovOxoAwzMNwIu2XSEne
 /+hQO7oO5T46cUPU5eTi0AQK1qaSz/zzGYnRvhyFDOndvcGriOStfqwam
 1urIoZLhljOs6yFwnUHdw0L9+I+4Cu10d2ZcHYkU3VRbJ1sbL3hucuMJq
 2DVNtysF8PlsuslTPCkHkmP0E3Z9OMqVw28kmZJ5bZIIFGdsWMz0mCGib
 xksdXgk7vcd6JiK4kMmHDhvEHsqwVPtmzffcTED+oIdr9GiFu+0WutWe0
 aHYHE4Po76WM0+NnoSplJFuXbWHltICBkviyrZ9Kfqtq3cDSgssJ0ILh7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="25562497"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="25562497"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 00:39:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="4635272"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa004.fm.intel.com with ESMTP; 02 Feb 2024 00:39:54 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com, chaitanya.kumar.borah@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/3] drm/xe/hdcp: Enable HDCP for XE
Date: Fri,  2 Feb 2024 14:07:37 +0530
Message-Id: <20240202083737.1088306-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240202083737.1088306-1-suraj.kandpal@intel.com>
References: <20240202083737.1088306-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 188 ++++++++++++++++++++++-
 1 file changed, 184 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index 0f11a39333e2..eca941d7b281 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -3,8 +3,24 @@
  * Copyright 2023, Intel Corporation.
  */
 
+#include "abi/gsc_command_header_abi.h"
 #include "i915_drv.h"
 #include "intel_hdcp_gsc.h"
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
+#define HOST_SESSION_CLIENT_MASK GENMASK_ULL(63, 56)
+#define HDCP_GSC_MESSAGE_SIZE sizeof(struct intel_hdcp_gsc_message)
+#define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
 
 bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
 {
@@ -13,22 +29,186 @@ bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
 
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
+
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
+
+	if (iosys_map_is_null(&bo->vmap)) {
+		drm_err(&i915->drm, "Failed to map gsc message page!\n");
+		ret = PTR_ERR(&bo->vmap);
+		goto out;
+	}
+
+	cmd_out = cmd_in + PAGE_SIZE;
+
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
+			    u32 addr_in_off, u32 addr_out_off,
+			    size_t msg_out_len)
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
+	ret = xe_gsc_check_and_update_pending(i915, map, 0, map, addr_out_off);
+
+	if (ret)
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
+	u32 msg_size_in, msg_size_out, addr_in_off = 0, addr_out_off;
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
+	host_session_id = host_session_id & ~HOST_SESSION_CLIENT_MASK;
+	xe_device_mem_access_get(i915);
+	addr_in_off = xe_gsc_emit_header(i915, &hdcp_message->hdcp_bo->vmap,
+					 addr_in_off,
+					 HECI_MEADDRESS_HDCP, host_session_id,
+					 msg_in_len);
+
+	xe_map_memcpy_to(i915, &hdcp_message->hdcp_bo->vmap, addr_in_off, msg_in, msg_in_len);
+	/*
+	 * Keep sending request in case the pending bit is set no need to add
+	 * message handle as we are using same address hence loc. of header is
+	 * same and it will contain the message handle. we will send the message
+	 * 20 times each message 50 ms apart
+	 */
+	do {
+		ret = xe_gsc_send_sync(i915, hdcp_message, msg_size_in, msg_size_out,
+				       addr_in_off, addr_out_off, msg_out_len);
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
-- 
2.25.1

