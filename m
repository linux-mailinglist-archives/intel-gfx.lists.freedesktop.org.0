Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FF34C1E4F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 23:14:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D26910E131;
	Wed, 23 Feb 2022 22:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EB6B10E131
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 22:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645654465; x=1677190465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F+A0tQkVRu0Oy1AtIXbzKzAgfinmlT2OCoS1vCfK6zU=;
 b=F5klHXQi9BDF3Y0ESBsV+pF0FikRlJGwLOP6PNiMV4yyNIDZTfLX61pU
 0jm5w9c6Fhp5yrU6o7GlZRrPwlhfmmmJx36OjL3KoR0mUnjVIBBPL/Td6
 Fk8RyadyNFMvDGz7zB7oftRxkJI232efxnKRO31pIjbEHk21No7DZm+wK
 62xayBxVcetGOJn1MV6hl1Fr2yx6iGnxH23jghD9GPHoeeE0ocPCdpKPx
 r6ObDFJzZajrOu9QqyMGpotsyuIudOEK8rkMobdQZmFubJCcsPMi90NAq
 /x1CvlztrAKJjHU+6Jdxu4HUcFhCpsw/qP/pmQyW+MEgukuzDBhDzVvTK w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="250919539"
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="250919539"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 14:14:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="506088487"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 23 Feb 2022 14:14:24 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 14:14:53 -0800
Message-Id: <20220223221453.26274-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5] drm/i915/display/vrr: Reset VRR capable
 property on a long hpd
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With some VRR panels, user can turn VRR ON/OFF on the fly from the panel settings.
When VRR is turned OFF ,sends a long HPD to the driver clearing the Ignore MSA bit
in the DPCD. Currently the driver parses that onevery HPD but fails to reset
the corresponding VRR Capable Connector property.
Hence the userspace still sees this as VRR Capable panel which is incorrect.

Fix this by explicitly resetting the connector property.

v2: Reset vrr capable if status == connector_disconnected
v3: Use i915 and use bool vrr_capable (Jani Nikula)
v4: Move vrr_capable to after update modes call (Jani N)
Remove the redundant comment (Jan N)
v5: Fixes the regression on older platforms by reseting the VRR
only if HAS_VRR

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Fixes: 390a1f8beb87 ("Revert "drm/i915/display/vrr: Reset VRR capable property on a long hpd")
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1046e7fe310a..4656c7316efa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4455,6 +4455,14 @@ intel_dp_detect(struct drm_connector *connector,
 		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
 		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
 
+		/* Reset VRR Capable property */
+		if (HAS_VRR(dev_priv)) {
+			drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] VRR capable: FALSE\n",
+				    connector->base.id, connector->name);
+			drm_connector_set_vrr_capable_property(connector,
+							       false);
+		}
+
 		if (intel_dp->is_mst) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "MST device may have disappeared %d vs %d\n",
@@ -4569,15 +4577,18 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct edid *edid;
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	int num_modes = 0;
 
 	edid = intel_connector->detect_edid;
 	if (edid) {
-		num_modes = intel_connector_update_modes(connector, edid);
+		bool vrr_capable;
 
-		if (intel_vrr_is_capable(connector))
-			drm_connector_set_vrr_capable_property(connector,
-							       true);
+		num_modes = intel_connector_update_modes(connector, edid);
+		vrr_capable = intel_vrr_is_capable(connector);
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
+			    connector->base.id, connector->name, yesno(vrr_capable));
+		drm_connector_set_vrr_capable_property(connector, vrr_capable);
 	}
 
 	/* Also add fixed mode, which may or may not be present in EDID */
-- 
2.19.1

