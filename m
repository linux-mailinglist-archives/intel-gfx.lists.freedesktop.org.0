Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F23C55BE83
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 07:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 562C41139C1;
	Tue, 28 Jun 2022 05:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 353471139B0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jun 2022 05:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656395448; x=1687931448;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UDO1sK+KVa8zZpOVJkveyrafXT6sVdEZOQl7bGj534U=;
 b=kMiX7f0k4uJny5iCZv5xx+1Xt1OBnAwVGueTgMhT9sPcap8Jd5jvYvKk
 9F8Gy43p4jBQNUVJeL46u7Hy7MAcOgcMzztocvGMzerbOumdMAeFGGeKc
 f1vcTG0bXkPsjrjuyNUw6MfYff1nnDbRy0oCNm5REFdeeMcTqKwIc5/WO
 PHHXiItxiyRz9MjenN2lEXEXqn4Oay8URkgq3v9Yrtn9FuG0/PTLiWTlR
 0CiY+DBKIvmixTQJmXptlm4El38aif3QDraRVJqvP9HwiM49HmNKxeYmJ
 T9bCRumncqwj675SO2mIKXZyAli5Tnt85ybyL3N2054yWMUtFEl5Jt4n0 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="282733268"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="282733268"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 22:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="657993728"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga004.fm.intel.com with ESMTP; 27 Jun 2022 22:50:47 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jun 2022 22:51:29 -0700
Message-Id: <20220628055130.1117146-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220628055130.1117146-1-alan.previn.teres.alexis@intel.com>
References: <20220628055130.1117146-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 1/2] drm/i915/selftests: Use correct selfest
 calls for live tests
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
index 5bc93a1ce3e3..f705e2b5c082 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1761,5 +1761,5 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
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
index 8633bec18fa7..5813dbe929de 100644
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
index c56a0c2cd2f7..b0d2fe119561 100644
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

