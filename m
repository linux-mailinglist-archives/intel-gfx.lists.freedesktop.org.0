Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E3D24FF79
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 16:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA726E264;
	Mon, 24 Aug 2020 14:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 223E36E264
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 14:02:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22223284-1500050 
 for multiple; Mon, 24 Aug 2020 15:02:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Aug 2020 15:02:39 +0100
Message-Id: <20200824140239.28579-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Show engine properties in the
 pretty printer
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

When debugging the engine state, include the user properties that may,
or may not, have been adjusted by the user/test.

For example,
vecs0
	...
	Properties:
		heartbeat_interval_ms: 2500 [default 2500]
		max_busywait_duration_ns: 8000 [default 8000]
		preempt_timeout_ms: 640 [default 640]
		stop_timeout_ms: 100 [default 100]
		timeslice_duration_ms: 1 [default 1]

Suggested-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 36 +++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index ea4ba2afe9f9..bb9e3bb0c0c2 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1599,6 +1599,41 @@ static unsigned long list_count(struct list_head *list)
 	return count;
 }
 
+static unsigned long read_ul(void *p, size_t x)
+{
+	return *(unsigned long *)(p + x);
+}
+
+static void print_properties(struct intel_engine_cs *engine,
+			     struct drm_printer *m)
+{
+	static const struct pmap {
+		size_t offset;
+		const char *name;
+	} props[] = {
+#define P(x) { \
+	.offset = offsetof(typeof(engine->props), x), \
+	.name = #x \
+}
+		P(heartbeat_interval_ms),
+		P(max_busywait_duration_ns),
+		P(preempt_timeout_ms),
+		P(stop_timeout_ms),
+		P(timeslice_duration_ms),
+
+		{},
+#undef P
+	};
+	const struct pmap *p;
+
+	drm_printf(m, "Properties:\n");
+	for (p = props; p->name; p++)
+		drm_printf(m, "\t\t%s: %lu [default %lu]\n",
+			   p->name,
+			   read_ul(&engine->props, p->offset),
+			   read_ul(&engine->defaults, p->offset));
+}
+
 void intel_engine_dump(struct intel_engine_cs *engine,
 		       struct drm_printer *m,
 		       const char *header, ...)
@@ -1641,6 +1676,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	drm_printf(m, "\tReset count: %d (global %d)\n",
 		   i915_reset_engine_count(error, engine),
 		   i915_reset_count(error));
+	print_properties(engine, m);
 
 	drm_printf(m, "\tRequests:\n");
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
