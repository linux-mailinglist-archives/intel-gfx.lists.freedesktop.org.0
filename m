Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4E384F919
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 17:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E503710F6AC;
	Fri,  9 Feb 2024 16:03:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mYdfSGht";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA69810F6AC
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 16:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707494581; x=1739030581;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OawYlz/f7E+Zc/KQeN+755bM5Mkw/7wkmBzxM/vuUKw=;
 b=mYdfSGhtLTGjkMR59+bTFyLRCkarkKxtg4TKE3rGTkIiATu3iZwM9JOp
 OgNp+Hkn5P5rTN5o3lLp+t2/ySKZDTWWpsJdCBhx+qBkkMs1gvg7tjHow
 dnKz919vk6wR7IupvmteCl0HtyUlVWjql3AH2dWOtgmdrhzapefzwStvb
 5vg05DJzgFd8O2m3kpQ2901u02i8QMvkhnw9pISIWY77trcLnjlQF7CId
 ZyzRUDKv25/OSU4Tr9VWRqAbfjSgsBs6lcut12eKPJwm0gAEB1jX/g04j
 RPEg/LHug0VLrU9804leTkyAA3/I4yosovBWwB9LINnWApCoQoOSyCdB1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="5246821"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="5246821"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 08:03:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="2006506"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 08:03:00 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 2/2] drm/i915: Prevent HW access during init from connector
 get_modes hooks
Date: Fri,  9 Feb 2024 18:03:16 +0200
Message-Id: <20240209160316.2160747-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240209160316.2160747-1-imre.deak@intel.com>
References: <20240209160316.2160747-1-imre.deak@intel.com>
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

Prevent accessing the HW from the get_modes hooks of connectors deriving
the mode list from the display's EDID. drm_edid_connector_add_modes()
will return the mode list based on the EDID which was cached during a
previous detection/get_modes call.

This also fixes the NULL deref problem (10085) which was
introduced/revealed by

commit bab87ef4db9a ("drm/i915: Disable hotplug detection handlers during driver init/shutdown")

After the above change MST connectors will not change state during
driver init/shutdown; thus some of these connectors with no I2C/DDC
adapter registered for them (since the given MST port has no sink
connected) may stay then in the 'unknown' connector status. The
get_modes() hook should not try to use the I2C/DDC adapter in this state
(which would lead to the above NULL deref) which this patch ensures.

v2:
- Remove the redundant check from intel_crt_ddc_get_modes().
- Rebase on latest drm-tip.
- Add Fixes: line / related commit notes.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10085
Fixes: bab87ef4db9a ("drm/i915: Disable hotplug detection handlers during driver init/shutdown")
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20240206153910.1758057-3-imre.deak@intel.com
---
 drivers/gpu/drm/i915/display/intel_crt.c    | 3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_dvo.c    | 5 +++++
 drivers/gpu/drm/i915/display/intel_sdvo.c   | 4 ++++
 4 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index b9733a73e21d4..93479db0f89f6 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -933,6 +933,9 @@ static int intel_crt_get_modes(struct drm_connector *connector)
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
index c67605059aa3e..825638702ac1b 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2202,12 +2202,16 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 
 static int intel_sdvo_get_ddc_modes(struct drm_connector *connector)
 {
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	int num_modes = 0;
 	const struct drm_edid *drm_edid;
 
 	drm_dbg_kms(connector->dev, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
+	if (!intel_display_driver_check_access(i915))
+		return drm_edid_connector_add_modes(connector);
+
 	/* set the bus switch and get the modes */
 	drm_edid = intel_sdvo_get_edid(connector);
 
-- 
2.39.2

