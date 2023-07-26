Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 095F9763FBA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 21:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A6610E4B5;
	Wed, 26 Jul 2023 19:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A649010E4B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 19:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690400041; x=1721936041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kbBlEciuALYW5ARILPGgU2anUhPOQCifWKRhW1ZmF0w=;
 b=DrR5LzQEBO/dJhiMfe1lyD+x4NUf2Lg9XOs8BLrBAR0VYw3CSVSpffo9
 RcWYmX9XZflJwd8InvN/Dz0FqqFuJ+sGF86oj7GyrBYmpUvzhdVhIpjTV
 FRdRMwcRYAppqvrpcm0RdMyPBtSlf/SysYh3sd9pMnCBmJ6OO6vPy7H8N
 g1YBxWlDiJzuL53cBq8DQnzeBt5NnUMfMdnMd9GQ4ta71HJlFwX5RONyq
 VyAunJ6BRe6tKj9mofCQFxcSq5wxOI1p1z7EIIM1lBYrl+tdBEf7vxx0S
 wyC+rEmxaFl+QdBVPTrLUCyMynW28HR5TEqF997IHAe4g+bbtw2bqN380 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="353013276"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="353013276"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 12:33:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="840383427"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="840383427"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2023 12:33:55 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 01:03:26 +0530
Message-Id: <20230726193333.2759197-8-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
References: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/14] drm/i915/rkl: s/RKL/ROCKETLAKE for
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
- Unrolled wrapper IS_RKL_DISPLAY_STEP.
- Replace IS_PLATFORM && IS_DISPLAY_STEP (Jani/Tvrtko)

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 38225e5d311e..9e01054c2430 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1609,7 +1609,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_ALDERLAKE_S(dev_priv) ||
-	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+	    (IS_ROCKETLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)))
 		/* Wa_1409767108 */
 		table = wa_1409767108_buddy_page_masks;
 	else
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e6f77498d46c..f46846574420 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -660,8 +660,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_TIGERLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_RKL_DISPLAY_STEP(p, since, until) \
-	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
 
 #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
 	(IS_ALDERLAKE_S(__i915) && \
-- 
2.34.1

