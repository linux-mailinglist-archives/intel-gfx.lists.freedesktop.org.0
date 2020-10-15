Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A18FD28F121
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 13:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D29A46ECAA;
	Thu, 15 Oct 2020 11:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B9DA6EC67
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 11:26:33 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 13:25:33 +0200
Message-Id: <20201015112627.1142745-10-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 09/63] drm/i915: Convert
 i915_gem_object_attach_phys() to ww locking
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

Simple adding of i915_gem_object_lock, we may start to pass ww to
get_pages() in the future, but that won't be the case here;
We override shmem's get_pages() handling by calling
i915_gem_object_get_pages_phys(), no ww is needed.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_phys.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 3960c1d9d415..153de6538378 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -182,7 +182,13 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 	if (err)
 		return err;
 
-	mutex_lock_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	err = i915_gem_object_lock_interruptible(obj, NULL);
+	if (err)
+		return err;
+
+	err = mutex_lock_interruptible_nested(&obj->mm.lock, I915_MM_GET_PAGES);
+	if (err)
+		goto err_unlock;
 
 	if (unlikely(!i915_gem_object_has_struct_page(obj)))
 		goto out;
@@ -213,6 +219,8 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 
 out:
 	mutex_unlock(&obj->mm.lock);
+err_unlock:
+	i915_gem_object_unlock(obj);
 	return err;
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
