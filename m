Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F426AD7B9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 07:55:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1754810E376;
	Tue,  7 Mar 2023 06:55:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C856810E38F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 06:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678172100; x=1709708100;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T1X8cGK7zgmN0w6Ay6ZH6h2MYnmvzKh9PrqnV12KUMM=;
 b=Dv9M98tF0afM59XC0kDrs+rfIvDctgsBigj+jKAUFLSJELK6CtjVnK9T
 NZjHHEZ5zjIhxcFQbn6W8CgS9i0yZNdSnetIMZ9NE1f/K6EY7lm2JGWFK
 QxeH9igdeRYu7Ue4jC2gg+3+FDqH+NDIvh2eIhMXT6DmlQ49r4yjFnwgX
 xbMlGF+vSU+dZFP5hORUwkILMWCoRVFWlftvNDRGenp8f9ioZGCtu3s9Q
 dG+aP7xmyh7r3N7Yp7DB2ixWTCwl/5OJFBZtAX3/PpoW0wU3//anC1OjZ
 nUUlwRz/XDL1U3pvfMoRssgbKgkI6W1Vl33mhqUlturGTVxmD6bB2CmR7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="319609546"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="319609546"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 22:55:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="786579622"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="786579622"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2023 22:54:57 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Mar 2023 12:23:55 +0530
Message-Id: <20230307065356.181278-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230307065356.181278-1-suraj.kandpal@intel.com>
References: <20230307065356.181278-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 5/6] drm/i915/mtl: Add function to send
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
Cc: Alan Pervin Teres <alan.previn.teres.alexis@intel.com>
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

--v4
-Create common function to fill in gsc_mtl_header [Alan]
-define host session bitmask [Alan]

--v5
-use i915 directly instead of gt->i915 [Alan]
-No need to make fields NULL as we are already
using kzalloc [Alan]

--v8
-change mechanism to reuse the same memory for one hdcp session[Alan]
-fix header ordering
-add comments to explain flags and host session mask [Alan]

--v9
-remove gem obj from hdcp message as we can use
i915_vma_unpin_and_release [Alan]
-move hdcp message allocation and deallocation from hdcp2_enable and
hdcp2_disable to init and teardown of HDCP [Alan]

--v10
-remove unnecessary i915_vma_unpin [Alan]

--v11
-fix comment style [Uma]

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Pervin Teres <alan.previn.teres.alexis@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/display/intel_display_core.h |   6 +
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 200 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  23 ++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c |  15 ++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |  16 ++
 6 files changed, 261 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 8c6b3808c49f..53318809f4a1 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -256,6 +256,7 @@ i915-y += \
 	display/intel_frontbuffer.o \
 	display/intel_global_state.o \
 	display/intel_hdcp.o \
+	display/intel_hdcp_gsc.o \
 	display/intel_hotplug.o \
 	display/intel_hti.o \
 	display/intel_lpe_audio.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index d7cb649be915..cc5c9382c24e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -387,6 +387,12 @@ struct intel_display {
 		struct i915_hdcp_master *master;
 		bool comp_added;
 
+		/*
+		 * HDCP message struct for allocation of memory which can be
+		 * reused when sending message to gsc cs.
+		 * this is only populated post Meteorlake
+		 */
+		struct intel_hdcp_gsc_message *hdcp_message;
 		/* Mutex to protect the above hdcp component related values. */
 		struct mutex comp_mutex;
 	} hdcp;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
new file mode 100644
index 000000000000..4234fabd62ad
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -0,0 +1,200 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright 2023, Intel Corporation.
+ */
+
+#include "display/intel_hdcp_gsc.h"
+#include "gem/i915_gem_region.h"
+#include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
+#include "i915_drv.h"
+#include "i915_utils.h"
+
+/*This function helps allocate memory for the command that we will send to gsc cs */
+static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
+					     struct intel_hdcp_gsc_message *hdcp_message)
+{
+	struct intel_gt *gt = i915->media_gt;
+	struct drm_i915_gem_object *obj = NULL;
+	struct i915_vma *vma = NULL;
+	void *cmd;
+	int err;
+
+	/* allocate object of one page for HDCP command memory and store it */
+	obj = i915_gem_object_create_shmem(i915, PAGE_SIZE);
+
+	if (IS_ERR(obj)) {
+		drm_err(&i915->drm, "Failed to allocate HDCP streaming command!\n");
+		return PTR_ERR(obj);
+	}
+
+	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
+	if (IS_ERR(cmd)) {
+		drm_err(&i915->drm, "Failed to map gsc message page!\n");
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
+int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
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
+}
+
+void intel_hdcp_gsc_free_message(struct drm_i915_private *i915)
+{
+	struct intel_hdcp_gsc_message *hdcp_message =
+					i915->display.hdcp.hdcp_message;
+
+	i915_vma_unpin_and_release(&hdcp_message->vma, I915_VMA_RELEASE_MAP);
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
+	ret = intel_gsc_uc_heci_cmd_submit_packet(&gt->uc.gsc, addr,
+						  header->message_size,
+						  addr,
+						  msg_out_len + sizeof(*header));
+	if (ret) {
+		drm_err(&i915->drm, "failed to send gsc HDCP msg (%d)\n", ret);
+		return ret;
+	}
+
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
+	if (header->flags & GSC_OUTFLAG_MSG_PENDING)
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
+	u64 addr, host_session_id;
+	u32 reply_size, msg_size;
+	int ret, tries = 0;
+
+	if (!intel_uc_uses_gsc_uc(&gt->uc))
+		return -ENODEV;
+
+	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size)
+		return -ENOSPC;
+
+	hdcp_message = i915->display.hdcp.hdcp_message;
+	header = hdcp_message->hdcp_cmd;
+	addr = i915_ggtt_offset(hdcp_message->vma);
+
+	msg_size = msg_in_len + sizeof(*header);
+	memset(header, 0, msg_size);
+	get_random_bytes(&host_session_id, sizeof(u64));
+	intel_gsc_uc_heci_cmd_emit_mtl_header(header, HECI_MEADDRESS_HDCP,
+					      msg_size, host_session_id);
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
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
new file mode 100644
index 000000000000..09ffd7ec02cd
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_HDCP_GSC_H__
+#define __INTEL_HDCP_GSC_H__
+
+#include <linux/err.h>
+#include <linux/types.h>
+
+struct drm_i915_private;
+
+struct intel_hdcp_gsc_message {
+	struct i915_vma *vma;
+	void *hdcp_cmd;
+};
+
+ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
+				size_t msg_in_len, u8 *msg_out,
+				size_t msg_out_len);
+
+#endif /* __INTEL_HDCP_GCS_H__ */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
index be2424af521d..ea0da06e2f39 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
@@ -92,3 +92,18 @@ int intel_gsc_uc_heci_cmd_submit_packet(struct intel_gsc_uc *gsc, u64 addr_in,
 
 	return err;
 }
+
+void intel_gsc_uc_heci_cmd_emit_mtl_header(struct intel_gsc_mtl_header *header,
+					   u8 heci_client_id, u32 message_size,
+					   u64 host_session_id)
+{
+	host_session_id &= ~HOST_SESSION_MASK;
+	if (heci_client_id == HECI_MEADDRESS_PXP)
+		host_session_id |= HOST_SESSION_PXP_SINGLE;
+
+	header->validity_marker = GSC_HECI_VALIDITY_MARKER;
+	header->heci_client_id = heci_client_id;
+	header->host_session_handle = host_session_id;
+	header->header_version = MTL_GSC_HEADER_VERSION;
+	header->message_size = message_size;
+}
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
index cf610dfca7a5..3d56ae501991 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
@@ -22,7 +22,17 @@ struct intel_gsc_mtl_header {
 	u16 header_version;
 #define MTL_GSC_HEADER_VERSION 1
 
+	/*
+	 * FW allows host to decide host_session handle
+	 * as it sees fit.
+	 * For intertracebility reserving select bits(60-63)
+	 * to differentiate caller-target subsystem
+	 * 0000 - HDCP
+	 * 0001 - PXP Single Session
+	 */
 	u64 host_session_handle;
+#define HOST_SESSION_MASK	REG_GENMASK64(63, 60)
+#define HOST_SESSION_PXP_SINGLE BIT_ULL(60)
 	u64 gsc_message_handle;
 
 	u32 message_size; /* lower 20 bits only, upper 12 are reserved */
@@ -33,8 +43,11 @@ struct intel_gsc_mtl_header {
 	 * Bit 1: Session Cleanup;
 	 * Bits 2-15: Flags
 	 * Bits 16-31: Extension Size
+	 * According to internal spec flags are either input or output
+	 * we distinguish the flags using OUTFLAG or INFLAG
 	 */
 	u32 flags;
+#define GSC_OUTFLAG_MSG_PENDING	1
 
 	u32 status;
 } __packed;
@@ -42,4 +55,7 @@ struct intel_gsc_mtl_header {
 int intel_gsc_uc_heci_cmd_submit_packet(struct intel_gsc_uc *gsc,
 					u64 addr_in, u32 size_in,
 					u64 addr_out, u32 size_out);
+void intel_gsc_uc_heci_cmd_emit_mtl_header(struct intel_gsc_mtl_header *header,
+					   u8 heci_client_id, u32 message_size,
+					   u64 host_session_id);
 #endif
-- 
2.25.1

