Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B22E28BB2C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA496E514;
	Mon, 12 Oct 2020 14:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64BC16E4B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:47:13 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 16:46:32 +0200
Message-Id: <20201012144706.555345-28-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 27/61] drm/i915: Take obj lock around
 set_domain ioctl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to lock the object to move it to the correct domain,
add the missing lock.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 9adced5a6843..0c0a8579f495 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -531,6 +531,10 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 		goto out;
 	}
 
+	err = i915_gem_object_lock_interruptible(obj, NULL);
+	if (err)
+		goto out;
+
 	/*
 	 * Flush and acquire obj->pages so that we are coherent through
 	 * direct access in memory with previous cached writes through
@@ -542,11 +546,7 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	 */
 	err = i915_gem_object_pin_pages(obj);
 	if (err)
-		goto out;
-
-	err = i915_gem_object_lock_interruptible(obj, NULL);
-	if (err)
-		goto out_unpin;
+		goto out_unlock;
 
 	if (read_domains & I915_GEM_DOMAIN_WC)
 		err = i915_gem_object_set_to_wc_domain(obj, write_domain);
@@ -558,13 +558,14 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	/* And bump the LRU for this access */
 	i915_gem_object_bump_inactive_ggtt(obj);
 
+	i915_gem_object_unpin_pages(obj);
+
+out_unlock:
 	i915_gem_object_unlock(obj);
 
-	if (write_domain)
+	if (!err && write_domain)
 		i915_gem_object_invalidate_frontbuffer(obj, ORIGIN_CPU);
 
-out_unpin:
-	i915_gem_object_unpin_pages(obj);
 out:
 	i915_gem_object_put(obj);
 	return err;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
