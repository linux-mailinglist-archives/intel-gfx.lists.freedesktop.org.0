Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8DB1ADF9D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 16:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C34F6EBE5;
	Fri, 17 Apr 2020 14:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E1AC6EBE5
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 14:16:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20934134-1500050 
 for multiple; Fri, 17 Apr 2020 15:15:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 15:15:55 +0100
Message-Id: <20200417141555.12028-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Poison residual state [HWSP]
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we may lose the content of any buffer when we relinquish control
of the system (e.g. suspend/resume), we have to be careful not to rely
on regaining control. A good method to detect when we might be using
garbage is by always injecting that garbage prior to first use on
load/resume/etc.

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 34f67eb9bfa1..e8463945024b 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3649,6 +3649,18 @@ static void reset_csb_pointers(struct intel_engine_cs *engine)
 
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
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
