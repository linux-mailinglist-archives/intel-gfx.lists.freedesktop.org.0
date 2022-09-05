Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A52935AD5A7
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 17:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E91B610E3FD;
	Mon,  5 Sep 2022 15:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD53710E3FD
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 15:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662390086; x=1693926086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gTJDv8KljwTmrvO5WqZNg91fOV06Si+tJrLKkLv7HHQ=;
 b=nykbidWw8lJRRgTPGoWNOoIjNSaUz2Z82h/NAY2KQIVQpHRFWD0Bw0Gh
 4gMrRWrIgyLsKWtazae7yc9Wn9hCmvA3mS0QeapIX8v4KPj4orDSYRq+y
 j49KpCRNC2qSu3Eg/FVS29nRqdBx1/otV1yj+3KUnqwrEs1KMU8sojEDy
 MS5XesNZYgbIZqjXtcWVEGVJE8OfbIPeqeu4UwiEWSP2WGB/Z7SRQyLSp
 mFUsAS/OJoKWvHxKB/VJrg/Tt7ONprkZou5kKP+yi4OkIELGJzjxXGHhi
 xYGdIGGpoE9adCo1eqA6MIyvkX5cx2IFD5xpQq+HByu7gTmKnj+A0RKAz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="276800578"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="276800578"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:01:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="942136524"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:01:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 18:00:52 +0300
Message-Id: <6c289c55afee0d9a3067122db63277b8d60cf74f.1662390010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662390010.git.jani.nikula@intel.com>
References: <cover.1662390010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: un-inline
 i915_gem_drain_freed_objects()
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

I can't idenfity a single hot path that would require
i915_gem_drain_freed_objects() to be inline. Un-inline it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 17 +----------------
 drivers/gpu/drm/i915/i915_gem.c | 15 +++++++++++++++
 2 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 911164dae182..bbfc295f386b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -976,22 +976,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 void i915_gem_init_early(struct drm_i915_private *dev_priv);
 void i915_gem_cleanup_early(struct drm_i915_private *dev_priv);
 
-static inline void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
-{
-	/*
-	 * A single pass should suffice to release all the freed objects (along
-	 * most call paths) , but be a little more paranoid in that freeing
-	 * the objects does take a little amount of time, during which the rcu
-	 * callbacks could have added new objects into the freed list, and
-	 * armed the work again.
-	 */
-	while (atomic_read(&i915->mm.free_count)) {
-		flush_work(&i915->mm.free_work);
-		flush_delayed_work(&i915->bdev.wq);
-		rcu_barrier();
-	}
-}
-
+void i915_gem_drain_freed_objects(struct drm_i915_private *i915);
 void i915_gem_drain_workqueue(struct drm_i915_private *i915);
 
 struct i915_vma * __must_check
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 4c89b33ada95..0f49ec9d494a 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1085,6 +1085,21 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 	return err;
 }
 
+/*
+ * A single pass should suffice to release all the freed objects (along most
+ * call paths), but be a little more paranoid in that freeing the objects does
+ * take a little amount of time, during which the rcu callbacks could have added
+ * new objects into the freed list, and armed the work again.
+ */
+void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
+{
+	while (atomic_read(&i915->mm.free_count)) {
+		flush_work(&i915->mm.free_work);
+		flush_delayed_work(&i915->bdev.wq);
+		rcu_barrier();
+	}
+}
+
 /*
  * Similar to objects above (see i915_gem_drain_freed-objects), in general we
  * have workers that are armed by RCU and then rearm themselves in their
-- 
2.34.1

