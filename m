Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEB11EE7CA
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 17:31:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38EB46E44B;
	Thu,  4 Jun 2020 15:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 981DA6E44B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 15:31:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21397070-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2020 16:31:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jun 2020 16:31:45 +0100
Message-Id: <20200604153145.21068-1-chris@chris-wilson.co.uk>
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
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 11 +++++++++++
 drivers/gpu/drm/i915/gt/intel_lrc.c          |  4 ++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 2b6cdf47d428..073c3769e8cc 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -24,6 +24,7 @@
 #include "i915_selftest.h"
 #include "intel_sseu.h"
 #include "intel_timeline_types.h"
+#include "intel_uncore.h"
 #include "intel_wakeref.h"
 #include "intel_workarounds_types.h"
 
@@ -313,6 +314,16 @@ struct intel_engine_cs {
 	u32 context_size;
 	u32 mmio_base;
 
+	/*
+	 * Some w/a require forcewake to be held (which prevents RC6) while
+	 * a particular engine is active. If so, we set fw_domain to which
+	 * domains need to be held for the duration of request activity,
+	 * and 0 if none. We try to limit the duration of the hold as much
+	 * as possible.
+	 */
+	enum forcewake_domains fw_domain;
+	atomic_t fw_active;
+
 	unsigned long context_tag;
 
 	struct rb_node uabi_node;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index aac8da18694f..33b7173b7195 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1373,6 +1373,8 @@ __execlists_schedule_in(struct i915_request *rq)
 	ce->lrc.ccid |= engine->execlists.ccid;
 
 	__intel_gt_pm_get(engine->gt);
+	if (engine->fw_domain && !atomic_fetch_inc(&engine->fw_active))
+		intel_uncore_forcewake_get(engine->uncore, engine->fw_domain);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_IN);
 	intel_engine_context_in(engine);
 
@@ -1441,6 +1443,8 @@ __execlists_schedule_out(struct i915_request *rq,
 	intel_context_update_runtime(ce);
 	intel_engine_context_out(engine);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
+	if (engine->fw_domain && !atomic_dec_return(&engine->fw_active))
+		intel_uncore_forcewake_put(engine->uncore, engine->fw_domain);
 	intel_gt_pm_put_async(engine->gt);
 
 	/*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
