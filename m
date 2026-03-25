Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMvvFshrw2kqqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096C931FC39
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:59:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 594AC10E761;
	Wed, 25 Mar 2026 04:59:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j6e1Djng";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9844A10E75B;
 Wed, 25 Mar 2026 04:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414789; x=1805950789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HCBA9PRVeqO6zcjOeW18Raa8rFW27PxlSrdYCLNnStg=;
 b=j6e1Djng1vlH8irT9mZYmu87GdEmDeVM3w2IYaIW8mhpPl63n2FGDG14
 fJ4T8J3iZixOf66t64oMFcSkGNWOrjxsJqchB2YQbs7JyOsU541dx5ilZ
 NDB9KVxn7Jcj4ZoEc15Wu6jgHG/zBD3Ned9IylHyMK261W6OzfmHEo7zj
 QYF1e+0LE0zVrKr/oJmsDypqwgKZACx3Z83TxiaACOnEt/IQrdkVLt6L9
 D4WIl64AAabH7yq3+kDJvToqDZfDfT1Hf1HX9QCssbvXXpqm65xbzRA6N
 Qx1aesv4QkYw2RlK6bC62PG1LISanrzmUZD660Eru34vwWn+eH+bXjN1K Q==;
X-CSE-ConnectionGUID: NZwrImImS+CFtALcwDElfw==
X-CSE-MsgGUID: QSaa8q5bQF6JtVi8bmizUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922261"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922261"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 21:59:39 -0700
X-CSE-ConnectionGUID: KFeWgOXVRC6LVWBUCgmhPQ==
X-CSE-MsgGUID: N52Iu6zUSxiiXSEjvwZvtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580493"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 21:59:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 05/26] drm/i915/writeback: Init writeback connector
Date: Wed, 25 Mar 2026 10:28:55 +0530
Message-Id: <20260325045916.984243-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325045916.984243-1-suraj.kandpal@intel.com>
References: <20260325045916.984243-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 096C931FC39
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Initialize writeback connector initialising the virtual encoder
and intel connector. We also allocate memory for drm_writeback_connector
but not the drm_connector within it due to a constraint
we need all connectors to be an intel_connector.
The writeback_format arrays is used to tell the user which
drm formats are supported by us.

Bspec: 49275
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/display/intel_writeback.c    | 126 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_writeback.h    |  17 +++
 3 files changed, 144 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_writeback.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_writeback.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 7e9d9b666511..c3c903df7699 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -314,6 +314,7 @@ i915-y += \
 	display/intel_vblank.o \
 	display/intel_vga.o \
 	display/intel_wm.o \
+	display/intel_writeback.o \
 	display/skl_prefill.o \
 	display/skl_scaler.o \
 	display/skl_universal_plane.o \
diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
new file mode 100644
index 000000000000..73101ee17d74
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -0,0 +1,126 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#include <linux/slab.h>
+#include <drm/drm_atomic_state_helper.h>
+#include <drm/drm_writeback.h>
+#include <drm/drm_modeset_helper_vtables.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_fourcc.h>
+#include <drm/drm_encoder.h>
+
+#include "intel_atomic.h"
+#include "intel_connector.h"
+#include "intel_de.h"
+#include "intel_display_driver.h"
+#include "intel_display_types.h"
+#include "intel_writeback.h"
+
+struct intel_writeback_connector {
+	struct intel_connector connector;
+	struct intel_encoder encoder;
+	enum transcoder trans;
+	int frame_num;
+};
+
+static const u32 writeback_formats[] = {
+	DRM_FORMAT_XYUV8888,
+	DRM_FORMAT_YUYV,
+	DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_XVYU2101010,
+	DRM_FORMAT_VYUY,
+	DRM_FORMAT_XBGR2101010,
+};
+
+static int intel_writeback_connector_init(struct intel_connector *connector)
+{
+	struct intel_digital_connector_state *conn_state;
+
+	conn_state = kzalloc(sizeof(*conn_state), GFP_KERNEL);
+	if (!conn_state)
+		return -ENOMEM;
+
+	__drm_atomic_helper_connector_reset(&connector->base,
+					    &conn_state->base);
+	return 0;
+}
+
+static int
+intel_writeback_connector_alloc(struct intel_connector *connector)
+{
+	if (intel_writeback_connector_init(connector) < 0) {
+		kfree(connector);
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
+	.destroy = drm_encoder_cleanup,
+};
+
+const struct drm_connector_funcs conn_funcs = {
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+static const struct drm_connector_helper_funcs conn_helper_funcs = {
+};
+
+int intel_writeback_init(struct intel_display *display)
+{
+	struct intel_encoder *encoder;
+	struct intel_writeback_connector *writeback_conn;
+	struct intel_connector *connector;
+	int ret;
+
+	writeback_conn = kzalloc(sizeof(*writeback_conn), GFP_KERNEL);
+	if (!writeback_conn)
+		return -ENOSPC;
+
+	encoder = &writeback_conn->encoder;
+	encoder->base.possible_crtcs = 0xf;
+	ret = drm_encoder_init(display->drm, &encoder->base,
+			       &drm_writeback_encoder_funcs,
+			       DRM_MODE_ENCODER_VIRTUAL, NULL);
+	if (ret) {
+		kfree(writeback_conn);
+		return ret;
+	}
+
+	encoder->type = INTEL_OUTPUT_WRITEBACK;
+	encoder->pipe_mask = ~0;
+	encoder->cloneable = 0;
+
+	connector = &writeback_conn->connector;
+	ret = intel_writeback_connector_alloc(connector);
+	if (ret) {
+		kfree(writeback_conn);
+		return ret;
+	}
+
+	connector->base.interlace_allowed = 0;
+	drm_connector_helper_add(&connector->base, &conn_helper_funcs);
+	ret = drm_writeback_connector_init(display->drm, &connector->base,
+					   &conn_funcs, &encoder->base,
+					   writeback_formats,
+					   ARRAY_SIZE(writeback_formats));
+	if (ret) {
+		intel_connector_free(connector);
+		drm_encoder_cleanup(&encoder->base);
+		kfree(&writeback_conn->encoder);
+		kfree(writeback_conn);
+		return ret;
+	}
+
+	intel_connector_attach_encoder(connector, encoder);
+	connector->get_hw_state = intel_connector_get_hw_state;
+	connector->base.status = connector_status_disconnected;
+	writeback_conn->frame_num = 1;
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_writeback.h b/drivers/gpu/drm/i915/display/intel_writeback.h
new file mode 100644
index 000000000000..5911684cb81a
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_writeback.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#ifndef __INTEL_WRITEBACK_H__
+#define __INTEL_WRITEBACK_H__
+
+#include <linux/types.h>
+
+struct intel_display;
+struct intel_writeback_connector;
+
+int intel_writeback_init(struct intel_display *display);
+
+#endif /* __INTEL_WRITEBACK_H__ */
+
-- 
2.34.1

