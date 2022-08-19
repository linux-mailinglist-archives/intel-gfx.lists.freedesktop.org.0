Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEB4599B7B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 14:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A1BB10EABC;
	Fri, 19 Aug 2022 12:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8009F10EAEF
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 12:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660910628; x=1692446628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EbHpm9L7aYc2o0eF1WqSo/fNz5s21gGkjSU4/LqiEbc=;
 b=f0QKKwi8tcaj2FjbhBxglvxxHhxAKmYc/pbz2MWvCbnqnVVkCsLq7YAQ
 J6RWfu3LlRnfcYXp9wYitXmsF99WdBCpQizYa81vK6dOOE+Q0a5e7oDiF
 rXaOT5gZjYG8mTCfpW7bvWvYQu1Oux9NMSrZvUPzuhi5I/zdltCgSzPWv
 btBtWZccFNkOgVgp1wy4pDZVorv8DOch73R1yR6+JZBXWAnvJNhEm4LeV
 Bn3MlN5L7DpefxlpBh1PfxX8Im2akuZ3vUKfs5hr3LpsJ0e/pt90HBHye
 K8RBkWOw3FzjRvEI7cAciXErN0se0ZK5/sTboF81hHKQeuM7yiyr8E7eG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="319030041"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="319030041"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="608189516"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 15:02:46 +0300
Message-Id: <b8f69cd1b6114295826c1f88be27e867c91f7df4.1660910433.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660910433.git.jani.nikula@intel.com>
References: <cover.1660910433.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/14] drm/i915: move has_dmc to runtime info
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If it's modified runtime, it's runtime info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 6 +++---
 drivers/gpu/drm/i915/intel_device_info.c | 3 ++-
 drivers/gpu/drm/i915/intel_device_info.h | 2 +-
 4 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3f3e5ed52937..69ce6db6a7c1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1272,7 +1272,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
 
-#define HAS_DMC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dmc)
+#define HAS_DMC(dev_priv)	(RUNTIME_INFO(dev_priv)->has_dmc)
 
 #define HAS_HECI_PXP(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_heci_pxp)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 818c18bc0aba..4c7c0873b0d5 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -654,7 +654,7 @@ static const struct intel_device_info chv_info = {
 	GEN8_FEATURES, \
 	GEN(9), \
 	GEN9_DEFAULT_PAGE_SIZES, \
-	.display.has_dmc = 1, \
+	.__runtime.has_dmc = 1, \
 	.has_gt_uc = 1, \
 	.__runtime.has_hdcp = 1, \
 	.display.has_ipc = 1, \
@@ -712,7 +712,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.has_runtime_pm = 1, \
-	.display.has_dmc = 1, \
+	.__runtime.has_dmc = 1, \
 	.has_rc6 = 1, \
 	.has_rps = true, \
 	.display.has_dp_mst = 1, \
@@ -952,7 +952,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |	\
 		BIT(DBUF_S4),							\
 	.display.has_ddi = 1,							\
-	.display.has_dmc = 1,							\
+	.__runtime.has_dmc = 1,							\
 	.display.has_dp_mst = 1,						\
 	.display.has_dsb = 1,							\
 	.display.has_dsc = 1,							\
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index c5367b8344be..b0b37e98b112 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -127,6 +127,7 @@ void intel_device_info_print(const struct intel_device_info *info,
 #undef PRINT_FLAG
 
 	drm_printf(p, "has_hdcp: %s\n", str_yes_no(runtime->has_hdcp));
+	drm_printf(p, "has_dmc: %s\n", str_yes_no(runtime->has_dmc));
 
 	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
@@ -403,7 +404,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			runtime->fbc_mask = 0;
 
 		if (DISPLAY_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
-			info->display.has_dmc = 0;
+			runtime->has_dmc = 0;
 
 		if (DISPLAY_VER(dev_priv) >= 10 &&
 		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 7ac24bfbf3ea..d94fc4ee3805 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -178,7 +178,6 @@ enum intel_ppgtt_type {
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
 	func(has_cdclk_crawl); \
-	func(has_dmc); \
 	func(has_ddi); \
 	func(has_dp_mst); \
 	func(has_dsb); \
@@ -241,6 +240,7 @@ struct intel_runtime_info {
 		u8 fbc_mask;
 
 		bool has_hdcp;
+		bool has_dmc;
 	};
 };
 
-- 
2.34.1

