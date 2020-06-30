Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EEC210074
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 01:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15AB86E11A;
	Tue, 30 Jun 2020 23:33:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B2C6E11A
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 23:33:13 +0000 (UTC)
IronPort-SDR: F9QWL6bmoUh5PTX0jTqSJgOaY+vBg3CFA4R4CNKqlEXZAyTzISkE4v4PEBvnr65km0A1Z1fq5I
 J8uvmAx9liYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="146405883"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="146405883"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 16:33:12 -0700
IronPort-SDR: IdBk2md27lkiFharlioJXTzqnEjrRjCsgqdkQf4fyM4QS+25Mx2mJZ10R+oS0AMGy7jB5ZlHOq
 aIOMlwjDpRfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="281406545"
Received: from ajain7-mobl2.amr.corp.intel.com (HELO msatwood-mobl.intel.com)
 ([10.209.133.97])
 by orsmga006.jf.intel.com with ESMTP; 30 Jun 2020 16:33:11 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 16:33:10 -0700
Message-Id: <20200630233310.10191-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/dp: Correctly advertise HBR3 for
 GEN11+
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

intel_dp_set_source_rates() calls intel_dp_is_edp(), which is unsafe to
use before encoder_type is set. This caused GEN11+ to incorrectly strip
HBR3 from source rates for edp. Move intel_dp_set_source_rates() to
after encoder_type is set. Add comment to intel_dp_is_edp() describing
unsafe usages.

v2: Alter intel_dp_set_source_rates final position (Ville/Manasi).
    Remove outdated comment (Ville).
    Slight optimization of control flow in intel_dp_init_connector.
    Slight rewording in commit message.

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++---------------
 1 file changed, 11 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3df5d901dd9d..c9b93c5706af 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -137,6 +137,8 @@ static const u8 valid_dsc_slicecount[] = {1, 2, 4};
  *
  * If a CPU or PCH DP output is attached to an eDP panel, this function
  * will return true, and false otherwise.
+ *
+ * This function is not safe to use prior to encoder type being set.
  */
 bool intel_dp_is_edp(struct intel_dp *intel_dp)
 {
@@ -8157,8 +8159,6 @@ intel_dp_init_connector(struct intel_digital_port *intel_dig_port,
 		     intel_encoder->base.name))
 		return false;
 
-	intel_dp_set_source_rates(intel_dp);
-
 	intel_dp->reset_link_params = true;
 	intel_dp->pps_pipe = INVALID_PIPE;
 	intel_dp->active_pipe = INVALID_PIPE;
@@ -8174,28 +8174,22 @@ intel_dp_init_connector(struct intel_digital_port *intel_dig_port,
 		 */
 		drm_WARN_ON(dev, intel_phy_is_tc(dev_priv, phy));
 		type = DRM_MODE_CONNECTOR_eDP;
+		intel_encoder->type = INTEL_OUTPUT_EDP;
+
+		/* eDP only on port B and/or C on vlv/chv */
+		if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
+				      IS_CHERRYVIEW(dev_priv)) &&
+				port != PORT_B && port != PORT_C))
+			return false;
 	} else {
 		type = DRM_MODE_CONNECTOR_DisplayPort;
 	}
 
+	intel_dp_set_source_rates(intel_dp);
+
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		intel_dp->active_pipe = vlv_active_pipe(intel_dp);
 
-	/*
-	 * For eDP we always set the encoder type to INTEL_OUTPUT_EDP, but
-	 * for DP the encoder type can be set by the caller to
-	 * INTEL_OUTPUT_UNKNOWN for DDI, so don't rewrite it.
-	 */
-	if (type == DRM_MODE_CONNECTOR_eDP)
-		intel_encoder->type = INTEL_OUTPUT_EDP;
-
-	/* eDP only on port B and/or C on vlv/chv */
-	if (drm_WARN_ON(dev, (IS_VALLEYVIEW(dev_priv) ||
-			      IS_CHERRYVIEW(dev_priv)) &&
-			intel_dp_is_edp(intel_dp) &&
-			port != PORT_B && port != PORT_C))
-		return false;
-
 	drm_dbg_kms(&dev_priv->drm,
 		    "Adding %s connector on [ENCODER:%d:%s]\n",
 		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
-- 
2.21.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
