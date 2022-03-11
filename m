Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C78314D5B9A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 07:28:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3B0410E3C7;
	Fri, 11 Mar 2022 06:28:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9163610E3C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 06:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646980123; x=1678516123;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=492X0YFiBb66AnKBLkpPuJIM807pdhCF8S4cSxebpwA=;
 b=A4r2eII4r7mfzgwCutPf+3eB0nEvzd1hfbN/7vpJe5s9R/BzlmoBfpXZ
 wLQPwQCAVDns4sOsXvSfAFCk/30iNn60Ntnyw8udQGBn0mypQg9c7F1l3
 lRhvNxZgwcqyKaysd7J8bxAg/0BdkJ1jJhXT5wfkfjjwSLQfkJtaWza4Y
 yibYSpO8kgPCw2agXIawXNTLZrjRXegIjJdW9UueE4PeH7q1Nf8ReAT4M
 VyL5A1fdiOeuz8yiD3mmqYJTAyvkL+GAMLeQ/fOfh9nDwB8jcGmU8+aDk
 AZlq1YVaOA0fbMHgnOD/0w7P+QCikZgcecnxpyCVAnOPUUSRiMcMH1Frr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="341939982"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="341939982"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 22:28:43 -0800
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="642888161"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 22:28:43 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 22:28:35 -0800
Message-Id: <20220311062835.163744-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Remove GEN12_SFC_DONE_MAX from
 register defs header
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We shouldn't really be keeping track of how many SFC_DONE registers
our platforms can have, but rather how many SFC hardware units there can
be (each SFC unit will have one corresponding SFC_DONE register).  So
drop the stray GEN12_SFC_DONE_MAX definition we had in the register
definition file and replace it with an I915_MAX_SFC that follows the
pattern we use for other hardware units.  Note that our hardware has a
2:1:1 ratio of VD:VE:SFC, and as far as we know that pattern should
carry forward to future platforms, so we'll define it as #VCS/2.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 1 +
 drivers/gpu/drm/i915/i915_gpu_error.c        | 4 ++--
 drivers/gpu/drm/i915/i915_gpu_error.h        | 2 +-
 drivers/gpu/drm/i915/i915_reg_defs.h         | 2 --
 4 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index f9e246004bc0..eac20112709c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -96,6 +96,7 @@ struct i915_ctx_workarounds {
 
 #define I915_MAX_VCS	8
 #define I915_MAX_VECS	4
+#define I915_MAX_SFC	(I915_MAX_VCS / 2)
 #define I915_MAX_CCS	4
 #define I915_MAX_RCS	1
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 44ff2b899893..a8acc6fbb299 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -754,7 +754,7 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 	if (GRAPHICS_VER(m->i915) >= 12) {
 		int i;
 
-		for (i = 0; i < GEN12_SFC_DONE_MAX; i++) {
+		for (i = 0; i < I915_MAX_SFC; i++) {
 			/*
 			 * SFC_DONE resides in the VD forcewake domain, so it
 			 * only exists if the corresponding VCS engine is
@@ -1691,7 +1691,7 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 		gt->aux_err = intel_uncore_read(uncore, GEN12_AUX_ERR_DBG);
 
 	if (GRAPHICS_VER(i915) >= 12) {
-		for (i = 0; i < GEN12_SFC_DONE_MAX; i++) {
+		for (i = 0; i < I915_MAX_SFC; i++) {
 			/*
 			 * SFC_DONE resides in the VD forcewake domain, so it
 			 * only exists if the corresponding VCS engine is
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 903d838e2e63..c3ccc8266865 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -137,7 +137,7 @@ struct intel_gt_coredump {
 	u32 gfx_mode;
 	u32 gtt_cache;
 	u32 aux_err; /* gen12 */
-	u32 sfc_done[GEN12_SFC_DONE_MAX]; /* gen12 */
+	u32 sfc_done[I915_MAX_SFC]; /* gen12 */
 	u32 gam_done; /* gen12 */
 
 	u32 nfence;
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index d78d78fce431..8f486f77609f 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -123,6 +123,4 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define VLV_DISPLAY_BASE		0x180000
 
-#define GEN12_SFC_DONE_MAX		4
-
 #endif /* __I915_REG_DEFS__ */
-- 
2.34.1

