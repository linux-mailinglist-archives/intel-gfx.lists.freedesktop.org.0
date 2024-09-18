Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1D097BB7A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 13:18:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F035F10E57F;
	Wed, 18 Sep 2024 11:18:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z8YCFKhT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB5210E1D0;
 Wed, 18 Sep 2024 11:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726658291; x=1758194291;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SwxD8pZNKaETy/NOwkxlbhBThuXJGHcD6ewLScvnJxU=;
 b=Z8YCFKhTzah9DSwl+jrtDW0DXbQo4Oz7FbiVIBqJS5JixRM7kDKNsh6v
 d/z3ucVjDhsH2ub4GTIINEMF6i0PJlTyYQYVCjamgfgLF4w2DnTgCNpSb
 UDFji55oC303+G86lkk5xf0nZO212OInx1/c5ybq7/utxEY5F3IJk6ZUD
 HRHKfNsPznq1dknM5GGwEQ5v+3rblRJRmjqr7ImgZDNwrbEoRMZZ0HfYG
 cK5uVbbRX5gMgxpFS58TNdyOwUeWDhDMMecq3UcF2QkCADKAAqGdOwQB4
 nhQTi96c+TwGuBnxvxmW/RT+/q1ZZF0UVfAC1AAfSpZeMcGpZcnsiWYmK w==;
X-CSE-ConnectionGUID: V6FfVvbhQK2/hShP6xkivg==
X-CSE-MsgGUID: 0NBgFwpuTYeJSduOUgXIDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25048954"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="25048954"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 04:18:11 -0700
X-CSE-ConnectionGUID: mFgXb4BjRnCVjy4vLznmkQ==
X-CSE-MsgGUID: 6XVFkuPyTEe0VFaVMTSBGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="69839506"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 04:18:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915/gt: add a macro for mock gt wakeref special
 value and use it
Date: Wed, 18 Sep 2024 14:17:46 +0300
Message-Id: <a8ab747b0f03d650ffc0bdedd2263a15017b9ac1.1726658138.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726658138.git.jani.nikula@intel.com>
References: <cover.1726658138.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add a dedicated macro for the special mock gt wakeref value, with a cast
to intel_wakeref_t, instead of assuming you can assign or compare the
wakeref to -ENODEV directly.

Arguably the whole thing is a hack that should not exist, but at least
make it slightly less hacky.

Side note: If this value were to ever end up in
intel_ref_tracker_free(), it would wreak havoc.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.h            | 6 +++++-
 drivers/gpu/drm/i915/gt/intel_tlb.c              | 2 +-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 +-
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
index 911fd0160221..fef8d5d288f8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
@@ -105,9 +105,13 @@ int intel_gt_runtime_resume(struct intel_gt *gt);
 
 ktime_t intel_gt_get_awake_time(const struct intel_gt *gt);
 
+#define INTEL_WAKEREF_MOCK_GT ((intel_wakeref_t)-ENODEV)
+
 static inline bool is_mock_gt(const struct intel_gt *gt)
 {
-	return I915_SELFTEST_ONLY(gt->awake == -ENODEV);
+	BUILD_BUG_ON(INTEL_WAKEREF_DEF == INTEL_WAKEREF_MOCK_GT);
+
+	return I915_SELFTEST_ONLY(gt->awake == INTEL_WAKEREF_MOCK_GT);
 }
 
 #endif /* INTEL_GT_PM_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
index 756e9ebbc725..2487768bc230 100644
--- a/drivers/gpu/drm/i915/gt/intel_tlb.c
+++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
@@ -122,7 +122,7 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
 {
 	intel_wakeref_t wakeref;
 
-	if (I915_SELFTEST_ONLY(gt->awake == -ENODEV))
+	if (is_mock_gt(gt))
 		return;
 
 	if (intel_gt_is_wedged(gt))
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 70f3d7bf47d0..ae57eb03dfca 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -203,7 +203,7 @@ struct drm_i915_private *mock_gem_device(void)
 	intel_root_gt_init_early(i915);
 	mock_uncore_init(&i915->uncore, i915);
 	atomic_inc(&to_gt(i915)->wakeref.count); /* disable; no hw support */
-	to_gt(i915)->awake = -ENODEV;
+	to_gt(i915)->awake = INTEL_WAKEREF_MOCK_GT;
 	mock_gt_probe(i915);
 
 	ret = intel_region_ttm_device_init(i915);
-- 
2.39.2

