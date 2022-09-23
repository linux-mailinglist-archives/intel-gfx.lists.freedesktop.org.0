Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB135E82F5
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 22:12:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B66A010E8DD;
	Fri, 23 Sep 2022 20:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8312E10E90C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 20:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663963924; x=1695499924;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=krf1BaKpRh/TJiYYZ7jJ2rP+kYjTM+h+LW3kLWvk3zg=;
 b=eN3DamkLS8xG1RhnsuZuwDNTT57rEYtLw2CrfmWpsGA55U4hinX59ZS9
 E+U3RCdEYLAprXGxnpYxiqPxNlQ9MsrqTRkJBG88eyfp86KGDXizEBHa/
 EF+aaHzHZsp2O3B0mq1bC8tKOuWToBgJmO0BgryrP65fnBwN7CMyvV/b8
 W5tniOgtA5KQcmnLlVLf92xVw9umEOmM802yQd6HV7oXAUk6sWbsAf72z
 Xrje6jcAAF2RzQ4IcfcNiizwPMv3+4UQ6zLAGrfZIaZd8G87lDKyhBwui
 UnUQZTudliF6Tnb67jgQwZesp7PsEfgs0tp973rctV1X4dLfmmXRpEzkZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="287807866"
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="287807866"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 13:12:03 -0700
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200"; d="scan'208";a="762747284"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 13:12:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Fri, 23 Sep 2022 20:11:44 +0000
Message-Id: <20220923201154.283784-6-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
References: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/15] drm/i915/perf: Enable commands per
 clock reporting in OA
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

XEHPSDV and DG2 provide a way to configure bytes per clock vs commands
per clock reporting. Enable bytes per clock setting on enabling OA.

v2:
- Fix commit msg (Ashutosh)
- Fix checkpatch issues

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  3 +++
 drivers/gpu/drm/i915/i915_pci.c          |  1 +
 drivers/gpu/drm/i915/i915_perf.c         | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_perf_oa_regs.h |  4 ++++
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 5 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9f9372931fd2..ccd54ff54002 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -902,6 +902,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
 #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
 
+#define HAS_OA_BPC_REPORTING(dev_priv) \
+	(INTEL_INFO(dev_priv)->has_oa_bpc_reporting)
+
 /*
  * Set this flag, when platform requires 64K GTT page sizes or larger for
  * device local memory access.
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 77e7df21f539..6b25e4cb6221 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1022,6 +1022,7 @@ static const struct intel_device_info adl_p_info = {
 	.has_logical_ring_contexts = 1, \
 	.has_logical_ring_elsq = 1, \
 	.has_mslice_steering = 1, \
+	.has_oa_bpc_reporting = 1, \
 	.has_rc6 = 1, \
 	.has_reset_engine = 1, \
 	.has_rps = 1, \
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index fb705f24705b..657dff8bf395 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2738,10 +2738,12 @@ static int
 gen12_enable_metric_set(struct i915_perf_stream *stream,
 			struct i915_active *active)
 {
+	struct drm_i915_private *i915 = stream->perf->i915;
 	struct intel_uncore *uncore = stream->uncore;
 	struct i915_oa_config *oa_config = stream->oa_config;
 	bool periodic = stream->periodic;
 	u32 period_exponent = stream->period_exponent;
+	u32 sqcnt1;
 	int ret;
 
 	intel_uncore_write(uncore, GEN12_OAG_OA_DEBUG,
@@ -2760,6 +2762,16 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 			    (period_exponent << GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT))
 			    : 0);
 
+	/*
+	 * Initialize Super Queue Internal Cnt Register
+	 * Set PMON Enable in order to collect valid metrics.
+	 * Enable commands per clock reporting in OA for XEHPSDV onward.
+	 */
+	sqcnt1 = GEN12_SQCNT1_PMON_ENABLE |
+		 (HAS_OA_BPC_REPORTING(i915) ? GEN12_SQCNT1_OABPC : 0);
+
+	intel_uncore_rmw(uncore, GEN12_SQCNT1, 0, sqcnt1);
+
 	/*
 	 * Update all contexts prior writing the mux configurations as we need
 	 * to make sure all slices/subslices are ON before writing to NOA
@@ -2809,6 +2821,8 @@ static void gen11_disable_metric_set(struct i915_perf_stream *stream)
 static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
+	struct drm_i915_private *i915 = stream->perf->i915;
+	u32 sqcnt1;
 
 	/* Reset all contexts' slices/subslices configurations. */
 	gen12_configure_all_contexts(stream, NULL, NULL);
@@ -2819,6 +2833,12 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 
 	/* Make sure we disable noa to save power. */
 	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
+
+	sqcnt1 = GEN12_SQCNT1_PMON_ENABLE |
+		 (HAS_OA_BPC_REPORTING(i915) ? GEN12_SQCNT1_OABPC : 0);
+
+	/* Reset PMON Enable to save power. */
+	intel_uncore_rmw(uncore, GEN12_SQCNT1, sqcnt1, 0);
 }
 
 static void gen7_oa_enable(struct i915_perf_stream *stream)
diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
index 0ef3562ff4aa..381d94101610 100644
--- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
+++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
@@ -134,4 +134,8 @@
 #define GDT_CHICKEN_BITS    _MMIO(0x9840)
 #define   GT_NOA_ENABLE	    0x00000080
 
+#define GEN12_SQCNT1				_MMIO(0x8718)
+#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
+#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
+
 #endif /* __INTEL_PERF_OA_REGS__ */
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 09b18910d3ab..1f7a842cd408 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -164,6 +164,7 @@ enum intel_ppgtt_type {
 	func(has_logical_ring_elsq); \
 	func(has_media_ratio_mode); \
 	func(has_mslice_steering); \
+	func(has_oa_bpc_reporting); \
 	func(has_one_eu_per_fuse_bit); \
 	func(has_pxp); \
 	func(has_rc6); \
-- 
2.25.1

