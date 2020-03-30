Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68920197ABB
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 13:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A50B489BFC;
	Mon, 30 Mar 2020 11:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 646A989BFC
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 11:32:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20738932-1500050 
 for multiple; Mon, 30 Mar 2020 12:31:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 12:31:37 +0100
Message-Id: <20200330113137.24425-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Include priority info in
 trace_ports
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

Add some extra information into trace_ports to help with reviewing
correctness.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 30 +++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 9104796673dc..9332269d2a79 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1415,6 +1415,24 @@ static inline void write_desc(struct intel_engine_execlists *execlists, u64 desc
 	}
 }
 
+static char *dump_port(char *buf, int buflen,
+		       const char *prefix,
+		       struct i915_request *rq)
+{
+	if (!rq)
+		return "";
+
+	snprintf(buf, buflen, "%s%llx:%lld%s prio %d",
+		 prefix,
+		 rq->fence.context, rq->fence.seqno,
+		 i915_request_completed(rq) ? "!" :
+		 i915_request_started(rq) ? "*" :
+		 "",
+		 rq_prio(rq));
+
+	return buf;
+}
+
 static __maybe_unused void
 trace_ports(const struct intel_engine_execlists *execlists,
 	    const char *msg,
@@ -1422,18 +1440,14 @@ trace_ports(const struct intel_engine_execlists *execlists,
 {
 	const struct intel_engine_cs *engine =
 		container_of(execlists, typeof(*engine), execlists);
+	char p0[40], p1[40];
 
 	if (!ports[0])
 		return;
 
-	ENGINE_TRACE(engine, "%s { %llx:%lld%s, %llx:%lld }\n", msg,
-		     ports[0]->fence.context,
-		     ports[0]->fence.seqno,
-		     i915_request_completed(ports[0]) ? "!" :
-		     i915_request_started(ports[0]) ? "*" :
-		     "",
-		     ports[1] ? ports[1]->fence.context : 0,
-		     ports[1] ? ports[1]->fence.seqno : 0);
+	ENGINE_TRACE(engine, "%s { %s%s }\n", msg,
+		     dump_port(p0, sizeof(p0), "", ports[0]),
+		     dump_port(p1, sizeof(p1), ", ", ports[1]));
 }
 
 static inline bool
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
