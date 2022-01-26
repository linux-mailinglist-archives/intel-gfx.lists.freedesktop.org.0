Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C13749D290
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 20:37:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B694D10E587;
	Wed, 26 Jan 2022 19:37:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D895C10E587
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 19:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643225872; x=1674761872;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uVGpjNzVrhHkYOyY9XY8JBlUpe+myq1fmM+c4D1mepg=;
 b=gTvEF0KB3b52l6+9AT4HxoTG98Hp9wEwx7GIQHv+bfUeDxYKKfPpfRXF
 wPpfHwYKsWT/wCz0lje399HAraFrw/TvooDanO3Z/mYdQaF1xDP/Fyqi9
 LoXbFL3U3g8sd5b8MaWeiuu9r/DvVSuJlSLaJBaxzxycrw/1VapHiS3eO
 lbI9jkjEGa1TzYqFr0JSfiam7gdWm6Xtbpql93SD7sCeYfu5AwUslGgCu
 7TWzODg39AhsrDd6QNTkz2KG7mtPBBpOjwjEdhMxGI1QKbFBAsDO9bCYv
 ogxaF6koAyvu+DDmCRO28oSDOgX5obtKDtnAMRc8l29W7NXeLiYnobGXU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="245469500"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="245469500"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 11:37:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="696348140"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 26 Jan 2022 11:37:52 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 11:53:04 -0800
Message-Id: <20220126195304.8262-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display/vrr: Reset VRR capable
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
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4d4579a301f6..687cb37bb22a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4446,6 +4446,12 @@ intel_dp_detect(struct drm_connector *connector,
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
@@ -4560,15 +4566,17 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct edid *edid;
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	int num_modes = 0;
 
 	edid = intel_connector->detect_edid;
 	if (edid) {
-		num_modes = intel_connector_update_modes(connector, edid);
+		bool vrr_capable = intel_vrr_is_capable(connector);
 
-		if (intel_vrr_is_capable(connector))
-			drm_connector_set_vrr_capable_property(connector,
-							       true);
+		num_modes = intel_connector_update_modes(connector, edid);
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
+			    connector->base.id, connector->name, yesno(vrr_capable));
+		drm_connector_set_vrr_capable_property(connector, vrr_capable);
 	}
 
 	/* Also add fixed mode, which may or may not be present in EDID */
-- 
2.19.1

