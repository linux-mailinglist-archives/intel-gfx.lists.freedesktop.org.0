Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CF947749B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 15:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 879901122CF;
	Thu, 16 Dec 2021 14:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D2F10FF39;
 Thu, 16 Dec 2021 14:28:07 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Dec 2021 15:27:41 +0100
Message-Id: <20211216142749.1966107-10-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211216142749.1966107-1-maarten.lankhorst@linux.intel.com>
References: <20211216142749.1966107-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 09/17] drm/i915: Trylock the object when
 shrinking
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

We're working on requiring the obj->resv lock during unbind, fix
the shrinker to take the objectl ock.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index eebff4735781..ad2123369e0d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -405,12 +405,18 @@ i915_gem_shrinker_vmap(struct notifier_block *nb, unsigned long event, void *ptr
 	list_for_each_entry_safe(vma, next,
 				 &i915->ggtt.vm.bound_list, vm_link) {
 		unsigned long count = vma->node.size >> PAGE_SHIFT;
+		struct drm_i915_gem_object *obj = vma->obj;
 
 		if (!vma->iomap || i915_vma_is_active(vma))
 			continue;
 
+		if (!i915_gem_object_trylock(obj))
+			continue;
+
 		if (__i915_vma_unbind(vma) == 0)
 			freed_pages += count;
+
+		i915_gem_object_unlock(obj);
 	}
 	mutex_unlock(&i915->ggtt.vm.mutex);
 
-- 
2.34.1

