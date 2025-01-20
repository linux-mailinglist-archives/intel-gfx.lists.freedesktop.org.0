Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0236A167B2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 08:53:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644D310E35B;
	Mon, 20 Jan 2025 07:53:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bkWE7uSk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02D0710E359
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737359634; x=1768895634;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gsHQfDg8K78HpdZz9z9y34murE20PzbkuWYrME9QROA=;
 b=bkWE7uSkDGHh7KtIV1LfJq5V32+smwYk7bKPfDCmE78tXabYIbYPeRtT
 AUX6juZfz8AOX5h5W0UitPR5zaKqJu8uIC2ChFwtYcsqX2oMLixuFi4Uw
 J1nAzl+vXc7d2URcDjVe3zop0QnEg0M9kJnnSuZw2WZ1nrp8OZIwajYdx
 4+hCmqT51Ks4aecypEX4mxyPV7QlwtR3w7HKpz+6CGBY0xXrAJ4zPIMgg
 RoMPlN20qyAVwWZ9y+fUg3J6yLr2LSVFfvKZ4GKAfVhsa7GYe4Ny7yq2o
 38FdzLNUd0qyZq/G3EQc1sOxvHsKYTYASijOmVtZFWEY2WUrst/MGUlzH A==;
X-CSE-ConnectionGUID: IDCkjA/dS2+OCvnP7Hr/OA==
X-CSE-MsgGUID: 8tXTl9QvS/eu4Lk8kGyh3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="25325812"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="25325812"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 23:53:54 -0800
X-CSE-ConnectionGUID: 1kHPPP3bS+qWuno7m7xfIA==
X-CSE-MsgGUID: UWiXHbnFQ6OMKzOk7ck6ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="137317991"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa001.fm.intel.com with ESMTP; 19 Jan 2025 23:53:51 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: krzysztof.niemiec@intel.com
Cc: andi.shyti@intel.com, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org, nitin.r.gote@intel.com
Subject: [PATCH v4 5/8] drm/i915/selftests: fix typos in i915/selftests files
Date: Mon, 20 Jan 2025 13:45:14 +0530
Message-Id: <20250120081517.3237326-6-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250120081517.3237326-1-nitin.r.gote@intel.com>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
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

v2: Fix commenting style <Andi>

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem.c     |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 21 ++++++++++++-------
 drivers/gpu/drm/i915/selftests/i915_vma.c     | 15 ++++++++-----
 3 files changed, 24 insertions(+), 14 deletions(-)

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
index 5c397a2df70e..5816d515203a 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -287,7 +287,8 @@ static int lowlevel_hole(struct i915_address_space *vm,
 		GEM_BUG_ON(count * BIT_ULL(aligned_size) > vm->total);
 		GEM_BUG_ON(hole_start + count * BIT_ULL(aligned_size) > hole_end);
 
-		/* Ignore allocation failures (i.e. don't report them as
+		/*
+		 * Ignore allocation failures (i.e. don't report them as
 		 * a test failure) as we are purposefully allocating very
 		 * large objects without checking that we have sufficient
 		 * memory. We expect to hit -ENOMEM.
@@ -446,7 +447,8 @@ static int fill_hole(struct i915_address_space *vm,
 
 			list_add(&obj->st_link, &objects);
 
-			/* Align differing sized objects against the edges, and
+			/*
+			 * Align differing sized objects against the edges, and
 			 * check we don't walk off into the void when binding
 			 * them into the GTT.
 			 */
@@ -831,7 +833,8 @@ static int drunk_hole(struct i915_address_space *vm,
 			return -ENOMEM;
 		GEM_BUG_ON(!order);
 
-		/* Ignore allocation failures (i.e. don't report them as
+		/*
+		 * Ignore allocation failures (i.e. don't report them as
 		 * a test failure) as we are purposefully allocating very
 		 * large objects without checking that we have sufficient
 		 * memory. We expect to hit -ENOMEM.
@@ -964,7 +967,7 @@ static int __shrink_hole(struct i915_address_space *vm,
 			break;
 
 		if (igt_timeout(end_time,
-				"%s timed out at ofset %llx [%llx - %llx]\n",
+				"%s timed out at offset %llx [%llx - %llx]\n",
 				__func__, addr, hole_start, hole_end)) {
 			err = -EINTR;
 			break;
@@ -1011,7 +1014,7 @@ static int shrink_boom(struct i915_address_space *vm,
 	/*
 	 * Catch the case which shrink_hole seems to miss. The setup here
 	 * requires invoking the shrinker as we do the alloc_pt/alloc_pd, while
-	 * ensuring that all vma assiocated with the respective pd/pdp are
+	 * ensuring that all vma associated with the respective pd/pdp are
 	 * unpinned at the time.
 	 */
 
@@ -1537,9 +1540,10 @@ static int igt_gtt_reserve(void *arg)
 	u64 total;
 	int err = -ENODEV;
 
-	/* i915_gem_gtt_reserve() tries to reserve the precise range
+	/*
+	 * i915_gem_gtt_reserve() tries to reserve the precise range
 	 * for the node, and evicts if it has to. So our test checks that
-	 * it can give us the requsted space and prevent overlaps.
+	 * it can give us the requested space and prevent overlaps.
 	 */
 
 	/* Start by filling the GGTT */
@@ -1743,7 +1747,8 @@ static int igt_gtt_insert(void *arg)
 	u64 total;
 	int err = -ENODEV;
 
-	/* i915_gem_gtt_insert() tries to allocate some free space in the GTT
+	/*
+	 * i915_gem_gtt_insert() tries to allocate some free space in the GTT
 	 * to the node, evicting if required.
 	 */
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 71b52d5efef4..7c4111e60f2e 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -159,7 +159,8 @@ static int igt_vma_create(void *arg)
 	LIST_HEAD(objects);
 	int err = -ENOMEM;
 
-	/* Exercise creating many vma amonst many objections, checking the
+	/*
+	 * Exercise creating many vma amongst many objections, checking the
 	 * vma creation and lookup routines.
 	 */
 
@@ -292,7 +293,8 @@ static int igt_vma_pin1(void *arg)
 		VALID(8192, PIN_GLOBAL | PIN_OFFSET_BIAS | (ggtt->mappable_end - 4096)),
 
 #if !IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
-		/* Misusing BIAS is a programming error (it is not controllable
+		/*
+		 * Misusing BIAS is a programming error (it is not controllable
 		 * from userspace) so when debugging is enabled, it explodes.
 		 * However, the tests are still quite interesting for checking
 		 * variable start, end and size.
@@ -312,7 +314,8 @@ static int igt_vma_pin1(void *arg)
 	struct i915_vma *vma;
 	int err = -EINVAL;
 
-	/* Exercise all the weird and wonderful i915_vma_pin requests,
+	/*
+	 * Exercise all the weird and wonderful i915_vma_pin requests,
 	 * focusing on error handling of boundary conditions.
 	 */
 
@@ -577,7 +580,8 @@ static int igt_vma_rotate_remap(void *arg)
 	const unsigned int max_pages = 64;
 	int err = -ENOMEM;
 
-	/* Create VMA for many different combinations of planes and check
+	/*
+	 * Create VMA for many different combinations of planes and check
 	 * that the page layout within the rotated VMA match our expectations.
 	 */
 
@@ -804,7 +808,8 @@ static int igt_vma_partial(void *arg)
 	struct i915_vma *vma;
 	int err = -ENOMEM;
 
-	/* Create lots of different VMA for the object and check that
+	/*
+	 * Create lots of different VMA for the object and check that
 	 * we are returned the same VMA when we later request the same range.
 	 */
 
-- 
2.25.1

