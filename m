Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OO8iFf1Fd2mMdQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 11:46:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE21187309
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 11:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 667BA10E40B;
	Mon, 26 Jan 2026 10:46:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="KtYaPJ+f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B8B310E400;
 Mon, 26 Jan 2026 10:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1769424373;
 bh=5yNtfyup0O3j0u4R6j6wN5aNhfal6YUIjdee8TNHhGI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KtYaPJ+fppItfr8uvJh5nfn68/fYz5yXdjiUV+LR9PfJKEsNqcfyzpy0ArAOqD4zg
 xYzskmAxB7qcUMeZfseM1awGHlmZ7hNjIILSFkbRV2ILeebXfKs2TCCijRtHgkt0po
 EW1YlA7iWsMRdrDpWUL02BkpRGlQ3+94FadAF6c5Tv5HSjXqH0mKkOgVQ4CdSha3QE
 pP2xDNpQA5pPpyMnMNIgAUbUMCfjKgtUvnC8/DwpB4Brlt0cqM6+1kzZ902aR6hAaV
 m1tvUOeQ/C3WWiZCnkJD67iEzeTPG/IVB3ZGYklDLM0mwc9Xy3gBDJcYQxRm3CM5ux
 tTAjS6m+Neouw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v6 3/5] drm/xe: Move struct xe_ggtt to xe_ggtt.c
Date: Mon, 26 Jan 2026 11:46:02 +0100
Message-ID: <20260126104604.988024-4-dev@lankhorst.se>
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
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,lankhorst.se:email,lankhorst.se:dkim,lankhorst.se:mid]
X-Rspamd-Queue-Id: DE21187309
X-Rspamd-Action: no action

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

No users left outside of xe_ggtt.c, so we can make the struct private.

This prevents us from accidentally touching it before init.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/xe_ggtt.c       | 55 +++++++++++++++++++++++++++
 drivers/gpu/drm/xe/xe_ggtt.h       |  1 +
 drivers/gpu/drm/xe/xe_ggtt_types.h | 60 +-----------------------------
 3 files changed, 58 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index fecbdd71cec5d..6c97ce9b0c10b 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -84,6 +84,61 @@ struct xe_ggtt_node {
 	bool invalidate_on_remove;
 };
 
+/**
+ * struct xe_ggtt_pt_ops - GGTT Page table operations
+ * Which can vary from platform to platform.
+ */
+struct xe_ggtt_pt_ops {
+	/** @pte_encode_flags: Encode PTE flags for a given BO */
+	u64 (*pte_encode_flags)(struct xe_bo *bo, u16 pat_index);
+
+	/** @ggtt_set_pte: Directly write into GGTT's PTE */
+	xe_ggtt_set_pte_fn ggtt_set_pte;
+
+	/** @ggtt_get_pte: Directly read from GGTT's PTE */
+	u64 (*ggtt_get_pte)(struct xe_ggtt *ggtt, u64 addr);
+};
+
+/**
+ * struct xe_ggtt - Main GGTT struct
+ *
+ * In general, each tile can contains its own Global Graphics Translation Table
+ * (GGTT) instance.
+ */
+struct xe_ggtt {
+	/** @tile: Back pointer to tile where this GGTT belongs */
+	struct xe_tile *tile;
+        /** @start: Start offset of GGTT */
+	u64 start;
+	/** @size: Total usable size of this GGTT */
+	u64 size;
+
+#define XE_GGTT_FLAGS_64K BIT(0)
+	/**
+	 * @flags: Flags for this GGTT
+	 * Acceptable flags:
+	 * - %XE_GGTT_FLAGS_64K - if PTE size is 64K. Otherwise, regular is 4K.
+	 */
+	unsigned int flags;
+	/** @scratch: Internal object allocation used as a scratch page */
+	struct xe_bo *scratch;
+	/** @lock: Mutex lock to protect GGTT data */
+	struct mutex lock;
+	/**
+	 *  @gsm: The iomem pointer to the actual location of the translation
+	 * table located in the GSM for easy PTE manipulation
+	 */
+	u64 __iomem *gsm;
+	/** @pt_ops: Page Table operations per platform */
+	const struct xe_ggtt_pt_ops *pt_ops;
+	/** @mm: The memory manager used to manage individual GGTT allocations */
+	struct drm_mm mm;
+	/** @access_count: counts GGTT writes */
+	unsigned int access_count;
+	/** @wq: Dedicated unordered work queue to process node removals */
+	struct workqueue_struct *wq;
+};
+
 static u64 xelp_ggtt_pte_flags(struct xe_bo *bo, u16 pat_index)
 {
 	u64 pte = XE_PAGE_PRESENT;
diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
index 49ea8e7ecc105..403eb5c0db49d 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.h
+++ b/drivers/gpu/drm/xe/xe_ggtt.h
@@ -9,6 +9,7 @@
 #include "xe_ggtt_types.h"
 
 struct drm_printer;
+struct xe_bo;
 struct xe_tile;
 struct drm_exec;
 
diff --git a/drivers/gpu/drm/xe/xe_ggtt_types.h b/drivers/gpu/drm/xe/xe_ggtt_types.h
index d82b71a198bc2..cf754e4d502ad 100644
--- a/drivers/gpu/drm/xe/xe_ggtt_types.h
+++ b/drivers/gpu/drm/xe/xe_ggtt_types.h
@@ -6,72 +6,16 @@
 #ifndef _XE_GGTT_TYPES_H_
 #define _XE_GGTT_TYPES_H_
 
+#include <linux/types.h>
 #include <drm/drm_mm.h>
 
-#include "xe_pt_types.h"
-
-struct xe_bo;
+struct xe_ggtt;
 struct xe_ggtt_node;
-struct xe_gt;
-
-/**
- * struct xe_ggtt - Main GGTT struct
- *
- * In general, each tile can contains its own Global Graphics Translation Table
- * (GGTT) instance.
- */
-struct xe_ggtt {
-	/** @tile: Back pointer to tile where this GGTT belongs */
-	struct xe_tile *tile;
-	/** @start: Start offset of GGTT */
-	u64 start;
-	/** @size: Total usable size of this GGTT */
-	u64 size;
-
-#define XE_GGTT_FLAGS_64K BIT(0)
-	/**
-	 * @flags: Flags for this GGTT
-	 * Acceptable flags:
-	 * - %XE_GGTT_FLAGS_64K - if PTE size is 64K. Otherwise, regular is 4K.
-	 */
-	unsigned int flags;
-	/** @scratch: Internal object allocation used as a scratch page */
-	struct xe_bo *scratch;
-	/** @lock: Mutex lock to protect GGTT data */
-	struct mutex lock;
-	/**
-	 *  @gsm: The iomem pointer to the actual location of the translation
-	 * table located in the GSM for easy PTE manipulation
-	 */
-	u64 __iomem *gsm;
-	/** @pt_ops: Page Table operations per platform */
-	const struct xe_ggtt_pt_ops *pt_ops;
-	/** @mm: The memory manager used to manage individual GGTT allocations */
-	struct drm_mm mm;
-	/** @access_count: counts GGTT writes */
-	unsigned int access_count;
-	/** @wq: Dedicated unordered work queue to process node removals */
-	struct workqueue_struct *wq;
-};
 
 typedef void (*xe_ggtt_set_pte_fn)(struct xe_ggtt *ggtt, u64 addr, u64 pte);
 typedef void (*xe_ggtt_transform_cb)(struct xe_ggtt *ggtt,
 				     struct xe_ggtt_node *node,
 				     u64 pte_flags,
 				     xe_ggtt_set_pte_fn set_pte, void *arg);
-/**
- * struct xe_ggtt_pt_ops - GGTT Page table operations
- * Which can vary from platform to platform.
- */
-struct xe_ggtt_pt_ops {
-	/** @pte_encode_flags: Encode PTE flags for a given BO */
-	u64 (*pte_encode_flags)(struct xe_bo *bo, u16 pat_index);
-
-	/** @ggtt_set_pte: Directly write into GGTT's PTE */
-	xe_ggtt_set_pte_fn ggtt_set_pte;
-
-	/** @ggtt_get_pte: Directly read from GGTT's PTE */
-	u64 (*ggtt_get_pte)(struct xe_ggtt *ggtt, u64 addr);
-};
 
 #endif
-- 
2.51.0

