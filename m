Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 681EA7B24DA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1B7610E6AA;
	Thu, 28 Sep 2023 18:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B86C10E6AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924569; x=1727460569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BohJjcvjD9Q5pBHZ/MWh4TlMiXkuqMvtN9BJAl15eMw=;
 b=db9kygfKFIrlR0WBNB5+Jt5tc1RBuw/Ge8ruKSIoIH0BqTM/xU0/mjWW
 Q1VN/nrtajwfKjkiG3xv2yUiSRhNf5r6X7Mqt3DRC8Dekp4clnMfEX6rM
 v6gzt3NGQscJSjqPa0gVe8MkXtnCqIRs2s+xkBvMghfDxL6WtWeY9SJlB
 WBcN2CxeXNtkAXwaKG6iQEaS62PpiaoYznWVhQL4YFU1uvIwe4gGJlJrM
 AxT9SNGufdNePFkXFqYWxTQFkqU+fQCbtlLCuO/kBHFU8kNfLl4KVm68C
 J0CocxkPuKqiFMc4veipqJDp7ai7zUVpui34pLuVoy1/fkfw2z1UjVmFb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="384949709"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="384949709"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="873357030"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="873357030"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:47 +0300
Message-Id: <041985878569233606f54a5a59e145afcc631250.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/15] drm/i915: allocate i915->gt0 dynamically
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

Convert i915->gt0 to a pointer, and allocate it dynamically.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 8 +++++++-
 drivers/gpu/drm/i915/i915_drv.h    | 8 ++++----
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 93062c35e072..a3d68ff4b191 100644
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

