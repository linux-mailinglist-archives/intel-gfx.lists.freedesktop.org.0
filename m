Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 364312CE0F3
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 22:39:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F456EC38;
	Thu,  3 Dec 2020 21:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B15326EC38
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 21:39:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23207977-1500050 
 for multiple; Thu, 03 Dec 2020 21:39:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Dec 2020 21:39:10 +0000
Message-Id: <20201203213910.31495-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Track all timelines created using
 the HWSP
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

We assume that the contents of the HWSP are lost across suspend, and so
upon resume we must restore critical values such as the timeline seqno.
Keep track of every timeline allocated that uses the HWSP as its storage
and so we can then reset all seqno values by walking that list.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c      |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_types.h   |  1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c            | 10 +++++++++-
 drivers/gpu/drm/i915/gt/intel_timeline.h       | 13 ++++++++++---
 drivers/gpu/drm/i915/gt/intel_timeline_types.h |  2 ++
 5 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 2ed03b88ec12..94c169e13f2b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -647,6 +647,8 @@ static int init_status_page(struct intel_engine_cs *engine)
 	void *vaddr;
 	int ret;
 
+	INIT_LIST_HEAD(&engine->status_page.timelines);
+
 	/*
 	 * Though the HWS register does support 36bit addresses, historically
 	 * we have had hangs and corruption reported due to wild writes if
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index e71eef157231..c28f4e190fe6 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -68,6 +68,7 @@ typedef u8 intel_engine_mask_t;
 #define ALL_ENGINES ((intel_engine_mask_t)~0ul)
 
 struct intel_hw_status_page {
+	struct list_head timelines;
 	struct i915_vma *vma;
 	u32 *addr;
 };
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d5bd537de9b7..26230a6726e6 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4063,6 +4063,14 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
 	GEM_BUG_ON(READ_ONCE(*execlists->csb_write) != reset_value);
 }
 
+static void sanitize_timelines(struct intel_engine_cs *engine)
+{
+	struct intel_timeline *tl;
+
+	list_for_each_entry(tl, &engine->status_page.timelines, engine_link)
+		intel_timeline_reset_seqno(tl);
+}
+
 static void execlists_sanitize(struct intel_engine_cs *engine)
 {
 	GEM_BUG_ON(execlists_active(&engine->execlists));
@@ -4086,7 +4094,7 @@ static void execlists_sanitize(struct intel_engine_cs *engine)
 	 * that may be lost on resume/initialisation, and so we need to
 	 * reset the value in the HWSP.
 	 */
-	intel_timeline_reset_seqno(engine->kernel_context->timeline);
+	sanitize_timelines(engine);
 
 	/* And scrub the dirty cachelines for the HWSP */
 	clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index 634acebd0c4b..1ee680d31801 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -48,9 +48,16 @@ static inline struct intel_timeline *
 intel_timeline_create_from_engine(struct intel_engine_cs *engine,
 				  unsigned int offset)
 {
-	return __intel_timeline_create(engine->gt,
-				       engine->status_page.vma,
-				       offset);
+	struct intel_timeline *tl;
+
+	tl = __intel_timeline_create(engine->gt,
+				     engine->status_page.vma,
+				     offset);
+	if (IS_ERR(tl))
+		return tl;
+
+	list_add_tail(&tl->engine_link, &engine->status_page.timelines);
+	return tl;
 }
 
 static inline struct intel_timeline *
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline_types.h b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
index 4474f487f589..e360f50706bf 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline_types.h
@@ -84,6 +84,8 @@ struct intel_timeline {
 	struct list_head link;
 	struct intel_gt *gt;
 
+	struct list_head engine_link;
+
 	struct kref kref;
 	struct rcu_head rcu;
 };
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
