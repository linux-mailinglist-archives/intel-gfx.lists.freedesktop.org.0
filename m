Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3910A671D48
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 14:16:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A869210E747;
	Wed, 18 Jan 2023 13:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FB510E747
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 13:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674047768; x=1705583768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yzCfwQD4vlTY3muylZlEkKQU40YBP7jtbco1faDOfTo=;
 b=ZV80hX1KHKvES02sn0thojHxgmAg2Qa5aMYrLwjngjC/ay/rHGC2iKM2
 GlEWKyd7AWSDMO7ftK0CvtqU+31jp1usvQ+TneItHkUM/NkgL4KpImZi+
 00noOORmT7z91xG4TFS2QQq2WPc/mnbxXzXyYRth9VPrFf8GtEWyh12Ag
 51iVWL6TXLOshsqsUx7TppUkPP0mHNIlU3Nu+cHf2JSgDGIytYjon9tdX
 GLalJoR3giskUGz00kmqLNWTk+RmLWPyP3oD3RzWx/SowkOhlItHh50Rd
 A8D6DHjRqXmNNVQQKZZnp36QcvwcbvGSZVfEiXgqAY+kWDeZIqE/UTrfW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="312857588"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="312857588"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:15:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="652933556"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="652933556"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:15:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 15:15:33 +0200
Message-Id: <20230118131538.3558599-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118131538.3558599-1-jani.nikula@intel.com>
References: <20230118131538.3558599-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: move I915_IDLE_ENGINES_TIMEOUT
 next to its only user
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

Declutter i915_drv.h. If there's ever a need to use this in more than
one place, we can figure out a better spot then. For now, this seems
easiest.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 3 +++
 drivers/gpu/drm/i915/i915_drv.h     | 2 --
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index a356ca490159..51ba9a8369c5 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -648,6 +648,9 @@ i915_drop_caches_get(void *data, u64 *val)
 
 	return 0;
 }
+
+#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
+
 static int
 gt_drop_caches(struct intel_gt *gt, u64 val)
 {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8377173e8de5..343e3e568774 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -194,8 +194,6 @@ struct i915_gem_mm {
 	u32 shrink_count;
 };
 
-#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
-
 #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 
 struct i915_virtual_gpu {
-- 
2.34.1

