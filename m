Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4A016C40A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 15:36:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38E1A6EAF4;
	Tue, 25 Feb 2020 14:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12CAC6EAF4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 14:36:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20346195-1500050 
 for multiple; Tue, 25 Feb 2020 14:36:05 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 14:36:03 +0000
Message-Id: <20200225143604.500731-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200225143604.500731-1-chris@chris-wilson.co.uk>
References: <20200225143604.500731-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Drop I915_RESET_TIMEOUT and
 friends
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

These were used to set various timeouts for the reset procedure
(deciding when the engine was dead, and even if the reset itself was not
making forward progress). No longer used.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_drv.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index de1f1cbcc41d..6b56f31c850f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -611,12 +611,6 @@ struct i915_gem_mm {
 #define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
 
 unsigned long i915_fence_timeout(const struct drm_i915_private *i915);
-#define I915_RESET_TIMEOUT (10 * HZ) /* 10s */
-
-#define I915_ENGINE_DEAD_TIMEOUT  (4 * HZ)  /* Seqno, head and subunits dead */
-#define I915_SEQNO_DEAD_TIMEOUT   (12 * HZ) /* Seqno dead with active head */
-
-#define I915_ENGINE_WEDGED_TIMEOUT  (60 * HZ)  /* Reset but no recovery? */
 
 /* Amount of SAGV/QGV points, BSpec precisely defines this */
 #define I915_NUM_QGV_POINTS 8
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
