Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 996D984B9D5
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 16:39:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7DC610F0E5;
	Tue,  6 Feb 2024 15:38:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eFfJsMVE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADF8310F085
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 15:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707233936; x=1738769936;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8B+H1pHHyjwK0RnDEdRmQwIH421PSrd/yMJVeIU5Og0=;
 b=eFfJsMVEILcoR/4tJ0N+f4TiALJJAsiaOkqSsg01AdA2JdTLxR1iMSRB
 TyPZ5gitPwRH+Sy7DFW85WFMEURFNV3cieEc5VG1K5bMvS3mEzNWY0JFM
 KaG1YUcHcv5z90tR0qj791Ag7IW2kHGKMIEFE/4XQBHKKPbrHzr7Vmxo7
 NRw72X96Q9vSz8eln8lZ/OxgqldHZ//fAZ8njcfXlI4i9c8oqQ6DkvEWQ
 qGgPUhXUvFS2zpPdaWfiL/C94ko4S7Ojy7KjXCay/uutj8cYUuz2y+b3b
 uA9HNXbnuNIjKkqFEfJnRMeBPXvpo8XmbXjoPomsZf4BX8uy/Nskf2tew w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="914721"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="914721"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 07:38:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="5652285"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 07:38:55 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915: Prevent HW access during init from connector
 get_modes hooks
Date: Tue,  6 Feb 2024 17:39:10 +0200
Message-Id: <20240206153910.1758057-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240206153910.1758057-1-imre.deak@intel.com>
References: <20240206153910.1758057-1-imre.deak@intel.com>
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

Prevent accessing the HW from the get_modes hooks of connectors deriving
the mode list from the display's EDID. drm_edid_connector_add_modes()
will return the mode list based on the EDID which was cached during a
previous detection/get_modes call.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10085
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c    | 7 +++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_dvo.c    | 5 +++++
 drivers/gpu/drm/i915/display/intel_sdvo.c   | 4 ++++
 4 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index b9733a73e21d4..27c5595e5d6bc 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -646,9 +646,13 @@ static const struct drm_edid *intel_crt_get_edid(struct drm_connector *connector
 static int intel_crt_ddc_get_modes(struct drm_connector *connector,
 				   struct i2c_adapter *ddc)
 {
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	const struct drm_edid *drm_edid;
 	int ret;
 
+	if (!intel_display_driver_check_access(i915))
+		return drm_edid_connector_add_modes(connector);
+
 	drm_edid = intel_crt_get_edid(connector, ddc);
 	if (!drm_edid)
 		return 0;
@@ -933,6 +937,9 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	struct i2c_adapter *ddc;
 	int ret;
 
+	if (!intel_display_driver_check_access(dev_priv))
+		return drm_edid_connector_add_modes(connector);
+
 	wakeref = intel_display_power_get(dev_priv,
 					  intel_encoder->power_domain);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5fa25a5a36b55..5307ddd4edcf5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1197,6 +1197,7 @@ static bool intel_dp_mst_initial_fastset_check(struct intel_encoder *encoder,
 static int intel_dp_mst_get_ddc_modes(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct drm_i915_private *i915 = to_i915(intel_connector->base.dev);
 	struct intel_dp *intel_dp = intel_connector->mst_port;
 	const struct drm_edid *drm_edid;
 	int ret;
@@ -1204,6 +1205,9 @@ static int intel_dp_mst_get_ddc_modes(struct drm_connector *connector)
 	if (drm_connector_is_unregistered(connector))
 		return intel_connector_update_modes(connector, NULL);
 
+	if (!intel_display_driver_check_access(i915))
+		return drm_edid_connector_add_modes(connector);
+
 	drm_edid = drm_dp_mst_edid_read(connector, &intel_dp->mst_mgr, intel_connector->port);
 
 	ret = intel_connector_update_modes(connector, drm_edid);
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 8ca9ae4798a89..c076da75b066e 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -30,6 +30,7 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
+#include <drm/drm_edid.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -338,8 +339,12 @@ intel_dvo_detect(struct drm_connector *_connector, bool force)
 static int intel_dvo_get_modes(struct drm_connector *_connector)
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int num_modes;
 
+	if (!intel_display_driver_check_access(i915))
+		return drm_edid_connector_add_modes(&connector->base);
+
 	/*
 	 * We should probably have an i2c driver get_modes function for those
 	 * devices which will have a fixed set of modes determined by the chip
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index ccea0efbd136f..dae5abf56bbf5 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2189,12 +2189,16 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 
 static int intel_sdvo_get_ddc_modes(struct drm_connector *connector)
 {
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	int num_modes = 0;
 	const struct drm_edid *drm_edid;
 
 	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
 		      connector->base.id, connector->name);
 
+	if (!intel_display_driver_check_access(i915))
+		return drm_edid_connector_add_modes(connector);
+
 	/* set the bus switch and get the modes */
 	drm_edid = intel_sdvo_get_edid(connector);
 
-- 
2.39.2

