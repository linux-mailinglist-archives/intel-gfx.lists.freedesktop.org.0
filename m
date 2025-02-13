Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B96CAA3443F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BE3410EAFE;
	Thu, 13 Feb 2025 15:02:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dEZWyUt5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17D9610EAFC
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458957; x=1770994957;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=s2FiIIkCVA/c5cwOIEbhwByfphRq2Fxh/ndsvVKqntA=;
 b=dEZWyUt5HfVT5GBxpagX3dUk49xyDuNdV0Bxx5w7/NOd4FvR/1jeAlfZ
 a31YCkdlOworE3MeKJBEnMYf5w0nY+6EO5sEn5tuZHemFoz6r5an/fikK
 xkKWxhtnmhJc2r1AIDrXrs6i1UTcQ9k7wgFcyTC9l9UvdQIFwqZWWl6c4
 UQNftxTYIk3ywg3hYWOd1XS2yOyrHjQX23VVuYPMLl1FmQ3GoQmnvqyoJ
 NUKvmOKbibMAGSqCPPUMFqg/VxuD0zbxKAMkbn9QiYUnkQGBqPZDgzkUq
 YhLXsn+OcCM2Fo2wK/EngRktCJZGA52HFtA8uQ3sEg89Rait4eFVBCcRd A==;
X-CSE-ConnectionGUID: uhThtk13SluLfYaHiZbUHg==
X-CSE-MsgGUID: boYW4D2HRK2IaDBHeSwS6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567526"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567526"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:37 -0800
X-CSE-ConnectionGUID: qSK3CyVoQVqX9UlsnZmuLg==
X-CSE-MsgGUID: Vn+njsVQRR+8Q+maHbic9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349599"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/12] drm/i915: Move intel_hpd_poll_fini() into
 intel_hotplug.c
Date: Thu, 13 Feb 2025 17:02:13 +0200
Message-ID: <20250213150220.13580-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The name of intel_hpd_poll_fini() suggests that it should live
in intel_hotplug.c. Make it so.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 ----------------
 drivers/gpu/drm/i915/display/intel_display.h |  2 --
 drivers/gpu/drm/i915/display/intel_hotplug.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hotplug.h |  1 +
 4 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d3f8af9c75ef..0807a4979ea2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -62,7 +62,6 @@
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
-#include "intel_connector.h"
 #include "intel_color.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
@@ -93,7 +92,6 @@
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_frontbuffer.h"
-#include "intel_hdcp.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
 #include "intel_link_bw.h"
@@ -8781,20 +8779,6 @@ void i830_disable_pipe(struct intel_display *display, enum pipe pipe)
 	intel_de_posting_read(display, DPLL(display, pipe));
 }
 
-void intel_hpd_poll_fini(struct drm_i915_private *i915)
-{
-	struct intel_connector *connector;
-	struct drm_connector_list_iter conn_iter;
-
-	/* Kill all the work that may have been queued by hpd. */
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
-	for_each_intel_connector_iter(connector, &conn_iter) {
-		intel_connector_cancel_modeset_retry_work(connector);
-		intel_hdcp_cancel_works(connector);
-	}
-	drm_connector_list_iter_end(&conn_iter);
-}
-
 bool intel_scanout_needs_vtd_wa(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index d4a709588700..e14aa773323e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -571,8 +571,6 @@ enum drm_mode_status intel_mode_valid(struct drm_device *dev,
 int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 			bool nonblock);
 
-void intel_hpd_poll_fini(struct drm_i915_private *i915);
-
 /* modesetting asserts */
 void assert_transcoder(struct intel_display *display,
 		       enum transcoder cpu_transcoder, bool state);
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 9c935afc60aa..00d7b1ccf190 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -28,8 +28,10 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
+#include "intel_connector.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
+#include "intel_hdcp.h"
 #include "intel_hotplug.h"
 #include "intel_hotplug_irq.h"
 
@@ -864,6 +866,20 @@ void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
+void intel_hpd_poll_fini(struct drm_i915_private *i915)
+{
+	struct intel_connector *connector;
+	struct drm_connector_list_iter conn_iter;
+
+	/* Kill all the work that may have been queued by hpd. */
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		intel_connector_cancel_modeset_retry_work(connector);
+		intel_hdcp_cancel_works(connector);
+	}
+	drm_connector_list_iter_end(&conn_iter);
+}
+
 void intel_hpd_init_early(struct drm_i915_private *i915)
 {
 	INIT_DELAYED_WORK(&i915->display.hotplug.hotplug_work,
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index d2ca9d2f1d39..d6986902b054 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -16,6 +16,7 @@ enum port;
 
 void intel_hpd_poll_enable(struct drm_i915_private *dev_priv);
 void intel_hpd_poll_disable(struct drm_i915_private *dev_priv);
+void intel_hpd_poll_fini(struct drm_i915_private *i915);
 enum intel_hotplug_state intel_encoder_hotplug(struct intel_encoder *encoder,
 					       struct intel_connector *connector);
 void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
-- 
2.45.3

