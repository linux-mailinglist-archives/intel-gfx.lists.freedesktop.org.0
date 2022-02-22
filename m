Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 649BE4BFF49
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 17:51:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20C4810E884;
	Tue, 22 Feb 2022 16:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB6A10E8A0
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 16:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645548703; x=1677084703;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uH+QxjhxykjZSpMapUxjTGXqkrtnhlahsCVbrevULsM=;
 b=HSZAaEGMCsOcNhadPb6V2ut+zyQAtDtFYXi/y1Vzqn0FkJPChHYZ15IL
 cFhX9+43z5iUecCNzmXiVUef9bVHHWJZ/+Oby8zKtm8p/EqjbHcL1j7gA
 ekwuU3VktXvtiPmKzrfKp1vkSuCyFgUpFAHRYaTYxq3ORqlwYsyWK4li0
 X0M8CpWGXMRWFVyngz5+QlcXOZtA44b2lv4+LklcPAZGDjrnIP0I488H6
 oSbKmzy9Dh0tanUQEK2uZ8wtynGDIpX6srSB2iXOEQgZQJUbyg4HusONU
 kb7MCv0cEkYcHmdLW9o5NNkFIGYMHuiabFSlQN09nZ+DgwbUZTWAIXA5H A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="314985510"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="314985510"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="547828255"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:42 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 18:51:31 +0200
Message-Id: <20220222165137.1004194-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220222165137.1004194-1-imre.deak@intel.com>
References: <20220222165137.1004194-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] drm/i915: Sanitize open-coded power well
 enable()/disable() calls
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 4ca0e61ca5932..bf3619ae9dad2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1130,12 +1130,12 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
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
@@ -6073,7 +6073,7 @@ static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
 	drm_dbg_kms(&dev_priv->drm, "toggling display PHY side reset\n");
 
 	/* cmnlane needs DPLL registers */
-	disp2d->desc->ops->enable(dev_priv, disp2d);
+	intel_power_well_enable(dev_priv, disp2d);
 
 	/*
 	 * From VLV2A0_DP_eDP_HDMI_DPIO_driver_vbios_notes_11.docx:
@@ -6082,7 +6082,7 @@ static void vlv_cmnlane_wa(struct drm_i915_private *dev_priv)
 	 * Simply ungating isn't enough to reset the PHY enough to get
 	 * ports and lanes running.
 	 */
-	cmn->desc->ops->disable(dev_priv, cmn);
+	intel_power_well_disable(dev_priv, cmn);
 }
 
 static bool vlv_punit_is_power_gated(struct drm_i915_private *dev_priv, u32 reg0)
-- 
2.27.0

