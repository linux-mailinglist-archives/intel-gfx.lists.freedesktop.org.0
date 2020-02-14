Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F8715F6FF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 20:41:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3799F6E869;
	Fri, 14 Feb 2020 19:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA1196E869;
 Fri, 14 Feb 2020 19:41:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20230822-1500050 
 for multiple; Fri, 14 Feb 2020 19:40:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 19:40:16 +0000
Message-Id: <20200214194016.4054376-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200214194016.4054376-1-chris@chris-wilson.co.uk>
References: <20200214194016.4054376-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 4/4] lib/i915/gem_engine_topology.c -
 intel_get_current_engine invalid result
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dale B Stimson <dale.b.stimson@intel.com>

Function intel_get_current_engine() should return NULL (instead of
engine 0) if there are no engines.

Function intel_init_engine_list() should not store potential engine
data in the output structure unless the engine is present.

Function intel_init_engine_list() should arguably not filter the static
engine list with gem_has_ring if fd == -1, so that subtests can still
be individually invoked to show subtest FAIL instead of test notrun.

Symptom: A device open failure in gem_ctx_isolation resulted in
an endless __for_each_physical_engine "per-engine" loop with the
purported last potential engine being processed every time.

Diagnosis: device open (or debugfs open) failed, leaving fd == -1.
Control skipped the rest of the initial igt_fixture block, after
which an attempt was made to iterate through engines using macro
__for_each_physical_engine.

Macro __for_each_physical_engine called intel_init_engine_list()
to initialize the loop control data.  Because fd == -1,
intel_init_engine_list() fell back to using __for_each_static_engine().
All of the engines in the static engine list are rejected due to
gem_has_ring returning false (because of fd == -1), leaving 0 engines.
That resulted in loop control data with engine_data.nengines == 0
and the data for the last engine considered stored at index 0.

Still in macro __for_each_physical_engine, intel_get_current_engine()
was called to get the engine to process.  It should have returned NULL,
but instead returned the engine entry at index 0, which
had received information describing the last potential engine.
This happened without end.

Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Acked-by: Antonio Argenziano <antonio.argenziano@intel.com>
---
 lib/i915/gem_engine_topology.c | 29 ++++++++++++++++-------------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index ca1c1fdb9..1f530bfa3 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -156,10 +156,10 @@ static void query_engine_list(int fd, struct intel_engine_data *ed)
 struct intel_execution_engine2 *
 intel_get_current_engine(struct intel_engine_data *ed)
 {
-	if (!ed->n)
-		ed->current_engine = &ed->engines[0];
-	else if (ed->n >= ed->nengines)
+	if (ed->n >= ed->nengines)
 		ed->current_engine = NULL;
+	else if (!ed->n)
+		ed->current_engine = &ed->engines[0];
 
 	return ed->current_engine;
 }
@@ -211,18 +211,21 @@ struct intel_engine_data intel_init_engine_list(int fd, uint32_t ctx_id)
 		igt_debug("using pre-allocated engine list\n");
 
 		__for_each_static_engine(e2) {
-			struct intel_execution_engine2 *__e2 =
-				&engine_data.engines[engine_data.nengines];
-
-			strcpy(__e2->name, e2->name);
-			__e2->instance   = e2->instance;
-			__e2->class      = e2->class;
-			__e2->flags      = e2->flags;
-			__e2->is_virtual = false;
-
 			if (igt_only_list_subtests() ||
-			    gem_has_ring(fd, e2->flags))
+			    (fd < 0) ||
+			    gem_has_ring(fd, e2->flags)) {
+				struct intel_execution_engine2 *__e2 =
+					&engine_data.engines[
+					engine_data.nengines];
+
+				strcpy(__e2->name, e2->name);
+				__e2->instance   = e2->instance;
+				__e2->class      = e2->class;
+				__e2->flags      = e2->flags;
+				__e2->is_virtual = false;
+
 				engine_data.nengines++;
+                        }
 		}
 		return engine_data;
 	}
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
