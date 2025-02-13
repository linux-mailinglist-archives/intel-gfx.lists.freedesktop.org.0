Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C983AA3443D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 609E910EAFD;
	Thu, 13 Feb 2025 15:02:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NtmwzaYC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 494A910EAFC
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458954; x=1770994954;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hbDB87rI6Fc4xVdFtwH4arF6EigBFPDHk6GcwDfkqxM=;
 b=NtmwzaYCEIfOYrlhhHNc7t1PJaLSpEpvCiuaApyRmslVF30aZ/kTQzDX
 eya3BLW8Y76ct8SRvmy+X3qf7WrWiQVZcunJIPMED81Bmb3v5lI6A3nLa
 YYavm+c7RWKDnruCUG7a7vorBabVwg/T84LiaTFsnsP1gAdcGgzVpx8dm
 a73m3F7i3VYk67XfnAKGKPELuOyqJiiXojl9/HX/l9FA1KaNae0ltKElj
 79GMWkN+XmvNRdRF8tUdMDx1uY9Iyp3O1G8qdFNRzxCwKsMF8QzaX+1lA
 QG5ldDAgA3xDPX2XKGRswI5zz2riWVXqkydtXcqKOpI/M5QhxZUMu8oas w==;
X-CSE-ConnectionGUID: CZdeNxSlSCqvNx1nDvGX8g==
X-CSE-MsgGUID: C+MDu6X9SQOcSsfO0gK63w==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567491"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567491"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:34 -0800
X-CSE-ConnectionGUID: bJmX+tIfRyK45jJH7fDCow==
X-CSE-MsgGUID: 0Un809TORqm7OXjGtPb57g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349590"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/12] drm/i915: Extract intel_hdcp_cancel_works()
Date: Thu, 13 Feb 2025 17:02:12 +0200
Message-ID: <20250213150220.13580-5-ville.syrjala@linux.intel.com>
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

Hide the annoying HDCP implementation details better by
providing a intel_hdcp_cancel_works().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++----
 drivers/gpu/drm/i915/display/intel_hdcp.c    | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.h    | 1 +
 3 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 93392752b470..d3f8af9c75ef 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -93,6 +93,7 @@
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_frontbuffer.h"
+#include "intel_hdcp.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
 #include "intel_link_bw.h"
@@ -8789,10 +8790,7 @@ void intel_hpd_poll_fini(struct drm_i915_private *i915)
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		intel_connector_cancel_modeset_retry_work(connector);
-		if (connector->hdcp.shim) {
-			cancel_delayed_work_sync(&connector->hdcp.check_work);
-			cancel_work_sync(&connector->hdcp.prop_work);
-		}
+		intel_hdcp_cancel_works(connector);
 	}
 	drm_connector_list_iter_end(&conn_iter);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 1aa4c0fd216f..591851954114 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2615,6 +2615,15 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 		_intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 }
 
+void intel_hdcp_cancel_works(struct intel_connector *connector)
+{
+	if (!connector->hdcp.shim)
+		return;
+
+	cancel_delayed_work_sync(&connector->hdcp.check_work);
+	cancel_work_sync(&connector->hdcp.prop_work);
+}
+
 void intel_hdcp_component_fini(struct intel_display *display)
 {
 	mutex_lock(&display->hdcp.hdcp_mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
index 3a7905551051..efe86808e17e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
@@ -33,6 +33,7 @@ void intel_hdcp_enable(struct intel_atomic_state *state,
 		       const struct intel_crtc_state *pipe_config,
 		       const struct drm_connector_state *conn_state);
 int intel_hdcp_disable(struct intel_connector *connector);
+void intel_hdcp_cancel_works(struct intel_connector *connector);
 void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 			    struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
-- 
2.45.3

