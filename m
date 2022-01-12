Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EE548CC2A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 20:42:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2B1D10E316;
	Wed, 12 Jan 2022 19:42:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FBE810E316
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 19:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642016552; x=1673552552;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DnIIBQNTD2yfLdOZuNCSsEIthF5iRtc2KKjVDSxXROE=;
 b=KoANv5/4DIwhQhD+kRQKU0IhK+i2jLjf+5Rrz1y3Uc7vqyhPFuyRNwvD
 Hey/j6gEOsI0LeDpWmYbnxTOniiyCI1uWqTslOAY0WnNJNOiyJL2vQ4gd
 H1X/PIc6UtLq14XmtMr+jCRPKAHGH8q5ByzhP5jhyUK1gKiFh+e0/RHUs
 tUj5JWdnJEiMr5Ee7ddmchicDw8M4sZpw7z4hPanQlOXOXPLH/1f1Qcmm
 Eli7ZI4NCwfIOD5gUjcRDiQB3l0qOwwJZpOmABZmjLnl+R1llT3Z8dY5C
 IXadEwUAmeXvpxHOTHNGw3SCt8RmfQKMwKdjt4uqn+3uXQjziz7LYsy6H A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="242657117"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="242657117"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 11:42:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="529344625"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 12 Jan 2022 11:42:31 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 11:57:22 -0800
Message-Id: <20220112195722.16639-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/vrr: Reset VRR capable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With some VRR panels, user can turn VRR ON/OFF on the fly from the panel settings.
When VRR is turned OFF ,sends a long HPD to the driver clearing the Ignore MSA bit
in the DPCD. Currently the driver parses that onevery HPD but fails to reset
the corresponding VRR Capable Connector property.
Hence the userspace still sees this as VRR Capable panel which is incorrect.

Fix this by explicitly resetting the connector property.

Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index df2a7d86aef0..4f1418f02b76 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4539,15 +4539,24 @@ static int intel_dp_get_modes(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	struct edid *edid;
+	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	int num_modes = 0;
 
 	edid = intel_connector->detect_edid;
 	if (edid) {
 		num_modes = intel_connector_update_modes(connector, edid);
 
-		if (intel_vrr_is_capable(connector))
+		if (intel_vrr_is_capable(connector)) {
+			drm_dbg_kms(&dev_priv->drm, "VRR capable  = TRUE for [CONNECTOR:%d:%s]\n",
+				    connector->base.id, connector->name);
 			drm_connector_set_vrr_capable_property(connector,
 							       true);
+		} else {
+			drm_dbg_kms(&dev_priv->drm, "VRR capable = false for [CONNECTOR:%d:%s]\n",
+				    connector->base.id, connector->name);
+			drm_connector_set_vrr_capable_property(connector,
+							       false);
+		}
 	}
 
 	/* Also add fixed mode, which may or may not be present in EDID */
-- 
2.19.1

