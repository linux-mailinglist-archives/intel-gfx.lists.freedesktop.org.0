Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9095A4DB9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D2010F2A2;
	Mon, 29 Aug 2022 13:19:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F9AC10F2A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661779185; x=1693315185;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QVH0Dz4kMUkHx4dAd+mZOnJRrglYit3oakgDmmnP2ds=;
 b=P6TxLLUC9y1xwZhUPyvUvrS+hV2BGAax6TUsrMvCsClYUAHMmfBuqfM+
 /F/3XZIHRV58/pOvbEAgPYYkTGqs4IdAoS+lURRjTKbgdlli3CbtsIerl
 hsGkARSFluDWDD+63pW/O/agx7LqbH9tRCY/huhFj3UGCE6LETWK+zgLa
 Y0NY8TGS5QbxjDw6Zmll/1N7ClTnuFnxtidqpT5XOGOllCjgM+BwSHSIE
 4oFrIAytyP92Jxwqk3rBmyv1XY9vk+Iz9BjB5MY785ua1u6yKIdjrh0hJ
 llyKGMw4f0DXZKUJBuYxWUTzRo0zaGmufp9n/waB4qodW6kFMOixtLazi Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="295666751"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="295666751"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:45 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="737326925"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 16:18:24 +0300
Message-Id: <1d864238a92a32d52ea70c0079c910cc90955324.1661779055.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661779055.git.jani.nikula@intel.com>
References: <cover.1661779055.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 17/18] drm/i915: move atomic_helper under
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display atomic helper related members under drm_i915_private
display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c      | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_display_core.h |  6 ++++++
 drivers/gpu/drm/i915/i915_drv.h                   |  5 -----
 3 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5fb027ff5246..be7cff722196 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7408,7 +7408,7 @@ static void intel_atomic_helper_free_state(struct drm_i915_private *dev_priv)
 	struct intel_atomic_state *state, *next;
 	struct llist_node *freed;
 
-	freed = llist_del_all(&dev_priv->atomic_helper.free_list);
+	freed = llist_del_all(&dev_priv->display.atomic_helper.free_list);
 	llist_for_each_entry_safe(state, next, freed, freed)
 		drm_atomic_state_put(&state->base);
 }
@@ -7416,7 +7416,7 @@ static void intel_atomic_helper_free_state(struct drm_i915_private *dev_priv)
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
@@ -8704,8 +8704,8 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
-	init_llist_head(&i915->atomic_helper.free_list);
-	INIT_WORK(&i915->atomic_helper.free_work,
+	init_llist_head(&i915->display.atomic_helper.free_list);
+	INIT_WORK(&i915->display.atomic_helper.free_work,
 		  intel_atomic_helper_free_state_worker);
 
 	intel_init_quirks(i915);
@@ -8998,8 +8998,8 @@ void intel_modeset_driver_remove(struct drm_i915_private *i915)
 	flush_workqueue(i915->display.wq.flip);
 	flush_workqueue(i915->display.wq.modeset);
 
-	flush_work(&i915->atomic_helper.free_work);
-	drm_WARN_ON(&i915->drm, !llist_empty(&i915->atomic_helper.free_list));
+	flush_work(&i915->display.atomic_helper.free_work);
+	drm_WARN_ON(&i915->drm, !llist_empty(&i915->display.atomic_helper.free_list));
 }
 
 /* part #2: call after irq uninstall */
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 577ab7765fa9..bf78b0fcbd11 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -7,6 +7,7 @@
 #define __INTEL_DISPLAY_CORE_H__
 
 #include <linux/list.h>
+#include <linux/llist.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
 #include <linux/wait.h>
@@ -268,6 +269,11 @@ struct intel_display {
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
index 47f2629da226..9dc1f2b19702 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -301,11 +301,6 @@ struct drm_i915_private {
 
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

