Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7FD730E79
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 07:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEF0610E482;
	Thu, 15 Jun 2023 05:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDA4310E483
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 05:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686805226; x=1718341226;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hFEoUqd3mPhoB4w2urfNBJ16ZyqELtArwSpA72i34Ms=;
 b=BgrsLXYFjKRHZxUZSDCp4e10XbLuV2WgIzYSZIVJunplygHh0uvfbZzU
 wvFldTXYKZEzT+p0oy59Bwl913mxmeMtTS6FXOOcJbWONR6fEYcAzIWRf
 RjTDlenjKJxvh23dthOiyaBgzwtfipfFYKHDgZxlMmZudOY6X8OxT/i7Y
 TTJOgVrCwDc1iDnpjsULUYbSniXUgwTzpxPEIrrgEACb42e9mr65glxeq
 vh9i+A1fLx8roOfvZJ6ED31BMm2Ns1pmrvxok4DXwtUYQPPrFDhMAyP2v
 F9RxtfOgQ4WY2Uk8LDAFSQjWJnQ/zhV8fapHXZEVhs6ONWTUHTgcYSsRQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="361291090"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="361291090"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 22:00:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="689649400"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="689649400"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga006.jf.intel.com with ESMTP; 14 Jun 2023 22:00:25 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 10:30:07 +0530
Message-Id: <20230615050015.3105902-4-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
References: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/11] drm/i915/TGL: s/RKL/ROCKETLAKE for
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
Cc: dnyaneshwar.bhadane@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow consistent naming convention. Replace RKL with
ROCKETLAKE.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index db5437043904..c65505b82065 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1586,7 +1586,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_ALDERLAKE_S(dev_priv) ||
-	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+	    IS_ROCKETLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 		/* Wa_1409767108 */
 		table = wa_1409767108_buddy_page_masks;
 	else
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 472a36cf1a72..3e9567f9ad15 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -666,7 +666,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_TIGERLAKE(__i915) && \
 	 IS_DISPLAY_STEP(__i915, since, until))
 
-#define IS_RKL_DISPLAY_STEP(p, since, until) \
+#define IS_ROCKETLAKE_DISPLAY_STEP(p, since, until) \
 	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
 
 #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
-- 
2.34.1

