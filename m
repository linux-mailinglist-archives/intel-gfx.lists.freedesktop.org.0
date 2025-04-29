Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D597AA0AAD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 13:51:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 302B210E423;
	Tue, 29 Apr 2025 11:51:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="muiaagqJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60AD010E306
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Apr 2025 11:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745927462; x=1777463462;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iu7I3SfIgA3+EFENNL5zFpBD0lmwRby4THar1ZnJI2k=;
 b=muiaagqJAGJKqdjorQcWynBKP2beJko/BM6a9jp/YqoX2AcxWu7GAVu0
 zB25/RG9KWbROSpeJzRJOWKHiSzKcPo8UM4UF7+MIqQIoLBJz9tRPykbH
 6Ijk9H9YHk3exdktywd/0+qS6/Xe3UY3w0UzdEzkBYLb2fXGppO64aDG8
 hYevPw+eh99s5YQLsUER2x8EiC2/28WH0RgrPnYU2vw7C9LsO9tqJqYaY
 HechJOoQO6HcfH22Ek/+5V6dSu7iSfqkMp2YdguYc5g6CO/55Ju+xZ21T
 pNEqwfKjc0oydjF7PdO2vQk1llMYumOdxdXekkmDxcSkP0Bx5RKCqtLVj w==;
X-CSE-ConnectionGUID: nTUq50SLSaOCFPeU7RvQcA==
X-CSE-MsgGUID: yc5nHFDOR7OqGaH2HLJiwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="72919621"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="72919621"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 04:51:02 -0700
X-CSE-ConnectionGUID: r8PA9q5QT1unz5SLwgZFPQ==
X-CSE-MsgGUID: S8CSXEzaSkGscjkcJQC96g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="157034868"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.9])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 04:50:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: [PATCH] drm/i915/error: drop dmesg suggestion to file bugs on GPU
 hangs
Date: Tue, 29 Apr 2025 14:50:55 +0300
Message-Id: <20250429115055.2133143-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We haven't updated the DRIVER_TIMESTAMP since commit 3570bd989acc
("drm/i915: Update DRIVER_DATE to 20230929") 1½ years ago. Before then,
the previous update was commit 139caf7ca286 ("drm/i915: Update
DRIVER_DATE to 20201103") 4+ years ago. The DRIVER_DATE has also been
removed altogether.

We've used the DRIVER_TIMESTAMP to log suggestions to file bugs on GPU
hangs when they happen on a driver less than six months old. Combined
with the sporadic DRIVER_TIMESTAMP updates, we really haven't logged the
suggestions for years.

Just stop logging the suggestion to file bugs altogether, and remove
DRIVER_TIMESTAMP. This doesn't really change anything wrt to logging GPU
errors or how we handle bugs. And effectively we already stopped logging
the message a year ago when we stopped updating DRIVER_TIMESTAMP.

Instead, add an unconditional message about the GPU error state
location.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.h    |  1 -
 drivers/gpu/drm/i915/i915_gpu_error.c | 13 ++-----------
 2 files changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i915_driver.h
index 4b67ad9a61cd..1e95ecb2a163 100644
--- a/drivers/gpu/drm/i915/i915_driver.h
+++ b/drivers/gpu/drm/i915/i915_driver.h
@@ -15,7 +15,6 @@ struct drm_printer;
 
 #define DRIVER_NAME		"i915"
 #define DRIVER_DESC		"Intel Graphics"
-#define DRIVER_TIMESTAMP	1695980603
 
 extern const struct dev_pm_ops i915_pm_ops;
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index aa2cad910902..4f785cdbd155 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -2133,7 +2133,6 @@ i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump
 void i915_error_state_store(struct i915_gpu_coredump *error)
 {
 	struct drm_i915_private *i915;
-	static bool warned;
 
 	if (IS_ERR_OR_NULL(error))
 		return;
@@ -2147,16 +2146,8 @@ void i915_error_state_store(struct i915_gpu_coredump *error)
 
 	i915_gpu_coredump_get(error);
 
-	if (!xchg(&warned, true) &&
-	    ktime_get_real_seconds() - DRIVER_TIMESTAMP < DAY_AS_SECONDS(180)) {
-		pr_info("GPU hangs can indicate a bug anywhere in the entire gfx stack, including userspace.\n");
-		pr_info("Please file a _new_ bug report at https://gitlab.freedesktop.org/drm/intel/issues/new.\n");
-		pr_info("Please see https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html for details.\n");
-		pr_info("drm/i915 developers can then reassign to the right component if it's not a kernel issue.\n");
-		pr_info("The GPU crash dump is required to analyze GPU hangs, so please always attach it.\n");
-		pr_info("GPU crash dump saved to /sys/class/drm/card%d/error\n",
-			i915->drm.primary->index);
-	}
+	drm_info(&i915->drm, "GPU error state saved to /sys/class/drm/card%d/error\n",
+		 i915->drm.primary->index);
 }
 
 /**
-- 
2.39.5

