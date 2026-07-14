Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N0agCINjVmp+4gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 18:27:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1746756EDB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 18:27:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=olIj+2LU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4467F10EDDE;
	Tue, 14 Jul 2026 16:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2195D10E080;
 Tue, 14 Jul 2026 16:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1784046459;
 bh=3FnXyTXVW7taF4l6GNYMOVRy2/aD4QKp6r4SMdZQzWE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=olIj+2LUSCHD3oyHUta7m5QXI2bhUH/BcjDbOxfw8oEgUVbPL1/81HZ2CiJFT/YkJ
 5vwkRlK3Zi/LIGae2KxnAEYbdWSV5qzb2BjinfyZ9eZBNmgagoJ3gDFjhIYJWfT3mO
 8zp6X1veqMy5qRzmtTkHoFz8TEWm9swh4qxbXUloIAIoEAi1znAxsKjyCyXLdvDNPf
 W8sAabmAJbV3QjdTFqg9/Ik4VwDy1pi+N5vYzyi+7Ap7pexuDPeV6FNjH7idP/3qRB
 qtEn33BK+IneGUdBIlPlBw4ytqJIUxT+5SnSAvcbMRyeECfCPkUcKuWHOjSn5fqRfj
 Ix1qNPlO5T9uA==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 3/7] drm/xe/ggtt: Add xe_ggtt_node_remove_noclear
Date: Tue, 14 Jul 2026 18:28:20 +0200
Message-ID: <20260714162824.2063637-4-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260714162824.2063637-1-dev@lankhorst.se>
References: <20260714162824.2063637-1-dev@lankhorst.se>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1746756EDB

The last bit required for handling fb takeover is
ensuring we can release the old live framebuffer
without keeping track. The display code can then
safely perform the flip.

It's unfortunately a workaround for how display
is structured through callbacks instead of being
a midlayer.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/xe_ggtt.c | 30 +++++++++++++++++++++++-------
 drivers/gpu/drm/xe/xe_ggtt.h |  1 +
 2 files changed, 24 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index 514dc9edd19e2..7aa075edf9d28 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -467,24 +467,40 @@ static void ggtt_node_fini(struct xe_ggtt_node *node)
 	kfree(node);
 }
 
-static void ggtt_node_remove(struct xe_ggtt_node *node)
+static void ggtt_node_remove(struct xe_ggtt_node *node, bool clear)
 {
 	struct xe_ggtt *ggtt = node->ggtt;
-	bool bound;
 
 	mutex_lock(&ggtt->lock);
-	bound = ggtt->flags & XE_GGTT_FLAGS_ONLINE;
-	if (bound)
+	if (clear)
+		clear = ggtt->flags & XE_GGTT_FLAGS_ONLINE;
+	if (clear)
 		xe_ggtt_clear(ggtt, xe_ggtt_node_addr(node), xe_ggtt_node_size(node));
 	drm_mm_remove_node(&node->base);
 	node->base.size = 0;
-	if (bound && node->invalidate_on_remove)
+	if (clear && node->invalidate_on_remove)
 		xe_ggtt_invalidate(ggtt);
 	mutex_unlock(&ggtt->lock);
 
 	ggtt_node_fini(node);
 }
 
+/**
+ * xe_ggtt_node_remove_noclear - Remove a &xe_ggtt_node from the GGTT without clearing entries
+ * @node: the &xe_ggtt_node to be removed
+ *
+ * This function is similar to xe_ggtt_node_remove(), but doesn't clear
+ * the entries. It's used to release the live FB mapping without
+ * clearing it.
+ *
+ * This function should only be called before xe_ggtt_init() in
+ * the bios FB takeover code.
+ */
+void xe_ggtt_node_remove_noclear(struct xe_ggtt_node *node)
+{
+	ggtt_node_remove(node, false);
+}
+
 static void ggtt_node_remove_work_func(struct work_struct *work)
 {
 	struct xe_ggtt_node *node = container_of(work, typeof(*node),
@@ -492,7 +508,7 @@ static void ggtt_node_remove_work_func(struct work_struct *work)
 	struct xe_device *xe = tile_to_xe(node->ggtt->tile);
 
 	guard(xe_pm_runtime)(xe);
-	ggtt_node_remove(node);
+	ggtt_node_remove(node, true);
 }
 
 /**
@@ -514,7 +530,7 @@ void xe_ggtt_node_remove(struct xe_ggtt_node *node, bool invalidate)
 	node->invalidate_on_remove = invalidate;
 
 	if (xe_pm_runtime_get_if_active(xe)) {
-		ggtt_node_remove(node);
+		ggtt_node_remove(node, true);
 		xe_pm_runtime_put(xe);
 	} else {
 		queue_work(ggtt->wq, &node->delayed_removal_work);
diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
index 69974da523f74..83654544feb6d 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.h
+++ b/drivers/gpu/drm/xe/xe_ggtt.h
@@ -32,6 +32,7 @@ xe_ggtt_insert_node_transform(struct xe_ggtt *ggtt,
 			      u64 size, u32 align,
 			      xe_ggtt_transform_cb transform, void *arg);
 void xe_ggtt_node_remove(struct xe_ggtt_node *node, bool invalidate);
+void xe_ggtt_node_remove_noclear(struct xe_ggtt_node *node);
 size_t xe_ggtt_node_pt_size(const struct xe_ggtt_node *node);
 void xe_ggtt_map_bo_unlocked(struct xe_ggtt *ggtt, struct xe_bo *bo);
 int xe_ggtt_insert_bo(struct xe_ggtt *ggtt, struct xe_bo *bo, struct drm_exec *exec);
-- 
2.53.0

