Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF434AD775
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD18710E179;
	Tue,  8 Feb 2022 11:37:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D50A210E179
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320223; x=1675856223;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=E/vSg+pdlC64eO9K+qd11YVQMzN0nwqEpOXFPVMaIgY=;
 b=flmy8WNFJXnp2mu8eVJF30qE7icObhKwwHQ1cHSAE1tay4v9wGAxq+Zl
 cG+sjhhhznqSGpNqLZdCZqd3Nm6wq9K2eBSzsm9GxWLGM7VeRUMEAt4+3
 15Mz4S+DGJE+qwqabX7EJn6/k3J3ffjUofksWora1LszMDVN0Yq+/8fUU
 Xr1XG2g+Dil4x9ssAtyamYu932ai7uZ8WebZ1FA0soIiYcxxP/5UyR15t
 jT63bJcD0uK/XMd8vkj6BlE7oepXHScer+aZrhm5h0aJSmK5Sw1sZYc0r
 xmZ8R/vHiwZTVhCBw3i/DPUpyxTIOjrbXD7zg/OYYYTWjBJC9z1hnvaxY Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="273458816"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="273458816"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:03 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915224"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:01 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:32 +0200
Message-Id: <20220208113656.179823-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/26] drm/i915: Sanitize open-coded power
 well enable()/disable() calls
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

Instead of open-coding the call of the power wells' enable()/disable()
hooks use the corresponding helper functions. This will also ensure that
the power well's cached-enable state is always up-to-date. Luckily the
lack of this updating hasn't been a problem, since the state either
didn't change (in intel_display_power_set_target_dc_state()), or got
updated subsequently (for vlv_cmnlane_wa(), in the following
intel_power_domains_sync_hw()).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 143f5c0e1f43c..a90866b8bf7c4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1129,12 +1129,12 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 	 * DC off power well to effect target DC state.
 	 */
 	if (!dc_off_enabled)
-		power_well->desc->ops->enable(dev_priv, power_well);
+		intel_power_well_enable(dev_priv, power_well);
 
 	dev_priv->dmc.target_dc_state = state;
 
 	if (!dc_off_enabled)
-		power_well->desc->ops->disable(dev_priv, power_well);
+		intel_power_well_disable(dev_priv, power_well);
 
 unlock:
 	mutex_unlock(&power_domains->lock);
@@ -6072,7 +6072,7 @@ static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
 	drm_dbg_kms(&dev_priv->drm, "toggling display PHY side reset\n");
 
 	/* cmnlane needs DPLL registers */
-	disp2d->desc->ops->enable(dev_priv, disp2d);
+	intel_power_well_enable(dev_priv, disp2d);
 
 	/*
 	 * From VLV2A0_DP_eDP_HDMI_DPIO_driver_vbios_notes_11.docx:
@@ -6081,7 +6081,7 @@ static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
 	 * Simply ungating isn't enough to reset the PHY enough to get
 	 * ports and lanes running.
 	 */
-	cmn->desc->ops->disable(dev_priv, cmn);
+	intel_power_well_disable(dev_priv, cmn);
 }
 
 static bool vlv_punit_is_power_gated(struct drm_i915_private *dev_priv, u32 reg0)
-- 
2.27.0

