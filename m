Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E661567ED
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 23:01:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 708BB6E40C;
	Sat,  8 Feb 2020 22:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CB9D6E03C
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 22:01:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20160941-1500050 
 for multiple; Sat, 08 Feb 2020 22:01:07 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  8 Feb 2020 22:01:05 +0000
Message-Id: <20200208220106.3311791-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200208220106.3311791-1-chris@chris-wilson.co.uk>
References: <20200208220106.3311791-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Split the gen7 rcs flush into
 phases
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

We want to be sure that the memory is coherent prior to writing to the
breadcrumb. This should be guaranteed by the post-sync operation, but
for that little bit of extra paranoia, split the flush into two and have
the breadcrumb write separate and explicitly wait on the prior
pipecontrol completion.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ring_submission.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index c99017e3c3c9..c4e6bad5e6dc 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -412,8 +412,12 @@ static u32 *gen7_rcs_emit_breadcrumb(struct i915_request *rq, u32 *cs)
 	*cs++ = GFX_OP_PIPE_CONTROL(4);
 	*cs++ = (PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH |
 		 PIPE_CONTROL_DEPTH_CACHE_FLUSH |
-		 PIPE_CONTROL_DC_FLUSH_ENABLE |
-		 PIPE_CONTROL_FLUSH_ENABLE |
+		 PIPE_CONTROL_DC_FLUSH_ENABLE);
+	*cs++ = 0;
+	*cs++ = 0;
+
+	*cs++ = GFX_OP_PIPE_CONTROL(4);
+	*cs++ = (PIPE_CONTROL_FLUSH_ENABLE |
 		 PIPE_CONTROL_QW_WRITE |
 		 PIPE_CONTROL_GLOBAL_GTT_IVB |
 		 PIPE_CONTROL_CS_STALL);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
