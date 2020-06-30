Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2206820EF3D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 09:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EA7D89C56;
	Tue, 30 Jun 2020 07:23:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 939F089B78
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 07:23:28 +0000 (UTC)
IronPort-SDR: W36AXdkTm/IxgQV7DxyTLNwXUaaL/e2Eyyy0+jp0Np21IIZnQz1+KmD2inf9dcdezbSm81IHC8
 5kVnc6J4CEKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="126291939"
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="126291939"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 00:23:28 -0700
IronPort-SDR: ux8F0F0BTcANrqEjggtkrM8iJT0zyZJvcy2sp0A66+N6Rxos+Oy3M9835oUH5wt9frUCYernYt
 1Ag7s3DK9AhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="295126433"
Received: from unknown (HELO joshikun.iind.intel.com) ([10.223.74.209])
 by orsmga002.jf.intel.com with ESMTP; 30 Jun 2020 00:23:26 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 05:57:00 +0530
Message-Id: <20200630002700.5451-4-kunal1.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200630002700.5451-1-kunal1.joshi@intel.com>
References: <20200630002700.5451-1-kunal1.joshi@intel.com>
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
