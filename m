Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BFC7E7553
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 00:54:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8FAC10E0F1;
	Thu,  9 Nov 2023 23:54:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B42810E0F1
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 23:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699574051; x=1731110051;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oFZI85VqdTOfqvN4odxfh2xsZcALK8fTAYa7ZLVoRL0=;
 b=Q3tZmEwGjm909FKWslaq0cN8LXJsG0kTjbm3On6lh2bAUaVbUWeaCjvb
 AG5qFUru6O3GD7uy/sB/5UZyNgZHnkVrvXwHMPItGqDTeYmVeUlKbSG8m
 I5xpJZIZ5p7qHhweFuia555sWYiTqbl847sr7O86FEc+m6ZOlYeqXd2CJ
 Zs3CcMc2Sde6ew2YXNPA0ioaIXc5B40fMM1FS3dj4GV9onWch0VWKgc4G
 KJ2yoSdRm2azY7BXvINbuC3Em054FEPFEOymhIsf3/JYxjC88HEcv0/7h
 YORRkxfP18DTzy9Omf25TeShoVkLFzPJo5E1wVt0dUYxeMZxG1QEY8Nj3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="456593361"
X-IronPort-AV: E=Sophos;i="6.03,290,1694761200"; d="scan'208";a="456593361"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 15:53:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,290,1694761200"; d="scan'208";a="11299921"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 15:53:53 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Nov 2023 15:53:32 -0800
Message-ID: <20231109235332.2349844-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gsc: Assign a uabi class number to the
 GSC CS
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The GSC CS is not exposed to the user, so we skipped assigning a uabi
class number for it. However, the trace logs use the uabi class and
instance to identify the engine, so leaving uabi class unset makes the
GSC CS show up as the RCS in those logs.
Given that the engine is not exposed to the user, we can't add a new
case in the uabi enum, so we insted internally define a kernel
reserved class using the next free number.

Fixes: 194babe26bdc ("drm/i915/mtl: don't expose GSC command streamer to the user")
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_user.c | 17 ++++++++---------
 drivers/gpu/drm/i915/gt/intel_engine_user.h |  4 ++++
 drivers/gpu/drm/i915/i915_drm_client.h      |  2 +-
 drivers/gpu/drm/i915/i915_drv.h             |  2 +-
 4 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 118164ddbb2e..3fd32bedd6e7 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -47,6 +47,7 @@ static const u8 uabi_classes[] = {
 	[VIDEO_DECODE_CLASS] = I915_ENGINE_CLASS_VIDEO,
 	[VIDEO_ENHANCEMENT_CLASS] = I915_ENGINE_CLASS_VIDEO_ENHANCE,
 	[COMPUTE_CLASS] = I915_ENGINE_CLASS_COMPUTE,
+	[OTHER_CLASS] = I915_KERNEL_RSVD_CLASS,
 };
 
 static int engine_cmp(void *priv, const struct list_head *A,
@@ -138,7 +139,7 @@ const char *intel_engine_class_repr(u8 class)
 		[COPY_ENGINE_CLASS] = "bcs",
 		[VIDEO_DECODE_CLASS] = "vcs",
 		[VIDEO_ENHANCEMENT_CLASS] = "vecs",
-		[OTHER_CLASS] = "other",
+		[OTHER_CLASS] = "gsc",
 		[COMPUTE_CLASS] = "ccs",
 	};
 
@@ -216,14 +217,8 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
 		if (intel_gt_has_unrecoverable_error(engine->gt))
 			continue; /* ignore incomplete engines */
 
-		/*
-		 * We don't want to expose the GSC engine to the users, but we
-		 * still rename it so it is easier to identify in the debug logs
-		 */
-		if (engine->id == GSC0) {
-			engine_rename(engine, "gsc", 0);
-			continue;
-		}
+		/* The only engine we expect in OTHER_CLASS is GSC0 */
+		GEM_WARN_ON(engine->class == OTHER_CLASS && engine->id != GSC0);
 
 		GEM_BUG_ON(engine->class >= ARRAY_SIZE(uabi_classes));
 		engine->uabi_class = uabi_classes[engine->class];
@@ -238,6 +233,10 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
 			      intel_engine_class_repr(engine->class),
 			      engine->uabi_instance);
 
+		/* We don't want to expose the GSC engine to the users */
+		if (engine->id == GSC0)
+			continue;
+
 		rb_link_node(&engine->uabi_node, prev, p);
 		rb_insert_color(&engine->uabi_node, &i915->uabi_engines);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.h b/drivers/gpu/drm/i915/gt/intel_engine_user.h
index 3dc7e8ab9fbc..dd31805b2a5a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.h
@@ -11,6 +11,10 @@
 struct drm_i915_private;
 struct intel_engine_cs;
 
+#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
+#define I915_KERNEL_RSVD_CLASS (I915_LAST_UABI_ENGINE_CLASS + 1)
+#define I915_MAX_UABI_CLASSES (I915_KERNEL_RSVD_CLASS + 1)
+
 struct intel_engine_cs *
 intel_engine_lookup_user(struct drm_i915_private *i915, u8 class, u8 instance);
 
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 67816c912bca..c42cb2511348 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -12,7 +12,7 @@
 
 #include <uapi/drm/i915_drm.h>
 
-#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
+#include "gt/intel_engine_user.h"
 
 struct drm_file;
 struct drm_printer;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f3be9033a93f..a718b4cb5a2d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -238,7 +238,7 @@ struct drm_i915_private {
 		struct list_head uabi_engines_list;
 		struct rb_root uabi_engines;
 	};
-	unsigned int engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS + 1];
+	unsigned int engine_uabi_class_count[I915_MAX_UABI_CLASSES];
 
 	/* protects the irq masks */
 	spinlock_t irq_lock;
-- 
2.41.0

