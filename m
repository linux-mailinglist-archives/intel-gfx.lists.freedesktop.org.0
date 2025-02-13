Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C7CA3443B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61FF210E3DF;
	Thu, 13 Feb 2025 15:02:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YWdcotfU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74FA810EAFC
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458952; x=1770994952;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4/QGOXYel022ay6ci7/ngpSJT1emak0PfmHF5ygWM7U=;
 b=YWdcotfUO0sdc4vvuBbSF6sSitVz2GUow4RGdjo99icBngvLGCxAgFuF
 p4Pqn0e/be+BK59hHRvAFEwxqpPLZrFUsDvV7214sJRhUStCFw/XK8OfL
 8J1JBTtQOTXyoYnUXPgwoWBrD9swh+wbkiTECGLKjfcQt5NbpYaf3yZsJ
 Oonf3feIobG6wE8jqdcsr/HHY5zV5dfu/xdQd4GpOzv9lR76SGJ8hyVCS
 ZXaIIfE8Buo0Invf95UHLLcPTDsjw270JI4Vh/OzUQZx+GITP/sioC0t9
 YBpDBoNbcIpQjehtcVUGiK18Uc0I0YwCryA8f6N+ch8VpqS04r7o5idgB A==;
X-CSE-ConnectionGUID: WEY9DQMMQBOn5P619GmVCA==
X-CSE-MsgGUID: 8MQi+uhDTuy+oZu6kpHPzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567470"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567470"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:31 -0800
X-CSE-ConnectionGUID: QxK/plzgQEC63v5ROOUuJg==
X-CSE-MsgGUID: InSp4c+pQciVU/G+OtLgkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349587"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/12] drm/i915: Extract
 intel_connector_cancel_modeset_retry_work()
Date: Thu, 13 Feb 2025 17:02:11 +0200
Message-ID: <20250213150220.13580-4-ville.syrjala@linux.intel.com>
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

Hide the implementation details of the modeset retry work
better.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_connector.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display.c   | 4 ++--
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index b1240be2ec6d..358965fc7f55 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -70,6 +70,12 @@ void intel_connector_queue_modeset_retry_work(struct intel_connector *connector)
 		drm_connector_put(&connector->base);
 }
 
+void intel_connector_cancel_modeset_retry_work(struct intel_connector *connector)
+{
+	if (cancel_work_sync(&connector->modeset_retry_work))
+		drm_connector_put(&connector->base);
+}
+
 int intel_connector_init(struct intel_connector *connector)
 {
 	struct intel_digital_connector_state *conn_state;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 858886eea6cc..93392752b470 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -62,6 +62,7 @@
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
+#include "intel_connector.h"
 #include "intel_color.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
@@ -8787,8 +8788,7 @@ void intel_hpd_poll_fini(struct drm_i915_private *i915)
 	/* Kill all the work that may have been queued by hpd. */
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
-		if (cancel_work_sync(&connector->modeset_retry_work))
-			drm_connector_put(&connector->base);
+		intel_connector_cancel_modeset_retry_work(connector);
 		if (connector->hdcp.shim) {
 			cancel_delayed_work_sync(&connector->hdcp.check_work);
 			cancel_work_sync(&connector->hdcp.prop_work);
-- 
2.45.3

