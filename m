Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9261775764B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 10:12:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1139110E2FA;
	Tue, 18 Jul 2023 08:12:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56A0610E304
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 08:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689667918; x=1721203918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7pK0Y5594gni2oswIvqTCpYDiJQ3emzgdyrDewq4jGU=;
 b=QR96fVSyXGePzI48ywHIgV3K5AjfpB3D6OKLbFCaAW7HMGneTyHmcD92
 RtnBB4pW2Zq52ScvRYpaWpoYpI8Qp+A+lQkbpcFCdxat1UJZyNvB8Pq4M
 Eyhm6QRYfcEfSq8HNjhwikBTJPpRTpeRMf6i6IgnR6f8fs+zzL6TcChk1
 IJctiuIJdF5EXOtk+63OYTtkKou0rL9ptTSiiz9v7FVdZN9R+YbrMFSdJ
 cYEM5S8Wbbgcy0wmvWYdqJWYXtxrFW2k/qqZz6Jte4eoQFA19G/4U7VE+
 6yVYVLe7DmW6VuqNRu+EoGXKOOnPWBYysTUQ+liAN6XlLgJEvpXUvrSuj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="369696629"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="369696629"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:11:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723518436"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723518436"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga002.jf.intel.com with ESMTP; 18 Jul 2023 01:11:55 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 13:41:12 +0530
Message-Id: <20230718081115.166212-13-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
References: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v1 12/15] drm/i915/rplu: s/ADLP/ALDERLAKE_P in RPLU
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
Cc: matthew.d.roper@intel.com
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
index 0f0aef3e90b0..3eb3d1176bfa 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3562,7 +3562,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
 			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
-		} else if (IS_ADLP_RPLU(dev_priv)) {
+		} else if (IS_ALDERLAKE_RPLU(dev_priv)) {
 			dev_priv->display.cdclk.table = rplu_cdclk_table;
 			dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
 		} else {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 16b607b83ddf..a888568e6a9f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -591,7 +591,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
 #define IS_ALDERLAKE_P_RPLP(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
-#define IS_ADLP_RPLU(i915) \
+#define IS_ALDERLAKE_RPLU(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
 #define IS_HASWELL_EARLY_SDV(i915) (IS_HASWELL(i915) && \
 				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)
-- 
2.34.1

