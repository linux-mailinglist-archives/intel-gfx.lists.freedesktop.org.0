Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6429E6DD7D7
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 12:25:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8925410E0E8;
	Tue, 11 Apr 2023 10:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 301 seconds by postgrey-1.36 at gabe;
 Tue, 11 Apr 2023 10:25:48 UTC
Received: from michel.telenet-ops.be (michel.telenet-ops.be
 [IPv6:2a02:1800:110:4::f00:18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7928910E13E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 10:25:48 +0000 (UTC)
Received: from ramsan.of.borg ([84.195.187.55])
 by michel.telenet-ops.be with bizsmtp
 id jNLe2900D1C8whw06NLeKC; Tue, 11 Apr 2023 12:20:44 +0200
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtp (Exim 4.95)
 (envelope-from <geert@linux-m68k.org>) id 1pmB6J-00Gaa2-Ip;
 Tue, 11 Apr 2023 12:20:38 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
 (envelope-from <geert@linux-m68k.org>) id 1pmB78-00EHKL-Je;
 Tue, 11 Apr 2023 12:20:38 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Pan@rox.of.borg, Xinhui <Xinhui.Pan@amd.com>
Date: Tue, 11 Apr 2023 12:20:35 +0200
Message-Id: <50439958420f91cc97ad929437334bfb19ca4d90.1681208396.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm: Spelling s/sempahore/semaphore/
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
Cc: intel-gfx@lists.freedesktop.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix misspellings of "semaphore".

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/gpu/drm/i915/i915_request.c | 2 +-
 drivers/gpu/drm/radeon/cik.c        | 2 +-
 drivers/gpu/drm/radeon/r600.c       | 2 +-
 include/drm/task_barrier.h          | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 630a732aaecca8fb..0bb368a5dd0bb107 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1220,7 +1220,7 @@ emit_semaphore_wait(struct i915_request *to,
 	/*
 	 * If this or its dependents are waiting on an external fence
 	 * that may fail catastrophically, then we want to avoid using
-	 * sempahores as they bypass the fence signaling metadata, and we
+	 * semaphores as they bypass the fence signaling metadata, and we
 	 * lose the fence->error propagation.
 	 */
 	if (from->sched.flags & I915_SCHED_HAS_EXTERNAL_CHAIN)
diff --git a/drivers/gpu/drm/radeon/cik.c b/drivers/gpu/drm/radeon/cik.c
index 5819737c21c678d3..5d6b81a6578ef2ba 100644
--- a/drivers/gpu/drm/radeon/cik.c
+++ b/drivers/gpu/drm/radeon/cik.c
@@ -3603,7 +3603,7 @@ void cik_fence_compute_ring_emit(struct radeon_device *rdev,
  * @rdev: radeon_device pointer
  * @ring: radeon ring buffer object
  * @semaphore: radeon semaphore object
- * @emit_wait: Is this a sempahore wait?
+ * @emit_wait: Is this a semaphore wait?
  *
  * Emits a semaphore signal/wait packet to the CP ring and prevents the PFP
  * from running ahead of semaphore waits.
diff --git a/drivers/gpu/drm/radeon/r600.c b/drivers/gpu/drm/radeon/r600.c
index dd78fc4994024815..34457e51035278fb 100644
--- a/drivers/gpu/drm/radeon/r600.c
+++ b/drivers/gpu/drm/radeon/r600.c
@@ -2918,7 +2918,7 @@ void r600_fence_ring_emit(struct radeon_device *rdev,
  * @rdev: radeon_device pointer
  * @ring: radeon ring buffer object
  * @semaphore: radeon semaphore object
- * @emit_wait: Is this a sempahore wait?
+ * @emit_wait: Is this a semaphore wait?
  *
  * Emits a semaphore signal/wait packet to the CP ring and prevents the PFP
  * from running ahead of semaphore waits.
diff --git a/include/drm/task_barrier.h b/include/drm/task_barrier.h
index 087e3f649c52f02d..217c1cf21c1ab7d5 100644
--- a/include/drm/task_barrier.h
+++ b/include/drm/task_barrier.h
@@ -25,7 +25,7 @@
 
 /*
  * Reusable 2 PHASE task barrier (randevouz point) implementation for N tasks.
- * Based on the Little book of sempahores - https://greenteapress.com/wp/semaphores/
+ * Based on the Little book of semaphores - https://greenteapress.com/wp/semaphores/
  */
 
 
-- 
2.34.1

