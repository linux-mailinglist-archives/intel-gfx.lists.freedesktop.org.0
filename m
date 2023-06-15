Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 969DB73149F
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 11:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35F5310E4C0;
	Thu, 15 Jun 2023 09:54:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58DF110E4BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 09:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686822886; x=1718358886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U9Pal82+tMuxJ7KdnpNiwda8R2HilDga4f++OL29fBQ=;
 b=V3PEs0if/Gm9rb07Jwnr7RDrNIkzMeMN/q2a9R5WaGisW+1ly/LUM3LG
 JROJpaQ6c1pz7j8AHluDPfcgqkjK10pNeZ6FcQ5T/+dQNFe8s0X4L4fMk
 pLO7g7XFRtrKWJJ0bMipu0PiLp/Ekbkrni0uz8SAOZJxVFq8FHy0Eyftj
 2AMn8NEfymjnP7O4bh5RG9tHn5/h2sqVEgJtcRCqcVF1ChfWxBZZcj99m
 G3p7LVkeiAqSQ7QblxbEnhcp2Jv7bzrw3V6m/4GDTMdVbZd5uAY+KIJLm
 RNM/M7nnAbjfXwcUQ66SQ4Y7e+PBrEzgYbAEQ+zshE3yWHhPJGbbjLBGl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="339214244"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="339214244"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 02:54:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="802274091"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="802274091"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jun 2023 02:54:40 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 15:24:21 +0530
Message-Id: <20230615095421.3135415-12-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU
 defines
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

Follow consistent naming convention. Replace ADLP with
ALDERLAKE_P

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h            | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 034454233d87..4318785b940f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3562,7 +3562,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		if (IS_ALDERLAKE_P_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
 			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
-		} else if (IS_ADLP_RPLU(dev_priv)) {
+		} else if (IS_ALDERLAKE_RPLU(dev_priv)) {
 			dev_priv->display.cdclk.table = rplu_cdclk_table;
 			dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
 		} else {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1dad0c9b4f30..c6ad78381dd1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -591,7 +591,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
 #define IS_ALDERLAKE_P_RPLP(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
-#define IS_ADLP_RPLU(i915) \
+#define IS_ALDERLAKE_RPLU(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
 #define IS_HSW_EARLY_SDV(i915) (IS_HASWELL(i915) && \
 				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)
-- 
2.34.1

