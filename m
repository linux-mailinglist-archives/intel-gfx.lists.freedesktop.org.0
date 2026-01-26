Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGT2LPlFd2mMdQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 11:46:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCE3872DE
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 11:46:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1004F10E3FE;
	Mon, 26 Jan 2026 10:46:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="GL7gqlOn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07A6F10E3FE;
 Mon, 26 Jan 2026 10:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1769424371;
 bh=RoC2Wh0bwrmvsTkbYkXFBFceVN8XEddf3t1H/0/kg8Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GL7gqlOnDeRdtf+BzduPUGZO0aOAqM099orDyU93Dv422NlU0rdEKKpeukFjo9uFg
 5ketal0X4yBJKCsfOfezX8hFkZnxHjJTaCAmPfhyBSnVvE8H62tedhMnkxPJmO/slw
 ajyxcK9PX2NUm0k/zVf9hU8BsKyvGPsAuvSf2Amlo/dHvz6cqbNIC6+x/H9ypQ+GHX
 OwnozTFeQtgXkJBNRUDsmGErBW+2/MqksXv5OxViL9pVXd9Kqso2h3qmQt8spYec/d
 8CrjHG4Lez+t7P0fR/8aWGsXUrraGLIi4T2vYsUQRofTvm954mLORPAZ4MoQs8ZOuB
 8FGv3iVI3kM2A==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v6 1/5] drm/xe: Make xe_ggtt_node offset relative to starting
 offset
Date: Mon, 26 Jan 2026 11:46:00 +0100
Message-ID: <20260126104604.988024-2-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260126104604.988024-1-dev@lankhorst.se>
References: <20260126104604.988024-1-dev@lankhorst.se>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:email,lankhorst.se:dkim,lankhorst.se:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 1CCE3872DE
X-Rspamd-Action: no action

Fix all functions that use node->start to use xe_ggtt_node_addr,
and add ggtt->start to node->start.

This will make node shifting for SR-IOV VF a one-liner, instead of
manually changing each GGTT node's base address.

Also convert some uses of mutex_lock/unlock to mutex guards.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
Changes since last version:
- xe_assert -> xe_tile_assert
- remove extra null check
- add guard(mutex) to commit message.
---
 drivers/gpu/drm/xe/xe_ggtt.c | 53 +++++++++++++++++++++---------------
 1 file changed, 31 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index 60665ad1415be..5c11df67b589e 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -299,7 +299,7 @@ static void __xe_ggtt_init_early(struct xe_ggtt *ggtt, u64 start, u64 size)
 {
 	ggtt->start = start;
 	ggtt->size = size;
-	drm_mm_init(&ggtt->mm, start, size);
+	drm_mm_init(&ggtt->mm, 0, size);
 }
 
 int xe_ggtt_init_kunit(struct xe_ggtt *ggtt, u32 start, u32 size)
@@ -401,7 +401,7 @@ static void xe_ggtt_initial_clear(struct xe_ggtt *ggtt)
 	/* Display may have allocated inside ggtt, so be careful with clearing here */
 	mutex_lock(&ggtt->lock);
 	drm_mm_for_each_hole(hole, &ggtt->mm, start, end)
-		xe_ggtt_clear(ggtt, start, end - start);
+		xe_ggtt_clear(ggtt, ggtt->start + start, end - start);
 
 	xe_ggtt_invalidate(ggtt);
 	mutex_unlock(&ggtt->lock);
@@ -418,7 +418,7 @@ static void ggtt_node_remove(struct xe_ggtt_node *node)
 
 	mutex_lock(&ggtt->lock);
 	if (bound)
-		xe_ggtt_clear(ggtt, node->base.start, node->base.size);
+		xe_ggtt_clear(ggtt, xe_ggtt_node_addr(node), xe_ggtt_node_size(node));
 	drm_mm_remove_node(&node->base);
 	node->base.size = 0;
 	mutex_unlock(&ggtt->lock);
@@ -570,16 +570,17 @@ int xe_ggtt_node_insert_balloon_locked(struct xe_ggtt_node *node, u64 start, u64
 	xe_tile_assert(ggtt->tile, IS_ALIGNED(start, XE_PAGE_SIZE));
 	xe_tile_assert(ggtt->tile, IS_ALIGNED(end, XE_PAGE_SIZE));
 	xe_tile_assert(ggtt->tile, !drm_mm_node_allocated(&node->base));
+	xe_tile_assert(ggtt->tile, start >= ggtt->start);
 	lockdep_assert_held(&ggtt->lock);
 
 	node->base.color = 0;
-	node->base.start = start;
+	node->base.start = start - ggtt->start;
 	node->base.size = end - start;
 
 	err = drm_mm_reserve_node(&ggtt->mm, &node->base);
 
 	if (xe_tile_WARN(ggtt->tile, err, "Failed to balloon GGTT %#llx-%#llx (%pe)\n",
-			 node->base.start, node->base.start + node->base.size, ERR_PTR(err)))
+			 xe_ggtt_node_addr(node), xe_ggtt_node_addr(node) + node->base.size, ERR_PTR(err)))
 		return err;
 
 	xe_ggtt_dump_node(ggtt, &node->base, "balloon");
@@ -770,7 +771,7 @@ static void xe_ggtt_map_bo(struct xe_ggtt *ggtt, struct xe_ggtt_node *node,
 	if (XE_WARN_ON(!node))
 		return;
 
-	start = node->base.start;
+	start = xe_ggtt_node_addr(node);
 	end = start + xe_bo_size(bo);
 
 	if (!xe_bo_is_vram(bo) && !xe_bo_is_stolen(bo)) {
@@ -891,6 +892,14 @@ static int __xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
 	}
 
 	mutex_lock(&ggtt->lock);
+	xe_tile_assert(ggtt->tile, start >= ggtt->start || !start);
+	xe_tile_assert(ggtt->tile, end >= ggtt->start);
+
+	if (start)
+		start -= ggtt->start;
+
+	end -= ggtt->start;
+
 	err = drm_mm_insert_node_in_range(&ggtt->mm, &bo->ggtt_node[tile_id]->base,
 					  xe_bo_size(bo), alignment, 0, start, end, 0);
 	if (err) {
@@ -1002,16 +1011,17 @@ static u64 xe_encode_vfid_pte(u16 vfid)
 	return FIELD_PREP(GGTT_PTE_VFID, vfid) | XE_PAGE_PRESENT;
 }
 
-static void xe_ggtt_assign_locked(struct xe_ggtt *ggtt, const struct drm_mm_node *node, u16 vfid)
+static void xe_ggtt_assign_locked(const struct xe_ggtt_node *node, u16 vfid)
 {
-	u64 start = node->start;
-	u64 size = node->size;
+	struct xe_ggtt *ggtt = node->ggtt;
+	u64 start = xe_ggtt_node_addr(node);
+	u64 size = xe_ggtt_node_size(node);
 	u64 end = start + size - 1;
 	u64 pte = xe_encode_vfid_pte(vfid);
 
 	lockdep_assert_held(&ggtt->lock);
 
-	if (!drm_mm_node_allocated(node))
+	if (!xe_ggtt_node_allocated(node))
 		return;
 
 	while (start < end) {
@@ -1033,9 +1043,8 @@ static void xe_ggtt_assign_locked(struct xe_ggtt *ggtt, const struct drm_mm_node
  */
 void xe_ggtt_assign(const struct xe_ggtt_node *node, u16 vfid)
 {
-	mutex_lock(&node->ggtt->lock);
-	xe_ggtt_assign_locked(node->ggtt, &node->base, vfid);
-	mutex_unlock(&node->ggtt->lock);
+	guard(mutex)(&node->ggtt->lock);
+	xe_ggtt_assign_locked(node, vfid);
 }
 
 /**
@@ -1057,14 +1066,14 @@ int xe_ggtt_node_save(struct xe_ggtt_node *node, void *dst, size_t size, u16 vfi
 	if (!node)
 		return -ENOENT;
 
-	guard(mutex)(&node->ggtt->lock);
+	ggtt = node->ggtt;
+	guard(mutex)(&ggtt->lock);
 
 	if (xe_ggtt_node_pt_size(node) != size)
 		return -EINVAL;
 
-	ggtt = node->ggtt;
-	start = node->base.start;
-	end = start + node->base.size - 1;
+	start = xe_ggtt_node_addr(node);
+	end = start + xe_ggtt_node_size(node) - 1;
 
 	while (start < end) {
 		pte = ggtt->pt_ops->ggtt_get_pte(ggtt, start);
@@ -1097,14 +1106,14 @@ int xe_ggtt_node_load(struct xe_ggtt_node *node, const void *src, size_t size, u
 	if (!node)
 		return -ENOENT;
 
-	guard(mutex)(&node->ggtt->lock);
+	ggtt = node->ggtt;
+	guard(mutex)(&ggtt->lock);
 
 	if (xe_ggtt_node_pt_size(node) != size)
 		return -EINVAL;
 
-	ggtt = node->ggtt;
-	start = node->base.start;
-	end = start + node->base.size - 1;
+	start = xe_ggtt_node_addr(node);
+	end = start + xe_ggtt_node_size(node) - 1;
 
 	while (start < end) {
 		vfid_pte = u64_replace_bits(*buf++, vfid, GGTT_PTE_VFID);
@@ -1211,7 +1220,7 @@ u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset)
  */
 u64 xe_ggtt_node_addr(const struct xe_ggtt_node *node)
 {
-	return node->base.start;
+	return node->base.start + node->ggtt->start;
 }
 
 /**
-- 
2.51.0

