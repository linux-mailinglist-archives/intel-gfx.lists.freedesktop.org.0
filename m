Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D918B1F57FD
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 17:40:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C22E56E5D2;
	Wed, 10 Jun 2020 15:40:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 339496E5D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 15:40:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21455396-1500050 
 for multiple; Wed, 10 Jun 2020 16:40:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jun 2020 16:40:46 +0100
Message-Id: <20200610154046.22449-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Include context status in debug
 dumps
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

This may be useful to identify contexts that are running even though
they are supposed to be closed or banned.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 72f0029d490b..6d0a8ac02fb4 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1423,9 +1423,11 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 			int len;
 
 			len = scnprintf(hdr, sizeof(hdr),
-					"\t\tActive[%d]:  ccid:%08x, ",
+					"\t\tActive[%d]:  ccid:%08x%s%s, ",
 					(int)(port - execlists->active),
-					rq->context->lrc.ccid);
+					rq->context->lrc.ccid,
+					intel_context_is_closed(rq->context) ? "!" : "",
+					intel_context_is_banned(rq->context) ? "*" : "");
 			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
 			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
 			print_request(m, rq, hdr);
@@ -1435,9 +1437,11 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 			int len;
 
 			len = scnprintf(hdr, sizeof(hdr),
-					"\t\tPending[%d]: ccid:%08x, ",
+					"\t\tPending[%d]: ccid:%08x%s%s, ",
 					(int)(port - execlists->pending),
-					rq->context->lrc.ccid);
+					rq->context->lrc.ccid,
+					intel_context_is_closed(rq->context) ? "!" : "",
+					intel_context_is_banned(rq->context) ? "*" : "");
 			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
 			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
 			print_request(m, rq, hdr);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
