Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D0E22C495
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 13:54:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE026E0FD;
	Fri, 24 Jul 2020 11:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADEBF6E0E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 11:54:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21918179-1500050 
 for multiple; Fri, 24 Jul 2020 12:53:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 12:53:50 +0100
Message-Id: <20200724115352.19892-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Disable preparser around xcs
 invalidations on tgl
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

Unlike rcs where we have conclusive evidence from our selftesting that
disabling the preparser before performing the TLB invalidate and
relocations does impact upon the GPU execution, the evidence for the
same requirement on xcs is much more circumstantial. Let's apply the
preparser disable between batches as we invalidate the TLB as a dose of
healthy paranoia, just in case.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/2169
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 29c0fde8b4df..353b1717fe84 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4764,14 +4764,21 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
 	intel_engine_mask_t aux_inv = 0;
 	u32 cmd, *cs;
 
+	cmd = 4;
+	if (mode & EMIT_INVALIDATE)
+		cmd += 2;
 	if (mode & EMIT_INVALIDATE)
 		aux_inv = request->engine->mask & ~BIT(BCS0);
+	if (aux_inv)
+		cmd += 2 * hweight8(aux_inv) + 2;
 
-	cs = intel_ring_begin(request,
-			      4 + (aux_inv ? 2 * hweight8(aux_inv) + 2 : 0));
+	cs = intel_ring_begin(request, cmd);
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
+	if (mode & EMIT_INVALIDATE)
+		*cs++ = preparser_disable(true);
+
 	cmd = MI_FLUSH_DW + 1;
 
 	/* We always require a command barrier so that subsequent
@@ -4804,6 +4811,10 @@ static int gen12_emit_flush(struct i915_request *request, u32 mode)
 		}
 		*cs++ = MI_NOOP;
 	}
+
+	if (mode & EMIT_INVALIDATE)
+		*cs++ = preparser_disable(false);
+
 	intel_ring_advance(request, cs);
 
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
