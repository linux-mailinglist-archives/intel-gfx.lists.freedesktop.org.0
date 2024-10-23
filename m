Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF079ABEB8
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2843510E366;
	Wed, 23 Oct 2024 06:28:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JaFZBu+8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B69D10E366
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 06:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729664930; x=1761200930;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9V+Ebh4XR8AukGnk0MAauLyrgwu9qdrZAh/KmMJv5Yg=;
 b=JaFZBu+81pW0GHjdb+JDccFtHfdpThPKotZglRPBZditKLaAbxu29Hiw
 otXDJUBubFAka0N3YrKSCZDvaZtHx3Dz0g+Ks7WbEQPaj0CKmyqNwO8X8
 dqUD/VFFNRFaU7JjYbYHHvNcduUWRpK+8dYlikt2lNjQIk5ow1+2Ye96R
 IbTHTiVGvAEE0piR6wVBVggRrQV8Z5Kqvvm6DAnJATDRjwnavzK0cIFgE
 BOCmOqxf3PjPifFOpvja27dx7oMuvROBvfaS7Lho6vlBZCsnkbs39Sqh4
 k1LBprtQL5gznz+0UINbJiS61jjixcQdZRehVBPMQd8BYGgeTdI9V6EnJ A==;
X-CSE-ConnectionGUID: uH71VFE7TrKlD9+B6dhpDg==
X-CSE-MsgGUID: OPQXtBROT7abKnxE8gWQcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29171844"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29171844"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:28:49 -0700
X-CSE-ConnectionGUID: 30USmzsmSCaI7HjPJUicFg==
X-CSE-MsgGUID: 08ZdmueJQN+tMQorm1oK+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84074338"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa003.fm.intel.com with ESMTP; 22 Oct 2024 23:28:47 -0700
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com, chris.p.wilson@intel.com, nirmoy.das@intel.com,
 Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH v1] drm/i915/gt: Use ENGINE_TRACE for tracing.
Date: Wed, 23 Oct 2024 12:18:29 +0530
Message-Id: <20241023064829.3048622-1-nitin.r.gote@intel.com>
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

Instead of drm_err(), use ENGINE_TRACE for tracing.

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

