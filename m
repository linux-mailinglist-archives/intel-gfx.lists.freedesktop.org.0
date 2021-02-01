Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D58CD30A4E4
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 11:05:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 766C06E02E;
	Mon,  1 Feb 2021 10:04:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01A376E02E
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 10:04:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23758771-1500050 
 for multiple; Mon, 01 Feb 2021 10:04:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 10:04:48 +0000
Message-Id: <20210201100448.9802-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Use a single copy of the
 mocs table
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

Instead of copying the whole table to each category (mocs, l3cc), use a
single table with a pointer to it if the category is enabled.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_mocs.c | 32 +++++++++++++++++--------
 1 file changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index e6f6807487d4..44609d1c7780 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -12,8 +12,9 @@
 #include "selftests/igt_spinner.h"
 
 struct live_mocs {
-	struct drm_i915_mocs_table mocs;
-	struct drm_i915_mocs_table l3cc;
+	struct drm_i915_mocs_table table;
+	struct drm_i915_mocs_table *mocs;
+	struct drm_i915_mocs_table *l3cc;
 	struct i915_vma *scratch;
 	void *vaddr;
 };
@@ -58,21 +59,20 @@ static int request_add_spin(struct i915_request *rq, struct igt_spinner *spin)
 
 static int live_mocs_init(struct live_mocs *arg, struct intel_gt *gt)
 {
-	struct drm_i915_mocs_table table;
 	unsigned int flags;
 	int err;
 
 	memset(arg, 0, sizeof(*arg));
 
-	flags = get_mocs_settings(gt->i915, &table);
+	flags = get_mocs_settings(gt->i915, &arg->table);
 	if (!flags)
 		return -EINVAL;
 
 	if (flags & HAS_RENDER_L3CC)
-		arg->l3cc = table;
+		arg->l3cc = &arg->table;
 
 	if (flags & (HAS_GLOBAL_MOCS | HAS_ENGINE_MOCS))
-		arg->mocs = table;
+		arg->mocs = &arg->table;
 
 	arg->scratch = __vm_create_scratch_for_read(&gt->ggtt->vm, PAGE_SIZE);
 	if (IS_ERR(arg->scratch))
@@ -130,6 +130,9 @@ static int read_mocs_table(struct i915_request *rq,
 {
 	u32 addr;
 
+	if (!table)
+		return 0;
+
 	if (HAS_GLOBAL_MOCS_REGISTERS(rq->engine->i915))
 		addr = global_mocs_offset();
 	else
@@ -144,6 +147,9 @@ static int read_l3cc_table(struct i915_request *rq,
 {
 	u32 addr = i915_mmio_reg_offset(GEN9_LNCFCMOCS(0));
 
+	if (!table)
+		return 0;
+
 	return read_regs(rq, addr, (table->n_entries + 1) / 2, offset);
 }
 
@@ -154,6 +160,9 @@ static int check_mocs_table(struct intel_engine_cs *engine,
 	unsigned int i;
 	u32 expect;
 
+	if (!table)
+		return 0;
+
 	for_each_mocs(expect, table, i) {
 		if (**vaddr != expect) {
 			pr_err("%s: Invalid MOCS[%d] entry, found %08x, expected %08x\n",
@@ -185,6 +194,9 @@ static int check_l3cc_table(struct intel_engine_cs *engine,
 	unsigned int i;
 	u32 expect;
 
+	if (!table)
+		return 0;
+
 	for_each_l3cc(expect, table, i) {
 		if (!mcr_range(engine->i915, reg) && **vaddr != expect) {
 			pr_err("%s: Invalid L3CC[%d] entry, found %08x, expected %08x\n",
@@ -222,9 +234,9 @@ static int check_mocs_engine(struct live_mocs *arg,
 	/* Read the mocs tables back using SRM */
 	offset = i915_ggtt_offset(vma);
 	if (!err)
-		err = read_mocs_table(rq, &arg->mocs, &offset);
+		err = read_mocs_table(rq, arg->mocs, &offset);
 	if (!err && ce->engine->class == RENDER_CLASS)
-		err = read_l3cc_table(rq, &arg->l3cc, &offset);
+		err = read_l3cc_table(rq, arg->l3cc, &offset);
 	offset -= i915_ggtt_offset(vma);
 	GEM_BUG_ON(offset > PAGE_SIZE);
 
@@ -235,9 +247,9 @@ static int check_mocs_engine(struct live_mocs *arg,
 	/* Compare the results against the expected tables */
 	vaddr = arg->vaddr;
 	if (!err)
-		err = check_mocs_table(ce->engine, &arg->mocs, &vaddr);
+		err = check_mocs_table(ce->engine, arg->mocs, &vaddr);
 	if (!err && ce->engine->class == RENDER_CLASS)
-		err = check_l3cc_table(ce->engine, &arg->l3cc, &vaddr);
+		err = check_l3cc_table(ce->engine, arg->l3cc, &vaddr);
 	if (err)
 		return err;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
