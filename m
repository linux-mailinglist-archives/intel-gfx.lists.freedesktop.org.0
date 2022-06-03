Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 512BA53CA61
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 15:06:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EC1D1134D3;
	Fri,  3 Jun 2022 13:06:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98FC911365D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 13:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654261577; x=1685797577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zkdfu5zNedSj+vPLHF0BtpeMLB2e9TjigVOYb7YJ+j4=;
 b=bKsAUxoRvZhD7tksDojacerNzoHUxN6fN+uE+5ZdKLicKyTWXC9M2FDX
 W7869FTVp4EHA31jZdYinM2gDCHtOGiB0Rpjdhxm5bl/fLtfoYSGfwzmz
 gWvPVPDK1ooLRh6aJhPaBdZLRDQR9urTyjblknV4g5Arl9nbRx4kb0Oe8
 85EJuQdUfHfZQusdZNhT6BK4vc/7/44st8FKbdJSnbyufOXlrRosOzGXO
 z/4FT7z+zlzVpPnr+M1lB/ZRyYWBGeKx9cTV9HEM8S5CTQTQlqmXBQCb0
 uNwOT2pOcrgRDhiC2bnp07vPDFpxfSDkDAPCqxIVWUF8xLdEt8SzxGOLu g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="263897468"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="263897468"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="607389777"
Received: from richardf-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:06:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 16:05:56 +0300
Message-Id: <1a8b6339d30fcb29976e2e1839c8a9203d557dd2.1654261471.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1654261471.git.jani.nikula@intel.com>
References: <cover.1654261471.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: un-inline i915_gem_drain_*
 functions
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

As best I can tell these aren't used in the kind of hotpaths that
mandate using static inline. They do make header cleanup harder, though,
so un-inline.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 39 ++-------------------------------
 drivers/gpu/drm/i915/i915_gem.c | 38 ++++++++++++++++++++++++++++++++
 2 files changed, 40 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5d4607535f2a..c3b2cbf8bfb7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1364,43 +1364,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
-		flush_delayed_work(&i915->mm.free_work);
-		flush_delayed_work(&i915->bdev.wq);
-		rcu_barrier();
-	}
-}
-
-static inline void i915_gem_drain_workqueue(struct drm_i915_private *i915)
-{
-	/*
-	 * Similar to objects above (see i915_gem_drain_freed-objects), in
-	 * general we have workers that are armed by RCU and then rearm
-	 * themselves in their callbacks. To be paranoid, we need to
-	 * drain the workqueue a second time after waiting for the RCU
-	 * grace period so that we catch work queued via RCU from the first
-	 * pass. As neither drain_workqueue() nor flush_workqueue() report
-	 * a result, we make an assumption that we only don't require more
-	 * than 3 passes to catch all _recursive_ RCU delayed work.
-	 *
-	 */
-	int pass = 3;
-	do {
-		flush_workqueue(i915->wq);
-		rcu_barrier();
-		i915_gem_drain_freed_objects(i915);
-	} while (--pass);
-	drain_workqueue(i915->wq);
-}
+void i915_gem_drain_freed_objects(struct drm_i915_private *i915);
+void i915_gem_drain_workqueue(struct drm_i915_private *i915);
 
 struct i915_vma * __must_check
 i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 702e5b89be22..5a6bd2547f04 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1085,6 +1085,44 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 	return err;
 }
 
+void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
+{
+	/*
+	 * A single pass should suffice to release all the freed objects (along
+	 * most call paths) , but be a little more paranoid in that freeing
+	 * the objects does take a little amount of time, during which the rcu
+	 * callbacks could have added new objects into the freed list, and
+	 * armed the work again.
+	 */
+	while (atomic_read(&i915->mm.free_count)) {
+		flush_delayed_work(&i915->mm.free_work);
+		flush_delayed_work(&i915->bdev.wq);
+		rcu_barrier();
+	}
+}
+
+void i915_gem_drain_workqueue(struct drm_i915_private *i915)
+{
+	/*
+	 * Similar to objects above (see i915_gem_drain_freed-objects), in
+	 * general we have workers that are armed by RCU and then rearm
+	 * themselves in their callbacks. To be paranoid, we need to
+	 * drain the workqueue a second time after waiting for the RCU
+	 * grace period so that we catch work queued via RCU from the first
+	 * pass. As neither drain_workqueue() nor flush_workqueue() report
+	 * a result, we make an assumption that we only don't require more
+	 * than 3 passes to catch all _recursive_ RCU delayed work.
+	 *
+	 */
+	int pass = 3;
+	do {
+		flush_workqueue(i915->wq);
+		rcu_barrier();
+		i915_gem_drain_freed_objects(i915);
+	} while (--pass);
+	drain_workqueue(i915->wq);
+}
+
 int i915_gem_init(struct drm_i915_private *dev_priv)
 {
 	int ret;
-- 
2.30.2

