Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D20B16FDBB2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 12:31:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56B2110E480;
	Wed, 10 May 2023 10:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB98910E477
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 10:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683714671; x=1715250671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=acaok0yjJN5Yy0NN9XIqIwVVTRXw5S5btImUa6m+u1k=;
 b=li1+ScEKxHB22EYc8hAz4hVByACNfbr8eezLRL5YqK5BI2GCqULLGrHI
 ae3OxPHsiEELmD1JAsjlvWxE4q5f3MogLLTNQ+eHiUIHEXL7PMNTQ9tMc
 aTd2jRsO5wdgxehYj/kEKQtSyo11nK503SGxqdDHVaHhcO+RfBN7hqKnD
 PHxtFJRBUHoFqphyhyVsgn4+EBCwGZh0Er9SAkJMMm/sbUWjbNTtc584y
 v4nQX1vUhQMkwTvUNw2AvkUQQ+kGjX7r0Im6kPxmuTkbYqe9b6oExV8lF
 EgENsdEIKk71o8RL5FtSbKESg3fU/uevTSjfrWXimrx2CZsrylGKqzbiu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350214455"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="350214455"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676796762"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="676796762"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:31:10 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 13:31:29 +0300
Message-Id: <20230510103131.1618266-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 12/14] drm/i915: Factor out a helper for
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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
index d97d45ae1a0d7..2a388bc1f07cb 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -264,6 +264,7 @@ i915-y += \
 	display/intel_hti.o \
 	display/intel_load_detect.o \
 	display/intel_lpe_audio.o \
+	display/intel_modeset_lock.o \
 	display/intel_modeset_verify.o \
 	display/intel_modeset_setup.o \
 	display/intel_overlay.o \
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0ba5492c06047..813be957ed11b 100644
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
@@ -4403,26 +4404,14 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 
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

