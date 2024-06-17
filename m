Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BEB90B754
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 19:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7FD810E46D;
	Mon, 17 Jun 2024 17:03:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kFUadu96";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0FA10E132;
 Mon, 17 Jun 2024 17:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718643829; x=1750179829;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=X2VJLxzfCWjvSoH1aXqbuwRTQlHK+b7m9DPJ3MrnhkM=;
 b=kFUadu9630QsUoJjgYGISkaDJriFY9R+7YALh8QpVugrqemiZNdbhUfY
 rhvt/hqNif2o1OhtQ6QKVvfVpyVG1VVfuyG4muE5jnFjRXx/wxlAjUa6V
 yP0JxbTnMKrgbE9rUewXRQIIkszkV5jfFvCs1+QQBUx5b4TviqxFjN0DZ
 ev8gNqwpu/PHxIoTFkxFPTKGpDxWqCZgvBBvI4D50/U2V3wM4Zu+WlPaC
 TjRldGOlpNo6qh2SMkAyVc8qb6muDv3+yP+ZhZeiK9njVhSlWs1jPT+Ie
 vFeHwmALsO5FXmAUlQsT4v7f0aTVetqCBUHnlLOBLJy8pHdHfhpO7cbyv w==;
X-CSE-ConnectionGUID: LyellDxHSaWixzxM7/rlgw==
X-CSE-MsgGUID: fkWYizeYRKa9o0FgxXdk4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="32951785"
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="32951785"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 10:03:49 -0700
X-CSE-ConnectionGUID: GN9Qq/UjSIqx5PIfMZ16RQ==
X-CSE-MsgGUID: Jw/WGwE6RWCoHaIcCWKAdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="45690933"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 10:03:47 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915: Pass intel_display to the encoder
 suspend/shutdown helpers
Date: Mon, 17 Jun 2024 20:03:55 +0300
Message-ID: <20240617170356.4000251-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240617170356.4000251-1-imre.deak@intel.com>
References: <20240617170356.4000251-1-imre.deak@intel.com>
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

Pass intel_display to the encoder suspend/shutdown helpers instead of
drm_i915_private for better isolation. This assumes that HAS_DISPLAY()
will also take an intel_display parameter in the future (or that the
HAS_DISPLAY() check will be moved to a caller of these functions).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_encoder.c | 22 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_encoder.h |  7 +++----
 drivers/gpu/drm/i915/i915_driver.c           |  6 +++---
 3 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
index 8a1dccb893a37..8e73d18a522d4 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.c
+++ b/drivers/gpu/drm/i915/display/intel_encoder.c
@@ -38,8 +38,9 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
 			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
 }
 
-void intel_encoder_suspend_all(struct drm_i915_private *i915)
+void intel_encoder_suspend_all(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_encoder *encoder;
 
 	if (!HAS_DISPLAY(i915))
@@ -49,19 +50,20 @@ void intel_encoder_suspend_all(struct drm_i915_private *i915)
 	 * TODO: check and remove holding the modeset locks if none of
 	 * the encoders depends on this.
 	 */
-	drm_modeset_lock_all(&i915->drm);
-	for_each_intel_encoder(&i915->drm, encoder)
+	drm_modeset_lock_all(display->drm);
+	for_each_intel_encoder(display->drm, encoder)
 		if (encoder->suspend)
 			encoder->suspend(encoder);
-	drm_modeset_unlock_all(&i915->drm);
+	drm_modeset_unlock_all(display->drm);
 
-	for_each_intel_encoder(&i915->drm, encoder)
+	for_each_intel_encoder(display->drm, encoder)
 		if (encoder->suspend_complete)
 			encoder->suspend_complete(encoder);
 }
 
-void intel_encoder_shutdown_all(struct drm_i915_private *i915)
+void intel_encoder_shutdown_all(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_encoder *encoder;
 
 	if (!HAS_DISPLAY(i915))
@@ -71,13 +73,13 @@ void intel_encoder_shutdown_all(struct drm_i915_private *i915)
 	 * TODO: check and remove holding the modeset locks if none of
 	 * the encoders depends on this.
 	 */
-	drm_modeset_lock_all(&i915->drm);
-	for_each_intel_encoder(&i915->drm, encoder)
+	drm_modeset_lock_all(display->drm);
+	for_each_intel_encoder(display->drm, encoder)
 		if (encoder->shutdown)
 			encoder->shutdown(encoder);
-	drm_modeset_unlock_all(&i915->drm);
+	drm_modeset_unlock_all(display->drm);
 
-	for_each_intel_encoder(&i915->drm, encoder)
+	for_each_intel_encoder(display->drm, encoder)
 		if (encoder->shutdown_complete)
 			encoder->shutdown_complete(encoder);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
index e6cd74576f78e..3fa5589f0b1ce 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.h
+++ b/drivers/gpu/drm/i915/display/intel_encoder.h
@@ -6,8 +6,7 @@
 #ifndef __INTEL_ENCODER_H__
 #define __INTEL_ENCODER_H__
 
-struct drm_i915_private;
-
+struct intel_display;
 struct intel_encoder;
 
 void intel_encoder_link_check_init(struct intel_encoder *encoder,
@@ -15,7 +14,7 @@ void intel_encoder_link_check_init(struct intel_encoder *encoder,
 void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int delay_ms);
 void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
 
-void intel_encoder_suspend_all(struct drm_i915_private *i915);
-void intel_encoder_shutdown_all(struct drm_i915_private *i915);
+void intel_encoder_suspend_all(struct intel_display *display);
+void intel_encoder_shutdown_all(struct intel_display *display);
 
 #endif /* __INTEL_ENCODER_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index e9e38ed246f66..fb8e9c2fcea53 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -956,8 +956,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	if (HAS_DISPLAY(i915))
 		intel_display_driver_suspend_access(i915);
 
-	intel_encoder_suspend_all(i915);
-	intel_encoder_shutdown_all(i915);
+	intel_encoder_suspend_all(&i915->display);
+	intel_encoder_shutdown_all(&i915->display);
 
 	intel_dmc_suspend(i915);
 
@@ -1040,7 +1040,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	if (HAS_DISPLAY(dev_priv))
 		intel_display_driver_suspend_access(dev_priv);
 
-	intel_encoder_suspend_all(dev_priv);
+	intel_encoder_suspend_all(&dev_priv->display);
 
 	/* Must be called before GGTT is suspended. */
 	intel_dpt_suspend(dev_priv);
-- 
2.43.3

