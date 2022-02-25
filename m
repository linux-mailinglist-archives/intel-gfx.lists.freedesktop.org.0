Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5814C3AED
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 02:30:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8148310E14A;
	Fri, 25 Feb 2022 01:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC4DA10E1D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 01:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645752635; x=1677288635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E1BktloTbvo+Cf7VfDL95H6RZBWpPCk1v+L1m08on0A=;
 b=mV3NXCK0vPmgYJOzJXDIRbAWDBVWtv3y6vbKDi2J7cIdi/ecgTWP/5V1
 8BBiKxbIShytARWl+Th6pvR/UMX+mMBs54NNzeCkmncnZD9F8Nx3lbWhA
 pw8A9yT12ceG9k236mc4dQpul4ptlfB7s704z6TLZgnhTI0XNICwb4L3Z
 yAJO0Iky5jv3zonUVi6uEiMIwNcZMhYQhZ28W22yHxKSYd7hV2iKEnjlK
 k6cXel7AHD4mPI6gHiV4qIu+NeZm98q4x7DkPBmMOpb8hIX/jl6HwM8dj
 FHpTO+3vzdnzL0NdOhOsU3h1AtoRGuuVQlrOuwcPLym+frr/CiYLqiYcT g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="232366324"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="232366324"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 17:30:34 -0800
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="639948933"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 24 Feb 2022 17:30:34 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Feb 2022 17:30:55 -0800
Message-Id: <20220225013055.9282-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20220225013055.9282-1-manasi.d.navare@intel.com>
References: <20220225013055.9282-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 2/2] drm/i915/display/vrr: Reset VRR capable
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

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Fixes: 390a1f8beb87 ("Revert "drm/i915/display/vrr: Reset VRR capable property on a long hpd")
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1046e7fe310a..f96123b56935 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4455,6 +4455,10 @@ intel_dp_detect(struct drm_connector *connector,
 		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
 		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
 
+		/* Reset VRR Capable property on disconnect */
+		drm_connector_set_vrr_capable_property(connector,
+						       false);
+
 		if (intel_dp->is_mst) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "MST device may have disappeared %d vs %d\n",
@@ -4569,15 +4573,18 @@ static int intel_dp_get_modes(struct drm_connector *connector)
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

