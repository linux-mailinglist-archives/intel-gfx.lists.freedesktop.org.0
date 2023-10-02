Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED5C7B4D81
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 10:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E52A410E234;
	Mon,  2 Oct 2023 08:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B295910E234
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 08:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696236445; x=1727772445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kGTSAbo4tQ9n5Cl/Nt6pURZZWIaMtnnyDNKrYjf6rBk=;
 b=D04Wzsh1WBhhaGNorCpBkVormc0pzH9x0vAhI9i3qyz8vPhhOEPqCvUo
 baP/ITajCLhsuoMHVIWe1bCaI9SwhEpM7nF0g69/S67s61cjP5VNgoo2k
 YXY26/A8idEKs4hn3ZfbOg4P1j1oW8MneWTOsW9nemE9yCGy1sKccS7gu
 ibiHrAHo6YCJYlgFBUQgkF9FKjHMZ/wKx8Y1FRpWqlZ1XdXzuHR0BwTDx
 ISOTNeYYuh5aH94PaPEDe1nuqq9qMvWY4HCBDtD99HHbHj5tub45ro/mI
 rNjgunzEqZsxdJMVN9m8jjQXNrd86RAyaKpFb2hjkvq2Vo7nIu0mkTHxp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="446759299"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="446759299"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 01:47:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="727202021"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="727202021"
Received: from svandens-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.151])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 01:47:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Oct 2023 11:47:03 +0300
Message-Id: <01bf968aa431b77d491790178cbeece18b5fc4c0.1696236329.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1696236329.git.jani.nikula@intel.com>
References: <cover.1696236329.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: allocate i915->gt0 dynamically
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

Convert i915->gt0 to a pointer, and allocate it dynamically.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 8 +++++++-
 drivers/gpu/drm/i915/i915_drv.h    | 8 ++++----
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 454b9923cda9..b293ace6745d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -62,7 +62,13 @@ void intel_gt_common_init_early(struct intel_gt *gt)
 /* Preliminary initialization of Tile 0 */
 int intel_root_gt_init_early(struct drm_i915_private *i915)
 {
-	struct intel_gt *gt = to_gt(i915);
+	struct intel_gt *gt;
+
+	gt = drmm_kzalloc(&i915->drm, sizeof(*gt), GFP_KERNEL);
+	if (!gt)
+		return -ENOMEM;
+
+	i915->gt0 = gt;
 
 	gt->i915 = i915;
 	gt->uncore = &i915->uncore;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 511eba3bbdba..a1cb16afa46d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -318,10 +318,10 @@ struct drm_i915_private {
 	struct i915_hwmon *hwmon;
 
 	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
-	struct intel_gt gt0;
+	struct intel_gt *gt0;
 
 	/*
-	 * i915->gt[0] == &i915->gt0
+	 * i915->gt[0] == i915->gt0
 	 */
 	struct intel_gt *gt[I915_MAX_GT];
 
@@ -382,9 +382,9 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 	return pci_get_drvdata(pdev);
 }
 
-static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
+static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
 {
-	return &i915->gt0;
+	return i915->gt0;
 }
 
 /* Simple iterator over all initialised engines */
-- 
2.39.2

