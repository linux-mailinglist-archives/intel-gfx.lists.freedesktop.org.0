Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE7959FB27
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49971B540C;
	Wed, 24 Aug 2022 13:20:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AEDFB538C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347175; x=1692883175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fm/f3x2Eq0t77/9zfrqKQvHAkKit8+rT0uQw4hcwfd8=;
 b=epDzGIMOHtrqstihYQ3v91OGrPuLAKkNQK314UjI0LHJ51uRzBdOhmSX
 +ZZqcGYpVODB2z4A8EDYOBYt+oqSMYrOfQYO+/qBWO0I8lpf4BPzKQirH
 nFufJ+yrJtPSmGO3fPgOldUmtB1oGHaiITGBmDpGmgiJy5Mql35eUz1zz
 36KYnUjsN9sQV4CwksInhQ2qVuQ0Q+So/Y1IUWvXFnZ9uAEila6PuVLzM
 aiYXJkayUXeyYtFNlXCdbv+HXGcc8Qh054tDdptiNUgvyVT062SpJ4gPB
 RhcOdaeOYo6ULDra40tGEAH8/58mu/oq608QRWRNiqqSsLp6BU0086Z1P Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="274350847"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="274350847"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:18:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="937905459"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:18:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:56 +0300
Message-Id: <c899fd1ef2220564a876cd88c03e53c4c7b0168b.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 30/38] drm/i915: move INTEL_FRONTBUFFER_*
 macros to intel_frontbuffer.h
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

The macros clearly don't belong in i915_drv.h. Move to
intel_frontbuffer.h.

Also split the BUILD_BUG_ON()s to intel_frontbuffer_track() to avoid
depending on some other macros in the header.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  2 ++
 .../gpu/drm/i915/display/intel_frontbuffer.h  | 18 +++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h               | 20 -------------------
 3 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 0d4cfbd8403e..d80e3e8a9b01 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -311,6 +311,8 @@ void intel_frontbuffer_track(struct intel_frontbuffer *old,
 	 */
 	BUILD_BUG_ON(INTEL_FRONTBUFFER_BITS_PER_PIPE * I915_MAX_PIPES >
 		     BITS_PER_TYPE(atomic_t));
+	BUILD_BUG_ON(INTEL_FRONTBUFFER_BITS_PER_PIPE * I915_MAX_PIPES > 32);
+	BUILD_BUG_ON(I915_MAX_PLANES > INTEL_FRONTBUFFER_BITS_PER_PIPE);
 
 	if (old) {
 		drm_WARN_ON(old->obj->base.dev,
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index ff0c37b079aa..3c474ed937fb 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -25,6 +25,7 @@
 #define __INTEL_FRONTBUFFER_H__
 
 #include <linux/atomic.h>
+#include <linux/bits.h>
 #include <linux/kref.h>
 
 #include "gem/i915_gem_object_types.h"
@@ -48,6 +49,23 @@ struct intel_frontbuffer {
 	struct rcu_head rcu;
 };
 
+/*
+ * Frontbuffer tracking bits. Set in obj->frontbuffer_bits while a gem bo is
+ * considered to be the frontbuffer for the given plane interface-wise. This
+ * doesn't mean that the hw necessarily already scans it out, but that any
+ * rendering (by the cpu or gpu) will land in the frontbuffer eventually.
+ *
+ * We have one bit per pipe and per scanout plane type.
+ */
+#define INTEL_FRONTBUFFER_BITS_PER_PIPE 8
+#define INTEL_FRONTBUFFER(pipe, plane_id) \
+	BIT((plane_id) + INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe));
+#define INTEL_FRONTBUFFER_OVERLAY(pipe) \
+	BIT(INTEL_FRONTBUFFER_BITS_PER_PIPE - 1 + INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe))
+#define INTEL_FRONTBUFFER_ALL_MASK(pipe) \
+	GENMASK(INTEL_FRONTBUFFER_BITS_PER_PIPE * ((pipe) + 1) - 1,	\
+		INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe))
+
 void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
 				    unsigned frontbuffer_bits);
 void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a119a604b4e2..df36b058d258 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -487,26 +487,6 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 
 #define I915_GTT_OFFSET_NONE ((u32)-1)
 
-/*
- * Frontbuffer tracking bits. Set in obj->frontbuffer_bits while a gem bo is
- * considered to be the frontbuffer for the given plane interface-wise. This
- * doesn't mean that the hw necessarily already scans it out, but that any
- * rendering (by the cpu or gpu) will land in the frontbuffer eventually.
- *
- * We have one bit per pipe and per scanout plane type.
- */
-#define INTEL_FRONTBUFFER_BITS_PER_PIPE 8
-#define INTEL_FRONTBUFFER(pipe, plane_id) ({ \
-	BUILD_BUG_ON(INTEL_FRONTBUFFER_BITS_PER_PIPE * I915_MAX_PIPES > 32); \
-	BUILD_BUG_ON(I915_MAX_PLANES > INTEL_FRONTBUFFER_BITS_PER_PIPE); \
-	BIT((plane_id) + INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe)); \
-})
-#define INTEL_FRONTBUFFER_OVERLAY(pipe) \
-	BIT(INTEL_FRONTBUFFER_BITS_PER_PIPE - 1 + INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe))
-#define INTEL_FRONTBUFFER_ALL_MASK(pipe) \
-	GENMASK(INTEL_FRONTBUFFER_BITS_PER_PIPE * ((pipe) + 1) - 1, \
-		INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe))
-
 #define INTEL_INFO(dev_priv)	(&(dev_priv)->__info)
 #define RUNTIME_INFO(dev_priv)	(&(dev_priv)->__runtime)
 #define DRIVER_CAPS(dev_priv)	(&(dev_priv)->caps)
-- 
2.34.1

