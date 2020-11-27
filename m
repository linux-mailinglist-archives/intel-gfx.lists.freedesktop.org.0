Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9132C6300
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 11:25:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C1816EB81;
	Fri, 27 Nov 2020 10:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90DAC6EB81
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 10:25:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23129948-1500050 
 for multiple; Fri, 27 Nov 2020 10:25:40 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 10:25:40 +0000
Message-Id: <20201127102540.13117-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Declare gen9 has 64 mocs entries!
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We checked the table size against a hardcoded number of entries, and
that number was excluding the special mocs registers at the end.

Fixes: 977933b5da7c ("drm/i915/gt: Program mocs:63 for cache eviction on gen9")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: <stable@vger.kernel.org> # v4.3+
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index b8d0c32ae9dd..ab6870242e18 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -59,8 +59,7 @@ struct drm_i915_mocs_table {
 #define _L3_CACHEABILITY(value)	((value) << 4)
 
 /* Helper defines */
-#define GEN9_NUM_MOCS_ENTRIES	62  /* 62 out of 64 - 63 & 64 are reserved. */
-#define GEN11_NUM_MOCS_ENTRIES	64  /* 63-64 are reserved, but configured. */
+#define GEN9_NUM_MOCS_ENTRIES	64  /* 63-64 are reserved, but configured. */
 
 /* (e)LLC caching options */
 /*
@@ -361,15 +360,15 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 	if (IS_DG1(i915)) {
 		table->size = ARRAY_SIZE(dg1_mocs_table);
 		table->table = dg1_mocs_table;
-		table->n_entries = GEN11_NUM_MOCS_ENTRIES;
+		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
 	} else if (INTEL_GEN(i915) >= 12) {
 		table->size  = ARRAY_SIZE(tgl_mocs_table);
 		table->table = tgl_mocs_table;
-		table->n_entries = GEN11_NUM_MOCS_ENTRIES;
+		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
 	} else if (IS_GEN(i915, 11)) {
 		table->size  = ARRAY_SIZE(icl_mocs_table);
 		table->table = icl_mocs_table;
-		table->n_entries = GEN11_NUM_MOCS_ENTRIES;
+		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
 	} else if (IS_GEN9_BC(i915) || IS_CANNONLAKE(i915)) {
 		table->size  = ARRAY_SIZE(skl_mocs_table);
 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
