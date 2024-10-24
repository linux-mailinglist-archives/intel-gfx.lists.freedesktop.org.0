Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E429AE25C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 12:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC12710E271;
	Thu, 24 Oct 2024 10:19:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="llp+xo6i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 057D610E271
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 10:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729765180; x=1761301180;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QziPRILa3cWoImnSnXVPurRWiuEnDmTh+YDm75VOQvI=;
 b=llp+xo6iY+OS+2nhzahFnrr0nRwCX2mIngaS3C+80v/TpOpVM3oqF4uy
 vbjrC+BaEZ4Os87XzE1MeQElm3dhK28999qS/w2HXaGlU6NmwBy9zFSom
 u+WC+TuVepMTtYdKCX4jKy7xpa+Ni6i3d1mvhJobJ+xkuup55cXSQAOiO
 wcmJY5cMPY178e5h3yJygZtYzwC37qDHSVbh9x3wnhUGtKYcFPT8Jf/Wk
 TsUCKaALsgiHJbpqAN6twrGgDkMpJC1VnltTmVy61TxwLzJOtkt7kmDUB
 AzTKvTKp0vrsDbXqAw5XYKtP1/3cVeTWtTT0IXr8vurabG+1womUWwhZ1 g==;
X-CSE-ConnectionGUID: Lk9IMRISTaaNRI31fnvY6Q==
X-CSE-MsgGUID: 2zCxbSveRBi9vMmOcBPU3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29315405"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29315405"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:19:39 -0700
X-CSE-ConnectionGUID: XtY3qGUHS861xLPDu73VtA==
X-CSE-MsgGUID: 4kFIWI+zQ/KqWO9tExTPCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80639999"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa008.fm.intel.com with ESMTP; 24 Oct 2024 03:19:37 -0700
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org,
	andi.shyti@intel.com
Cc: chris.p.wilson@intel.com, nirmoy.das@intel.com,
 Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH v2] drm/i915/gt: Use ENGINE_TRACE for tracing.
Date: Thu, 24 Oct 2024 16:09:17 +0530
Message-Id: <20241024103917.3231206-1-nitin.r.gote@intel.com>
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

There is ENGINE_TRACE() macro which introduce engine name
with GEM tracing in i915. So, it will be good to use ENGINE_TRACE()
over drm_err() drm_device based logging for engine debug log.

v2: Bit more specific in commit description (Andi)

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 32f3b52a183a..74d6a2b703ac 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -282,16 +282,16 @@ static int xcs_resume(struct intel_engine_cs *engine)
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
+	ENGINE_TRACE(engine,
+		     "initialization failed; "
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

