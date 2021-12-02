Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1852F465AD3
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 01:30:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1256F6E0C1;
	Thu,  2 Dec 2021 00:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764F86E0C1;
 Thu,  2 Dec 2021 00:30:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="216605289"
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="216605289"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 16:30:30 -0800
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="459448204"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 16:30:30 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 16:30:48 -0800
Message-Id: <20211202003048.1015511-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: replace X86_FEATURE_PAT with
 pat_enabled()
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

PAT can be disabled on boot with "nopat" in the command line. Replace
one x86-ism with another, which is slightly more correct to prepare for
supporting other architectures.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c  | 8 ++++----
 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 3 +--
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 65fc6ff5f59d..c0c509e5c0ae 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -72,7 +72,7 @@ i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
 	if (args->flags & ~(I915_MMAP_WC))
 		return -EINVAL;
 
-	if (args->flags & I915_MMAP_WC && !boot_cpu_has(X86_FEATURE_PAT))
+	if (args->flags & I915_MMAP_WC && !pat_enabled())
 		return -ENODEV;
 
 	obj = i915_gem_object_lookup(file, args->handle);
@@ -736,7 +736,7 @@ i915_gem_dumb_mmap_offset(struct drm_file *file,
 
 	if (HAS_LMEM(to_i915(dev)))
 		mmap_type = I915_MMAP_TYPE_FIXED;
-	else if (boot_cpu_has(X86_FEATURE_PAT))
+	else if (pat_enabled())
 		mmap_type = I915_MMAP_TYPE_WC;
 	else if (!i915_ggtt_has_aperture(&to_i915(dev)->ggtt))
 		return -ENODEV;
@@ -792,7 +792,7 @@ i915_gem_mmap_offset_ioctl(struct drm_device *dev, void *data,
 		break;
 
 	case I915_MMAP_OFFSET_WC:
-		if (!boot_cpu_has(X86_FEATURE_PAT))
+		if (!pat_enabled())
 			return -ENODEV;
 		type = I915_MMAP_TYPE_WC;
 		break;
@@ -802,7 +802,7 @@ i915_gem_mmap_offset_ioctl(struct drm_device *dev, void *data,
 		break;
 
 	case I915_MMAP_OFFSET_UC:
-		if (!boot_cpu_has(X86_FEATURE_PAT))
+		if (!pat_enabled())
 			return -ENODEV;
 		type = I915_MMAP_TYPE_UC;
 		break;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 49c6e55c68ce..89b70f5cde7a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -424,8 +424,7 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 			goto err_unpin;
 		}
 
-		if (GEM_WARN_ON(type == I915_MAP_WC &&
-				!static_cpu_has(X86_FEATURE_PAT)))
+		if (GEM_WARN_ON(type == I915_MAP_WC && !pat_enabled()))
 			ptr = ERR_PTR(-ENODEV);
 		else if (i915_gem_object_has_struct_page(obj))
 			ptr = i915_gem_object_map_page(obj, type);
-- 
2.33.1

