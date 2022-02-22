Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 804DD4BFF4D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 17:52:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6FAE10E8D3;
	Tue, 22 Feb 2022 16:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C6010E8D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 16:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645548709; x=1677084709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=woSVykrrpIJAbkw0U8xf/kLqGhad3gq+FsTXAUvQs7s=;
 b=ZTLGOZGEFD1vrmmm1EqenN+MuMrLfVlORBQN2Ds57ydwKnz5OUUMbRCA
 Zi4Fi0aE+CxG9WdJypKAsMpdF7+Z278dv4Xd4fWgh82ss0dsp8+zPt6CS
 j4QI/xnYG0vVEZUhIMgkpQJYdwPrkiIaTXGta75T4IdVdDb9aQBnTaW81
 MwQGrMAR5vEExDQRZUpXcevd7H62MKtsktd1iQq0mySrUAq3Zo4gwrvDZ
 oCkXVNheG/5Duw7+xSA0Pg+HVXD1g6PEY+pJAHtgEq20K5G4CAIfvslDa
 2KoRzHDY5/PMlO+COwAgTpvDGY9BVWFERskPGY3wyD4vVx0Cm/XcLD1EA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="314985523"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="314985523"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="547828314"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:48 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 18:51:35 +0200
Message-Id: <20220222165137.1004194-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220222165137.1004194-1-imre.deak@intel.com>
References: <20220222165137.1004194-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/8] drm/i915: Add function to call a power
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c      | 7 ++-----
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_display_power_well.h | 2 ++
 3 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index a18895a9aa42f..b8b914d8f0b56 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5016,11 +5016,8 @@ static void intel_power_domains_sync_hw(struct drm_i915_private *dev_priv)
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

