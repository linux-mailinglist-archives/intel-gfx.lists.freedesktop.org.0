Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D200030068B
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 16:06:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0245A6EA05;
	Fri, 22 Jan 2021 15:06:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB0C16EA05
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 15:06:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23672680-1500050 
 for multiple; Fri, 22 Jan 2021 15:06:23 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:06:19 +0000
Message-Id: <20210122150622.21088-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210122150622.21088-1-chris@chris-wilson.co.uk>
References: <20210122150622.21088-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/10] drm/i915/gt: Insert spaces into
 GEN3_L3LOG_SIZE/4
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

Checkpatch wants spaces, let's give it some spaces.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 1a80673bc1dd..8b7cc637c432 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -730,13 +730,14 @@ static int mi_set_context(struct i915_request *rq,
 
 static int remap_l3_slice(struct i915_request *rq, int slice)
 {
+#define L3LOG_DW (GEN7_L3LOG_SIZE / sizeof(u32))
 	u32 *cs, *remap_info = rq->engine->i915->l3_parity.remap_info[slice];
 	int i;
 
 	if (!remap_info)
 		return 0;
 
-	cs = intel_ring_begin(rq, GEN7_L3LOG_SIZE/4 * 2 + 2);
+	cs = intel_ring_begin(rq, L3LOG_DW * 2 + 2);
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
@@ -745,8 +746,8 @@ static int remap_l3_slice(struct i915_request *rq, int slice)
 	 * here because no other code should access these registers other than
 	 * at initialization time.
 	 */
-	*cs++ = MI_LOAD_REGISTER_IMM(GEN7_L3LOG_SIZE/4);
-	for (i = 0; i < GEN7_L3LOG_SIZE/4; i++) {
+	*cs++ = MI_LOAD_REGISTER_IMM(L3LOG_DW);
+	for (i = 0; i < L3LOG_DW; i++) {
 		*cs++ = i915_mmio_reg_offset(GEN7_L3LOG(slice, i));
 		*cs++ = remap_info[i];
 	}
@@ -754,6 +755,7 @@ static int remap_l3_slice(struct i915_request *rq, int slice)
 	intel_ring_advance(rq, cs);
 
 	return 0;
+#undef L3LOG_DW
 }
 
 static int remap_l3(struct i915_request *rq)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
