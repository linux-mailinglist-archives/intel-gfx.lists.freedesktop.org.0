Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5ED2B5DC5
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 12:01:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 140F56E185;
	Tue, 17 Nov 2020 11:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BE196E188
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 11:01:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23015798-1500050 
 for multiple; Tue, 17 Nov 2020 11:01:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 11:01:26 +0000
Message-Id: <20201117110132.22267-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201117110132.22267-1-chris@chris-wilson.co.uk>
References: <20201117110132.22267-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/gt: Refactor _wa_add to reuse
 wa_index and wa_list_grow
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

From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Switch the search and grow code of the _wa_add to use _wa_index and
_wa_list_grow.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 124 +++++++++++---------
 1 file changed, 71 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index c49083957074..e50c72d2b3f1 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -91,20 +91,19 @@ static void wa_init_start(struct i915_wa_list *wal, const char *name, const char
 
 #define WA_LIST_CHUNK (1 << 4)
 
-static void wa_init_finish(struct i915_wa_list *wal)
+static void wa_trim(struct i915_wa_list *wal, gfp_t gfp)
 {
+	struct i915_wa *list;
+
 	/* Trim unused entries. */
-	if (!IS_ALIGNED(wal->count, WA_LIST_CHUNK)) {
-		struct i915_wa *list = kmemdup(wal->list,
-					       wal->count * sizeof(*list),
-					       GFP_KERNEL);
-
-		if (list) {
-			kfree(wal->list);
-			wal->list = list;
-		}
-	}
+	list = krealloc(wal->list, wal->count * sizeof(*list), gfp);
+	if (list)
+		wal->list = list;
+}
 
+static void wa_init_finish(struct i915_wa_list *wal)
+{
+	wa_trim(wal, GFP_KERNEL);
 	if (!wal->count)
 		return;
 
@@ -112,57 +111,60 @@ static void wa_init_finish(struct i915_wa_list *wal)
 			 wal->wa_count, wal->name, wal->engine_name);
 }
 
-static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
+static int wa_index(struct i915_wa_list *wal, i915_reg_t reg)
 {
-	unsigned int addr = i915_mmio_reg_offset(wa->reg);
-	unsigned int start = 0, end = wal->count;
-	const unsigned int grow = WA_LIST_CHUNK;
-	struct i915_wa *wa_;
+	unsigned int addr = i915_mmio_reg_offset(reg);
+	int start = 0, end = wal->count;
 
-	GEM_BUG_ON(!is_power_of_2(grow));
+	/* addr and wal->list[].reg, both include the R/W flags */
+	while (start < end) {
+		unsigned int mid = start + (end - start) / 2;
 
-	if (IS_ALIGNED(wal->count, grow)) { /* Either uninitialized or full. */
-		struct i915_wa *list;
+		if (i915_mmio_reg_offset(wal->list[mid].reg) < addr)
+			start = mid + 1;
+		else if (i915_mmio_reg_offset(wal->list[mid].reg) > addr)
+			end = mid;
+		else
+			return mid;
+	}
 
-		list = kmalloc_array(ALIGN(wal->count + 1, grow), sizeof(*wa),
-				     GFP_KERNEL);
-		if (!list) {
-			DRM_ERROR("No space for workaround init!\n");
-			return;
-		}
+	return -ENOENT;
+}
 
-		if (wal->list) {
-			memcpy(list, wal->list, sizeof(*wa) * wal->count);
-			kfree(wal->list);
-		}
+static int wa_list_grow(struct i915_wa_list *wal, size_t count, gfp_t gfp)
+{
+	struct i915_wa *list;
 
-		wal->list = list;
-	}
+	list = krealloc(wal->list, count * sizeof(*list), gfp);
+	if (!list)
+		return -ENOMEM;
 
-	while (start < end) {
-		unsigned int mid = start + (end - start) / 2;
+	wal->list = list;
+	return 0;
+}
 
-		if (i915_mmio_reg_offset(wal->list[mid].reg) < addr) {
-			start = mid + 1;
-		} else if (i915_mmio_reg_offset(wal->list[mid].reg) > addr) {
-			end = mid;
-		} else {
-			wa_ = &wal->list[mid];
-
-			if ((wa->clr | wa_->clr) && !(wa->clr & ~wa_->clr)) {
-				DRM_ERROR("Discarding overwritten w/a for reg %04x (clear: %08x, set: %08x)\n",
-					  i915_mmio_reg_offset(wa_->reg),
-					  wa_->clr, wa_->set);
-
-				wa_->set &= ~wa->clr;
-			}
-
-			wal->wa_count++;
-			wa_->set |= wa->set;
-			wa_->clr |= wa->clr;
-			wa_->read |= wa->read;
-			return;
+static void __wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
+{
+	struct i915_wa *wa_;
+	int index;
+
+	index = wa_index(wal, wa->reg);
+	if (index >= 0) {
+		wa_ = &wal->list[index];
+
+		if ((wa->clr | wa_->clr) && !(wa->clr & ~wa_->clr)) {
+			DRM_ERROR("Discarding overwritten w/a for reg %04x (clear: %08x, set: %08x)\n",
+				  i915_mmio_reg_offset(wa_->reg),
+				  wa_->clr, wa_->set);
+
+			wa_->set &= ~wa->clr;
 		}
+
+		wal->wa_count++;
+		wa_->set |= wa->set;
+		wa_->clr |= wa->clr;
+		wa_->read |= wa->read;
+		return;
 	}
 
 	wal->wa_count++;
@@ -180,6 +182,22 @@ static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
 	}
 }
 
+static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
+{
+	const unsigned int grow = WA_LIST_CHUNK;
+
+	GEM_BUG_ON(!is_power_of_2(grow));
+
+	if (IS_ALIGNED(wal->count, grow) && /* Either uninitialized or full. */
+	    wa_list_grow(wal, ALIGN(wal->count + 1, grow), GFP_KERNEL)) {
+		DRM_ERROR("Unable to store w/a for reg %04x\n",
+			  i915_mmio_reg_offset(wa->reg));
+		return;
+	}
+
+	__wa_add(wal, wa);
+}
+
 static void wa_add(struct i915_wa_list *wal, i915_reg_t reg,
 		   u32 clear, u32 set, u32 read_mask)
 {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
