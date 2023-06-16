Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8C6733030
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 13:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD3610E608;
	Fri, 16 Jun 2023 11:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07CB010E608
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 11:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686915739; x=1718451739;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/NmpX42bKxKx5TcoJQdpGw3mHfv/IvdMBX6gXpurkug=;
 b=Ve3njFwkbcBlGLULbGiIkZ1cboxsEE77JvuRkIM6pbXMH5knILKdlvFQ
 wdiMrBqUOy3VMe5IHFpKe/ejmikTeh62taV5CO4JTp6eldZYQ1daSdCoJ
 mCyAXKp89r/vAExlgIs6wJD7KnbisuJWZ4oe0KOxv/nRzw7EmBZEeO4QL
 FxrxbkZ8xk8j7aKSRWUHua8ymXz4rOFAGOaMb+54m8eNmVf/RY3oZOhF6
 hTO4Ivoz8kI8qjzKG/oXMrKaR1Vc7653hSyMWyo/+mHKfgnpvdF3Ih3KW
 CQW8k+7u0k4qyLqd1nH4xLHp2ozqXgd5BbkRkM8MelcfMSasAM6wG1jRb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="358067445"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="358067445"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 04:42:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="742646305"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="742646305"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga008.jf.intel.com with ESMTP; 16 Jun 2023 04:42:17 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 17:11:57 +0530
Message-Id: <20230616114200.3228284-9-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616114200.3228284-1-dnyaneshwar.bhadane@intel.com>
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
 <20230616114200.3228284-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/11] drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU
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
index 819e72a39ba6..aa9689a1683f 100644
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

