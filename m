Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99159A7C521
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 22:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0D6710E321;
	Fri,  4 Apr 2025 20:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C154410E321;
 Fri,  4 Apr 2025 20:50:37 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 Matthew Brost <matthew.brost@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 3/9] drm/xe: Add xe_ggtt_alloc
Date: Fri,  4 Apr 2025 22:50:22 +0200
Message-ID: <20250404205028.620300-4-dev@lankhorst.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250404205028.620300-1-dev@lankhorst.se>
References: <20250404205028.620300-1-dev@lankhorst.se>
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

Instead of allocating inside xe_tile, create a new function that returns
an allocated struct xe_ggtt from xe_ggtt.c

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/xe/xe_ggtt.c | 16 ++++++++++++++++
 drivers/gpu/drm/xe/xe_ggtt.h |  2 ++
 drivers/gpu/drm/xe/xe_tile.c |  6 +-----
 3 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index 5f4be9f40c9ba..b197b835ed442 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -160,6 +160,22 @@ static void xe_ggtt_clear(struct xe_ggtt *ggtt, u64 start, u64 size)
 	}
 }
 
+/**
+ * xe_ggtt_alloc - Allocate a GGTT for a given &xe_tile
+ * @tile: &xe_tile
+ *
+ * Allocates a &xe_ggtt for a given tile.
+ *
+ * Return: &xe_ggtt on success, or NULL when out of memory.
+ */
+struct xe_ggtt *xe_ggtt_alloc(struct xe_tile *tile)
+{
+	struct xe_ggtt *ggtt = drmm_kzalloc(&tile_to_xe(tile)->drm, sizeof(*ggtt), GFP_KERNEL);
+	if (ggtt)
+		ggtt->tile = tile;
+	return ggtt;
+}
+
 static void ggtt_fini_early(struct drm_device *drm, void *arg)
 {
 	struct xe_ggtt *ggtt = arg;
diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
index 62c8ce636939a..0bab1fd7cc817 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.h
+++ b/drivers/gpu/drm/xe/xe_ggtt.h
@@ -9,7 +9,9 @@
 #include "xe_ggtt_types.h"
 
 struct drm_printer;
+struct xe_tile;
 
+struct xe_ggtt *xe_ggtt_alloc(struct xe_tile *tile);
 int xe_ggtt_init_early(struct xe_ggtt *ggtt);
 int xe_ggtt_init(struct xe_ggtt *ggtt);
 
diff --git a/drivers/gpu/drm/xe/xe_tile.c b/drivers/gpu/drm/xe/xe_tile.c
index 6f303d4097d6e..86e9811e60ba0 100644
--- a/drivers/gpu/drm/xe/xe_tile.c
+++ b/drivers/gpu/drm/xe/xe_tile.c
@@ -88,13 +88,9 @@
  */
 static int xe_tile_alloc(struct xe_tile *tile)
 {
-	struct drm_device *drm = &tile_to_xe(tile)->drm;
-
-	tile->mem.ggtt = drmm_kzalloc(drm, sizeof(*tile->mem.ggtt),
-				      GFP_KERNEL);
+	tile->mem.ggtt = xe_ggtt_alloc(tile);
 	if (!tile->mem.ggtt)
 		return -ENOMEM;
-	tile->mem.ggtt->tile = tile;
 
 	return 0;
 }
-- 
2.45.2

