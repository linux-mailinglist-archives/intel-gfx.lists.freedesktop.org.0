Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE60671D4F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 14:16:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A99AC10E74C;
	Wed, 18 Jan 2023 13:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 810AC10E746
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 13:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674047773; x=1705583773;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ndw1Y4dGkRvJIxRJm7VGxbxFPgpQu+U8uttMCi5dX8o=;
 b=LTPpREhjDMwxP/z1uyHPkTUHmJ5o9ToSpFoAFfCbr+Y0HGSYsF6+uc1U
 E0JBebqrYuc8NhjZOAC4aLKSXlfYb+661BOyEjJeqx4WF4RB2U92dbxo4
 jxdpR3hZWkz0ER065sDU7oYo9a6cmfyCAdomrnGneoAVEmH78uGsnRI/v
 Y0MjODniwHMcyq2VcJyu6xJTjxHL+qpsvWoFOQh+fDU64rrj0xnravRaX
 46e7Jjxrsp7xbunDjr0Xy8LXxhwo2U7vJL5T7MGVBbwRYb8E+qEMXcw04
 +7WTjqEN/7PwWZJASk+T4/4gld4gGENN/xbg5Y7WJ0MUSq6THVJ7Gv3/M Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="312857641"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="312857641"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:16:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="652933657"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="652933657"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:15:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 15:15:35 +0200
Message-Id: <20230118131538.3558599-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118131538.3558599-1-jani.nikula@intel.com>
References: <20230118131538.3558599-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: move a few HAS_ macros closer to
 their place
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

There's not that much organization with where the various HAS_FEATURE()
macros are placed, but at least try to group them closer together.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ad0c5fd0cc92..73ce5447cae8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -187,8 +187,6 @@ struct i915_gem_mm {
 	u32 shrink_count;
 };
 
-#define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
-
 struct i915_virtual_gpu {
 	struct mutex lock; /* serialises sending of g2v_notify command pkts */
 	bool active;
@@ -444,9 +442,6 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 
 #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
 
-#define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
-#define HAS_DSC(__i915)		(RUNTIME_INFO(__i915)->has_dsc)
-
 #define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
 #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
 #define INTEL_MEDIA_STEP(__i915) (RUNTIME_INFO(__i915)->step.media_step)
@@ -858,6 +853,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
 
 #define HAS_DMC(dev_priv)	(RUNTIME_INFO(dev_priv)->has_dmc)
+#define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
+#define HAS_DSC(__i915)		(RUNTIME_INFO(__i915)->has_dsc)
+#define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 
 #define HAS_HECI_PXP(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_heci_pxp)
-- 
2.34.1

