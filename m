Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C3C20B5AD
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 18:10:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2DE16ECCE;
	Fri, 26 Jun 2020 16:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F03736ECCD
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 16:10:04 +0000 (UTC)
IronPort-SDR: h3vBax2rI5k7fSWS98EA3ZkZ2FG5WSOW6wZlRtczZ6tSLVZWR8AEdcJBgD7sMQDlFBY9E1s6t7
 aiSSYEMWxOTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="133758595"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="133758595"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 09:10:04 -0700
IronPort-SDR: 9WeLTqR7Sr53AbcNLq46VL2aUcOM5NXjGBGPBDTjeESpbpX2hDcdWyanMFLp/fhRhkvMuTM7n9
 zXPjT54D5tXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="479868701"
Received: from unknown (HELO joshikun.iind.intel.com) ([10.223.74.209])
 by fmsmga006.fm.intel.com with ESMTP; 26 Jun 2020 09:10:02 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jun 2020 14:43:33 +0530
Message-Id: <20200626091333.17516-4-kunal1.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200626091333.17516-1-kunal1.joshi@intel.com>
References: <20200626091333.17516-1-kunal1.joshi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 3/3] drm/i915: Send hotplug event if edid had
 changed
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
Cc: daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Added epoch counter checking to intel_encoder_hotplug
in order to be able process all the connector changes,
besides connection status. Also now any change in connector
would result in epoch counter change, so no multiple checks
are needed.

v2: Renamed change counter to epoch counter. Fixed type name.

v3: Fixed rebase conflict

v4: Remove duplicate drm_edid_equal checks from hdmi and dp,
    lets use only once edid property is getting updated and
    increment epoch counter from there.
    Also lets now call drm_connector_update_edid_property
    right after we get edid always to make sure there is a
    unified way to handle edid change, without having to
    change tons of source code as currently
    drm_connector_update_edid_property is called only in
    certain cases like reprobing and not right after edid is
    actually updated.

v5: Fixed const modifiers, removed blank line

v6: Removed drm specific part from this patch, leaving only
    i915 specific changes here.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 24 ++++++++++++--------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 2e94c1413c02..80bcfff032e9 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -283,6 +283,8 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
 {
 	struct drm_device *dev = connector->base.dev;
 	enum drm_connector_status old_status;
+	u64 old_epoch_counter;
+	bool ret = false;
 
 	drm_WARN_ON(dev, !mutex_is_locked(&dev->mode_config.mutex));
 	old_status = connector->base.status;
@@ -290,17 +292,19 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
 	connector->base.status =
 		drm_helper_probe_detect(&connector->base, NULL, false);
 
-	if (old_status == connector->base.status)
-		return INTEL_HOTPLUG_UNCHANGED;
-
-	drm_dbg_kms(&to_i915(dev)->drm,
-		    "[CONNECTOR:%d:%s] status updated from %s to %s\n",
-		    connector->base.base.id,
-		    connector->base.name,
-		    drm_get_connector_status_name(old_status),
-		    drm_get_connector_status_name(connector->base.status));
+	if (old_epoch_counter != connector->base.epoch_counter)
+		ret = true;
 
-	return INTEL_HOTPLUG_CHANGED;
+	if (ret) {
+		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] status updated from %s to %s(epoch counter %llu)\n",
+			      connector->base.base.id,
+			      connector->base.name,
+			      drm_get_connector_status_name(old_status),
+			      drm_get_connector_status_name(connector->base.status),
+			      connector->base.epoch_counter);
+		return INTEL_HOTPLUG_CHANGED;
+	}
+	return INTEL_HOTPLUG_UNCHANGED;
 }
 
 static bool intel_encoder_has_hpd_pulse(struct intel_encoder *encoder)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
