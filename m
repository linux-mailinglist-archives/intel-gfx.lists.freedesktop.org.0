Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 011C92D9605
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DDD36E2B6;
	Mon, 14 Dec 2020 10:10:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6FF16E1E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317811-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:09:17 +0000
Message-Id: <20201214100949.11387-37-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 37/69] drm/i915/gt: Defer the kmem_cache_free()
 until after the HW submit
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

Watching lock_stat, we noticed that the kmem_cache_free() would cause
the occasional multi-millisecond spike (directly affecting max-holdtime
and so the max-waittime). Delaying our submission of the next ELSP by a
millisecond will leave the GPU idle, so defer the kmem_cache_free()
until afterwards.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/intel_execlists_submission.c    | 10 +++++++++-
 drivers/gpu/drm/i915/i915_scheduler.c               | 13 +++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.h               | 12 ++++++++++++
 3 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 201700fe3483..16161bf4c849 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2019,6 +2019,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 	struct i915_request **port = execlists->pending;
 	struct i915_request ** const last_port = port + execlists->port_mask;
 	struct i915_request *last = *execlists->active;
+	struct list_head *free = NULL;
 	struct virtual_engine *ve;
 	struct rb_node *rb;
 	bool submit = false;
@@ -2307,8 +2308,9 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			}
 		}
 
+		/* Remove the node, but defer the free for later */
 		rb_erase_cached(&p->node, &execlists->queue);
-		i915_priolist_free(p);
+		free = i915_priolist_free_defer(p, free);
 	}
 done:
 	*port++ = i915_request_get(last);
@@ -2360,6 +2362,12 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
 			i915_request_put(*port);
 		*execlists->pending = NULL;
 	}
+
+	/*
+	 * We noticed that kmem_cache_free() may cause 1ms+ latencies, so
+	 * we defer the frees until after we have submitted the ELSP.
+	 */
+	i915_priolist_free_many(free);
 }
 
 static void execlists_dequeue_irq(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index a57353191d12..dad5318ca825 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -126,6 +126,19 @@ void __i915_priolist_free(struct i915_priolist *p)
 	kmem_cache_free(global.slab_priorities, p);
 }
 
+void i915_priolist_free_many(struct list_head *list)
+{
+	while (list) {
+		struct i915_priolist *p;
+
+		p = container_of(list, typeof(*p), requests);
+		list = p->requests.next;
+
+		GEM_BUG_ON(p->priority == I915_PRIORITY_NORMAL);
+		kmem_cache_free(global.slab_priorities, p);
+	}
+}
+
 struct sched_cache {
 	struct list_head *priolist;
 };
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 858a0938f47a..503630bd2c03 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -48,6 +48,18 @@ static inline void i915_priolist_free(struct i915_priolist *p)
 		__i915_priolist_free(p);
 }
 
+void i915_priolist_free_many(struct list_head *list);
+
+static inline struct list_head *
+i915_priolist_free_defer(struct i915_priolist *p, struct list_head *free)
+{
+	if (p->priority != I915_PRIORITY_NORMAL) {
+		p->requests.next = free;
+		free = &p->requests;
+	}
+	return free;
+}
+
 void i915_request_show_with_schedule(struct drm_printer *m,
 				     const struct i915_request *rq,
 				     const char *prefix,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
