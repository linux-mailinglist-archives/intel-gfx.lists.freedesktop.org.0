Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BFC30F105
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 11:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC8B46E042;
	Thu,  4 Feb 2021 10:39:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 912A96E042
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 10:39:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23784811-1500050 
 for multiple; Thu, 04 Feb 2021 10:39:40 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 10:39:37 +0000
Message-Id: <20210204103938.2068-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/selftests: Restore previous
 heartbeat interval
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

Use the defaults we store on the engine when resetting the heartbeat as
we may have had to adjust it from the config value during initialisation.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gt/selftest_engine_heartbeat.c    | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
index b0bae6676140..b2c369317bf1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
@@ -11,6 +11,12 @@
 #include "i915_selftest.h"
 #include "selftest_engine_heartbeat.h"
 
+static void reset_heartbeat(struct intel_engine_cs *engine)
+{
+	intel_engine_set_heartbeat(engine,
+				   engine->defaults.heartbeat_interval_ms);
+}
+
 static int timeline_sync(struct intel_timeline *tl)
 {
 	struct dma_fence *fence;
@@ -269,7 +275,7 @@ static int __live_heartbeat_fast(struct intel_engine_cs *engine)
 		err = -EINVAL;
 	}
 
-	intel_engine_set_heartbeat(engine, CONFIG_DRM_I915_HEARTBEAT_INTERVAL);
+	reset_heartbeat(engine);
 err_pm:
 	intel_engine_pm_put(engine);
 	intel_context_put(ce);
@@ -284,7 +290,7 @@ static int live_heartbeat_fast(void *arg)
 	int err = 0;
 
 	/* Check that the heartbeat ticks at the desired rate. */
-	if (!CONFIG_DRM_I915_HEARTBEAT_INTERVAL)
+	if (!IS_ACTIVE(CONFIG_DRM_I915_HEARTBEAT_INTERVAL))
 		return 0;
 
 	for_each_engine(engine, gt, id) {
@@ -332,7 +338,7 @@ static int __live_heartbeat_off(struct intel_engine_cs *engine)
 	}
 
 err_beat:
-	intel_engine_set_heartbeat(engine, CONFIG_DRM_I915_HEARTBEAT_INTERVAL);
+	reset_heartbeat(engine);
 err_pm:
 	intel_engine_pm_put(engine);
 	return err;
@@ -346,7 +352,7 @@ static int live_heartbeat_off(void *arg)
 	int err = 0;
 
 	/* Check that we can turn off heartbeat and not interrupt VIP */
-	if (!CONFIG_DRM_I915_HEARTBEAT_INTERVAL)
+	if (!IS_ACTIVE(CONFIG_DRM_I915_HEARTBEAT_INTERVAL))
 		return 0;
 
 	for_each_engine(engine, gt, id) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
