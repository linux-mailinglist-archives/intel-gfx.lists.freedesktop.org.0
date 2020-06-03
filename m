Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4101ED2CB
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 16:57:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF3E89D1D;
	Wed,  3 Jun 2020 14:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2281089C5E
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 14:57:18 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 16:56:55 +0200
Message-Id: <20200603145713.3835124-6-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200603145713.3835124-1-maarten.lankhorst@linux.intel.com>
References: <20200603145713.3835124-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/24] drm/i915/gem: Make eb_add_lut
 interruptible wait on object lock.
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

The lock here should be interruptible, so we can backoff if needed.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index e1d63588ed8f..4ef6e48da8f1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -776,7 +776,12 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
 		if (err == 0) { /* And nor has this handle */
 			struct drm_i915_gem_object *obj = vma->obj;
 
-			i915_gem_object_lock(obj, NULL);
+			err = i915_gem_object_lock_interruptible(obj, NULL);
+			if (err) {
+				radix_tree_delete(&ctx->handles_vma, handle);
+				goto unlock;
+			}
+
 			if (idr_find(&eb->file->object_idr, handle) == obj) {
 				list_add(&lut->obj_link, &obj->lut_list);
 			} else {
@@ -785,6 +790,7 @@ static int __eb_add_lut(struct i915_execbuffer *eb,
 			}
 			i915_gem_object_unlock(obj);
 		}
+unlock:
 		mutex_unlock(&ctx->mutex);
 	}
 	if (unlikely(err))
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
