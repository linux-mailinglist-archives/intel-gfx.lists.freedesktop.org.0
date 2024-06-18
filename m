Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B6C90CC8A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 14:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166B510E67C;
	Tue, 18 Jun 2024 12:52:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UCFzfM/D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D568E89F01;
 Tue, 18 Jun 2024 12:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718715169; x=1750251169;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zbd/caKIp+ZGCixNi6r0C2cWtYvJWvcsmqRzUyyKbsU=;
 b=UCFzfM/D7slISqPPV4Z3exXlcs7PmoV54YhFLOAhLLk2mRj7v4LpaIcI
 p7wsUtAaLYIOA+jB2X0BBXOMMfkmY1EqxPSpLNL5+gJ46An8X84S1rUzs
 Qn8lHmEDoB2qNaQdfEJUyW3UtTQmYvbBq0AIgsHSOS8vJGoaFqib+lGBU
 fuht/ZkyxS8gJIvYCt5S71L0Q4sby66Mh6nQMhl7GVj/pC3u/Yz1yG9It
 7yiRod2Nwx8d0enwwpji+HD4/YiW2J1ukcx14dDytOfJXk8e3KovLuPqz
 NYtpKEOqV35l8Y86MnN9fQeR0OuubIf1slOUh8r9+auXPgIOvj7WDD2gL g==;
X-CSE-ConnectionGUID: Tvq+6CgdSuqIkbTtFVOb4A==
X-CSE-MsgGUID: W10BOSa8T2y4iVDckLuvLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="19409426"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="19409426"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 05:52:49 -0700
X-CSE-ConnectionGUID: h2RSjs0gRP+D/9O/kAUB0A==
X-CSE-MsgGUID: LOxBxWfRR+mgRYTaeYb0iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41643558"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 05:52:47 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 2/3] drm/i915: Pass intel_display to the encoder
 suspend/shutdown helpers
Date: Tue, 18 Jun 2024 15:52:54 +0300
Message-ID: <20240618125255.4080303-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240618125255.4080303-1-imre.deak@intel.com>
References: <20240618125255.4080303-1-imre.deak@intel.com>
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
drm_i915_private for better isolation.

v2: Pass intel_display to HAS_DISPLAY() as well, update commit log
    accordingly. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_encoder.c | 24 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_encoder.h |  6 ++---
 drivers/gpu/drm/i915/i915_driver.c           |  6 ++---
 3 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
index 8a1dccb893a37..21d6385354972 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.c
+++ b/drivers/gpu/drm/i915/display/intel_encoder.c
@@ -38,46 +38,46 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
 			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
 }
 
-void intel_encoder_suspend_all(struct drm_i915_private *i915)
+void intel_encoder_suspend_all(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	/*
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
 	struct intel_encoder *encoder;
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	/*
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
index 04cfc0a721993..3fa5589f0b1ce 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.h
+++ b/drivers/gpu/drm/i915/display/intel_encoder.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_ENCODER_H__
 #define __INTEL_ENCODER_H__
 
-struct drm_i915_private;
+struct intel_display;
 struct intel_encoder;
 
 void intel_encoder_link_check_init(struct intel_encoder *encoder,
@@ -14,7 +14,7 @@ void intel_encoder_link_check_init(struct intel_encoder *encoder,
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

