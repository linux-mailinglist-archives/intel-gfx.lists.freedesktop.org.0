Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 896DD6F4878
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 18:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F8F310E353;
	Tue,  2 May 2023 16:39:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730CA10E00D;
 Tue,  2 May 2023 16:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683045557; x=1714581557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=reULBKwKXVagdkw2O2nL7GoN7TNWaIhRw0RKNZoyl3k=;
 b=KqN8aYb9/SYGenbN1+LbXdzfvruXcGjYuqNoALielsV/VvhFNrZAH6vw
 ElFrvD4bY6p6E1Z8a0DN8UJpwj/dQyya7Ou0R+K9DC8gzQq5/rLJkAPy6
 bQXBhrWeoXIZFaS4oU6INrh06Dn8O8YMQO/3c9NfrE9mjdfNXYqnIUfU7
 y7JqjafD5KWIL0Pz2noD8AaS81rD5qixAOTqdKSWPSMlyx2N0HajHnz4p
 3UBmrRvAr1Z35KZAWol46Yo/9BImw27jFl0PPQ+Dqfhc1Uob/W0PHJc2B
 Mnzy0DTTigrWe70On++Wq2ZbFVcEK14V+clKmTyLLXiVJ3yrKjLEM6juZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="411595960"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="411595960"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 09:39:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="1026160923"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="1026160923"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 09:39:09 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 09:38:53 -0700
Message-Id: <20230502163854.317653-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230502163854.317653-1-daniele.ceraolospurio@intel.com>
References: <20230502163854.317653-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/4] drm/i915/gsc: add initial support for
 GSC proxy
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The GSC uC needs to communicate with the CSME to perform certain
operations. Since the GSC can't perform this communication directly
on platforms where it is integrated in GT, i915 needs to transfer the
messages from GSC to CSME and back.
The proxy flow is as follow:
1 - i915 submits a request to GSC asking for the message to CSME
2 - GSC replies with the proxy header + payload for CSME
3 - i915 sends the reply from GSC as-is to CSME via the mei proxy
    component
4 - CSME replies with the proxy header + payload for GSC
5 - i915 submits a request to GSC with the reply from CSME
6 - GSC replies either with a new header + payload (same as step 2,
    so we restart from there) or with an end message.

After GSC load, i915 is expected to start the first proxy message chain,
while all subsequent ones will be triggered by the GSC via interrupt.

To communicate with the CSME, we use a dedicated mei component, which
means that we need to wait for it to bind before we can initialize the
proxies. This usually happens quite fast, but given that there is a
chance that we'll have to wait a few seconds the GSC work has been moved
to a dedicated WQ to not stall other processes.

v2: fix code style, includes and variable naming (Alan)
v3: add extra check for proxy status, fix includes and comments

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com> #v2
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c     |  10 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h     |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c  | 385 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.h  |  17 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c     |  49 ++-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h     |  14 +-
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |   1 +
 8 files changed, 473 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 9af76e376ca9..f2ac803e35b4 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -194,6 +194,7 @@ i915-y += \
 # general-purpose microcontroller (GuC) support
 i915-y += \
 	  gt/uc/intel_gsc_fw.o \
+	  gt/uc/intel_gsc_proxy.o \
 	  gt/uc/intel_gsc_uc.o \
 	  gt/uc/intel_gsc_uc_heci_cmd_submit.o\
 	  gt/uc/intel_guc.o \
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index 236673c02f9a..f46eb17a7a98 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -13,6 +13,7 @@
 #define GSC_FW_STATUS_REG			_MMIO(0x116C40)
 #define GSC_FW_CURRENT_STATE			REG_GENMASK(3, 0)
 #define   GSC_FW_CURRENT_STATE_RESET		0
+#define   GSC_FW_PROXY_STATE_NORMAL		5
 #define GSC_FW_INIT_COMPLETE_BIT		REG_BIT(9)
 
 static bool gsc_is_in_reset(struct intel_uncore *uncore)
@@ -23,6 +24,15 @@ static bool gsc_is_in_reset(struct intel_uncore *uncore)
 	       GSC_FW_CURRENT_STATE_RESET;
 }
 
+bool intel_gsc_uc_fw_proxy_init_done(struct intel_gsc_uc *gsc)
+{
+	struct intel_uncore *uncore = gsc_uc_to_gt(gsc)->uncore;
+	u32 fw_status = intel_uncore_read(uncore, GSC_FW_STATUS_REG);
+
+	return REG_FIELD_GET(GSC_FW_CURRENT_STATE, fw_status) ==
+	       GSC_FW_PROXY_STATE_NORMAL;
+}
+
 bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc)
 {
 	struct intel_uncore *uncore = gsc_uc_to_gt(gsc)->uncore;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
index f4c1106bb2a9..fff8928218df 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.h
@@ -13,5 +13,6 @@ struct intel_uncore;
 
 int intel_gsc_uc_fw_upload(struct intel_gsc_uc *gsc);
 bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc);
+bool intel_gsc_uc_fw_proxy_init_done(struct intel_gsc_uc *gsc);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
new file mode 100644
index 000000000000..0513ac8d03ec
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
@@ -0,0 +1,385 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <linux/component.h>
+
+#include "drm/i915_component.h"
+#include "drm/i915_gsc_proxy_mei_interface.h"
+
+#include "gt/intel_gt.h"
+#include "gt/intel_gt_print.h"
+#include "intel_gsc_proxy.h"
+#include "intel_gsc_uc.h"
+#include "intel_gsc_uc_heci_cmd_submit.h"
+#include "i915_drv.h"
+
+/*
+ * GSC proxy:
+ * The GSC uC needs to communicate with the CSME to perform certain operations.
+ * Since the GSC can't perform this communication directly on platforms where it
+ * is integrated in GT, i915 needs to transfer the messages from GSC to CSME
+ * and back. i915 must manually start the proxy flow after the GSC is loaded to
+ * signal to GSC that we're ready to handle its messages and allow it to query
+ * its init data from CSME; GSC will then trigger an HECI2 interrupt if it needs
+ * to send messages to CSME again.
+ * The proxy flow is as follow:
+ * 1 - i915 submits a request to GSC asking for the message to CSME
+ * 2 - GSC replies with the proxy header + payload for CSME
+ * 3 - i915 sends the reply from GSC as-is to CSME via the mei proxy component
+ * 4 - CSME replies with the proxy header + payload for GSC
+ * 5 - i915 submits a request to GSC with the reply from CSME
+ * 6 - GSC replies either with a new header + payload (same as step 2, so we
+ *     restart from there) or with an end message.
+ */
+
+/*
+ * The component should load quite quickly in most cases, but it could take
+ * a bit. Using a very big timeout just to cover the worst case scenario
+ */
+#define GSC_PROXY_INIT_TIMEOUT_MS 20000
+
+/* the protocol supports up to 32K in each direction */
+#define GSC_PROXY_BUFFER_SIZE SZ_32K
+#define GSC_PROXY_CHANNEL_SIZE (GSC_PROXY_BUFFER_SIZE * 2)
+#define GSC_PROXY_MAX_MSG_SIZE (GSC_PROXY_BUFFER_SIZE - sizeof(struct intel_gsc_mtl_header))
+
+/* FW-defined proxy header */
+struct intel_gsc_proxy_header {
+	/*
+	 * hdr:
+	 * Bits 0-7: type of the proxy message (see enum intel_gsc_proxy_type)
+	 * Bits 8-15: rsvd
+	 * Bits 16-31: length in bytes of the payload following the proxy header
+	 */
+	u32 hdr;
+#define GSC_PROXY_TYPE		 GENMASK(7, 0)
+#define GSC_PROXY_PAYLOAD_LENGTH GENMASK(31, 16)
+
+	u32 source;		/* Source of the Proxy message */
+	u32 destination;	/* Destination of the Proxy message */
+#define GSC_PROXY_ADDRESSING_KMD  0x10000
+#define GSC_PROXY_ADDRESSING_GSC  0x20000
+#define GSC_PROXY_ADDRESSING_CSME 0x30000
+
+	u32 status;		/* Command status */
+} __packed;
+
+/* FW-defined proxy types */
+enum intel_gsc_proxy_type {
+	GSC_PROXY_MSG_TYPE_PROXY_INVALID = 0,
+	GSC_PROXY_MSG_TYPE_PROXY_QUERY = 1,
+	GSC_PROXY_MSG_TYPE_PROXY_PAYLOAD = 2,
+	GSC_PROXY_MSG_TYPE_PROXY_END = 3,
+	GSC_PROXY_MSG_TYPE_PROXY_NOTIFICATION = 4,
+};
+
+struct gsc_proxy_msg {
+	struct intel_gsc_mtl_header header;
+	struct intel_gsc_proxy_header proxy_header;
+} __packed;
+
+static int proxy_send_to_csme(struct intel_gsc_uc *gsc)
+{
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	struct i915_gsc_proxy_component *comp = gsc->proxy.component;
+	struct intel_gsc_mtl_header *hdr;
+	void *in = gsc->proxy.to_csme;
+	void *out = gsc->proxy.to_gsc;
+	u32 in_size;
+	int ret;
+
+	/* CSME msg only includes the proxy */
+	hdr = in;
+	in += sizeof(struct intel_gsc_mtl_header);
+	out += sizeof(struct intel_gsc_mtl_header);
+
+	in_size = hdr->message_size - sizeof(struct intel_gsc_mtl_header);
+
+	/* the message must contain at least the proxy header */
+	if (in_size < sizeof(struct intel_gsc_proxy_header) ||
+	    in_size > GSC_PROXY_MAX_MSG_SIZE) {
+		gt_err(gt, "Invalid CSME message size: %u\n", in_size);
+		return -EINVAL;
+	}
+
+	ret = comp->ops->send(comp->mei_dev, in, in_size);
+	if (ret < 0) {
+		gt_err(gt, "Failed to send CSME message\n");
+		return ret;
+	}
+
+	ret = comp->ops->recv(comp->mei_dev, out, GSC_PROXY_MAX_MSG_SIZE);
+	if (ret < 0) {
+		gt_err(gt, "Failed to receive CSME message\n");
+		return ret;
+	}
+
+	return ret;
+}
+
+static int proxy_send_to_gsc(struct intel_gsc_uc *gsc)
+{
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	u32 *marker = gsc->proxy.to_csme; /* first dw of the reply header */
+	u64 addr_in = i915_ggtt_offset(gsc->proxy.vma);
+	u64 addr_out = addr_in + GSC_PROXY_BUFFER_SIZE;
+	u32 size = ((struct gsc_proxy_msg *)gsc->proxy.to_gsc)->header.message_size;
+	int err;
+
+	/* the message must contain at least the gsc and proxy headers */
+	if (size < sizeof(struct gsc_proxy_msg) || size > GSC_PROXY_BUFFER_SIZE) {
+		gt_err(gt, "Invalid GSC proxy message size: %u\n", size);
+		return -EINVAL;
+	}
+
+	/* clear the message marker */
+	*marker = 0;
+
+	/* make sure the marker write is flushed */
+	wmb();
+
+	/* send the request */
+	err = intel_gsc_uc_heci_cmd_submit_packet(gsc, addr_in, size,
+						  addr_out, GSC_PROXY_BUFFER_SIZE);
+
+	if (!err) {
+		/* wait for the reply to show up */
+		err = wait_for(*marker != 0, 300);
+		if (err)
+			gt_err(gt, "Failed to get a proxy reply from gsc\n");
+	}
+
+	return err;
+}
+
+static int validate_proxy_header(struct intel_gsc_proxy_header *header,
+				 u32 source, u32 dest)
+{
+	u32 type = FIELD_GET(GSC_PROXY_TYPE, header->hdr);
+	u32 length = FIELD_GET(GSC_PROXY_PAYLOAD_LENGTH, header->hdr);
+	int ret = 0;
+
+	if (header->destination != dest || header->source != source) {
+		ret = -ENOEXEC;
+		goto fail;
+	}
+
+	switch (type) {
+	case GSC_PROXY_MSG_TYPE_PROXY_PAYLOAD:
+		if (length > 0)
+			break;
+		fallthrough;
+	case GSC_PROXY_MSG_TYPE_PROXY_INVALID:
+		ret = -EIO;
+		goto fail;
+	default:
+		break;
+	}
+
+fail:
+	return ret;
+
+}
+
+static int proxy_query(struct intel_gsc_uc *gsc)
+{
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	struct gsc_proxy_msg *to_gsc = gsc->proxy.to_gsc;
+	struct gsc_proxy_msg *to_csme = gsc->proxy.to_csme;
+	int ret;
+
+	intel_gsc_uc_heci_cmd_emit_mtl_header(&to_gsc->header,
+					      HECI_MEADDRESS_PROXY,
+					      sizeof(struct gsc_proxy_msg),
+					      0);
+
+	to_gsc->proxy_header.hdr =
+		FIELD_PREP(GSC_PROXY_TYPE, GSC_PROXY_MSG_TYPE_PROXY_QUERY) |
+		FIELD_PREP(GSC_PROXY_PAYLOAD_LENGTH, 0);
+
+	to_gsc->proxy_header.source = GSC_PROXY_ADDRESSING_KMD;
+	to_gsc->proxy_header.destination = GSC_PROXY_ADDRESSING_GSC;
+	to_gsc->proxy_header.status = 0;
+
+	while (1) {
+		/* clear the GSC response header space */
+		memset(gsc->proxy.to_csme, 0, sizeof(struct gsc_proxy_msg));
+
+		/* send proxy message to GSC */
+		ret = proxy_send_to_gsc(gsc);
+		if (ret) {
+			gt_err(gt, "failed to send proxy message to GSC! %d\n", ret);
+			goto proxy_error;
+		}
+
+		/* stop if this was the last message */
+		if (FIELD_GET(GSC_PROXY_TYPE, to_csme->proxy_header.hdr) ==
+				GSC_PROXY_MSG_TYPE_PROXY_END)
+			break;
+
+		/* make sure the GSC-to-CSME proxy header is sane */
+		ret = validate_proxy_header(&to_csme->proxy_header,
+					    GSC_PROXY_ADDRESSING_GSC,
+					    GSC_PROXY_ADDRESSING_CSME);
+		if (ret) {
+			gt_err(gt, "invalid GSC to CSME proxy header! %d\n", ret);
+			goto proxy_error;
+		}
+
+		/* send the GSC message to the CSME */
+		ret = proxy_send_to_csme(gsc);
+		if (ret < 0) {
+			gt_err(gt, "failed to send proxy message to CSME! %d\n", ret);
+			goto proxy_error;
+		}
+
+		/* update the GSC message size with the returned value from CSME */
+		to_gsc->header.message_size = ret + sizeof(struct intel_gsc_mtl_header);
+
+		/* make sure the CSME-to-GSC proxy header is sane */
+		ret = validate_proxy_header(&to_gsc->proxy_header,
+					    GSC_PROXY_ADDRESSING_CSME,
+					    GSC_PROXY_ADDRESSING_GSC);
+		if (ret) {
+			gt_err(gt, "invalid CSME to GSC proxy header! %d\n", ret);
+			goto proxy_error;
+		}
+	}
+
+proxy_error:
+	return ret < 0 ? ret : 0;
+}
+
+int intel_gsc_proxy_request_handler(struct intel_gsc_uc *gsc)
+{
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	int err;
+
+	if (!gsc->proxy.component_added)
+		return -ENODEV;
+
+	assert_rpm_wakelock_held(gt->uncore->rpm);
+
+	/* when GSC is loaded, we can queue this before the component is bound */
+	err = wait_for(gsc->proxy.component, GSC_PROXY_INIT_TIMEOUT_MS);
+	if (err) {
+		gt_err(gt, "GSC proxy component didn't bind within the expected timeout\n");
+		return -EIO;
+	}
+
+	mutex_lock(&gsc->proxy.mutex);
+	if (!gsc->proxy.component) {
+		gt_err(gt, "GSC proxy worker called without the component being bound!\n");
+		err = -EIO;
+	} else {
+		err = proxy_query(gsc);
+	}
+	mutex_unlock(&gsc->proxy.mutex);
+	return err;
+}
+
+static int i915_gsc_proxy_component_bind(struct device *i915_kdev,
+					 struct device *mei_kdev, void *data)
+{
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+	struct intel_gsc_uc *gsc = &i915->media_gt->uc.gsc;
+
+	mutex_lock(&gsc->proxy.mutex);
+	gsc->proxy.component = data;
+	gsc->proxy.component->mei_dev = mei_kdev;
+	mutex_unlock(&gsc->proxy.mutex);
+
+	return 0;
+}
+
+static void i915_gsc_proxy_component_unbind(struct device *i915_kdev,
+					    struct device *mei_kdev, void *data)
+{
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+	struct intel_gsc_uc *gsc = &i915->media_gt->uc.gsc;
+
+	mutex_lock(&gsc->proxy.mutex);
+	gsc->proxy.component = NULL;
+	mutex_unlock(&gsc->proxy.mutex);
+}
+
+static const struct component_ops i915_gsc_proxy_component_ops = {
+	.bind   = i915_gsc_proxy_component_bind,
+	.unbind = i915_gsc_proxy_component_unbind,
+};
+
+static int proxy_channel_alloc(struct intel_gsc_uc *gsc)
+{
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	struct i915_vma *vma;
+	void *vaddr;
+	int err;
+
+	err = intel_guc_allocate_and_map_vma(&gt->uc.guc, GSC_PROXY_CHANNEL_SIZE,
+					     &vma, &vaddr);
+	if (err)
+		return err;
+
+	gsc->proxy.vma = vma;
+	gsc->proxy.to_gsc = vaddr;
+	gsc->proxy.to_csme = vaddr + GSC_PROXY_BUFFER_SIZE;
+
+	return 0;
+}
+
+static void proxy_channel_free(struct intel_gsc_uc *gsc)
+{
+	if (!gsc->proxy.vma)
+		return;
+
+	gsc->proxy.to_gsc = NULL;
+	gsc->proxy.to_csme = NULL;
+	i915_vma_unpin_and_release(&gsc->proxy.vma, I915_VMA_RELEASE_MAP);
+}
+
+void intel_gsc_proxy_fini(struct intel_gsc_uc *gsc)
+{
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	struct drm_i915_private *i915 = gt->i915;
+
+	if (fetch_and_zero(&gsc->proxy.component_added))
+		component_del(i915->drm.dev, &i915_gsc_proxy_component_ops);
+
+	proxy_channel_free(gsc);
+}
+
+int intel_gsc_proxy_init(struct intel_gsc_uc *gsc)
+{
+	int err;
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	struct drm_i915_private *i915 = gt->i915;
+
+	mutex_init(&gsc->proxy.mutex);
+
+	if (!IS_ENABLED(CONFIG_INTEL_MEI_GSC_PROXY)) {
+		gt_info(gt, "can't init GSC proxy due to missing mei component\n");
+		return -ENODEV;
+	}
+
+	err = proxy_channel_alloc(gsc);
+	if (err)
+		return err;
+
+	err = component_add_typed(i915->drm.dev, &i915_gsc_proxy_component_ops,
+				  I915_COMPONENT_GSC_PROXY);
+	if (err < 0) {
+		gt_err(gt, "Failed to add GSC_PROXY component (%d)\n", err);
+		goto out_free;
+	}
+
+	gsc->proxy.component_added = true;
+
+	return 0;
+
+out_free:
+	proxy_channel_free(gsc);
+	return err;
+}
+
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.h
new file mode 100644
index 000000000000..1f27cb6e62ba
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef _INTEL_GSC_PROXY_H_
+#define _INTEL_GSC_PROXY_H_
+
+#include <linux/types.h>
+
+struct intel_gsc_uc;
+
+int intel_gsc_proxy_init(struct intel_gsc_uc *gsc);
+void intel_gsc_proxy_fini(struct intel_gsc_uc *gsc);
+int intel_gsc_proxy_request_handler(struct intel_gsc_uc *gsc);
+
+#endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
index 2d5b70b3384c..b234bb585ad3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
@@ -10,15 +10,39 @@
 #include "intel_gsc_uc.h"
 #include "intel_gsc_fw.h"
 #include "i915_drv.h"
+#include "intel_gsc_proxy.h"
 
 static void gsc_work(struct work_struct *work)
 {
 	struct intel_gsc_uc *gsc = container_of(work, typeof(*gsc), work);
 	struct intel_gt *gt = gsc_uc_to_gt(gsc);
 	intel_wakeref_t wakeref;
+	int ret;
 
-	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		intel_gsc_uc_fw_upload(gsc);
+	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
+
+	ret = intel_gsc_uc_fw_upload(gsc);
+	if (ret)
+		goto out_put;
+
+	ret = intel_gsc_proxy_request_handler(gsc);
+	if (ret)
+		goto out_put;
+
+	/*
+	 * If there is a proxy establishment error, the GSC might still
+	 * complete the request handling cleanly, so we need to check the
+	 * status register to check if the proxy init was actually successful
+	 */
+	if (intel_gsc_uc_fw_proxy_init_done(gsc)) {
+		drm_dbg(&gt->i915->drm, "GSC Proxy initialized\n");
+		intel_uc_fw_change_status(&gsc->fw, INTEL_UC_FIRMWARE_RUNNING);
+	} else {
+		drm_err(&gt->i915->drm, "GSC status reports proxy init not complete\n");
+	}
+
+out_put:
+	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
 }
 
 static bool gsc_engine_supported(struct intel_gt *gt)
@@ -43,6 +67,8 @@ static bool gsc_engine_supported(struct intel_gt *gt)
 
 void intel_gsc_uc_init_early(struct intel_gsc_uc *gsc)
 {
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+
 	intel_uc_fw_init_early(&gsc->fw, INTEL_UC_FW_TYPE_GSC);
 	INIT_WORK(&gsc->work, gsc_work);
 
@@ -50,10 +76,16 @@ void intel_gsc_uc_init_early(struct intel_gsc_uc *gsc)
 	 * GT with it being not fully setup hence check device info's
 	 * engine mask
 	 */
-	if (!gsc_engine_supported(gsc_uc_to_gt(gsc))) {
+	if (!gsc_engine_supported(gt)) {
 		intel_uc_fw_change_status(&gsc->fw, INTEL_UC_FIRMWARE_NOT_SUPPORTED);
 		return;
 	}
+
+	gsc->wq = alloc_ordered_workqueue("i915_gsc", 0);
+	if (!gsc->wq) {
+		gt_err(gt, "failed to allocate WQ for GSC, disabling FW\n");
+		intel_uc_fw_change_status(&gsc->fw, INTEL_UC_FIRMWARE_NOT_SUPPORTED);
+	}
 }
 
 int intel_gsc_uc_init(struct intel_gsc_uc *gsc)
@@ -88,6 +120,9 @@ int intel_gsc_uc_init(struct intel_gsc_uc *gsc)
 
 	gsc->ce = ce;
 
+	/* if we fail to init proxy we still want to load GSC for PM */
+	intel_gsc_proxy_init(gsc);
+
 	intel_uc_fw_change_status(&gsc->fw, INTEL_UC_FIRMWARE_LOADABLE);
 
 	return 0;
@@ -107,6 +142,12 @@ void intel_gsc_uc_fini(struct intel_gsc_uc *gsc)
 		return;
 
 	flush_work(&gsc->work);
+	if (gsc->wq) {
+		destroy_workqueue(gsc->wq);
+		gsc->wq = NULL;
+	}
+
+	intel_gsc_proxy_fini(gsc);
 
 	if (gsc->ce)
 		intel_engine_destroy_pinned_context(fetch_and_zero(&gsc->ce));
@@ -151,5 +192,5 @@ void intel_gsc_uc_load_start(struct intel_gsc_uc *gsc)
 	if (intel_gsc_uc_fw_init_done(gsc))
 		return;
 
-	queue_work(system_unbound_wq, &gsc->work);
+	queue_work(gsc->wq, &gsc->work);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
index 5f50fa1ff8b9..023bded10dde 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
@@ -10,6 +10,7 @@
 
 struct i915_vma;
 struct intel_context;
+struct i915_gsc_proxy_component;
 
 struct intel_gsc_uc {
 	/* Generic uC firmware management */
@@ -19,7 +20,18 @@ struct intel_gsc_uc {
 	struct i915_vma *local; /* private memory for GSC usage */
 	struct intel_context *ce; /* for submission to GSC FW via GSC engine */
 
-	struct work_struct work; /* for delayed load */
+	/* for delayed load and proxy handling */
+	struct workqueue_struct *wq;
+	struct work_struct work;
+
+	struct {
+		struct i915_gsc_proxy_component *component;
+		bool component_added;
+		struct i915_vma *vma;
+		void *to_gsc;
+		void *to_csme;
+		struct mutex mutex; /* protects the tee channel binding */
+	} proxy;
 };
 
 void intel_gsc_uc_init_early(struct intel_gsc_uc *gsc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
index 3d56ae501991..8f199d5f963e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
@@ -14,6 +14,7 @@ struct intel_gsc_mtl_header {
 #define GSC_HECI_VALIDITY_MARKER 0xA578875A
 
 	u8 heci_client_id;
+#define HECI_MEADDRESS_PROXY 10
 #define HECI_MEADDRESS_PXP 17
 #define HECI_MEADDRESS_HDCP 18
 
-- 
2.40.0

