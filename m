Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C88B67DF6A9
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:42:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35FDF10E919;
	Thu,  2 Nov 2023 15:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F3710E907
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 15:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698939770; x=1730475770;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7WTQBY7r/dGq42iSTj/VjkyEtoHA0N5bakRHYDIer/Q=;
 b=cn32VW+x/5DmzlmugDSlPC/AgxxJJ5qQ1/VSnhwewclBw1oDRQ1Tn4ti
 XneS3vOy+/AaxYtODzR8SeIsBlZxrB3E7i1368mrIBxTA91X47ZswdniV
 Wfu5iXCVOBJVz4fJNKqq+e0tYq2HNuutgUKOAY9XA+GI6Er4KJFwPjhZD
 JUsj/yIjcESyA9xXtHxn9SC26Nzen+q4ZQnJ3k3+L1BiEInwFy0cder7J
 7xEUes3nvftMbE3ERx//7g8EezT/ygoboNwChsP2PldQWb1K7rpa2INNu
 KYFE+nnmL83m0HnsHC05sKqwpbeFFRLXxSS/I0Bhhn0vb/Ba1nwTr+PSz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="368087348"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="368087348"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:42:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="878294676"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="878294676"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:42:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 17:42:26 +0200
Message-Id: <26018446c6aef2386dddc8814dd9d352ababe508.1698939671.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1698939671.git.jani.nikula@intel.com>
References: <cover.1698939671.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/pmu: report irqs to pmu code
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

Avoid accessing PMU details directly from irq code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 6 +-----
 drivers/gpu/drm/i915/i915_pmu.c | 9 +++++++++
 drivers/gpu/drm/i915/i915_pmu.h | 2 ++
 3 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 8130f043693b..183520ba06bd 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -71,11 +71,7 @@ static inline void pmu_irq_stats(struct drm_i915_private *i915,
 	if (unlikely(res != IRQ_HANDLED))
 		return;
 
-	/*
-	 * A clever compiler translates that into INC. A not so clever one
-	 * should at least prevent store tearing.
-	 */
-	WRITE_ONCE(i915->pmu.irq_count, i915->pmu.irq_count + 1);
+	i915_pmu_irq(i915);
 }
 
 void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 878a27e1c8ef..ef4b907a799b 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -1348,3 +1348,12 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 		kfree(pmu->name);
 	free_event_attributes(pmu);
 }
+
+void i915_pmu_irq(struct drm_i915_private *i915)
+{
+	/*
+	 * A clever compiler translates that into INC. A not so clever one
+	 * should at least prevent store tearing.
+	 */
+	WRITE_ONCE(i915->pmu.irq_count, i915->pmu.irq_count + 1);
+}
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 41af038c3738..26b06132a44f 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -159,6 +159,7 @@ int i915_pmu_init(void);
 void i915_pmu_exit(void);
 void i915_pmu_register(struct drm_i915_private *i915);
 void i915_pmu_unregister(struct drm_i915_private *i915);
+void i915_pmu_irq(struct drm_i915_private *i915);
 void i915_pmu_gt_parked(struct intel_gt *gt);
 void i915_pmu_gt_unparked(struct intel_gt *gt);
 #else
@@ -166,6 +167,7 @@ static inline int i915_pmu_init(void) { return 0; }
 static inline void i915_pmu_exit(void) {}
 static inline void i915_pmu_register(struct drm_i915_private *i915) {}
 static inline void i915_pmu_unregister(struct drm_i915_private *i915) {}
+static inline void i915_pmu_irq(struct drm_i915_private *i915) {}
 static inline void i915_pmu_gt_parked(struct intel_gt *gt) {}
 static inline void i915_pmu_gt_unparked(struct intel_gt *gt) {}
 #endif
-- 
2.39.2

