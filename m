Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C264D4101D9
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Sep 2021 01:43:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E25226EEA5;
	Fri, 17 Sep 2021 23:43:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 475C66EEA5;
 Fri, 17 Sep 2021 23:43:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="286576805"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="286576805"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 16:43:12 -0700
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="473271926"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 16:43:12 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Fri, 17 Sep 2021 16:38:08 -0700
Message-Id: <20210917233808.32009-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: fix blank screen booting crashes
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

From: Hugh Dickins <hughd@google.com>

5.15-rc1 crashes with blank screen when booting up on two ThinkPads
using i915.  Bisections converge convincingly, but arrive at different
and surprising "culprits", none of them the actual culprit.

netconsole (with init_netconsole() hacked to call i915_init() when
logging has started, instead of by module_init()) tells the story:

kernel BUG at drivers/gpu/drm/i915/i915_sw_fence.c:245!
with RSI: ffffffff814d408b pointing to sw_fence_dummy_notify().
I've been building with CONFIG_CC_OPTIMIZE_FOR_SIZE=y, and that
function needs to be 4-byte aligned.

v2:
 (Jani Nikula)
  - Change BUG_ON to WARN_ON

Fixes: 62eaf0ae217d ("drm/i915/guc: Support request cancellation")
Signed-off-by: Hugh Dickins <hughd@google.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c | 1 +
 drivers/gpu/drm/i915/i915_sw_fence.c    | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index ff637147b1a9..f02c2202da9d 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -362,6 +362,7 @@ static int __intel_context_active(struct i915_active *active)
 	return 0;
 }
 
+__aligned(4)	/* Respect the I915_SW_FENCE_MASK */
 static int sw_fence_dummy_notify(struct i915_sw_fence *sf,
 				 enum i915_sw_fence_notify state)
 {
diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
index c589a681da77..1217b124c1d0 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence.c
@@ -14,8 +14,10 @@
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
 #define I915_SW_FENCE_BUG_ON(expr) BUG_ON(expr)
+#define I915_SW_FENCE_WARN_ON(expr) WARN_ON(expr)
 #else
 #define I915_SW_FENCE_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
+#define I915_SW_FENCE_WARN_ON(expr) BUILD_BUG_ON_INVALID(expr)
 #endif
 
 static DEFINE_SPINLOCK(i915_sw_fence_lock);
@@ -242,7 +244,7 @@ void __i915_sw_fence_init(struct i915_sw_fence *fence,
 			  const char *name,
 			  struct lock_class_key *key)
 {
-	BUG_ON(!fn || (unsigned long)fn & ~I915_SW_FENCE_MASK);
+	I915_SW_FENCE_WARN_ON(!fn || (unsigned long)fn & ~I915_SW_FENCE_MASK);
 
 	__init_waitqueue_head(&fence->wait, name, key);
 	fence->flags = (unsigned long)fn;
-- 
2.32.0

