Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AD773149B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 11:54:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D83ED10E4BA;
	Thu, 15 Jun 2023 09:54:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F11D510E4B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 09:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686822883; x=1718358883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hFEoUqd3mPhoB4w2urfNBJ16ZyqELtArwSpA72i34Ms=;
 b=nnH4PLnbgVJQS49brYkip6MhRc5zojKA8xJ4s16sb7SoNwO8XP64MBFQ
 oT2Q3um2VoherI1LN0Zk1U4qIFLtUR/i0qaYHzwCliXmjlrYDyiZ3+FlS
 WYfSsH1Mak/5VEYp55Zl4QAYj2CG5rWRl/OYsRDynvG3r5E8WAqT9CuNg
 F8H5vHfPGed/OQ5vBlXe6e5YNkarE3ay+05qHVy88RsGbKY8CCTBH5ykw
 q7vAIoD8HpDEKIIich7Ixkb0ZYTKo1tNJ3iN/cdK0AEyHkLuqhMFNo8cM
 sx1y5zo9sqHYmHT2DhQaNWSNWXZcTJF1zy+B6deWVMKno/Uy9UVDbHv3E g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="339214213"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="339214213"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 02:54:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="802274064"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="802274064"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jun 2023 02:54:29 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 15:24:13 +0530
Message-Id: <20230615095421.3135415-4-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
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

