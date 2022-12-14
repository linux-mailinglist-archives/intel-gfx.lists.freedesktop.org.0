Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C9764C58D
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 10:09:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3966410E397;
	Wed, 14 Dec 2022 09:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0664910E38D
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 09:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671008957; x=1702544957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YOMKfhp4vO0+YxQfBIUpMVJRfrnen6ep79lgqaY5GAA=;
 b=Qzv0ARZvUuTYzY1u9yp7HQ+chM9UCklj7tiyeYz42c2eugsFEvU4NYGl
 a3GNSraZdxYs7fA+97uO+HeR+IptcSaH9ov+3vVte9zOpa6zDdUEbEjqw
 HC+sufp5zoaQcqgq1m2vkfvfCsBpZ7h4LsYJW5xoO7XuoEbPzjuKdPjtO
 KW62i3BI1whFtFjA2Q5YXY+j9WGnLAZrYUVvzLCF5VFQmgaMdAjT+Hk9p
 AZjxzQc7Yfmg9hkKENV2BM87Fz9Cw0jXF5oal/t+V+RvzcIHKNLq0/hOP
 TjghfLXGCcuUDPaDDuN0MgdtW16vYTzQja9EBfiE8OXa6z55rc0n3E2vz A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="317054715"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="317054715"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 01:09:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="681458489"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="681458489"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2022 01:09:14 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Dec 2022 14:37:57 +0530
Message-Id: <20221214090758.3040356-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221214090758.3040356-1-suraj.kandpal@intel.com>
References: <20221214090758.3040356-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add function that takes care of sending command to gsc cs. We start
of with allocation of memory for our command intel_hdcp_gsc_message that
contains gsc cs memory header as directed in specs followed by the
actual payload hdcp message that we want to send.
Spec states that we need to poll pending bit of response header around
20 times each try being 50ms apart hence adding that to current
gsc_msg_send function
Also we use the same function to take care of both sending and receiving
hence no separate function to get the response.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 207 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  18 ++
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h   |   1 +
 4 files changed, 227 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index f64a8bc73c89..9cae0c1598a7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -251,6 +251,7 @@ i915-y += \
 	display/intel_frontbuffer.o \
 	display/intel_global_state.o \
 	display/intel_hdcp.o \
+	display/intel_hdcp_gsc.o \
 	display/intel_hotplug.o \
 	display/intel_hti.o \
 	display/intel_lpe_audio.o \
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
new file mode 100644
index 000000000000..6858b6219221
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -0,0 +1,207 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright 2021, Intel Corporation.
+ */
+
+#include "display/intel_hdcp_gsc.h"
+#include "gem/i915_gem_region.h"
+#include "gt/uc/intel_gsc_fw.h"
+#include "gt/uc/intel_gsc_fwif.h"
+#include "i915_drv.h"
+#include "i915_utils.h"
+
+struct intel_hdcp_gsc_message {
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	void *hdcp_cmd;
+};
+
+/*This function helps allocate memory for the command that we will send to gsc cs */
+static int intel_initialize_hdcp_gsc_message(struct drm_i915_private *i915,
+					     struct intel_hdcp_gsc_message *hdcp_message)
+{
+	struct intel_gt *gt = i915->media_gt;
+	struct drm_i915_gem_object *obj = NULL;
+	struct i915_vma *vma = NULL;
+	void *cmd;
+	int err;
+
+	hdcp_message->obj = NULL;
+	hdcp_message->hdcp_cmd = NULL;
+	hdcp_message->vma = NULL;
+
+	/* allocate object of one page for HDCP command memory and store it */
+	obj = i915_gem_object_create_shmem(gt->i915, PAGE_SIZE);
+
+	if (IS_ERR(obj)) {
+		drm_err(&gt->i915->drm, "Failed to allocate HDCP streaming command!\n");
+		return PTR_ERR(obj);
+	}
+
+	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(gt->i915, obj, true));
+	if (IS_ERR(cmd)) {
+		drm_err(&gt->i915->drm, "Failed to map gsc message page!\n");
+		err = PTR_ERR(cmd);
+		goto out_unpin;
+	}
+
+	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto out_unmap;
+	}
+
+	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL);
+	if (err)
+		goto out_unmap;
+
+	memset(cmd, 0, obj->base.size);
+
+	hdcp_message->obj = obj;
+	hdcp_message->hdcp_cmd = cmd;
+	hdcp_message->vma = vma;
+
+	return 0;
+
+out_unmap:
+	i915_gem_object_unpin_map(obj);
+out_unpin:
+	i915_gem_object_put(obj);
+	return err;
+}
+
+static void intel_free_hdcp_gsc_message(struct intel_hdcp_gsc_message *hdcp_message)
+{
+	struct drm_i915_gem_object *obj = fetch_and_zero(&hdcp_message->obj);
+
+	if (!obj)
+		return;
+
+	if (hdcp_message->vma)
+		i915_vma_unpin(fetch_and_zero(&hdcp_message->vma));
+
+	i915_gem_object_unpin_map(obj);
+	i915_gem_object_put(obj);
+	kfree(hdcp_message);
+}
+
+static int intel_gsc_send_sync(struct drm_i915_private *i915,
+			       struct intel_gsc_mtl_header *header, u64 addr,
+			       size_t msg_out_len)
+{
+	struct intel_gt *gt = i915->media_gt;
+	int ret;
+
+	header->flags = 0;
+	ret = intel_gsc_fw_heci_send(&gt->uc.gsc, addr, header->message_size,
+				     addr, msg_out_len + sizeof(*header));
+	if (ret) {
+		drm_err(&i915->drm, "failed to send gsc HDCP msg (%d)\n", ret);
+		return ret;
+	}
+	/*
+	 * Checking validity marker for memory sanity
+	 */
+	if (header->validity_marker != GSC_HECI_VALIDITY_MARKER) {
+		drm_err(&i915->drm, "invalid validity marker\n");
+		return -EINVAL;
+	}
+
+	if (header->status != 0) {
+		drm_err(&i915->drm, "header status indicates error %d\n",
+			header->status);
+		return -EINVAL;
+	}
+
+	if (header->flags & INTEL_GSC_MSG_PENDING)
+		return -EAGAIN;
+
+	return 0;
+}
+
+/*
+ * This function can now be used for sending requests and will also handle
+ * receipt of reply messages hence no different function of message retrieval
+ * is required. We will initialize intel_hdcp_gsc_message structure then add
+ * gsc cs memory header as stated in specs after which the normal HDCP payload
+ * will follow
+ */
+ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
+				size_t msg_in_len, u8 *msg_out, size_t msg_out_len)
+{
+	struct intel_gt *gt = i915->media_gt;
+	struct intel_gsc_mtl_header *header;
+	const size_t max_msg_size = PAGE_SIZE - sizeof(*header);
+	struct intel_hdcp_gsc_message *hdcp_message;
+	u64 addr;
+	u32 reply_size;
+	int ret, tries = 0;
+
+	if (!intel_uc_uses_gsc_uc(&gt->uc))
+		return -ENODEV;
+
+	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size)
+		return -ENOSPC;
+
+	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
+
+	if (!hdcp_message)
+		return -ENOMEM;
+
+	ret = intel_initialize_hdcp_gsc_message(i915, hdcp_message);
+
+	if (ret) {
+		drm_err(&i915->drm,
+			"Could not initialize hdcp_message\n");
+		goto err;
+	}
+
+	header = hdcp_message->hdcp_cmd;
+	addr = i915_ggtt_offset(hdcp_message->vma);
+
+	memset(header, 0, sizeof(*header));
+	header->validity_marker = GSC_HECI_VALIDITY_MARKER;
+	header->gsc_address = HECI_MEADDRESS_HDCP;
+	header->host_session_handle = 0;
+	header->header_version = MTL_GSC_HEADER_VERSION;
+	header->message_size = msg_in_len + sizeof(*header);
+
+	memcpy(hdcp_message->hdcp_cmd + sizeof(*header), msg_in, msg_in_len);
+
+	/*
+	 * Keep sending request in case the pending bit is set no need to add
+	 * message handle as we are using same address hence loc. of header is
+	 * same and it will contain the message handle. we will send the message
+	 * 20 times each message 50 ms apart
+	 */
+	do {
+		ret = intel_gsc_send_sync(i915, header, addr, msg_out_len);
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
+		goto err;
+
+	/* we use the same mem for the reply, so header is in the same loc */
+	reply_size = header->message_size - sizeof(*header);
+	if (reply_size > msg_out_len) {
+		drm_warn(&i915->drm, "caller with insufficient HDCP reply size %u (%d)\n",
+			 reply_size, (u32)msg_out_len);
+		reply_size = msg_out_len;
+	} else if (reply_size != msg_out_len) {
+		drm_dbg_kms(&i915->drm, "caller unexpected HCDP reply size %u (%d)\n",
+			    reply_size, (u32)msg_out_len);
+	}
+
+	memcpy(msg_out, hdcp_message->hdcp_cmd + sizeof(*header), msg_out_len);
+
+err:
+	intel_free_hdcp_gsc_message(hdcp_message);
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
new file mode 100644
index 000000000000..8f2563ab958b
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __INTEL_HDCP_GSC_H__
+#define __INTEL_HDCP_GSC_H__
+
+#include <linux/types.h>
+#include <linux/err.h>
+
+struct drm_i915_private;
+
+ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
+				size_t msg_in_len, u8 *msg_out,
+				size_t msg_out_len);
+
+#endif /* __INTEL_HDCP_GCS_H__ */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h
index 1c2a04d092a8..19b98c75367a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fwif.h
@@ -34,6 +34,7 @@ struct intel_gsc_mtl_header {
 	 * Bits 16-31: Extension Size
 	 */
 	u32 flags;
+#define INTEL_GSC_MSG_PENDING	1
 
 	u32 status;
 } __packed;
-- 
2.25.1

