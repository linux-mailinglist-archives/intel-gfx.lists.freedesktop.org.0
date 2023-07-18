Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E23EF757646
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 10:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16FEA10E2F9;
	Tue, 18 Jul 2023 08:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B09E10E2F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 08:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689667904; x=1721203904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/bufQsnRfwDLHMggE6en8jxZ/NP7RVaBD3Z8k5PJ+Gg=;
 b=Xwuy97YRGXkZC+/hmvI/uY7Yf3Kq19u2EM+aWGCSvZ9DcOCHLrDa9mkF
 rWaub13CokhYODciATJcJPLZnJygpypH6tN52a7PrMz2a5Zod6hN546ZQ
 OftDifEAqmq8L4L4HTn+yH0EGlJ6CEudBT5jWEmImCyQz2Timr6jTtll0
 Sh2ZIDA0xuFAlTmib6+CS+qR65/OBGr8FX6I8RQPo2iQnqH50cdA1TnMT
 YVOeefmkbZeiourhuG7Fr5brBzj4b4VdMvdIQyz5MUsQNZsv3E0bUbV/U
 YV/ZjiYyyJoSlQmh5ILvjqBeYgGnxQtijltEV1ZxnZzIjG3KZMRA/xcAd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="369696573"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="369696573"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:11:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723518222"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723518222"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga002.jf.intel.com with ESMTP; 18 Jul 2023 01:11:41 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 13:41:07 +0530
Message-Id: <20230718081115.166212-8-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
References: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3 07/15] drm/i915/rkl: s/RKL/ROCKETLAKE for
 platform/subplatform defines
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow consistent naming convention. Replace RKL with
ROCKETLAKE.Replace IS_RKL_GRAPHICS_STEP with
IS_ROCKETLAKE && IS_DISPLAY_STEP.

v2:
- s/RKL/rkl in the subject prefix(Anusha)

v3:
- Unrolled wrapper IS_RKL_DISPLAY_STEP and Replace
with IS_ROCKETLAKE && IS_DISPLAY_STEP defines. (Jani/Tvrtko).

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index db5437043904..2b931f259c4c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1586,7 +1586,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_ALDERLAKE_S(dev_priv) ||
-	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+	    (IS_ROCKETLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)))
 		/* Wa_1409767108 */
 		table = wa_1409767108_buddy_page_masks;
 	else
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1bf7525783b9..e5433bb1d8a7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -667,8 +667,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_TIGERLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_RKL_DISPLAY_STEP(p, since, until) \
-	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
 
 #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
-- 
2.34.1

