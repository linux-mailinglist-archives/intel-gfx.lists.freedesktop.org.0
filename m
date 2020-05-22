Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB151DE802
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 15:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFD536E9D5;
	Fri, 22 May 2020 13:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B0786E9D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 13:27:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21260771-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 14:27:06 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 May 2020 14:27:06 +0100
Message-Id: <20200522132706.5133-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gem: Avoid iterating an empty list
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

Our __sgt_iter assumes that the scattergather list has at least one
element. But during construction we may fail in allocating the first
page, and so mark the first element as the terminator. This is
unexpected!

[22555.524752] RIP: 0010:shmem_get_pages+0x506/0x710 [i915]
[22555.524759] Code: 49 8b 2c 24 31 c0 66 89 44 24 40 48 85 ed 0f 84 62 01 00 00 4c 8b 75 00 8b 5d 08 44 8b 7d 0c 48 8b 0d 7e 34 07 e2 49 83 e6 fc <49> 8b 16 41 01 df 48 89 cf 48 89 d0 48 c1 e8 2d 48 85 c9 0f 84 c8
[22555.524765] RSP: 0018:ffffc9000053f9d0 EFLAGS: 00010246
[22555.524770] RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffff8881ffffa000
[22555.524774] RDX: fffffffffffffff4 RSI: ffffffffffffffff RDI: ffffffff821efe00
[22555.524778] RBP: ffff8881b099ab00 R08: 0000000000000000 R09: 00000000fffffff4
[22555.524782] R10: 0000000000000002 R11: 00000000ffec0a02 R12: ffff8881cd3c8d60
[22555.524786] R13: 00000000fffffff4 R14: 0000000000000000 R15: 0000000000000000
[22555.524790] FS:  00007f4fbeb9b9c0(0000) GS:ffff8881f8580000(0000) knlGS:0000000000000000
[22555.524795] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[22555.524799] CR2: 0000000000000000 CR3: 00000001ec7f0004 CR4: 00000000001606e0
[22555.524803] Call Trace:
[22555.524919]  __i915_gem_object_get_pages+0x4f/0x60 [i915]

Fixes: 85d1225ec066 ("drm/i915: Introduce & use new lightweight SGL iterators")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: <stable@vger.kernel.org> # v4.8+
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Maciej Patelczyk <maciej.patelczyk@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 15 +++++++++------
 drivers/gpu/drm/i915/i915_scatterlist.h   |  2 ++
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 5d5d7eef3f43..7aff3514d97a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -39,7 +39,6 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 	unsigned long last_pfn = 0;	/* suppress gcc warning */
 	unsigned int max_segment = i915_sg_segment_size();
 	unsigned int sg_page_sizes;
-	struct pagevec pvec;
 	gfp_t noreclaim;
 	int ret;
 
@@ -192,13 +191,17 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 	sg_mark_end(sg);
 err_pages:
 	mapping_clear_unevictable(mapping);
-	pagevec_init(&pvec);
-	for_each_sgt_page(page, sgt_iter, st) {
-		if (!pagevec_add(&pvec, page))
+	if (sg != st->sgl) {
+		struct pagevec pvec;
+
+		pagevec_init(&pvec);
+		for_each_sgt_page(page, sgt_iter, st) {
+			if (!pagevec_add(&pvec, page))
+				check_release_pagevec(&pvec);
+		}
+		if (pagevec_count(&pvec))
 			check_release_pagevec(&pvec);
 	}
-	if (pagevec_count(&pvec))
-		check_release_pagevec(&pvec);
 	sg_free_table(st);
 	kfree(st);
 
diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
index b7b59328cb76..5041c268f450 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.h
+++ b/drivers/gpu/drm/i915/i915_scatterlist.h
@@ -27,6 +27,8 @@ static __always_inline struct sgt_iter {
 } __sgt_iter(struct scatterlist *sgl, bool dma) {
 	struct sgt_iter s = { .sgp = sgl };
 
+	GEM_BUG_ON(sg_is_chain(s.sgp) || sg_is_last(s.sgp));
+
 	if (s.sgp) {
 		s.max = s.curr = s.sgp->offset;
 		s.max += s.sgp->length;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
