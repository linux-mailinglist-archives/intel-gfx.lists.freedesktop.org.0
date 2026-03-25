Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMEuIBbCw2n6twQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 330BC32387F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F0A10E850;
	Wed, 25 Mar 2026 11:08:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="df/A/kuJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 704E310E850;
 Wed, 25 Mar 2026 11:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436883; x=1805972883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MDl1HfiXb0y1jXPt097t9jDH8oxOaJei49Nyqinv8w0=;
 b=df/A/kuJtjNv0nAObFlUBosS6GMeGzlCvAPZOIj8CgjyI7Nr58aH6RNR
 i12HFDe7iOwEl8VPlju5iDGOcAryGIsPWBt0UAr2h7207iO89TMZgZ7mb
 4+RJsSA9WQsTRHJMxr/L5YeYjFKQYZmwIdlSo6EjwifPn0ON7fljax/im
 lDo3YTUDV1SCFveav/+CEcl/741hp1ZIeBjTHBMwAkjMAVwjlMFOlK7/7
 2VfGKB1R8RNP+UA48kwK3vK4RzyOTPDADJ9R1DF802TaEtphTNeNEdSCV
 WgQRASjD3UAloE6irXovf/x8akmRB7sLtLMzwvkNokB7nE6pgZ7sb16iO w==;
X-CSE-ConnectionGUID: ZqO+eItrTauEa+QloHgqXw==
X-CSE-MsgGUID: Wcp3Tn7/T8ePfPyFxwMfTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047503"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047503"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:03 -0700
X-CSE-ConnectionGUID: qtwbTCPjTcinwwP2OkUP2Q==
X-CSE-MsgGUID: SZp4H6qNQayrXh2jLn8V7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798320"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:08:01 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 05/26] drm/i915/writeback: Init writeback connector
Date: Wed, 25 Mar 2026 16:37:23 +0530
Message-Id: <20260325110744.1096786-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 330BC32387F
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
index b677720a1c2d..1e9140e7713c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -315,6 +315,7 @@ i915-y += \
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

