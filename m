Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A7F2D19BD
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 20:38:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 897DD6E8AC;
	Mon,  7 Dec 2020 19:38:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07F76E8AE
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 19:38:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23245495-1500050 
 for multiple; Mon, 07 Dec 2020 19:38:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Dec 2020 19:38:21 +0000
Message-Id: <20201207193824.18114-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201207193824.18114-1-chris@chris-wilson.co.uk>
References: <20201207193824.18114-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/20] drm/i915/gt: Add timeline "mode"
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Explicitly differentiate between the absolute and relative timelines,
and the global HWSP and ppHWSP relative offsets. When using a timeline
that is relative to a known status page, we can replace the absolute
addressing in the commands with indexed variants.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c      | 21 ++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_timeline.h      |  2 +-
 .../gpu/drm/i915/gt/intel_timeline_types.h    | 10 +++++++--
 3 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index cb20fcbb326b..da0a9659557a 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -229,7 +229,6 @@ static int intel_timeline_init(struct intel_timeline *timeline,
 
 	timeline->gt = gt;
 
-	timeline->has_initial_breadcrumb = !hwsp;
 	timeline->hwsp_cacheline = NULL;
 
 	if (!hwsp) {
@@ -246,13 +245,29 @@ static int intel_timeline_init(struct intel_timeline *timeline,
 			return PTR_ERR(cl);
 		}
 
+		timeline->mode = INTEL_TIMELINE_ABSOLUTE;
 		timeline->hwsp_cacheline = cl;
 		timeline->hwsp_offset = cacheline * CACHELINE_BYTES;
 
 		vaddr = page_mask_bits(cl->vaddr);
 	} else {
-		timeline->hwsp_offset = offset;
-		vaddr = i915_gem_object_pin_map(hwsp->obj, I915_MAP_WB);
+		int preferred;
+
+		if (offset & INTEL_TIMELINE_CONTEXT) {
+			timeline->mode = INTEL_TIMELINE_CONTEXT;
+			timeline->hwsp_offset =
+				offset & ~INTEL_TIMELINE_CONTEXT;
+			preferred = i915_coherent_map_type(gt->i915);
+		} else {
+			timeline->mode = INTEL_TIMELINE_GLOBAL;
+			timeline->hwsp_offset = offset;
+			preferred = I915_MAP_WB;
+		}
+
+		vaddr = i915_gem_object_pin_map(hwsp->obj,
+						preferred | I915_MAP_OVERRIDE);
+		if (IS_ERR(vaddr))
+			vaddr = i915_gem_object_pin_map(hwsp->obj, I915_MAP_WC);
 		if (IS_ERR(vaddr))
 			return PTR_ERR(vaddr);
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index deb71a8dbd43..69250de3a814 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -76,7 +76,7 @@ static inline void intel_timeline_put(struct intel_timeline *timeline)
 static inline bool
 intel_timeline_has_initial_breadcrumb(const struct intel_timeline *tl)
 {
-	return tl->has_initial_breadcrumb;
+	return tl->mode == INTEL_TIMELINE_ABSOLUTE;
 }
 
 static inline int __intel_timeline_sync_set(struct intel_timeline *tl,
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline_types.h b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
index f187c5aac11c..32c51425a0c4 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
@@ -20,6 +20,12 @@ struct i915_syncmap;
 struct intel_gt;
 struct intel_timeline_hwsp;
 
+enum intel_timeline_mode {
+	INTEL_TIMELINE_ABSOLUTE = 0,
+	INTEL_TIMELINE_CONTEXT = BIT(0),
+	INTEL_TIMELINE_GLOBAL = BIT(1),
+};
+
 struct intel_timeline {
 	u64 fence_context;
 	u32 seqno;
@@ -45,6 +51,8 @@ struct intel_timeline {
 	atomic_t pin_count;
 	atomic_t active_count;
 
+	enum intel_timeline_mode mode;
+
 	const u32 *hwsp_seqno;
 	struct i915_vma *hwsp_ggtt;
 	u32 hwsp_offset;
@@ -52,8 +60,6 @@ struct intel_timeline {
 
 	struct intel_timeline_cacheline *hwsp_cacheline;
 
-	bool has_initial_breadcrumb;
-
 	/**
 	 * List of breadcrumbs associated with GPU requests currently
 	 * outstanding.
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
