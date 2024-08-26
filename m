Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE3C95F752
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 19:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5335410E269;
	Mon, 26 Aug 2024 17:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7E410E25D;
 Mon, 26 Aug 2024 17:01:21 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
Subject: [PATCH v6 2/2] drm/xe: Align all VRAM scanout buffers to 64k physical
 pages when needed.
Date: Mon, 26 Aug 2024 19:01:16 +0200
Message-ID: <20240826170117.327709-3-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826170117.327709-1-maarten.lankhorst@linux.intel.com>
References: <20240826170117.327709-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

For CCS formats on affected platforms, CCS can be used freely, but
display engine requires a multiple of 64k physical pages. No other
changes are needed.

At the BO creation time we don't know if the BO will be used for CCS
or not. If the scanout flag is set, and the BO is a multiple of 64k,
we take the safe route and force the physical alignment of 64k pages.

If the BO is not a multiple of 64k, or the scanout flag was not set
at BO creation, we reject it for usage as CCS in display. The physical
pages are likely not aligned correctly, and this will cause corruption
when used as FB.

The scanout flag and size being a multiple of 64k are used together
to enforce 64k physical placement.

VM_BIND is completely unaffected, mappings to a VM can still be aligned
to 4k, just like for normal buffers.

Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fb_bo.c |  9 +++++++++
 drivers/gpu/drm/xe/xe_bo.c               |  7 +++++++
 drivers/gpu/drm/xe/xe_vm.c               | 11 ++++++++++-
 3 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
index f835492f73fb4..63ce97cc4cfef 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
@@ -7,6 +7,7 @@
 #include <drm/ttm/ttm_bo.h>
 
 #include "intel_display_types.h"
+#include "intel_fb.h"
 #include "intel_fb_bo.h"
 #include "xe_bo.h"
 
@@ -28,6 +29,14 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
 	int ret;
 
+	/*
+	 * Some modifiers require physical alignment of 64KiB VRAM pages;
+	 * require that the BO in those cases is created correctly.
+	 */
+	if (XE_IOCTL_DBG(xe, intel_fb_needs_64k_phys(mode_cmd->modifier[0]) &&
+			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
+		return -EINVAL;
+
 	xe_bo_get(bo);
 
 	ret = ttm_bo_reserve(&bo->ttm, true, false, NULL);
diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index cbe7bf098970f..9d6632f92fa94 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -2019,6 +2019,13 @@ int xe_gem_create_ioctl(struct drm_device *dev, void *data,
 
 	bo_flags |= args->placement << (ffs(XE_BO_FLAG_SYSTEM) - 1);
 
+	/* CCS formats need physical placement at a 64K alignment in VRAM. */
+	if ((bo_flags & XE_BO_FLAG_VRAM_MASK) &&
+	    (bo_flags & XE_BO_FLAG_SCANOUT) &&
+	    !(xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K) &&
+	    IS_ALIGNED(args->size, SZ_64K))
+		bo_flags |= XE_BO_FLAG_NEEDS_64K;
+
 	if (args->flags & DRM_XE_GEM_CREATE_FLAG_NEEDS_VISIBLE_VRAM) {
 		if (XE_IOCTL_DBG(xe, !(bo_flags & XE_BO_FLAG_VRAM_MASK)))
 			return -EINVAL;
diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
index 4cc13eddb6b32..3eb76d874eb28 100644
--- a/drivers/gpu/drm/xe/xe_vm.c
+++ b/drivers/gpu/drm/xe/xe_vm.c
@@ -2878,7 +2878,16 @@ static int xe_vm_bind_ioctl_validate_bo(struct xe_device *xe, struct xe_bo *bo,
 		return -EINVAL;
 	}
 
-	if (bo->flags & XE_BO_FLAG_INTERNAL_64K) {
+	/*
+	 * Some platforms require 64k VM_BIND alignment,
+	 * specifically those with XE_VRAM_FLAGS_NEED64K.
+	 *
+	 * Other platforms may have BO's set to 64k physical placement,
+	 * but can be mapped at 4k offsets anyway. This check is only
+	 * there for the former case.
+	 */
+	if ((bo->flags & XE_BO_FLAG_INTERNAL_64K) &&
+	    (xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K)) {
 		if (XE_IOCTL_DBG(xe, obj_offset &
 				 XE_64K_PAGE_MASK) ||
 		    XE_IOCTL_DBG(xe, addr & XE_64K_PAGE_MASK) ||
-- 
2.45.2

