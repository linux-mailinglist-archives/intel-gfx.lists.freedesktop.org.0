Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C6D4CCA0C
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 00:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ABE210E300;
	Thu,  3 Mar 2022 23:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA7AA10E300
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 23:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646350298; x=1677886298;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MPZt78QAcD0FItQ+fT7V1/W+8yHB3I4MN2zyrb8ILqU=;
 b=a/EK8USyUdeBCtRQzwYqehnDsh1ZNOACFSGaqmZZkRZ/Eihe8dEzWUJU
 QOXU2wcAaDVuCtcA8nLnaF9eh4GwR0hRWURTfthkLddTSciuRtw0MSXlZ
 nouCBzp9T7BrngVdWE6V4eQjrx0ECEggnzaOVDHH3ub8N9OiNCyRVPOj/
 P2tDVndjdA/W7wqH1/NZMwhW1aoIN6fa0hyS8wRYCsyMbgD8m307GLSpz
 u1upt8GWPKWMIshO4kpLat/eK7c8mt2ivSGzgxAY3tjUoAYrP40pandbP
 YGC9e8MhBlDKGO6s9ix2APtFuBA4RKAGmZ4TwbtPfPQlo6ZsHvsIfsc4W Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="253774886"
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="253774886"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 15:31:38 -0800
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; d="scan'208";a="642311128"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 03 Mar 2022 15:31:38 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 15:32:22 -0800
Message-Id: <20220303233222.4698-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7] drm/i915/display/vrr: Reset VRR capable
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
v6: Remove the checks from driver, add in drm core before
setting VRR prop (Ville)
v7: Move VRR set/reset to set/unset_edid (Ville)

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Fixes: 390a1f8beb87 ("Revert "drm/i915/display/vrr: Reset VRR capable property on a long hpd")
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d6ef33096bb6..1d0f8fc39005 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4385,13 +4385,20 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 static void
 intel_dp_set_edid(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct edid *edid;
+	bool vrr_capable;
 
 	intel_dp_unset_edid(intel_dp);
 	edid = intel_dp_get_edid(intel_dp);
 	connector->detect_edid = edid;
 
+	vrr_capable = intel_vrr_is_capable(&connector->base);
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
+		    connector->base.base.id, connector->base.name, str_yes_no(vrr_capable));
+	drm_connector_set_vrr_capable_property(&connector->base, vrr_capable);
+
 	intel_dp_update_dfp(intel_dp, edid);
 	intel_dp_update_420(intel_dp);
 
@@ -4424,6 +4431,9 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
 
 	intel_dp->dfp.ycbcr_444_to_420 = false;
 	connector->base.ycbcr_420_allowed = false;
+
+	drm_connector_set_vrr_capable_property(&connector->base,
+					       false);
 }
 
 static int
@@ -4574,14 +4584,9 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 	int num_modes = 0;
 
 	edid = intel_connector->detect_edid;
-	if (edid) {
+	if (edid)
 		num_modes = intel_connector_update_modes(connector, edid);
 
-		if (intel_vrr_is_capable(connector))
-			drm_connector_set_vrr_capable_property(connector,
-							       true);
-	}
-
 	/* Also add fixed mode, which may or may not be present in EDID */
 	if (intel_dp_is_edp(intel_attached_dp(intel_connector)) &&
 	    intel_connector->panel.fixed_mode) {
-- 
2.19.1

