Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 415F25928CB
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 06:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 311D710FB1C;
	Mon, 15 Aug 2022 04:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00E3A972E1
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 04:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660537837; x=1692073837;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ytL4sVavHvONtdGRYK8uNRcnUWInOTfubW+FJOM/rvg=;
 b=FUtowgtyxlGwFJ+RUbt6z6IVuXeENUnSQ26ZugIsILZB3yD+8TDiHl0s
 Eq3pLn3DnK7B8T6txtO7CCnp4I/TCCIXgouT1H4Ix/obP8LuzfZ3jxHMB
 cE+hBUq4RrtUITia27179o2gCrykmqVZnzSXDhJOJIPeyoKn09dlewvVi
 TBQFSmSw1KPConXPfs6si/SUMJGYdsFmLpvXD2zYfWkNUsnVGcEppFcbG
 sP8E7ctZxb7UZMHzCkGiXir1I3Hx3hz2bvyblk8tBSrGc18LcKB1W02oE
 4hXd5TtSChu0wePolNxKwgBy7WqXe10eWuW8nYhf/Am9jaPXXrJosDc8y Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10439"; a="274943008"
X-IronPort-AV: E=Sophos;i="5.93,237,1654585200"; d="scan'208";a="274943008"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2022 21:30:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,237,1654585200"; d="scan'208";a="582752633"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 14 Aug 2022 21:30:36 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 14 Aug 2022 21:31:56 -0700
Message-Id: <20220815043157.1506623-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220815043157.1506623-1-alan.previn.teres.alexis@intel.com>
References: <20220815043157.1506623-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx v4 1/2] drm/i915/selftests: Use correct
 selfest calls for live tests
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

From: Matthew Brost <matthew.brost@intel.com>

This will help in an upcoming patch where the live selftest wrappers
are extended to do more.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c | 2 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c    | 2 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c      | 2 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c    | 2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c           | 2 +-
 drivers/gpu/drm/i915/selftests/i915_perf.c              | 2 +-
 drivers/gpu/drm/i915/selftests/i915_request.c           | 2 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c               | 2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 13b088cc787e..a666d7e610f5 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -434,5 +434,5 @@ int i915_gem_coherency_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_gem_coherency),
 	};
 
-	return i915_subtests(tests, i915);
+	return i915_live_subtests(tests, i915);
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
index 62c61af77a42..51ed824b020c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
@@ -476,5 +476,5 @@ int i915_gem_dmabuf_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_dmabuf_import_same_driver_lmem_smem),
 	};
 
-	return i915_subtests(tests, i915);
+	return i915_live_subtests(tests, i915);
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 3ced9948a331..3cff08f04f6c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1844,5 +1844,5 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_mmap_gpu),
 	};
 
-	return i915_subtests(tests, i915);
+	return i915_live_subtests(tests, i915);
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
index fe0a890775e2..bdf5bb40ccf1 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
@@ -95,5 +95,5 @@ int i915_gem_object_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_gem_huge),
 	};
 
-	return i915_subtests(tests, i915);
+	return i915_live_subtests(tests, i915);
 }
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index ab9f17fc85bc..fb5e61963479 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -2324,5 +2324,5 @@ int i915_gem_gtt_live_selftests(struct drm_i915_private *i915)
 
 	GEM_BUG_ON(offset_in_page(to_gt(i915)->ggtt->vm.total));
 
-	return i915_subtests(tests, i915);
+	return i915_live_subtests(tests, i915);
 }
diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
index 88db2e3d81d0..429c6d73b159 100644
--- a/drivers/gpu/drm/i915/selftests/i915_perf.c
+++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
@@ -431,7 +431,7 @@ int i915_perf_live_selftests(struct drm_i915_private *i915)
 	if (err)
 		return err;
 
-	err = i915_subtests(tests, i915);
+	err = i915_live_subtests(tests, i915);
 
 	destroy_empty_config(&i915->perf);
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index ec05f578a698..818a4909c1f3 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1821,7 +1821,7 @@ int i915_request_live_selftests(struct drm_i915_private *i915)
 	if (intel_gt_is_wedged(to_gt(i915)))
 		return 0;
 
-	return i915_subtests(tests, i915);
+	return i915_live_subtests(tests, i915);
 }
 
 static int switch_to_kernel_sync(struct intel_context *ce, int err)
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index 6921ba128015..e3821398a5b0 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -1103,5 +1103,5 @@ int i915_vma_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_vma_remapped_gtt),
 	};
 
-	return i915_subtests(tests, i915);
+	return i915_live_subtests(tests, i915);
 }
-- 
2.25.1

