Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 151F3A022AF
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 11:09:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A607D10E603;
	Mon,  6 Jan 2025 10:09:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SqwLVV2T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0516710E603
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2025 10:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736158171; x=1767694171;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M1McjProI/UQo28m4YXGglgyB0wzDpmLdDBhzImn/zo=;
 b=SqwLVV2TqPVhd7s9BV1f5PtqCPlE6W16h0syvGKh2KxWYyc31vux625z
 c6N8OAyNHqzfL2RBAcds0gElD54/BzG1Uj1EY0I2aoPacgbwGuUW3avHL
 6JB9MeOMEGcrN1MNfSGrdYmHdYUAikBs8yPxEA/lisMGW4/nF6GCCWzb+
 ZLCo5k4OW9mi46EYRznpRg9rLmF754iXUi9dTEQ3dpB8rB2/M+Q3dGqm9
 VvkLoo+3OO+j/FloLSKRxFKnWaneidQc3GQQ8IiF21balTQwqeGZooSPj
 wwdmcTHW6Auwhwwh9IkklL7DTR8J5DbBPAJE5de4X3TasB9uuaKwaH+43 A==;
X-CSE-ConnectionGUID: Jf3r7MK7QXuju2BAm6GJsg==
X-CSE-MsgGUID: xpBg6mbjSIqCEUX6eS3x3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11306"; a="36459655"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="36459655"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 02:09:31 -0800
X-CSE-ConnectionGUID: +B2axD/JT5a7y8yx1cCLwQ==
X-CSE-MsgGUID: 7kR3le1HTqKinkMr06Ixsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="107370491"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa004.jf.intel.com with ESMTP; 06 Jan 2025 02:09:29 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com,
	Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH v1 5/8] drm/i915/selftests: fix typos in i915/selftests files
Date: Mon,  6 Jan 2025 16:00:34 +0530
Message-Id: <20250106103037.1401847-6-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250106103037.1401847-1-nitin.r.gote@intel.com>
References: <20250106103037.1401847-1-nitin.r.gote@intel.com>
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

Fix all typos in files under drm/i915/selftests reported by codespell tool.

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem.c     | 2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 6 +++---
 drivers/gpu/drm/i915/selftests/i915_vma.c     | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
index 0727492576be..e817d233df61 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -80,7 +80,7 @@ static void simulate_hibernate(struct drm_i915_private *i915)
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	/*
-	 * As a final sting in the tail, invalidate stolen. Under a real S4,
+	 * As a final string in the tail, invalidate stolen. Under a real S4,
 	 * stolen is lost and needs to be refilled on resume. However, under
 	 * CI we merely do S4-device testing (as full S4 is too unreliable
 	 * for automated testing across a cluster), so to simulate the effect
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 5c397a2df70e..e19fdf12436c 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -964,7 +964,7 @@ static int __shrink_hole(struct i915_address_space *vm,
 			break;
 
 		if (igt_timeout(end_time,
-				"%s timed out at ofset %llx [%llx - %llx]\n",
+				"%s timed out at offset %llx [%llx - %llx]\n",
 				__func__, addr, hole_start, hole_end)) {
 			err = -EINTR;
 			break;
@@ -1011,7 +1011,7 @@ static int shrink_boom(struct i915_address_space *vm,
 	/*
 	 * Catch the case which shrink_hole seems to miss. The setup here
 	 * requires invoking the shrinker as we do the alloc_pt/alloc_pd, while
-	 * ensuring that all vma assiocated with the respective pd/pdp are
+	 * ensuring that all vma associated with the respective pd/pdp are
 	 * unpinned at the time.
 	 */
 
@@ -1539,7 +1539,7 @@ static int igt_gtt_reserve(void *arg)
 
 	/* i915_gem_gtt_reserve() tries to reserve the precise range
 	 * for the node, and evicts if it has to. So our test checks that
-	 * it can give us the requsted space and prevent overlaps.
+	 * it can give us the requested space and prevent overlaps.
 	 */
 
 	/* Start by filling the GGTT */
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 71b52d5efef4..79fff5ec9082 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -159,7 +159,7 @@ static int igt_vma_create(void *arg)
 	LIST_HEAD(objects);
 	int err = -ENOMEM;
 
-	/* Exercise creating many vma amonst many objections, checking the
+	/* Exercise creating many vma amongst many objections, checking the
 	 * vma creation and lookup routines.
 	 */
 
-- 
2.25.1

