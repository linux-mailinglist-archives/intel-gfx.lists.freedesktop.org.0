Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A889058FF1B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:17:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26AEBB3E52;
	Thu, 11 Aug 2022 15:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80430B3DF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230933; x=1691766933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xg3kbLEvZqTZoS1Z0Kt8IxHD6gB/4HlyawpAj93St1c=;
 b=buwNCh0DhAlKsw95VgUVOTBy3QHmOEGZdaNOIRYQA0bFY0BPVL3kWZpu
 0aBzi7bLItmzQwdnQBWUeIqtgIG4pQr4MU1aUjLmrJBeRfnrcIUGZ+A9L
 b/eMsuXrtnTcthz9rnliZ13nu/zFKdOVgs4qDSmZzSxy3/ILpcW8G2NqG
 QeUnC50VIFYV14U8oqbYCsYuHv/sB+ZK837HzBA9TQSlcJJNcuIW1rhLL
 401tQsRxXrjOMYYcxGgTpCBbA2zVZ6l34cAu+y86Nsvvdp8mAX6zjmmRF
 hKmkwBQYfi/30+LpfA7XcK6vlmOlQzl7XGd1ZSe5toGYg4RXkLYzx6kzx w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="288940451"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="288940451"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:20 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="665412858"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:42 +0300
Message-Id: <7a0e20dc179bbd3211d622adb1ca929b3ed52b99.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 31/39] drm/i915: move INTEL_FRONTBUFFER_* macros
 to intel_frontbuffer.h
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

The macros clearly don't belong in i915_drv.h. Move to
intel_frontbuffer.h.

Also split the BUILD_BUG_ON()s to intel_frontbuffer_track() to avoid
depending on some other macros in the header.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
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
index 19f41526c70a..acc04bf58be9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -483,26 +483,6 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 
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

