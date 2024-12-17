Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FE99F47BB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:40:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5372910E8BD;
	Tue, 17 Dec 2024 09:40:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HAvRw1bj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5F0210E8BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2024 09:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734428402; x=1765964402;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eXkXtlmeSwzw5qTUkkfSnupC6oV3I8bWtxbUeeUTFTE=;
 b=HAvRw1bjIbF4B2x/W91Iu5ek9KDgd3fMFmZ+9oE7em499XfPGnYpdNyE
 eaiMu7FCedeDR+mw5aMvoI7VFn4meqSn+4TG4uhOYfvTykox/EnQEJCm5
 soQN+eQU+JB/pJs4eV9bqbYxz09GWWgRZVspoxUevilKBpjv1cwX9gR2l
 zacJcyxCpD4anR1xJGZURhyDdJpSpytHsVi7AHjc4KiZR4fAFDsrHzl8Z
 69gMlb8QSWyX6HmFfN7MWAdvYulFplsqPoPFrYzrHQyHE/0DR/Uxh/NtB
 nz6h0RLQGLxgOtZwh19MYkj7zcEEVwkfH1/8W2GDKohuVwTonP+hlHgDn Q==;
X-CSE-ConnectionGUID: L7By/Ru7RxmM1qS31w03jg==
X-CSE-MsgGUID: RqkebRgSRZOTzDFKPD6KEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34136587"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34136587"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:40:01 -0800
X-CSE-ConnectionGUID: oNXSJ2WCTr+BZXld8qTEiQ==
X-CSE-MsgGUID: 4Hvhkw/nQ2yjKnpCCeRasg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="128461931"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa001.fm.intel.com with ESMTP; 17 Dec 2024 01:39:59 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: andi.shyti@intel.com
Cc: matthew.d.roper@intel.com, tursulin@ursulin.net,
 intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com,
 nirmoy.das@intel.com, nitin.r.gote@intel.com
Subject: [PATCH v3] drm/i915/gt: Use ENGINE_TRACE for tracing.
Date: Tue, 17 Dec 2024 15:30:58 +0530
Message-Id: <20241217100058.2819053-1-nitin.r.gote@intel.com>
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

Instead of drm_err(), prefer gt_err() and ENGINE_TRACE()
for GEM tracing in i915. So, it will be good to use ENGINE_TRACE()
over drm_err() drm_device based logging for engine debug log.

v2: Bit more specific in commit description (Andi)

v3: Use gt_err() along with ENGINE_TRACE() in place of drm_err() (Andi)

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 21 ++++++++++---------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 32f3b52a183a..1993e4874df0 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -26,6 +26,7 @@
 #include "shmem_utils.h"
 #include "intel_engine_heartbeat.h"
 #include "intel_engine_pm.h"
+#include "intel_gt_print.h"
 
 /* Rough estimate of the typical request size, performing a flush,
  * set-context and then emitting the batch.
@@ -282,16 +283,16 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	return 0;
 
 err:
-	drm_err(&engine->i915->drm,
-		"%s initialization failed; "
-		"ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
-		engine->name,
-		ENGINE_READ(engine, RING_CTL),
-		ENGINE_READ(engine, RING_CTL) & RING_VALID,
-		ENGINE_READ(engine, RING_HEAD), ring->head,
-		ENGINE_READ(engine, RING_TAIL), ring->tail,
-		ENGINE_READ(engine, RING_START),
-		i915_ggtt_offset(ring->vma));
+	gt_err(engine->gt, "%s initialization failed\n", engine->name);
+	ENGINE_TRACE(engine,
+		     "ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
+		     ENGINE_READ(engine, RING_CTL),
+		     ENGINE_READ(engine, RING_CTL) & RING_VALID,
+		     ENGINE_READ(engine, RING_HEAD), ring->head,
+		     ENGINE_READ(engine, RING_TAIL), ring->tail,
+		     ENGINE_READ(engine, RING_START),
+		     i915_ggtt_offset(ring->vma));
+	GEM_TRACE_DUMP();
 	return -EIO;
 }
 
-- 
2.25.1

