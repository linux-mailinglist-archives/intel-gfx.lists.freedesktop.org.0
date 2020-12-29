Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FEE2E703F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 13:02:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 994858931E;
	Tue, 29 Dec 2020 12:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 381EE8914A
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 12:02:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23455212-1500050 
 for multiple; Tue, 29 Dec 2020 12:01:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 12:01:37 +0000
Message-Id: <20201229120145.26045-48-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201229120145.26045-1-chris@chris-wilson.co.uk>
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 48/56] Restore "drm/i915: drop
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
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 24 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.h |  3 +++
 2 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index d00107939d22..b530b7c4e0b7 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -331,6 +331,30 @@ void intel_breadcrumbs_reset(struct intel_breadcrumbs *b)
 	spin_unlock_irqrestore(&b->irq_lock, flags);
 }
 
+void intel_breadcrumbs_pin_irq(struct intel_breadcrumbs *b)
+{
+	if (GEM_DEBUG_WARN_ON(!b->irq_engine))
+		return;
+
+	spin_lock_irq(&b->irq_lock);
+	if (!b->irq_enabled++)
+		irq_enable(b->irq_engine);
+	GEM_BUG_ON(!b->irq_enabled); /* no overflow! */
+	spin_unlock_irq(&b->irq_lock);
+}
+
+void intel_breadcrumbs_unpin_irq(struct intel_breadcrumbs *b)
+{
+	if (GEM_DEBUG_WARN_ON(!b->irq_engine))
+		return;
+
+	spin_lock_irq(&b->irq_lock);
+	GEM_BUG_ON(!b->irq_enabled); /* no underflow! */
+	if (!--b->irq_enabled)
+		irq_disable(b->irq_engine);
+	spin_unlock_irq(&b->irq_lock);
+}
+
 void __intel_breadcrumbs_park(struct intel_breadcrumbs *b)
 {
 	if (!READ_ONCE(b->irq_armed))
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
index 75cc9cff3ae3..d400ac17c733 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
@@ -18,6 +18,9 @@ struct intel_breadcrumbs *
 intel_breadcrumbs_create(struct intel_engine_cs *irq_engine);
 void intel_breadcrumbs_free(struct intel_breadcrumbs *b);
 
+void intel_breadcrumbs_pin_irq(struct intel_breadcrumbs *b);
+void intel_breadcrumbs_unpin_irq(struct intel_breadcrumbs *b);
+
 void intel_breadcrumbs_reset(struct intel_breadcrumbs *b);
 void __intel_breadcrumbs_park(struct intel_breadcrumbs *b);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
