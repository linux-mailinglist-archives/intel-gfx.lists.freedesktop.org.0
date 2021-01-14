Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1BB2F601F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 12:34:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F4486E215;
	Thu, 14 Jan 2021 11:34:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53FA96E05D
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 11:34:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23593692-1500050 
 for multiple; Thu, 14 Jan 2021 11:34:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 11:34:34 +0000
Message-Id: <20210114113434.8229-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210114113434.8229-1-chris@chris-wilson.co.uk>
References: <20210114113434.8229-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Make GEM errors non-fatal by
 default
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While immensely convenient for developing to only tackle the first
error, and not be flooded by repeated or secondiary issues, many more
casual testers are not setup to remotely capture debug traces. For those
testers, it is more beneficial to keep the system running in the remote
chance that they are able to extract the original debug logs.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 16 ++++++++++++++++
 drivers/gpu/drm/i915/i915_gem.h    |  9 ++++++++-
 2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 3701bae5b855..4005f6619bec 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -41,6 +41,7 @@ config DRM_I915_DEBUG
 	select SW_SYNC # signaling validation framework (igt/syncobj*)
 	select DRM_I915_WERROR
 	select DRM_I915_DEBUG_GEM
+	select DRM_I915_DEBUG_GEM_ONCE
 	select DRM_I915_DEBUG_MMIO
 	select DRM_I915_DEBUG_RUNTIME_PM
 	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
@@ -80,6 +81,21 @@ config DRM_I915_DEBUG_GEM
 
 	  If in doubt, say "N".
 
+config DRM_I915_DEBUG_GEM_ONCE
+	bool "Make a GEM debug failure fatal"
+	default n
+	depends on DRM_I915_DEBUG_GEM
+	help
+	  During development, we often only want the very first failure
+	  as that would otherwise be lost in the deluge of subsequent
+	  failures. However, more causal testers may not want to trigger
+	  a hard BUG_ON and hope that the system remains sufficiently usable
+	  to capture a bug report in situ.
+
+	  Recommended for driver developers only.
+
+	  If in doubt, say "N".
+
 config DRM_I915_ERRLOG_GEM
 	bool "Insert extra logging (very verbose) for common GEM errors"
 	default n
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index a4cad3f154ca..e622aee6e4be 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -38,11 +38,18 @@ struct drm_i915_private;
 
 #define GEM_SHOW_DEBUG() drm_debug_enabled(DRM_UT_DRIVER)
 
+#ifdef CONFIG_DRM_I915_DEBUG_GEM_ONCE
+#define __GEM_BUG(cond) BUG()
+#else
+#define __GEM_BUG(cond) \
+	WARN(1, "%s:%d GEM_BUG_ON(%s)\n", __func__, __LINE__, __stringify(cond))
+#endif
+
 #define GEM_BUG_ON(condition) do { if (unlikely((condition))) {	\
 		GEM_TRACE_ERR("%s:%d GEM_BUG_ON(%s)\n", \
 			      __func__, __LINE__, __stringify(condition)); \
 		GEM_TRACE_DUMP(); \
-		BUG(); \
+		__GEM_BUG(condition); \
 		} \
 	} while(0)
 #define GEM_WARN_ON(expr) WARN_ON(expr)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
