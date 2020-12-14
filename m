Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD8A2D95DE
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:10:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 466416E161;
	Mon, 14 Dec 2020 10:10:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39156E153
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:10:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23317853-1500050 
 for multiple; Mon, 14 Dec 2020 10:09:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 10:09:39 +0000
Message-Id: <20201214100949.11387-59-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214100949.11387-1-chris@chris-wilson.co.uk>
References: <20201214100949.11387-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 59/69] Restore "drm/i915: drop
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
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.h |  3 +++
 2 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
index ac1e5f6c3c2c..97bcfb957f3d 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -334,6 +334,24 @@ void intel_breadcrumbs_reset(struct intel_breadcrumbs *b)
 	spin_unlock_irqrestore(&b->irq_lock, flags);
 }
 
+void intel_breadcrumbs_pin_irq(struct intel_breadcrumbs *b)
+{
+	spin_lock_irq(&b->irq_lock);
+	if (!b->irq_enabled++)
+		irq_enable(b->irq_engine);
+	GEM_BUG_ON(!b->irq_enabled); /* no overflow! */
+	spin_unlock_irq(&b->irq_lock);
+}
+
+void intel_breadcrumbs_unpin_irq(struct intel_breadcrumbs *b)
+{
+	spin_lock_irq(&b->irq_lock);
+	GEM_BUG_ON(!b->irq_enabled); /* no underflow! */
+	if (!--b->irq_enabled)
+		irq_disable(b->irq_engine);
+	spin_unlock_irq(&b->irq_lock);
+}
+
 void intel_breadcrumbs_park(struct intel_breadcrumbs *b)
 {
 	/* Kick the work once more to drain the signalers */
diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
index ed3d1deabfbd..94400903e1d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.h
@@ -18,6 +18,9 @@ struct intel_breadcrumbs *
 intel_breadcrumbs_create(struct intel_engine_cs *irq_engine);
 void intel_breadcrumbs_free(struct intel_breadcrumbs *b);
 
+void intel_breadcrumbs_pin_irq(struct intel_breadcrumbs *b);
+void intel_breadcrumbs_unpin_irq(struct intel_breadcrumbs *b);
+
 void intel_breadcrumbs_reset(struct intel_breadcrumbs *b);
 void intel_breadcrumbs_park(struct intel_breadcrumbs *b);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
