Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 828604AD779
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3032010E3A6;
	Tue,  8 Feb 2022 11:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3469010E3A6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320228; x=1675856228;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m3tt4FZud6UY5n3urwaFgOggka9IF8rxFQpVlqy17ns=;
 b=JIZXj8z1SlbnvH/ujrmROoRB42lUDmdrOyDsMAnD9kV1QCo04Y9lwxYD
 oqETT2aPhoyiMuNIxdve/BwZgRYRf5KEIrVuPigoKbpcCIDgGgMy/Iz/5
 8DP1+kY50QA54pQqlTjegISqA8Iyn4yMFUgEEkCrFI7nqMadfCSRiizlZ
 BOzPz1EdjTB6Lv0dZMLf5b7CUYFkDrsCFCFxclqPuF0RnZj0hdoVmkDrz
 iKQ0W45ycgZIT3EV0SP+dP8oVIfkJg67z2SkIheUMinXFj6FBbdBso6xl
 K8HJwQGi0eUd46SRjLaolq3fafTVKzqbTLZ680pLPKTBLDJwP6jFrkWEr g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232495954"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232495954"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915269"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:07 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:36 +0200
Message-Id: <20220208113656.179823-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/26] drm/i915: Add function to call a power
 well's sync_hw() hook
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

Add a function to call a power well's sync_hw() hook, instead of
open-coding the same, as a step towards making the low-level
power well internals (i915_power_well_ops/desc structs) hidden.

The cached-enable state should be always up-to-date, so update it
whenever sync_hw() is called.

No functional change.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c      | 7 ++-----
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_display_power_well.h | 2 ++
 3 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3b8b745f1729f..056965248a3b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5015,11 +5015,8 @@ static void intel_power_domains_sync_hw(struct drm_i915_private *dev_priv)
 	struct i915_power_well *power_well;
 
 	mutex_lock(&power_domains->lock);
-	for_each_power_well(dev_priv, power_well) {
-		power_well->desc->ops->sync_hw(dev_priv, power_well);
-		power_well->hw_enabled =
-			power_well->desc->ops->is_enabled(dev_priv, power_well);
-	}
+	for_each_power_well(dev_priv, power_well)
+		intel_power_well_sync_hw(dev_priv, power_well);
 	mutex_unlock(&power_domains->lock);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index e21190854fa0f..63b97bcc64bc3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -22,6 +22,14 @@ void intel_power_well_disable(struct drm_i915_private *i915,
 	power_well->desc->ops->disable(i915, power_well);
 }
 
+void intel_power_well_sync_hw(struct drm_i915_private *i915,
+			      struct i915_power_well *power_well)
+{
+	power_well->desc->ops->sync_hw(i915, power_well);
+	power_well->hw_enabled =
+		power_well->desc->ops->is_enabled(i915, power_well);
+}
+
 void intel_power_well_get(struct drm_i915_private *i915,
 			  struct i915_power_well *power_well)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index bc77de3a8d4fc..ba5bbd36f7fc0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -107,6 +107,8 @@ void intel_power_well_enable(struct drm_i915_private *i915,
 			     struct i915_power_well *power_well);
 void intel_power_well_disable(struct drm_i915_private *i915,
 			      struct i915_power_well *power_well);
+void intel_power_well_sync_hw(struct drm_i915_private *i915,
+			      struct i915_power_well *power_well);
 void intel_power_well_get(struct drm_i915_private *i915,
 			  struct i915_power_well *power_well);
 void intel_power_well_put(struct drm_i915_private *i915,
-- 
2.27.0

