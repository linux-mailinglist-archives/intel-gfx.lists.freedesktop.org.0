Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 062C56F61D1
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 01:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45B3810E360;
	Wed,  3 May 2023 23:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF8D110E360
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 23:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683155442; x=1714691442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ern+quA4HTJWI36emnUbjdnB+cgWM0Wz4NRJGrzsMJI=;
 b=SzI4qVo4FF5iir56wyVdZYwVOh4PP0VUvU0rFs2BklvQoXJVNi41JhQb
 VYdm/ZG99VXkCYXOTKEmterWLwtnUHT9OzNI9L6dq2Ilwz0lPUqp1CNWs
 Q9AHtzqPgO6OOgTtJ3KmHCa7z27FKbNX5OH98B0iznJ//F1Hvu4i90XZN
 CC7RrVV2A64ezCAufJvAh2RwBsspPDTj6EPKEhWMUNMhy7g5R/JhgMc80
 8jWO9x/uylkw8ZTkgW+2Xb4+DzXSJ91oFyybSy/3JYPt6P1kccKnhHAoF
 2o+EMU+erQak6usZDApm0btd+R3oiEgDAKRAl5CfTidVHDql8jexS5aV/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347607595"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="347607595"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="690872156"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="690872156"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 02:10:47 +0300
Message-Id: <20230503231048.432368-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-1-imre.deak@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/12] drm/i915: Factor out a helper for
 handling atomic modeset locks/state
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

This patch simplifying the handling of modeset locks and atomic state
for an atomic commit is based on

https://lore.kernel.org/all/20210715184954.7794-2-ville.syrjala@linux.intel.com/

adding the helper to i915. I find this approach preferrable than
open-coding the corresponding steps (fixed for me an atomic
state reset during a DEADLK retry, which I missed in the open-coded
version) and also better than the existing
DRM_MODESET_LOCK_ALL_BEGIN/END macros for the reasons described in the
above original patchset.

This change takes the helper into use only for atomic commits during DDI
hotplug handling, as a preparation for a follow-up patch adding a
similar commit started from the same spot. Other places doing a
driver-internal atomic commit is to be converted by a follow-up
patchset.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      | 17 ++-----
 .../gpu/drm/i915/display/intel_modeset_lock.c | 50 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_modeset_lock.h | 33 ++++++++++++
 4 files changed, 87 insertions(+), 14 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_lock.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_lock.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 9af76e376ca91..ef6feb2aad2ad 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -263,6 +263,7 @@ i915-y += \
 	display/intel_hti.o \
 	display/intel_load_detect.o \
 	display/intel_lpe_audio.o \
+	display/intel_modeset_lock.o \
 	display/intel_modeset_verify.o \
 	display/intel_modeset_setup.o \
 	display/intel_overlay.o \
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 55f36d9d509c6..eb391fff0f1be 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -63,6 +63,7 @@
 #include "intel_hti.h"
 #include "intel_lspcon.h"
 #include "intel_mg_phy_regs.h"
+#include "intel_modeset_lock.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_quirks.h"
@@ -4400,26 +4401,14 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 
 	state = intel_encoder_hotplug(encoder, connector);
 
-	drm_modeset_acquire_init(&ctx, 0);
-
-	for (;;) {
+	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret) {
 		if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
 			ret = intel_hdmi_reset_link(encoder, &ctx);
 		else
 			ret = intel_dp_retrain_link(encoder, &ctx);
-
-		if (ret == -EDEADLK) {
-			drm_modeset_backoff(&ctx);
-			continue;
-		}
-
-		break;
 	}
 
-	drm_modeset_drop_locks(&ctx);
-	drm_modeset_acquire_fini(&ctx);
-	drm_WARN(encoder->base.dev, ret,
-		 "Acquiring modeset locks failed with %i\n", ret);
+	drm_WARN_ON(encoder->base.dev, ret);
 
 	/*
 	 * Unpowered type-c dongles can take some time to boot and be
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_lock.c b/drivers/gpu/drm/i915/display/intel_modeset_lock.c
new file mode 100644
index 0000000000000..8fb6fd849a75d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_modeset_lock.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <drm/drm_modeset_lock.h>
+
+#include "intel_display_types.h"
+#include "intel_modeset_lock.h"
+
+void _intel_modeset_lock_begin(struct drm_modeset_acquire_ctx *ctx,
+			       struct intel_atomic_state *state,
+			       unsigned int flags, int *ret)
+{
+	drm_modeset_acquire_init(ctx, flags);
+
+	if (state)
+		state->base.acquire_ctx = ctx;
+
+	*ret = -EDEADLK;
+}
+
+bool _intel_modeset_lock_loop(int *ret)
+{
+	if (*ret == -EDEADLK) {
+		*ret = 0;
+		return true;
+	}
+
+	return false;
+}
+
+void _intel_modeset_lock_end(struct drm_modeset_acquire_ctx *ctx,
+			     struct intel_atomic_state *state,
+			     int *ret)
+{
+	if (*ret == -EDEADLK) {
+		if (state)
+			drm_atomic_state_clear(&state->base);
+
+		*ret = drm_modeset_backoff(ctx);
+		if (*ret == 0) {
+			*ret = -EDEADLK;
+			return;
+		}
+	}
+
+	drm_modeset_drop_locks(ctx);
+	drm_modeset_acquire_fini(ctx);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_lock.h b/drivers/gpu/drm/i915/display/intel_modeset_lock.h
new file mode 100644
index 0000000000000..edb5099bcd99c
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_modeset_lock.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_MODESET_LOCK_H__
+#define __INTEL_MODESET_LOCK_H__
+
+#include <linux/types.h>
+
+struct drm_modeset_acquire_ctx;
+struct intel_atomic_state;
+
+void _intel_modeset_lock_begin(struct drm_modeset_acquire_ctx *ctx,
+			       struct intel_atomic_state *state,
+			       unsigned int flags,
+			       int *ret);
+bool _intel_modeset_lock_loop(int *ret);
+void _intel_modeset_lock_end(struct drm_modeset_acquire_ctx *ctx,
+			     struct intel_atomic_state *state,
+			     int *ret);
+
+/*
+ * Note that one must always use "continue" rather than
+ * "break" or "return" to handle errors within the
+ * intel_modeset_lock_ctx_retry() block.
+ */
+#define intel_modeset_lock_ctx_retry(ctx, state, flags, ret) \
+	for (_intel_modeset_lock_begin((ctx), (state), (flags), &(ret)); \
+	     _intel_modeset_lock_loop(&(ret)); \
+	     _intel_modeset_lock_end((ctx), (state), &(ret)))
+
+#endif /* __INTEL_MODESET_LOCK_H__ */
-- 
2.37.2

