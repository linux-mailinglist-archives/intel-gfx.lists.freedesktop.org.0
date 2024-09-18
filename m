Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8261997BFC1
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A3C10E5FF;
	Wed, 18 Sep 2024 17:36:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JaJg9WHa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A73510E5FF;
 Wed, 18 Sep 2024 17:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726680977; x=1758216977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SwxD8pZNKaETy/NOwkxlbhBThuXJGHcD6ewLScvnJxU=;
 b=JaJg9WHa03x9oJYwDkrPwmdYT0hUxjwW9RbyqKxWKPKgzyDs8xMvZTiu
 HT6a3Gfp9+677yUZE+j67qRD0rVYqCzkknnvTgAr2Kmd0fH0hD/nWJf0d
 kmJt+P728TsVfbrFV6uLt454g5AiSGJAu8JelFMTBc3P3s56O3oTj5aJB
 q5Wp5iJduMIK7JmiFHHhz7J3lyPTwlUYYo0/hm7IfjDhNV2YcoUVUyJol
 BwRZki+zjgdQnjMCs+wayJZIwa7L2tEWwdcWEJKaUaC+n5cGUwFd/NcWb
 q8lvrj1+59dthL7WbpFfxuWuhGx6HjhLaY7ZtPcyBUS6W2ImY+IHMre5v w==;
X-CSE-ConnectionGUID: 8CrEQBX4Q8+O8FiUf9etWA==
X-CSE-MsgGUID: ky72m4xlTXSZ9BxYUpXElA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25704125"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25704125"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:36:17 -0700
X-CSE-ConnectionGUID: jxuubXLbTVC1fD2/2bdg9g==
X-CSE-MsgGUID: SPCxOlvKRM+hO1YPb7dAzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="107102689"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:36:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 4/6] drm/i915/gt: add a macro for mock gt wakeref special
 value and use it
Date: Wed, 18 Sep 2024 20:35:46 +0300
Message-Id: <1da887a6b4fe1ec45355571ea7b56d91fadf0af2.1726680898.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726680898.git.jani.nikula@intel.com>
References: <cover.1726680898.git.jani.nikula@intel.com>
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

