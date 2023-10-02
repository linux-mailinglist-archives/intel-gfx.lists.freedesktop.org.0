Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCA37B4D83
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 10:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B96A810E236;
	Mon,  2 Oct 2023 08:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DCD010E236
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 08:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696236450; x=1727772450;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4lRhC8eaG87/WMg/mZtNSty7NQtbsh8LZbmI9dXIwEY=;
 b=HXFHK7lyOcTd/DoQ6FVfa55XeFrpku/Tiev0fMguucJ34kU9OP73kM3d
 UO7kEMd3GeYwbpk1wKcKHXQgqn/BNCwb2SABMc0D+lKCfwep8IiFqGMaz
 +om6p270nJI/ZVZJ3J3RAuKJ0mG5y200zCQ2HQOcsMhGQq8VTEeTTVwzl
 mntAh3XiufSoatjff5Amni6Knh74z0ymXKXv9JuwdtNn+us4v7r6vwCic
 lNRSUmIVkR68+fFdFTpr8OXYzbOnWW6rR32DBkVIx1hO+4um/oTBhucdH
 /UFA/v8lTRSc74QMDyhr4iZi48Bz5MqrrGpMbimNJtFy/zBYoc0Cs0kEw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="449094750"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="449094750"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 01:47:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="785713676"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="785713676"
Received: from svandens-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.151])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 01:47:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Oct 2023 11:47:04 +0300
Message-Id: <5319364f4c9416fed218382d020a57c5b0a17bee.1696236329.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1696236329.git.jani.nikula@intel.com>
References: <cover.1696236329.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/gt: remove i915->gt0 in favour of
 i915->gt[0]
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
Cc: Jani Nikula <jani.nikula@intel.com>
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
index b293ace6745d..ed32bf5b1546 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -68,7 +68,7 @@ int intel_root_gt_init_early(struct drm_i915_private *i915)
 	if (!gt)
 		return -ENOMEM;
 
-	i915->gt0 = gt;
+	i915->gt[0] = gt;
 
 	gt->i915 = i915;
 	gt->uncore = &i915->uncore;
@@ -928,8 +928,6 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
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

