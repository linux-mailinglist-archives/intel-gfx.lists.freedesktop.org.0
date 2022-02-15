Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C024B7506
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 21:25:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6996710E5D6;
	Tue, 15 Feb 2022 20:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FA110E5D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 20:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644956756; x=1676492756;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IKcxIEpUcMciznduYe1AhrSk/a/w9LfLc28uDYYN5wU=;
 b=Uhqkn3o2WChvUt93bv/dNVTP/8igArg7Dya0Foe441UqG/WQmEs05eMj
 Twz3VAfZSDR7oyTU62ChhIU3adtQThsfz+yYQ5wXSI38w5B8If9MBknOu
 5uVkzQhlKd3FidT2wABu/pCQrdzqzuUV68VPYyZV8IdWG3xGywpstkNHy
 fCKImWxSFC8WwfYgdP1eppINr7JMa1K+hETM+RdgyXRvCULyrW/kDKxqW
 sVi+q2sFTGfKKCsDfER6dggfA6c4w+eqRgVAfbiW/QAiAhjwtQ55YJ6lU
 9MoHqeivxNyPe8BTJwwo6EYwFRfq7K6IIDREqcwi75AyTUWizJDeCwDgl g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250391091"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250391091"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 12:25:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="544485556"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 15 Feb 2022 12:25:55 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 12:26:01 -0800
Message-Id: <20220215202601.22943-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/display/vrr: Reset VRR capable
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

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1046e7fe310a..929e9b6febf1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4455,6 +4455,12 @@ intel_dp_detect(struct drm_connector *connector,
 		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
 		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
 
+		/* Reset VRR Capable property */
+		drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] VRR capable: FALSE\n",
+			    connector->base.id, connector->name);
+		drm_connector_set_vrr_capable_property(connector,
+						       false);
+
 		if (intel_dp->is_mst) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "MST device may have disappeared %d vs %d\n",
@@ -4569,15 +4575,18 @@ static int intel_dp_get_modes(struct drm_connector *connector)
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

