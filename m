Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C475D58FF15
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:17:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CAFB10F33C;
	Thu, 11 Aug 2022 15:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 247B9B3E6C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660231002; x=1691767002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5YMxYjp74ZT1kJsoMYnk2eypomlyYNBh2Vu0eRV8Xf8=;
 b=aN5FhUWKIlVbQ5VzO5QzAG2fJGxL2BH4GUEcjr9dUCLzO8ZCihR89CWJ
 37BN590olBbHXLN8bvueJpd0+i14JLiJVTT1qgNqgln/VaBp58Xfp5Xkc
 lEP3KCCWWZjyxHlYaLggVxzuRyCZVpvBjcnysR997ppKCf1+yieD1jaKK
 hkR+Nc65DqDSpmlDa/rLUL3U03HGMjSxUJ4YjlqNAaLp1VeHJcKitBTpY
 zKbuBKhYpF/ZvmWKhe71p8Vve6mMc1bLBaYU8ANNDEIJinhVqpvEHTCcF
 ZZlKtZJ+in8wt3f0CoqIhNF/DmdTSEaeUlqD/acB11oD0eUgncnNr0B5g A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292167804"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="292167804"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="581703226"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:49 +0300
Message-Id: <cd0230c82ac6e5976cb0cad07e874b5cf58112b8.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 38/39] drm/i915: move atomic_helper under
 display sub-struct
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c      | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_display_core.h |  6 ++++++
 drivers/gpu/drm/i915/i915_drv.h                   |  5 -----
 3 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f80c7797176d..818f8ea52156 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7409,7 +7409,7 @@ static void intel_atomic_helper_free_state(struct drm_i915_private *dev_priv)
 	struct intel_atomic_state *state, *next;
 	struct llist_node *freed;
 
-	freed = llist_del_all(&dev_priv->atomic_helper.free_list);
+	freed = llist_del_all(&dev_priv->display.atomic_helper.free_list);
 	llist_for_each_entry_safe(state, next, freed, freed)
 		drm_atomic_state_put(&state->base);
 }
@@ -7417,7 +7417,7 @@ static void intel_atomic_helper_free_state(struct drm_i915_private *dev_priv)
 static void intel_atomic_helper_free_state_worker(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
-		container_of(work, typeof(*dev_priv), atomic_helper.free_work);
+		container_of(work, typeof(*dev_priv), display.atomic_helper.free_work);
 
 	intel_atomic_helper_free_state(dev_priv);
 }
@@ -7709,7 +7709,7 @@ intel_atomic_commit_ready(struct i915_sw_fence *fence,
 	case FENCE_FREE:
 		{
 			struct intel_atomic_helper *helper =
-				&to_i915(state->base.dev)->atomic_helper;
+				&to_i915(state->base.dev)->display.atomic_helper;
 
 			if (llist_add(&state->freed, &helper->free_list))
 				schedule_work(&helper->free_work);
@@ -8699,8 +8699,8 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
-	init_llist_head(&i915->atomic_helper.free_list);
-	INIT_WORK(&i915->atomic_helper.free_work,
+	init_llist_head(&i915->display.atomic_helper.free_list);
+	INIT_WORK(&i915->display.atomic_helper.free_work,
 		  intel_atomic_helper_free_state_worker);
 
 	intel_init_quirks(i915);
@@ -8993,8 +8993,8 @@ void intel_modeset_driver_remove(struct drm_i915_private *i915)
 	flush_workqueue(i915->display.wq.flip);
 	flush_workqueue(i915->display.wq.modeset);
 
-	flush_work(&i915->atomic_helper.free_work);
-	drm_WARN_ON(&i915->drm, !llist_empty(&i915->atomic_helper.free_list));
+	flush_work(&i915->display.atomic_helper.free_work);
+	drm_WARN_ON(&i915->drm, !llist_empty(&i915->display.atomic_helper.free_list));
 }
 
 /* part #2: call after irq uninstall */
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 252da61f2c6a..a753f6d66714 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -7,6 +7,7 @@
 #define __INTEL_DISPLAY_CORE_H__
 
 #include <linux/list.h>
+#include <linux/llist.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
 #include <linux/wait.h>
@@ -270,6 +271,11 @@ struct intel_display {
 	} funcs;
 
 	/* Grouping using anonymous structs. Keep sorted. */
+	struct intel_atomic_helper {
+		struct llist_head free_list;
+		struct work_struct free_work;
+	} atomic_helper;
+
 	struct {
 		/* backlight registers and fields in struct intel_panel */
 		struct mutex lock;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e529a9575a66..1bf7b13fdeda 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -297,11 +297,6 @@ struct drm_i915_private {
 
 	struct list_head global_obj_list;
 
-	struct intel_atomic_helper {
-		struct llist_head free_list;
-		struct work_struct free_work;
-	} atomic_helper;
-
 	bool mchbar_need_disable;
 
 	struct intel_l3_parity l3_parity;
-- 
2.34.1

