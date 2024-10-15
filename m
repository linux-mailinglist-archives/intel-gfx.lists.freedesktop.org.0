Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CB699EFB9
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 16:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9524910E593;
	Tue, 15 Oct 2024 14:37:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i94XwfGw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9543610E596
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 14:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729003062; x=1760539062;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pz7VwfVksOb6/gxybY/Egti4qnK0neyHVFdvb7BEDdQ=;
 b=i94XwfGwaWRz8F3VgGftklgfqIKm6Ss4cs4zzXeOH+NE1bbU6P9jN8mz
 jGIvdQbOI9DFSpXf5lmPdsIzzf2WoLKjkBRl4hv1V2Uju/Jovlr/u5hQy
 gUwI/8I+b8twwVSop7WCqeUSiFUUL/GC28hODyiLJINZD9siSKhbHGFGz
 Slpkf2AV2Jt8mT6m2WPBmtGPHGoBOb71/5pVrHG/4NXNMH8bLoB/l1PaL
 NPsyi81pYw5T82NFo1DnclJq/uPeAfAnWq4uLx7eAwFxrTTUhZaZsJp4g
 qJJooOR/evfetPN/2p5Ilel5dYwEZbqMSWvXkDtHh3brF6F4GDp5V+8dU A==;
X-CSE-ConnectionGUID: UtxOfwimThCkdkyskt6KBQ==
X-CSE-MsgGUID: UQtAqXu7STqGNg+tN95weg==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="16024033"
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="16024033"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 07:37:42 -0700
X-CSE-ConnectionGUID: h9uSxQFeRHGy5Gu2CujsUA==
X-CSE-MsgGUID: COy3qZpUTWS2LMPcsA7WcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="82568024"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa004.fm.intel.com with ESMTP; 15 Oct 2024 07:37:39 -0700
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org,
	andi.shyti@intel.com
Cc: chris.p.wilson@intel.com, nirmoy.das@intel.com, nitin.r.gote@intel.com,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: [PATCH v4] drm/i915/gt: Retry RING_HEAD reset until it get sticks
Date: Tue, 15 Oct 2024 20:27:10 +0530
Message-Id: <20241015145710.2478599-1-nitin.r.gote@intel.com>
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

we see an issue where resets fails because the engine resumes
from an incorrect RING_HEAD. Since the RING_HEAD doesn't point
to the remaining requests to re-run, but may instead point into
the uninitialised portion of the ring, the GPU may be then fed
invalid instructions from a privileged context, oft pushing the
GPU into an unrecoverable hang.

If at first the write doesn't succeed, try, try again.

v2: Avoid unnecessary timeout macro (Andi)

v3: Correct comment format (Andi)

v4: Make it generic for all platform as it won't impact (Chris)

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/5432
Testcase: igt/i915_selftest/hangcheck
Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 31 ++++++++++++++++---
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 72277bc8322e..b6b25fe22cb8 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -192,6 +192,7 @@ static bool stop_ring(struct intel_engine_cs *engine)
 static int xcs_resume(struct intel_engine_cs *engine)
 {
 	struct intel_ring *ring = engine->legacy.ring;
+	ktime_t kt;
 
 	ENGINE_TRACE(engine, "ring:{HEAD:%04x, TAIL:%04x}\n",
 		     ring->head, ring->tail);
@@ -230,9 +231,27 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	set_pp_dir(engine);
 
 	/* First wake the ring up to an empty/idle ring */
-	ENGINE_WRITE_FW(engine, RING_HEAD, ring->head);
+	for ((kt) = ktime_get() + (2 * NSEC_PER_MSEC);
+			ktime_before(ktime_get(), (kt)); cpu_relax()) {
+		/*
+		 * In case of resets fails because engine resumes from
+		 * incorrect RING_HEAD and then GPU may be then fed
+		 * to invalid instrcutions, which may lead to unrecoverable
+		 * hang. So at first write doesn't succeed then try again.
+		 */
+		ENGINE_WRITE_FW(engine, RING_HEAD, ring->head);
+		if (ENGINE_READ_FW(engine, RING_HEAD) == ring->head)
+			break;
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
@@ -241,12 +260,16 @@ static int xcs_resume(struct intel_engine_cs *engine)
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

