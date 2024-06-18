Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A202890CC86
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 14:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA12089F01;
	Tue, 18 Jun 2024 12:52:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vrns1S9t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC1E310E21D;
 Tue, 18 Jun 2024 12:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718715168; x=1750251168;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9smXu5Mo+xGDecfnjlg5g8vJtZOXPRi8ejm4GcN3SKA=;
 b=Vrns1S9tUYQlg8Uyszll7nPOzqFykUCVbiWOfOREaHV0+b5MIVU3/l70
 emYdzNZpQCkK7RcbHOC2L9gnBkUoFzoTZNR4wc5CZX1qN0o34UTo+ETc1
 ukk+hLUyzHG/IfJ9aB0NxNhsBbTbKDpZcyGsgO7+5gbzIKsUo0jjrgWRi
 ge+7qLpw/HGIMZe1d+jChVthpTC/FP/0dM6E+eD4+DLHy7aeCJzCalI3A
 9o+w0RK74N/Cu5e9/psdeMgJZAVdbujE80Upcii26HpnLDjTsIm721AMZ
 MSundz5b2lD82Vt9bzpeJp/d6eTKciUh6IFsHnddY9dvB/0T6Wy2HAY/8 g==;
X-CSE-ConnectionGUID: yA8gZc5ERumYShGhwE3/LQ==
X-CSE-MsgGUID: 13PaethYS2iuMnNI0Rt4dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="19409424"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="19409424"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 05:52:48 -0700
X-CSE-ConnectionGUID: l7PkNajJTkqhPsZ/U/70Yg==
X-CSE-MsgGUID: PVpXhwvrQOaehMx9L7HaIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41643554"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 05:52:45 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 1/3] drm/i915: Move encoder suspend/shutdown helpers to
 intel_encoder.c
Date: Tue, 18 Jun 2024 15:52:53 +0300
Message-ID: <20240618125255.4080303-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
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

Move the encoder suspend/shutdown helpers to intel_encoder.c, this being
the logical place for encoder functions.

This also allows sharing the above helpers with the xe driver, done in a
follow-up patch.

While at it rename the functions using the usual intel_encoder prefix
and in the functions rename the dev_priv parameter to i915.

v2: Remove extra w/s in the include section. (Jani)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_encoder.c | 44 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_encoder.h |  4 ++
 drivers/gpu/drm/i915/i915_driver.c           | 51 ++------------------
 3 files changed, 52 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
index dee55f56960fc..8a1dccb893a37 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.c
+++ b/drivers/gpu/drm/i915/display/intel_encoder.c
@@ -37,3 +37,47 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
 	mod_delayed_work(i915->unordered_wq,
 			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
 }
+
+void intel_encoder_suspend_all(struct drm_i915_private *i915)
+{
+	struct intel_encoder *encoder;
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	/*
+	 * TODO: check and remove holding the modeset locks if none of
+	 * the encoders depends on this.
+	 */
+	drm_modeset_lock_all(&i915->drm);
+	for_each_intel_encoder(&i915->drm, encoder)
+		if (encoder->suspend)
+			encoder->suspend(encoder);
+	drm_modeset_unlock_all(&i915->drm);
+
+	for_each_intel_encoder(&i915->drm, encoder)
+		if (encoder->suspend_complete)
+			encoder->suspend_complete(encoder);
+}
+
+void intel_encoder_shutdown_all(struct drm_i915_private *i915)
+{
+	struct intel_encoder *encoder;
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	/*
+	 * TODO: check and remove holding the modeset locks if none of
+	 * the encoders depends on this.
+	 */
+	drm_modeset_lock_all(&i915->drm);
+	for_each_intel_encoder(&i915->drm, encoder)
+		if (encoder->shutdown)
+			encoder->shutdown(encoder);
+	drm_modeset_unlock_all(&i915->drm);
+
+	for_each_intel_encoder(&i915->drm, encoder)
+		if (encoder->shutdown_complete)
+			encoder->shutdown_complete(encoder);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
index 2cda054e2b152..04cfc0a721993 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.h
+++ b/drivers/gpu/drm/i915/display/intel_encoder.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_ENCODER_H__
 #define __INTEL_ENCODER_H__
 
+struct drm_i915_private;
 struct intel_encoder;
 
 void intel_encoder_link_check_init(struct intel_encoder *encoder,
@@ -13,4 +14,7 @@ void intel_encoder_link_check_init(struct intel_encoder *encoder,
 void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int delay_ms);
 void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
 
+void intel_encoder_suspend_all(struct drm_i915_private *i915);
+void intel_encoder_shutdown_all(struct drm_i915_private *i915);
+
 #endif /* __INTEL_ENCODER_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 161b21eff6943..e9e38ed246f66 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -53,6 +53,7 @@
 #include "display/intel_dmc.h"
 #include "display/intel_dp.h"
 #include "display/intel_dpt.h"
+#include "display/intel_encoder.h"
 #include "display/intel_fbdev.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_overlay.h"
@@ -933,50 +934,6 @@ static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
 	i915_gem_flush_free_objects(to_i915(dev));
 }
 
-static void intel_suspend_encoders(struct drm_i915_private *dev_priv)
-{
-	struct intel_encoder *encoder;
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	/*
-	 * TODO: check and remove holding the modeset locks if none of
-	 * the encoders depends on this.
-	 */
-	drm_modeset_lock_all(&dev_priv->drm);
-	for_each_intel_encoder(&dev_priv->drm, encoder)
-		if (encoder->suspend)
-			encoder->suspend(encoder);
-	drm_modeset_unlock_all(&dev_priv->drm);
-
-	for_each_intel_encoder(&dev_priv->drm, encoder)
-		if (encoder->suspend_complete)
-			encoder->suspend_complete(encoder);
-}
-
-static void intel_shutdown_encoders(struct drm_i915_private *dev_priv)
-{
-	struct intel_encoder *encoder;
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	/*
-	 * TODO: check and remove holding the modeset locks if none of
-	 * the encoders depends on this.
-	 */
-	drm_modeset_lock_all(&dev_priv->drm);
-	for_each_intel_encoder(&dev_priv->drm, encoder)
-		if (encoder->shutdown)
-			encoder->shutdown(encoder);
-	drm_modeset_unlock_all(&dev_priv->drm);
-
-	for_each_intel_encoder(&dev_priv->drm, encoder)
-		if (encoder->shutdown_complete)
-			encoder->shutdown_complete(encoder);
-}
-
 void i915_driver_shutdown(struct drm_i915_private *i915)
 {
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
@@ -999,8 +956,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	if (HAS_DISPLAY(i915))
 		intel_display_driver_suspend_access(i915);
 
-	intel_suspend_encoders(i915);
-	intel_shutdown_encoders(i915);
+	intel_encoder_suspend_all(i915);
+	intel_encoder_shutdown_all(i915);
 
 	intel_dmc_suspend(i915);
 
@@ -1083,7 +1040,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	if (HAS_DISPLAY(dev_priv))
 		intel_display_driver_suspend_access(dev_priv);
 
-	intel_suspend_encoders(dev_priv);
+	intel_encoder_suspend_all(dev_priv);
 
 	/* Must be called before GGTT is suspended. */
 	intel_dpt_suspend(dev_priv);
-- 
2.43.3

