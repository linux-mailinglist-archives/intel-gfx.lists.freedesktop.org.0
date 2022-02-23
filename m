Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FE84C0E1B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 09:18:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3953110F008;
	Wed, 23 Feb 2022 08:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF7810F006
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645604296; x=1677140296;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7s0qtZNBgjCHduS2k7Uo9ZOS+BmTy0VmSj9VJF7jcCI=;
 b=LZr953YFZBO6QwQ6VqRqYDrFOi24C1Vil/VwzSLidSx1PZXc/ZFdkBy8
 wuXsC+HuFqkFePGejlwEcrcvAwh0oxZGMF0uUq1AuY+celjkU4hzlWkNz
 T2Q+AzP62/VprvIaRCpPPTq07rxuCzlgGhbRVP+Fo7rstgW3HfxHsBH9i
 ZEpmNM1L8j/bL0A5TygAWeQMn19vQt8X80hm+0jo3tSK720XooHYCxZzL
 i5OMDC9QRhFUH2AlU0/xZg0seUGKGDGFPD5uU+L+LQ52AuUMrfuSVZ8QU
 btGPWTdBINi+hTkH39jmjuzUxhDFOGOwZ2g7+fAC3i1QE4/eUsEJSM4wx A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="231885095"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="231885095"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 00:18:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="683814367"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 23 Feb 2022 00:18:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 10:18:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 10:18:10 +0200
Message-Id: <20220223081810.19917-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "drm/i915/display/vrr: Reset VRR capable
 property on a long hpd"
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

This reverts commit 9bc34b4d0f3cb368241684cc5e0445d435dded44.

Just oopses on most machines.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 929e9b6febf1..1046e7fe310a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4455,12 +4455,6 @@ intel_dp_detect(struct drm_connector *connector,
 		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
 		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
 
-		/* Reset VRR Capable property */
-		drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] VRR capable: FALSE\n",
-			    connector->base.id, connector->name);
-		drm_connector_set_vrr_capable_property(connector,
-						       false);
-
 		if (intel_dp->is_mst) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "MST device may have disappeared %d vs %d\n",
@@ -4575,18 +4569,15 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct edid *edid;
-	struct drm_i915_private *i915 = to_i915(connector->dev);
 	int num_modes = 0;
 
 	edid = intel_connector->detect_edid;
 	if (edid) {
-		bool vrr_capable;
-
 		num_modes = intel_connector_update_modes(connector, edid);
-		vrr_capable = intel_vrr_is_capable(connector);
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
-			    connector->base.id, connector->name, yesno(vrr_capable));
-		drm_connector_set_vrr_capable_property(connector, vrr_capable);
+
+		if (intel_vrr_is_capable(connector))
+			drm_connector_set_vrr_capable_property(connector,
+							       true);
 	}
 
 	/* Also add fixed mode, which may or may not be present in EDID */
-- 
2.34.1

