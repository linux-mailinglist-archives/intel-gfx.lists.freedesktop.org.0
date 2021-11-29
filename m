Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7468461733
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Nov 2021 14:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E0936EDBF;
	Mon, 29 Nov 2021 13:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 034456EDAD;
 Mon, 29 Nov 2021 13:57:18 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Nov 2021 14:47:30 +0100
Message-Id: <20211129134735.628712-12-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211129134735.628712-1-maarten.lankhorst@linux.intel.com>
References: <20211129134735.628712-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/16] drm/i915: Call i915_gem_evict_vm in
 vm_fault_gtt to prevent new ENOSPC errors
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we cannot unbind kill the currently locked object directly
because we're removing short term pinning, we may have to unbind the
object from gtt manually, using a i915_gem_evict_vm() call.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 65fc6ff5f59d..6d557bb9926f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -357,8 +357,22 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 			vma = i915_gem_object_ggtt_pin_ww(obj, &ww, &view, 0, 0, flags);
 		}
 
-		/* The entire mappable GGTT is pinned? Unexpected! */
-		GEM_BUG_ON(vma == ERR_PTR(-ENOSPC));
+		/*
+		 * The entire mappable GGTT is pinned? Unexpected!
+		 * Try to evict the object we locked too, as normally we skip it
+		 * due to lack of short term pinning inside execbuf.
+		 */
+		if (vma == ERR_PTR(-ENOSPC)) {
+			ret = mutex_lock_interruptible(&ggtt->vm.mutex);
+			if (!ret) {
+				ret = i915_gem_evict_vm(&ggtt->vm, &ww);
+				mutex_unlock(&ggtt->vm.mutex);
+			}
+			if (ret)
+				goto err_reset;
+			vma = i915_gem_object_ggtt_pin_ww(obj, &ww, &view, 0, 0, flags);
+		}
+		GEM_WARN_ON(vma == ERR_PTR(-ENOSPC));
 	}
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
-- 
2.34.0

