Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1994F1CA5E0
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 10:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56C196EA9E;
	Fri,  8 May 2020 08:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32356E2FF
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 08:17:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21147517-1500050 
 for multiple; Fri, 08 May 2020 09:16:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 May 2020 09:16:28 +0100
Message-Id: <20200508081630.13882-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508081630.13882-1-chris@chris-wilson.co.uk>
References: <20200508081630.13882-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/11] drm/i915/gt: Declare when we enabled
 timeslicing
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
Cc: Kenneth Graunke <kenneth@whitecape.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let userspace know if they can trust timeslicing by including it as part
of the I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING

v2: Only declare timeslicing if we can safely preempt userspace.

Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
Link: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/3802
Link: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/4854
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Kenneth Graunke <kenneth@whitecape.org>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_user.c | 1 +
 include/uapi/drm/i915_drm.h                 | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 848decee9066..8415511f1465 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -98,6 +98,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
 		MAP(HAS_PREEMPTION, PREEMPTION),
 		MAP(HAS_SEMAPHORES, SEMAPHORES),
 		MAP(SUPPORTS_STATS, ENGINE_BUSY_STATS),
+		MAP(HAS_TIMESLICES, TIMESLICING),
 #undef MAP
 	};
 	struct intel_engine_cs *engine;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 704dd0e3bc1d..1ee227b5131a 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -523,6 +523,7 @@ typedef struct drm_i915_irq_wait {
 #define   I915_SCHEDULER_CAP_PREEMPTION	(1ul << 2)
 #define   I915_SCHEDULER_CAP_SEMAPHORES	(1ul << 3)
 #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS	(1ul << 4)
+#define   I915_SCHEDULER_CAP_TIMESLICING	(1ul << 5)
 
 #define I915_PARAM_HUC_STATUS		 42
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
