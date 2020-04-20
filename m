Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFB91B06F3
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 12:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFDB56E505;
	Mon, 20 Apr 2020 10:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A01B36E505
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 10:59:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20957839-1500050 
 for multiple; Mon, 20 Apr 2020 11:58:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 11:58:46 +0100
Message-Id: <20200420105846.16287-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Poison residual state [HWSP]
 across resume.
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
Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we may lose the content of any buffer when we relinquish control
of the system (e.g. suspend/resume), we have to be careful not to rely
on regaining control. A good method to detect when we might be using
garbage is by always injecting that garbage prior to first use on
load/resume/etc.

v2: Drop sanitize callback on cleanup

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Venkata Ramana Nayana <venkata.ramana.nayana@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 32 ++++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 34f67eb9bfa1..6621ed3a3ac6 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3647,9 +3647,37 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
 			       &execlists->csb_status[reset_value]);
 }
 
+static void timeline_reset_seqno(const struct intel_timeline *tl)
+{
+	/* Must be pinned to be writable, and no requests in flight. */
+	GEM_BUG_ON(!atomic_read(&tl->pin_count));
+	GEM_BUG_ON(atomic_read(&tl->active_count));
+
+	WRITE_ONCE(*(u32 *)tl->hwsp_seqno, tl->seqno);
+}
+
 static void execlists_sanitize(struct intel_engine_cs *engine)
 {
+	/*
+	 * Poison residual state on resume, in case the suspend didn't!
+	 *
+	 * We have to assume that across suspend/resume (or other loss
+	 * of control) that the contents of our pinned buffers has been
+	 * lost, replaced by garbage. Since this doesn't always happen,
+	 * let's poison such state so that we more quickly spot when
+	 * we falsely assume it has been preserved.
+	 */
+	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		memset(engine->status_page.addr, POISON_INUSE, PAGE_SIZE);
+
 	reset_csb_pointers(engine);
+
+	/*
+	 * The kernel_context HWSP is stored in the status_page. As above,
+	 * that may be lost on resume/initialisation, and so we need to
+	 * reset the value in the HWSP.
+	 */
+	timeline_reset_seqno(engine->kernel_context->timeline);
 }
 
 static void enable_error_interrupt(struct intel_engine_cs *engine)
@@ -4539,6 +4567,8 @@ static void execlists_shutdown(struct intel_engine_cs *engine)
 
 static void execlists_release(struct intel_engine_cs *engine)
 {
+	engine->sanitize = NULL; /* no longer in control, nothing to sanitize */
+
 	execlists_shutdown(engine);
 
 	intel_engine_cleanup_common(engine);
@@ -4550,7 +4580,6 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 {
 	/* Default vfuncs which can be overriden by each engine. */
 
-	engine->sanitize = execlists_sanitize;
 	engine->resume = execlists_resume;
 
 	engine->cops = &execlists_context_ops;
@@ -4666,6 +4695,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 		execlists->csb_size = GEN11_CSB_ENTRIES;
 
 	/* Finally, take ownership and responsibility for cleanup! */
+	engine->sanitize = execlists_sanitize;
 	engine->release = execlists_release;
 
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
