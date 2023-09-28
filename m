Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 276367B24D8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 572B410E6A9;
	Thu, 28 Sep 2023 18:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7703A10E6A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924561; x=1727460561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=msAhIIuqVVDStwls8atUU1cp95E1POInlRf+6ObJwbQ=;
 b=ESh8fY2sXGgGrbsq1sjQ6sS60FSK5oYY5UF7aWoZ+cIBsxRTvw+AvtH4
 C+AMdLjvPO/g1yKFVOpst1XRLGFDqhuTq8Qu/9mo36ax/7XrvNcQtFnyM
 sdiQvBB48L56Sfk7OGDbHjZFmtnW6WjEGrXXUhHn3dCJyQATGT2hraQSO
 pY1YBDr+rvP2qZ999h80XDbiS2nJ9TU52YHXyJLQpcCJOitLq1DJhUCII
 ijH99iAMgd8rA5b27j3pE1z97mLVKElcLToKIHMqvBS467B6XryrT1eOC
 J8bmtqb40u1aCjMnWfbHHY+/jNQdpGJ7DfJ7O8j8CYiooJtbSQyufzPuZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="362377550"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="362377550"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726329207"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="726329207"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:48 +0300
Message-Id: <a5a72078f2ca4f58a41cc393d781537a297b9fdb.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/15] drm/i915/gt: remove i915->gt0 in favour
 of i915->gt[0]
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since gt0 == i915->gt[0], just drop the former.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c               | 4 +---
 drivers/gpu/drm/i915/i915_drv.h                  | 8 +-------
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 1 -
 3 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index a3d68ff4b191..bb6c3f68f7d2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -68,7 +68,7 @@ int intel_root_gt_init_early(struct drm_i915_private *i915)
 	if (!gt)
 		return -ENOMEM;
 
-	i915->gt0 = gt;
+	i915->gt[0] = gt;
 
 	gt->i915 = i915;
 	gt->uncore = &i915->uncore;
@@ -917,8 +917,6 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
 	if (ret)
 		return ret;
 
-	i915->gt[0] = gt;
-
 	if (!HAS_EXTRA_GT_LIST(i915))
 		return 0;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a1cb16afa46d..d04a9c32c44f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -317,12 +317,6 @@ struct drm_i915_private {
 
 	struct i915_hwmon *hwmon;
 
-	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
-	struct intel_gt *gt0;
-
-	/*
-	 * i915->gt[0] == i915->gt0
-	 */
 	struct intel_gt *gt[I915_MAX_GT];
 
 	struct kobject *sysfs_gt;
@@ -384,7 +378,7 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 
 static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
 {
-	return i915->gt0;
+	return i915->gt[0];
 }
 
 /* Simple iterator over all initialised engines */
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 7de6477803f8..af349fd9abc2 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -114,7 +114,6 @@ static struct dev_pm_domain pm_domain = {
 
 static void mock_gt_probe(struct drm_i915_private *i915)
 {
-	i915->gt[0] = to_gt(i915);
 	i915->gt[0]->name = "Mock GT";
 }
 
-- 
2.39.2

