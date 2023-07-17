Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D617564F3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 15:28:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCD4A10E245;
	Mon, 17 Jul 2023 13:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 301 seconds by postgrey-1.36 at gabe;
 Mon, 17 Jul 2023 13:28:26 UTC
Received: from michel.telenet-ops.be (michel.telenet-ops.be
 [IPv6:2a02:1800:110:4::f00:18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A081810E245
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 13:28:26 +0000 (UTC)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:5803:2d6d:5bbc:e252])
 by michel.telenet-ops.be with bizsmtp
 id NDPN2A0070ucMBo06DPNMk; Mon, 17 Jul 2023 15:23:22 +0200
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtp (Exim 4.95)
 (envelope-from <geert@linux-m68k.org>) id 1qLOC1-001fvY-6i;
 Mon, 17 Jul 2023 15:23:22 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
 (envelope-from <geert@linux-m68k.org>) id 1qLOCA-007QtZ-2r;
 Mon, 17 Jul 2023 15:23:22 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 15:23:20 +0200
Message-Id: <8b0542c12a2427f34a792c41ac2d2a2922874bfa.1689600102.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm: Spelling s/sempahore/semaphore/
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
Cc: Hamza Mahfooz <hamza.mahfooz@amd.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix misspellings of "semaphore".

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Hamza Mahfooz <hamza.mahfooz@amd.com>
---
v2:
  - Add Reviewed-by.
---
 drivers/gpu/drm/i915/i915_request.c | 2 +-
 drivers/gpu/drm/radeon/cik.c        | 2 +-
 drivers/gpu/drm/radeon/r600.c       | 2 +-
 include/drm/task_barrier.h          | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 894068bb37b6f1b6..32323bb801a139b7 100644
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
index 382795a8b3c064ba..a17b95eec65fb810 100644
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

