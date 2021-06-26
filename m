Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 153063B5B55
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 11:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CD8D6E3F4;
	Mon, 28 Jun 2021 09:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from h4.fbrelay.privateemail.com (h4.fbrelay.privateemail.com
 [131.153.2.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23EB16E9CF;
 Sat, 26 Jun 2021 07:32:56 +0000 (UTC)
Received: from MTA-07-4.privateemail.com (mta-07.privateemail.com
 [198.54.127.57])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by h3.fbrelay.privateemail.com (Postfix) with ESMTPS id 35E4280515;
 Sat, 26 Jun 2021 03:32:55 -0400 (EDT)
Received: from MTA-07.privateemail.com (localhost [127.0.0.1])
 by MTA-07.privateemail.com (Postfix) with ESMTP id BA1B7600FF;
 Sat, 26 Jun 2021 03:32:52 -0400 (EDT)
Received: from hal-station.. (unknown [10.20.151.203])
 by MTA-07.privateemail.com (Postfix) with ESMTPA id DFBB0600E2;
 Sat, 26 Jun 2021 03:32:50 -0400 (EDT)
From: Hamza Mahfooz <someguy@effective-light.com>
To: linux-kernel@vger.kernel.org
Date: Sat, 26 Jun 2021 03:32:27 -0400
Message-Id: <20210626073230.41803-1-someguy@effective-light.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Mon, 28 Jun 2021 09:31:03 +0000
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: replace boilerplate code
 with helper macros
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
Cc: dri-devel@lists.freedesktop.org,
 Hamza Mahfooz <someguy@effective-light.com>, David Airlie <airlied@linux.ie>,
 Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per commit 22be87401289 ("drm: TODO: Add DRM_MODESET_LOCK_ALL*
conversion to todo.rst"),
drm_modeset_lock_all()/drm_modeset_unlock_all() and boilerplate code
surrounding instances of drm_modeset_lock_all_ctx() with a local acquire
context should be replaced with the relevant helper macros.

Signed-off-by: Hamza Mahfooz <someguy@effective-light.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 64e9107d70f7..e8cb2881d2b4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -40,6 +40,7 @@
 #include <drm/drm_dp_helper.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_fourcc.h>
+#include "drm/drm_modeset_lock.h"
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_rect.h>
@@ -11836,6 +11837,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 	struct drm_device *dev = &i915->drm;
 	enum pipe pipe;
 	struct intel_crtc *crtc;
+	struct drm_modeset_acquire_ctx ctx;
 	int ret;
 
 	intel_init_pm(i915);
@@ -11884,9 +11886,9 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 	intel_vga_disable(i915);
 	intel_setup_outputs(i915);
 
-	drm_modeset_lock_all(dev);
+	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
 	intel_modeset_setup_hw_state(dev, dev->mode_config.acquire_ctx);
-	drm_modeset_unlock_all(dev);
+	DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
 
 	for_each_intel_crtc(dev, crtc) {
 		struct intel_initial_plane_config plane_config = {};
@@ -12795,22 +12797,14 @@ void intel_display_resume(struct drm_device *dev)
 	if (state)
 		state->acquire_ctx = &ctx;
 
-	drm_modeset_acquire_init(&ctx, 0);
-
-	while (1) {
-		ret = drm_modeset_lock_all_ctx(dev, &ctx);
-		if (ret != -EDEADLK)
-			break;
-
-		drm_modeset_backoff(&ctx);
-	}
+	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, ret);
 
 	if (!ret)
 		ret = __intel_display_resume(dev, state, &ctx);
 
 	intel_enable_ipc(dev_priv);
-	drm_modeset_drop_locks(&ctx);
-	drm_modeset_acquire_fini(&ctx);
+
+	DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
 
 	if (ret)
 		drm_err(&dev_priv->drm,
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
