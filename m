Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD6498F2E1
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 17:44:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B08E10E88B;
	Thu,  3 Oct 2024 15:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 263EE10E885;
 Thu,  3 Oct 2024 15:44:15 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v3 01/12] drm/xe/display: Handle stolen bar readout in the
 same way as lmem
Date: Thu,  3 Oct 2024 17:44:10 +0200
Message-ID: <20241003154421.33805-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
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

i915 already does this, we should do the same for Xe.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 1b10ea499d8c8..cf139921e7817 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -69,7 +69,7 @@ initial_plane_bo(struct xe_device *xe,
 	flags = XE_BO_FLAG_PINNED | XE_BO_FLAG_SCANOUT | XE_BO_FLAG_GGTT;
 
 	base = round_down(plane_config->base, page_size);
-	if (IS_DGFX(xe)) {
+	if (IS_DGFX(xe) || GRAPHICS_VERx100(xe) >= 1270) {
 		u64 __iomem *gte = tile0->mem.ggtt->gsm;
 		u64 pte;
 
@@ -83,7 +83,6 @@ initial_plane_bo(struct xe_device *xe,
 		}
 
 		phys_base = pte & ~(page_size - 1);
-		flags |= XE_BO_FLAG_VRAM0;
 
 		/*
 		 * We don't currently expect this to ever be placed in the
@@ -105,7 +104,6 @@ initial_plane_bo(struct xe_device *xe,
 		if (!stolen)
 			return NULL;
 		phys_base = base;
-		flags |= XE_BO_FLAG_STOLEN;
 
 		if (XE_WA(xe_root_mmio_gt(xe), 22019338487_display))
 			return NULL;
@@ -120,6 +118,11 @@ initial_plane_bo(struct xe_device *xe,
 			return NULL;
 	}
 
+	if (IS_DGFX(xe))
+		flags |= XE_BO_FLAG_VRAM0;
+	else
+		flags |= XE_BO_FLAG_STOLEN;
+
 	size = round_up(plane_config->base + plane_config->size,
 			page_size);
 	size -= base;
-- 
2.45.2

