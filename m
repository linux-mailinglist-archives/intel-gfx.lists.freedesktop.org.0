Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F13D84BFF48
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 17:51:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2B210E8C6;
	Tue, 22 Feb 2022 16:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB90510E892
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 16:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645548704; x=1677084704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wkml+Dyf0LjA8KFOXb/WFBh1OAq+KbfMlEi4hOTjl08=;
 b=NK0bk5UrqiCPPo+T8I+aq+kLpA6ZBjPu6PtjgErv3VlbaqnhuOBGijkQ
 Ho8i2IFaA+Y0PHqs8DmpWzEbkwKZisket5DUiN4nR5LjIu90C5xQri7gG
 79B/a8IKmYSraxr3WfHdlndFR6ZAFUqH9odexlbNT/FFSh/eHtO+5ChXx
 2e5tRfttOdfGXrJba1Rn/Kxn0TlW9ivSjWV2qWGmq/gxE6jE3SPsUS7Wz
 8qeDPEddS+czpsChN7uO2lYSDNjUUtGQhLss5EjhveSPJ4KYR8M59R32o
 1bWYWe/hnOMkcBkWvF3U1xyI7AaQqkBlnaZjyUVytOD/l0WfAXvw0NKgi g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="314985513"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="314985513"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="547828266"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:43 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 18:51:32 +0200
Message-Id: <20220222165137.1004194-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220222165137.1004194-1-imre.deak@intel.com>
References: <20220222165137.1004194-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/8] drm/i915: Remove redundant state
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 32 +------------------
 1 file changed, 1 insertion(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index bf3619ae9dad2..857dd9ddba35f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -636,28 +636,10 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 
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
 
@@ -748,18 +730,6 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
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
@@ -782,7 +752,7 @@ icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
 	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 
 	if (intel_phy_is_tc(dev_priv, phy))
-		return icl_tc_phy_aux_power_well_disable(dev_priv, power_well);
+		return hsw_power_well_disable(dev_priv, power_well);
 	else if (IS_ICELAKE(dev_priv))
 		return icl_combo_phy_aux_power_well_disable(dev_priv,
 							    power_well);
-- 
2.27.0

