Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F8B1EE7A9
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 17:24:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374586E43F;
	Thu,  4 Jun 2020 15:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30706E43F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 15:24:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21396968-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2020 16:24:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jun 2020 16:24:30 +0100
Message-Id: <20200604152430.3861-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Track if an engine requires forcewake
 w/a
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sometimes an engine might need to keep forcewake active while it is busy
submitting requests for a particular workaround. Track such nuisance
with engine->fw_domain.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 10 ++++++++++
 drivers/gpu/drm/i915/gt/intel_lrc.c          |  4 ++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 2b6cdf47d428..28b70c13d691 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -24,6 +24,7 @@
 #include "i915_selftest.h"
 #include "intel_sseu.h"
 #include "intel_timeline_types.h"
+#include "intel_uncore.h"
 #include "intel_wakeref.h"
 #include "intel_workarounds_types.h"
 
@@ -313,6 +314,15 @@ struct intel_engine_cs {
 	u32 context_size;
 	u32 mmio_base;
 
+	/*
+	 * Some w/a require forcewake to be held (which prevents RC6) while
+	 * a particular engine is active. If so, we set fw_domain to which
+	 * domains need to be held for the duration of request activity,
+	 * and 0 if none.
+	 */
+	enum forcewake_domains fw_domain;
+	unsigned int fw_active;
+
 	unsigned long context_tag;
 
 	struct rb_node uabi_node;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index aac8da18694f..3de3a357074e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1373,6 +1373,8 @@ __execlists_schedule_in(struct i915_request *rq)
 	ce->lrc.ccid |= engine->execlists.ccid;
 
 	__intel_gt_pm_get(engine->gt);
+	if (!engine->fw_active++ && engine->fw_domain)
+		intel_uncore_forcewake_get(engine->uncore, engine->fw_domain);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_IN);
 	intel_engine_context_in(engine);
 
@@ -1441,6 +1443,8 @@ __execlists_schedule_out(struct i915_request *rq,
 	intel_context_update_runtime(ce);
 	intel_engine_context_out(engine);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
+	if (!--engine->fw_active && engine->fw_domain)
+		intel_uncore_forcewake_put(engine->uncore, engine->fw_domain);
 	intel_gt_pm_put_async(engine->gt);
 
 	/*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
