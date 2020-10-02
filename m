Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82939281355
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 14:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604C26E959;
	Fri,  2 Oct 2020 12:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A698A6E959
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 12:59:46 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 14:58:43 +0200
Message-Id: <20201002125939.50817-6-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/61] drm/i915: Add gem object locking to
 madvise.
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

Doesn't need the full ww lock, only checking if pages are bound.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index bb0c12975f38..30af7e4b71ab 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1071,10 +1071,14 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 	if (!obj)
 		return -ENOENT;
 
-	err = mutex_lock_interruptible(&obj->mm.lock);
+	err = i915_gem_object_lock_interruptible(obj, NULL);
 	if (err)
 		goto out;
 
+	err = mutex_lock_interruptible(&obj->mm.lock);
+	if (err)
+		goto out_ww;
+
 	if (i915_gem_object_has_pages(obj) &&
 	    i915_gem_object_is_tiled(obj) &&
 	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
@@ -1119,6 +1123,8 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 	args->retained = obj->mm.madv != __I915_MADV_PURGED;
 	mutex_unlock(&obj->mm.lock);
 
+out_ww:
+	i915_gem_object_unlock(obj);
 out:
 	i915_gem_object_put(obj);
 	return err;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
