Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4E2730E81
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 07:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC3A10E48A;
	Thu, 15 Jun 2023 05:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48B7910E489
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 05:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686805239; x=1718341239;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MIU6S/jEgMYwCLNzqCE1SIj0GQIXd68DdyUGXAw7EzY=;
 b=mh/OrE/vZsqg40bKnBZRXhSfQ+xD4/iTwtZCDyO9n9A4NQcIo251bIl+
 k2M4gKka51M32sYUghvpvW9cWAP3J58TDeFpDaaXz85AgAO8ZJ7Q+891H
 NMzskTTJ3fsoab46mZIosF1D64rgiIYk9ZtwJR9Tkxwkq2HRdKSKgEUlO
 bt6PvzsXjaxtZqEyoI8n4KPZ1NoaU4J3+HW6tEfChCzblUzLjaYBNqioy
 Im5tIWCG/zeXxOP3V1MOETC3rDvnFRRMASYDsonyL1IBsUIYRoGLrcyua
 E9pwNyQfqIISxkuhOvfEaFCfXcMTAH/4iN77UwLQW+sTXkc2zHZ/ra5PZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="361291139"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="361291139"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 22:00:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="689649511"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="689649511"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga006.jf.intel.com with ESMTP; 14 Jun 2023 22:00:37 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jun 2023 10:30:13 +0530
Message-Id: <20230615050015.3105902-10-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
References: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/11] drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN
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
Cc: dnyaneshwar.bhadane@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

Follow consistent naming convention. Replace ADLP with
ALDERLAKE_P

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c        | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                 | 2 +-
 drivers/gpu/drm/i915/intel_step.c               | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
index 852bea0208ce..cc9569af7f0c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
@@ -94,7 +94,7 @@ static int guc_hwconfig_fill_buffer(struct intel_guc *guc, struct intel_hwconfig
 
 static bool has_table(struct drm_i915_private *i915)
 {
-	if (IS_ALDERLAKE_P(i915) && !IS_ADLP_N(i915))
+	if (IS_ALDERLAKE_P(i915) && !IS_ALDERLAKE_P_N(i915))
 		return true;
 	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
 		return true;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index d408856ae4c0..dfb2837a3ed4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -279,7 +279,7 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
 	 * ADL-S, otherwise the GuC might attempt to fetch a config table that
 	 * does not exist.
 	 */
-	if (IS_ADLP_N(i915))
+	if (IS_ALDERLAKE_P_N(i915))
 		p = INTEL_ALDERLAKE_S;
 
 	GEM_BUG_ON(uc_fw->type >= ARRAY_SIZE(blobs_all));
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index bff9218b9f78..d3ce6ed3be86 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -587,7 +587,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
 #define IS_ADLS_RPLS(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
-#define IS_ADLP_N(i915) \
+#define IS_ALDERLAKE_P_N(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
 #define IS_ALDERLAKE_P_RPLP(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 9072f4ccd3c1..fe447063a064 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -192,7 +192,7 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_XEHPSDV(i915)) {
 		revids = xehpsdv_revids;
 		size = ARRAY_SIZE(xehpsdv_revids);
-	} else if (IS_ADLP_N(i915)) {
+	} else if (IS_ALDERLAKE_P_N(i915)) {
 		revids = adlp_n_revids;
 		size = ARRAY_SIZE(adlp_n_revids);
 	} else if (IS_ALDERLAKE_P_RPLP(i915)) {
-- 
2.34.1

