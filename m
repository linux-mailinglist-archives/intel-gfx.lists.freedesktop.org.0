Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2E9A7C522
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 22:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDF2B10E320;
	Fri,  4 Apr 2025 20:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C123910E31B;
 Fri,  4 Apr 2025 20:50:37 +0000 (UTC)
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 Matthew Brost <matthew.brost@intel.com>
Subject: [PATCH 2/9] drm/xe: Add xe_ggtt_might_lock
Date: Fri,  4 Apr 2025 22:50:21 +0200
Message-ID: <20250404205028.620300-3-dev@lankhorst.se>
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

Another requirement of hiding more of struct xe_ggtt.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/xe/xe_bo.c   | 2 +-
 drivers/gpu/drm/xe/xe_ggtt.c | 7 +++++++
 drivers/gpu/drm/xe/xe_ggtt.h | 7 +++++++
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
index 3c7c2353d3c86..2f3bd9da6eedc 100644
--- a/drivers/gpu/drm/xe/xe_bo.c
+++ b/drivers/gpu/drm/xe/xe_bo.c
@@ -2934,7 +2934,7 @@ void xe_bo_put(struct xe_bo *bo)
 #endif
 		for_each_tile(tile, xe_bo_device(bo), id)
 			if (bo->ggtt_node[id] && bo->ggtt_node[id]->ggtt)
-				might_lock(&bo->ggtt_node[id]->ggtt->lock);
+				xe_ggtt_might_lock(bo->ggtt_node[id]->ggtt);
 		drm_gem_object_put(&bo->ttm.base);
 	}
 }
diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index 62025d9cb7380..5f4be9f40c9ba 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -176,6 +176,13 @@ static void ggtt_fini(void *arg)
 	ggtt->scratch = NULL;
 }
 
+#ifdef CONFIG_LOCKDEP
+void xe_ggtt_might_lock(struct xe_ggtt *ggtt)
+{
+	might_lock(&ggtt->lock);
+}
+#endif
+
 static void primelockdep(struct xe_ggtt *ggtt)
 {
 	if (!IS_ENABLED(CONFIG_LOCKDEP))
diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
index bdf6d0733e2ca..62c8ce636939a 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.h
+++ b/drivers/gpu/drm/xe/xe_ggtt.h
@@ -38,4 +38,11 @@ u64 xe_ggtt_print_holes(struct xe_ggtt *ggtt, u64 alignment, struct drm_printer
 void xe_ggtt_assign(const struct xe_ggtt_node *node, u16 vfid);
 #endif
 
+#ifndef CONFIG_LOCKDEP
+static inline void xe_ggtt_might_lock(struct xe_ggtt *ggtt)
+{ }
+#else
+void xe_ggtt_might_lock(struct xe_ggtt *ggtt);
+#endif
+
 #endif
-- 
2.45.2

