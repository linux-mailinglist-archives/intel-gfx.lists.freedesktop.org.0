Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A00499C72E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 12:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA36C10E40A;
	Mon, 14 Oct 2024 10:29:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mozqKbAD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A5DE10E29A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2024 10:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728901767; x=1760437767;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DdbTBYAToUukb9b7AWGLIrCgwUMMVXvh2neO+sIKD1E=;
 b=mozqKbADoMuKc75ZK3nzp94vUr7BiY4wHghF9htMMCUxdVJJzRAsN2z0
 ZaOe4O16uF3ssVBYf2PAQvGtmINk3+ai3W1PXHprJK2uzhLDJFDgI1H19
 7kuq8HkJnnQHrTS7a6WhKkZNOjkCOtwG9uq7YV+FaRfoGaHZHB0C4kNVQ
 mm/Jn56l9QabBs1uRFqPf3u+5/j6O5Ij5zUr5KIP3twQdQVsaugdkY9xO
 B0gy7iM5gybLF9uxBQ/Yh5wc0Z9YlEwMQamr4Y85474wk9V/z6GI5DYfB
 3ujI+p5sPD1J2eNhj1U0roZFwplWtC6VjKEU7kZc0YGBC92LW2xJjhFqx Q==;
X-CSE-ConnectionGUID: PC0ZJ6AJSaOumahA0HihVA==
X-CSE-MsgGUID: ZRYYgmk6TSinI84tdU7VIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="39624427"
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="39624427"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 03:29:27 -0700
X-CSE-ConnectionGUID: Ym+6S+AzSAGfEwNjB1jxAg==
X-CSE-MsgGUID: +AraC6GyRjCOTSPN3XLs3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="108326933"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa002.jf.intel.com with ESMTP; 14 Oct 2024 03:29:24 -0700
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org,
	andi.shyti@intel.com
Cc: chris.p.wilson@intel.com, nirmoy.das@intel.com, nitin.r.gote@intel.com,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: [PATCH v3] drm/i915/gt: Retry RING_HEAD reset until it sticks
Date: Mon, 14 Oct 2024 16:18:41 +0530
Message-Id: <20241014104841.2352479-1-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Haswell, in particular, we see an issue where resets fails because
the engine resumes from an incorrect RING_HEAD. Since the RING_HEAD
doesn't point to the remaining requests to re-run, but may instead point
into the uninitialised portion of the ring, the GPU may be then fed
invalid instructions from a privileged context, oft pushing the GPU into
an unrecoverable hang.

If at first the write doesn't succeed, try, try again.

v2: Avoid unnecessary timeout macro (Andi)

v3: Correct comment format (Andi)

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/5432
Testcase: igt/i915_selftest/hangcheck
Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 35 ++++++++++++++++---
 1 file changed, 31 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 72277bc8322e..b5eb1b2915f3 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -192,6 +192,7 @@ static bool stop_ring(struct intel_engine_cs *engine)
 static int xcs_resume(struct intel_engine_cs *engine)
 {
 	struct intel_ring *ring = engine->legacy.ring;
+	ktime_t kt;
 
 	ENGINE_TRACE(engine, "ring:{HEAD:%04x, TAIL:%04x}\n",
 		     ring->head, ring->tail);
@@ -230,9 +231,31 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	set_pp_dir(engine);
 
 	/* First wake the ring up to an empty/idle ring */
-	ENGINE_WRITE_FW(engine, RING_HEAD, ring->head);
+	if (IS_HASWELL(engine->i915)) {
+		/*
+		 * On Haswell, resets fails because engine resumes
+		 * from incorrect RING_HEAD and then GPU may be then
+		 * fed to invalid instrcutions, which may lead to unrecoverable hang.
+		 * So at first write doesn't succeed then try again.
+		 */
+		for ((kt) = ktime_get() + (2 * NSEC_PER_MSEC);
+				ktime_before(ktime_get(), (kt)); cpu_relax()) {
+			ENGINE_WRITE_FW(engine, RING_HEAD, ring->head);
+			if (ENGINE_READ_FW(engine, RING_HEAD) == ring->head)
+				break;
+		}
+	} else {
+		ENGINE_WRITE_FW(engine, RING_HEAD, ring->head);
+	}
+
 	ENGINE_WRITE_FW(engine, RING_TAIL, ring->head);
-	ENGINE_POSTING_READ(engine, RING_TAIL);
+	if (ENGINE_READ_FW(engine, RING_HEAD) != ENGINE_READ_FW(engine, RING_TAIL)) {
+		ENGINE_TRACE(engine, "failed to reset empty ring: [%x, %x]: %x\n",
+			     ENGINE_READ_FW(engine, RING_HEAD),
+			     ENGINE_READ_FW(engine, RING_TAIL),
+			     ring->head);
+		goto err;
+	}
 
 	ENGINE_WRITE_FW(engine, RING_CTL,
 			RING_CTL_SIZE(ring->size) | RING_VALID);
@@ -241,12 +264,16 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	if (__intel_wait_for_register_fw(engine->uncore,
 					 RING_CTL(engine->mmio_base),
 					 RING_VALID, RING_VALID,
-					 5000, 0, NULL))
+					 5000, 0, NULL)) {
+		ENGINE_TRACE(engine, "failed to restart\n");
 		goto err;
+	}
 
-	if (GRAPHICS_VER(engine->i915) > 2)
+	if (GRAPHICS_VER(engine->i915) > 2) {
 		ENGINE_WRITE_FW(engine,
 				RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
+		ENGINE_POSTING_READ(engine, RING_MI_MODE);
+	}
 
 	/* Now awake, let it get started */
 	if (ring->tail != ring->head) {
-- 
2.25.1

