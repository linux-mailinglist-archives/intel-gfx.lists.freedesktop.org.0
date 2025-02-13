Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6712CA3443A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA9510EAF8;
	Thu, 13 Feb 2025 15:02:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h9w0bC3w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A0410EAF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458949; x=1770994949;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4qebLmGclNEagivSWghV2zmBfhY70xeM1GTnZKoI9ck=;
 b=h9w0bC3wMvaSDQUA/iTMoOke1zAJDPsunU5ijhAQywdElW7+VtgKOuSm
 xO28rT+eBwBH7N2gJDJ42K96UBzOsCKYA3jbjwxfsZ3hb4fx0SQV2iqvw
 vw2zAR7fD16b4kK0vC1Rv9zBtqjM311TMhim6h0RpjEaWdLEx6tMmTn1j
 RIkdP/hvDRcEsxhmYIL1sfCC2kMaq3sNx6Lzw7Rcl4tgG6utQ7LIdMcS5
 NCFiofdYr1EcqRpFFfxgIejNRaf7vrT0sEK/wOYFrxNyyuHXbUoi2egXZ
 BTIqqg6RmsBZDsQN64k86aSoicCmw+h/fwlNPzJO0R2wLZX9PzKyMB4WP g==;
X-CSE-ConnectionGUID: /FXOPhcSRDG/xPcSJoGexQ==
X-CSE-MsgGUID: VGSrbxawRHGQ++hskqg6kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567441"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567441"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:28 -0800
X-CSE-ConnectionGUID: 6Kevwmw0RRGxvVadgzTyjQ==
X-CSE-MsgGUID: 1ozYb/a2QX2oYdHzZk6E3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349580"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/12] drm/i915: Always initialize
 connector->modeset_retry_work
Date: Thu, 13 Feb 2025 17:02:10 +0200
Message-ID: <20250213150220.13580-3-ville.syrjala@linux.intel.com>
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

Since we have all the necessary bits in intel_connector.c might
as well always initialize the modeset_retry_work for every connector.
Avoids yet another init function you have to remember to call.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_connector.c | 9 +++------
 drivers/gpu/drm/i915/display/intel_connector.h | 1 -
 drivers/gpu/drm/i915/display/intel_display.c   | 3 +--
 drivers/gpu/drm/i915/display/intel_dp.c        | 3 ---
 drivers/gpu/drm/i915/display/intel_dp_mst.c    | 2 --
 5 files changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 4f54c9249a84..b1240be2ec6d 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -70,12 +70,6 @@ void intel_connector_queue_modeset_retry_work(struct intel_connector *connector)
 		drm_connector_put(&connector->base);
 }
 
-void intel_connector_init_modeset_retry_work(struct intel_connector *connector)
-{
-	INIT_WORK(&connector->modeset_retry_work,
-		  intel_connector_modeset_retry_work_fn);
-}
-
 int intel_connector_init(struct intel_connector *connector)
 {
 	struct intel_digital_connector_state *conn_state;
@@ -95,6 +89,9 @@ int intel_connector_init(struct intel_connector *connector)
 
 	intel_panel_init_alloc(connector);
 
+	INIT_WORK(&connector->modeset_retry_work,
+		  intel_connector_modeset_retry_work_fn);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index 10a1779201ed..aafb25a814fa 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -33,7 +33,6 @@ void intel_attach_aspect_ratio_property(struct drm_connector *connector);
 void intel_attach_hdmi_colorspace_property(struct drm_connector *connector);
 void intel_attach_dp_colorspace_property(struct drm_connector *connector);
 void intel_attach_scaling_mode_property(struct drm_connector *connector);
-void intel_connector_init_modeset_retry_work(struct intel_connector *connector);
 void intel_connector_queue_modeset_retry_work(struct intel_connector *connector);
 void intel_connector_cancel_modeset_retry_work(struct intel_connector *connector);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cc51576353fe..858886eea6cc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8787,8 +8787,7 @@ void intel_hpd_poll_fini(struct drm_i915_private *i915)
 	/* Kill all the work that may have been queued by hpd. */
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
-		if (connector->modeset_retry_work.func &&
-		    cancel_work_sync(&connector->modeset_retry_work))
+		if (cancel_work_sync(&connector->modeset_retry_work))
 			drm_connector_put(&connector->base);
 		if (connector->hdcp.shim) {
 			cancel_delayed_work_sync(&connector->hdcp.check_work);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8bcf400b0239..03ca2e02ab02 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6487,9 +6487,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	enum port port = encoder->port;
 	int type;
 
-	/* Initialize the work for modeset in case of link train failure */
-	intel_connector_init_modeset_retry_work(connector);
-
 	if (drm_WARN(dev, dig_port->max_lanes < 1,
 		     "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
 		     dig_port->max_lanes, encoder->base.base.id,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 0044b2a9a16b..167e4a70ab12 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1747,8 +1747,6 @@ mst_topology_add_connector(struct drm_dp_mst_topology_mgr *mgr,
 	connector->port = port;
 	drm_dp_mst_get_port_malloc(port);
 
-	intel_connector_init_modeset_retry_work(connector);
-
 	ret = drm_connector_dynamic_init(display->drm, &connector->base, &mst_connector_funcs,
 					 DRM_MODE_CONNECTOR_DisplayPort, NULL);
 	if (ret)
-- 
2.45.3

