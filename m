Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB81622E2F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 15:42:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4901A10E11F;
	Wed,  9 Nov 2022 14:42:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E79B10E11F
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 14:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668004943; x=1699540943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BZo71VZe3cc4LRPy37GrhDOe3NYXIk+pK79KwJOiGSY=;
 b=oIxv5f4DWH2nettfWIzSmdc5J40uWzcIo/X/qrZhsIFjVBhdgx8UIKT+
 HZOabLqmnkWwDa2fj6KQE7X2UCcRFamllUbzvp7m28f2W0ii+Zdk+r2yM
 4b/0vAa8ehya0sZNcPtoggbG9a9axFZRi1YT9k52s+swVpjay/PciTDdb
 HArW2eLUTAOpf4vKkqpwsH334AtBosiz4BNHLnOFi+/cfgEFIB9zL564T
 zXvNy3f7L/TtG2nCsRVJYKXExac/jOACdRYrZKL3ctCJ0wbvS372zEP0o
 OqoJjud6moqwmJgTcxgdxBziX/YieJ9gepT/ANh8AHVBD2U9kmTXMoyCJ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="309702767"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="309702767"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:42:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="705729781"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="705729781"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:42:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 16:42:08 +0200
Message-Id: <20221109144209.3624739-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221109144209.3624739-1-jani.nikula@intel.com>
References: <20221109144209.3624739-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/display: move global_obj_list
 under display sub-struct
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display global state member under drm_i915_private display
sub-struct.

Prefer adding anonymous sub-structs even for single members that aren't
our own structs.

Remove a nearby stale comment while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_display_core.h | 4 ++++
 drivers/gpu/drm/i915/display/intel_global_state.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_global_state.h | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                   | 4 ----
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 90219e7abc7c..63f25d6bf0bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8571,7 +8571,7 @@ static void intel_mode_config_init(struct drm_i915_private *i915)
 	struct drm_mode_config *mode_config = &i915->drm.mode_config;
 
 	drm_mode_config_init(&i915->drm);
-	INIT_LIST_HEAD(&i915->global_obj_list);
+	INIT_LIST_HEAD(&i915->display.global.obj_list);
 
 	mode_config->min_width = 0;
 	mode_config->min_height = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index d851d401211f..7eb705a0fa19 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -344,6 +344,10 @@ struct intel_display {
 		u32 rx_config;
 	} fdi;
 
+	struct {
+		struct list_head obj_list;
+	} global;
+
 	struct {
 		/*
 		 * Base address of where the gmbus and gpio blocks are located
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/gpu/drm/i915/display/intel_global_state.c
index 7a19215ad844..02b593b1e2ea 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.c
+++ b/drivers/gpu/drm/i915/display/intel_global_state.c
@@ -45,14 +45,14 @@ void intel_atomic_global_obj_init(struct drm_i915_private *dev_priv,
 
 	obj->state = state;
 	obj->funcs = funcs;
-	list_add_tail(&obj->head, &dev_priv->global_obj_list);
+	list_add_tail(&obj->head, &dev_priv->display.global.obj_list);
 }
 
 void intel_atomic_global_obj_cleanup(struct drm_i915_private *dev_priv)
 {
 	struct intel_global_obj *obj, *next;
 
-	list_for_each_entry_safe(obj, next, &dev_priv->global_obj_list, head) {
+	list_for_each_entry_safe(obj, next, &dev_priv->display.global.obj_list, head) {
 		list_del(&obj->head);
 
 		drm_WARN_ON(&dev_priv->drm, kref_read(&obj->state->ref) != 1);
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/gpu/drm/i915/display/intel_global_state.h
index 1f16fa3073c9..f01ee0bb3e5a 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.h
+++ b/drivers/gpu/drm/i915/display/intel_global_state.h
@@ -27,7 +27,7 @@ struct intel_global_obj {
 };
 
 #define intel_for_each_global_obj(obj, dev_priv) \
-	list_for_each_entry(obj, &(dev_priv)->global_obj_list, head)
+	list_for_each_entry(obj, &(dev_priv)->display.global.obj_list, head)
 
 #define for_each_new_global_obj_in_state(__state, obj, new_obj_state, __i) \
 	for ((__i) = 0; \
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index bb88aee2af25..fdf330a29ec0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -292,10 +292,6 @@ struct drm_i915_private {
 
 	struct i915_gem_mm mm;
 
-	/* Kernel Modesetting */
-
-	struct list_head global_obj_list;
-
 	bool mchbar_need_disable;
 
 	struct intel_l3_parity l3_parity;
-- 
2.34.1

