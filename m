Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA72575764C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 10:12:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 565FC10E2F5;
	Tue, 18 Jul 2023 08:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3553310E2FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 08:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689667921; x=1721203921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XknoblRkm8W0N6J46bAvXFUhEw7CZVhfMSSEr/IuJac=;
 b=ncWV51eF15KYupHQ61WdjKLYq0B6FjiWDvUV/5dEfcGFl1SqiRtsPVMp
 oBadJsuA9NOxT0M21Vthx2eVPY4wxJzo500lg7Mka1wNTvxkoWTdJb7sj
 +vhCi1z+QT4EAgYYIn8j4tpWkFQcjiMo2mKsUa2EBig2J20+OeYDIswnu
 ta3u6NRYAqqEHRIjVyw7+OzAoSekR9MiomQxZxd2Pw1YihRYyzt/oP/zU
 BV56O1vRGygFWvBV1KBLK0ZihIZr6knma+fg16OWfB0GJcRwgCxSQE/J5
 PyNdkpJq6uBQhXSFjxibHBPuPRHeKlyS+J+salbm1CpmvdplNVFeP6eDc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="369696635"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="369696635"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:12:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723518473"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723518473"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orsmga002.jf.intel.com with ESMTP; 18 Jul 2023 01:11:58 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jul 2023 13:41:13 +0530
Message-Id: <20230718081115.166212-14-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
References: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v1 13/15] drm/i915/adln: s/ADLP/ALDERLAKE_P in ADLN
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
index a888568e6a9f..942004afdd2f 100644
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
index b4d6c7458afd..545102d14ba4 100644
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

