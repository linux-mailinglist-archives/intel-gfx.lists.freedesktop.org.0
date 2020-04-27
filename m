Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 719D31BAAB3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 19:05:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1DA6E343;
	Mon, 27 Apr 2020 17:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D769B6E343
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 17:05:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21038025-1500050 
 for multiple; Mon, 27 Apr 2020 18:05:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Apr 2020 18:05:13 +0100
Message-Id: <20200427170513.24019-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427170513.24019-1-chris@chris-wilson.co.uk>
References: <20200427170513.24019-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Verify we don't submit
 two identical CCIDs
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

Check that we do not submit two contexts into ELSP with the same CCID
[upper portion of the descriptor].

References: https://gitlab.freedesktop.org/drm/intel/-/issues/1793
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d68a04f2a9d5..f8a8cd72f227 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1621,6 +1621,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 	struct i915_request * const *port, *rq;
 	struct intel_context *ce = NULL;
 	bool sentinel = false;
+	u32 ccid = -1;
 
 	trace_ports(execlists, msg, execlists->pending);
 
@@ -1654,6 +1655,14 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 		}
 		ce = rq->context;
 
+		if (ccid == upper_32_bits(ce->lrc_desc)) {
+			GEM_TRACE_ERR("Dup ccid:%x context:%llx in pending[%zd]\n",
+				      ccid, ce->timeline->fence_context,
+				      port - execlists->pending);
+			return false;
+		}
+		ccid = upper_32_bits(ce->lrc_desc);
+
 		/*
 		 * Sentinels are supposed to be lonely so they flush the
 		 * current exection off the HW. Check that they are the
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
