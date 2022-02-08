Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3168D4AD776
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA85810E211;
	Tue,  8 Feb 2022 11:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 092E110E211
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320224; x=1675856224;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9P/eQMAsrjJIF9CWPqEW1s/sMiyPh9NJs2bIq5DRqEI=;
 b=nVGSHnhR7l1o9G1JcurWMNfuDcERt63/PHNe6DyTOL+N5pVWVQR2rHZe
 D7XeNlCvWtqvuXJz7b+4nAyTIpOkX0YdUz5wHDDk96UKtCIo3O7VYuIEH
 SLty59gUKSviaTMogXy96t7TcXgBQw8Oxf80qnhG5HC3vZgmZALPx3WGA
 HUhEQYrnN4142S3svd6/q8KBELEGQdOvLyeWnboCwoLIqhtS37qr5kzYB
 eEk17SKXZNiyQ147xaRWfX8KVoEpiu9swBDftx1LJ9IQmL2eyYzo/RbD3
 KZ7rj5f5LGQ8NxzXHOmReUeyt9/oqdV5HMfkupg8SRAL9p4O2yywhWKfa Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="273458819"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="273458819"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:03 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915234"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:02 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:33 +0200
Message-Id: <20220208113656.179823-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/26] drm/i915: Remove redundant state
 verification during TypeC AUX power well disabling
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

Commit d5ce34da31456a
("drm/i915: Add state verification for the TypeC port mode")
added a verification to the TypeC AUX power well enable()/disable()
hooks to check if the TypeC port related to this power well is properly
locked. If the disabling happens asynchronously the verification is
skipped, since in this case the port is unlocked. The detection of
asnychronous disabling doesn't work as intended though, since the power
well's reference count is always 0 when its disable() hook is called
(and since there won't be any domain reference held for this power well
either, the verification is always skipped); remove the verification
from the disable() hook for now. In the power well's enable() hook the
power well's reference will be always >0 and there won't be any
asynchronous disabling pending for it, so we can drop the async refcount
check from there.

No functional change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 32 +------------------
 1 file changed, 1 insertion(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index a90866b8bf7c4..621aa890ff6f4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -635,28 +635,10 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 
-static u64 async_put_domains_mask(struct i915_power_domains *power_domains);
-
-static int power_well_async_ref_count(struct drm_i915_private *dev_priv,
-				      struct i915_power_well *power_well)
-{
-	int refs = hweight64(power_well->desc->domains &
-			     async_put_domains_mask(&dev_priv->power_domains));
-
-	drm_WARN_ON(&dev_priv->drm, refs > power_well->count);
-
-	return refs;
-}
-
 static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_priv,
 					struct i915_power_well *power_well,
 					struct intel_digital_port *dig_port)
 {
-	/* Bypass the check if all references are released asynchronously */
-	if (power_well_async_ref_count(dev_priv, power_well) ==
-	    power_well->count)
-		return;
-
 	if (drm_WARN_ON(&dev_priv->drm, !dig_port))
 		return;
 
@@ -747,18 +729,6 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void
-icl_tc_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
-				  struct i915_power_well *power_well)
-{
-	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
-	struct intel_digital_port *dig_port = aux_ch_to_digital_port(dev_priv, aux_ch);
-
-	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
-
-	hsw_power_well_disable(dev_priv, power_well);
-}
-
 static void
 icl_aux_power_well_enable(struct drm_i915_private *dev_priv,
 			  struct i915_power_well *power_well)
@@ -781,7 +751,7 @@ icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
 	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 
 	if (intel_phy_is_tc(dev_priv, phy))
-		return icl_tc_phy_aux_power_well_disable(dev_priv, power_well);
+		return hsw_power_well_disable(dev_priv, power_well);
 	else if (IS_ICELAKE(dev_priv))
 		return icl_combo_phy_aux_power_well_disable(dev_priv,
 							    power_well);
-- 
2.27.0

