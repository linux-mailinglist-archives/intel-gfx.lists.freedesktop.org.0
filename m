Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A98A66383B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 05:36:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E1D410E53B;
	Tue, 10 Jan 2023 04:36:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C1D10E532
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 04:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673325403; x=1704861403;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lReX/kGlyCjMieaWVPoN4ZdfPDiKKFj5P6tnicjlSw0=;
 b=ZDvDpmOL0dy+3nvtWCRlUzfePQBtNQJdgQ24Zk+p5WPEr2PIwKt/QmFu
 Zt4kqvoWuoxEd5BBd6UOapIknwlVlG6w5bTiSDH7fU+qf6YST8GgyHYzx
 4CuRH3yhNVlXjlbX867feHqFN0DJRbTRw1appuwAMmusMwiktzYNR5hKz
 AmAMiJBQRU63pBKkFez4TieP12hJWmUVtmA1orh8C6sLcJqDg5ecAz2NF
 X8mxIZQqk/vAL1OLaoZ9EDbXN9SD4dye13ZIsvcMUcL+viTC7/G3NEP2f
 W9EBC9mcHsvLNzdo6Bt+EuZ6r6wjeQa8xb9TDvIC6RlTchS7T9v2HaFFi Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="350279719"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="350279719"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 20:36:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="650230591"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="650230591"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 09 Jan 2023 20:36:40 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Jan 2023 10:05:16 +0530
Message-Id: <20230110043517.1388837-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110043517.1388837-1-suraj.kandpal@intel.com>
References: <20230110043517.1388837-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 5/6] drm/i915/mtl: Add function to send
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

--v4
-Create common function to fill in gsc_mtl_header [Alan]
-define host session bitmask [Alan]

--v5
-use i915 directly instead of gt->i915 [Alan]
-No need to make fields NULL as we are already
using kzalloc [Alan]

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 202 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  18 ++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c |  15 ++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |   6 +
 5 files changed, 242 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 461d6b40656d..194aae92c354 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -254,6 +254,7 @@ i915-y += \
 	display/intel_frontbuffer.o \
 	display/intel_global_state.o \
 	display/intel_hdcp.o \
+	display/intel_hdcp_gsc.o \
 	display/intel_hotplug.o \
 	display/intel_hti.o \
 	display/intel_lpe_audio.o \
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
new file mode 100644
index 000000000000..ca7bfeeb1768
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -0,0 +1,202 @@
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
+	ret = intel_gsc_uc_heci_cmd_submit_packet(&gt->uc.gsc, addr,
+						  header->message_size,
+						  addr,
+						  msg_out_len + sizeof(*header));
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
+	msg_size = msg_in_len + sizeof(*header);
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
+	intel_free_hdcp_gsc_message(hdcp_message);
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
new file mode 100644
index 000000000000..582f4992be76
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
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
index cf610dfca7a5..78fe04f911b9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
@@ -23,6 +23,8 @@ struct intel_gsc_mtl_header {
 #define MTL_GSC_HEADER_VERSION 1
 
 	u64 host_session_handle;
+#define HOST_SESSION_MASK	REG_GENMASK64(63, 60)
+#define HOST_SESSION_PXP_SINGLE BIT_ULL(60)
 	u64 gsc_message_handle;
 
 	u32 message_size; /* lower 20 bits only, upper 12 are reserved */
@@ -35,6 +37,7 @@ struct intel_gsc_mtl_header {
 	 * Bits 16-31: Extension Size
 	 */
 	u32 flags;
+#define INTEL_GSC_MSG_PENDING	1
 
 	u32 status;
 } __packed;
@@ -42,4 +45,7 @@ struct intel_gsc_mtl_header {
 int intel_gsc_uc_heci_cmd_submit_packet(struct intel_gsc_uc *gsc,
 					u64 addr_in, u32 size_in,
 					u64 addr_out, u32 size_out);
+void intel_gsc_uc_heci_cmd_emit_mtl_header(struct intel_gsc_mtl_header *header,
+					   u8 heci_client_id, u32 message_size,
+					   u64 host_session_id);
 #endif
-- 
2.25.1

