Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0F81EE298
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 12:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41DDB6E313;
	Thu,  4 Jun 2020 10:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5454689AA6
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 10:38:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21393751-1500050 
 for multiple; Thu, 04 Jun 2020 11:37:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jun 2020 11:37:34 +0100
Message-Id: <20200604103751.18816-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200604103751.18816-1-chris@chris-wilson.co.uk>
References: <20200604103751.18816-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/22] Restore "drm/i915: drop
 engine_pin/unpin_breadcrumbs_irq"
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

This was removed in commit 478ffad6d690 ("drm/i915: drop
engine_pin/unpin_breadcrumbs_irq") as the last user had been removed,
but now there is a promise of a new user in the next patch.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 22 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_engine.h      |  3 +++
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index d907d538176e..03c14ab86d95 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -220,6 +220,28 @@ static void signal_irq_work(struct irq_work *work)
 	}
 }
 
+void intel_engine_pin_breadcrumbs_irq(struct intel_engine_cs *engine)
+{
+	struct intel_breadcrumbs *b = &engine->breadcrumbs;
+
+	spin_lock_irq(&b->irq_lock);
+	if (!b->irq_enabled++)
+		irq_enable(engine);
+	GEM_BUG_ON(!b->irq_enabled); /* no overflow! */
+	spin_unlock_irq(&b->irq_lock);
+}
+
+void intel_engine_unpin_breadcrumbs_irq(struct intel_engine_cs *engine)
+{
+	struct intel_breadcrumbs *b = &engine->breadcrumbs;
+
+	spin_lock_irq(&b->irq_lock);
+	GEM_BUG_ON(!b->irq_enabled); /* no underflow! */
+	if (!--b->irq_enabled)
+		irq_disable(engine);
+	spin_unlock_irq(&b->irq_lock);
+}
+
 static bool __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
 {
 	struct intel_engine_cs *engine =
diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 791897f8d847..043462b6ce1f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -226,6 +226,9 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine);
 void intel_engine_init_breadcrumbs(struct intel_engine_cs *engine);
 void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine);
 
+void intel_engine_pin_breadcrumbs_irq(struct intel_engine_cs *engine);
+void intel_engine_unpin_breadcrumbs_irq(struct intel_engine_cs *engine);
+
 void intel_engine_disarm_breadcrumbs(struct intel_engine_cs *engine);
 
 static inline void
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
