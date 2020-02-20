Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D491516548B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 02:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE5BB6E897;
	Thu, 20 Feb 2020 01:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D62E6E0D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 01:43:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20282066-1500050 
 for multiple; Thu, 20 Feb 2020 01:43:28 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2020 01:43:24 +0000
Message-Id: <20200220014325.1527804-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200220014325.1527804-1-chris@chris-wilson.co.uk>
References: <20200220014325.1527804-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] fix
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

---
 drivers/gpu/drm/i915/gt/gen7_renderclear.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index 2c3aabc72b4e..beeb2e82c6fe 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -90,7 +90,7 @@ static u32 batch_addr(const struct batch_chunk *bc)
 
 static void batch_add(struct batch_chunk *bc, const u32 d)
 {
-	GEM_DEBUG_WARN_ON((bc->end - bc->start) >= bc->max_items);
+	GEM_BUG_ON(bc->end - bc->start >= bc->max_items);
 	*bc->end++ = d;
 }
 
@@ -154,11 +154,10 @@ static u32
 gen7_fill_binding_table(struct batch_chunk *state,
 			const struct batch_vals *bv)
 {
+	u32 surface_start = gen7_fill_surface_state(state, bv->batch_size, bv);
 	u32 *cs = batch_alloc_items(state, 32, 8);
 	u32 offset = batch_offset(state, cs);
-	u32 surface_start;
 
-	surface_start = gen7_fill_surface_state(state, bv->batch_size, bv);
 	*cs++ = surface_start - state->offset;
 	*cs++ = 0;
 	*cs++ = 0;
@@ -188,13 +187,16 @@ gen7_fill_interface_descriptor(struct batch_chunk *state,
 			       const struct cb_kernel *kernel,
 			       unsigned int count)
 {
+	u32 kernel_offset =
+		gen7_fill_kernel_data(state, kernel->data, kernel->size);
+	u32 binding_table = gen7_fill_binding_table(state, bv);
 	u32 *cs = batch_alloc_items(state, 32, 8 * count);
 	u32 offset = batch_offset(state, cs);
 
-	*cs++ = gen7_fill_kernel_data(state, kernel->data, kernel->size);
+	*cs++ = kernel_offset;
 	*cs++ = (1 << 7) | (1 << 13);
 	*cs++ = 0;
-	*cs++ = (gen7_fill_binding_table(state, bv) - state->offset) | 1;
+	*cs++ = (binding_table - state->offset) | 1;
 	*cs++ = 0;
 	*cs++ = 0;
 	*cs++ = 0;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
