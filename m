Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4230760EB80
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 00:21:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C0AC10E593;
	Wed, 26 Oct 2022 22:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B43D10E57D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 22:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666822866; x=1698358866;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AHk9v88PliYVmR+M52FhZxi0STaaVpHt6Gh1lAST1VU=;
 b=iG8A62b3q4GNRclw1Va0EC9RQwfKtCcR/m+9ZYE7/+xrKRjP3oottHlM
 Vs+Qh+FRVBphhQA8Z2rAbg1OBNm6jsPacQoo+/v2OCA7r7/X/6hbgMVVE
 CDuuLSqy1gK2eV6oonItd3oc1sagugKdhM6Om7wYvwO8B/sEbmA2Kih9B
 qVPJRbcrTwTSbjFQBKWGIMyShnle0TM4VRVX+pfpgZJdJm7IWMZw6nm3k
 3xKtgyj7ZJCSiSXKlHCTvUR5zQVHr68Tt9Mq6NWJiBtmP2RxI8Ate7HsX
 IL+CKwhcBrUYQNbqijIdcRiCxncB6auhps2aJ/UzZ3HaIdH6hy4jrEVFL w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="394390427"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="394390427"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="721431384"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="721431384"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 22:20:51 +0000
Message-Id: <20221026222102.5526-6-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
References: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 05/16] drm/i915/perf: Enable bytes per clock
 reporting in OA
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

Bspec: 51762
Bspec: 52201

v2:
- Fix commit msg (Ashutosh)
- Fix checkpatch issues

v3:
- s/commands/bytes/ in code comment and commmit msg

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  3 +++
 drivers/gpu/drm/i915/i915_pci.c          |  1 +
 drivers/gpu/drm/i915/i915_perf.c         | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_perf_oa_regs.h |  4 ++++
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 5 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d7b8eb9d4117..866edee7d5eb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -898,6 +898,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
 #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
 
+#define HAS_OA_BPC_REPORTING(dev_priv) \
+	(INTEL_INFO(dev_priv)->has_oa_bpc_reporting)
+
 /*
  * Set this flag, when platform requires 64K GTT page sizes or larger for
  * device local memory access.
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 19bf5ef6a20d..449aa2421891 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1023,6 +1023,7 @@ static const struct intel_device_info adl_p_info = {
 	.has_logical_ring_contexts = 1, \
 	.has_logical_ring_elsq = 1, \
 	.has_mslice_steering = 1, \
+	.has_oa_bpc_reporting = 1, \
 	.has_rc6 = 1, \
 	.has_reset_engine = 1, \
 	.has_rps = 1, \
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index b71b5cf21176..d11cc949c9be 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2748,10 +2748,12 @@ static int
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
@@ -2770,6 +2772,16 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 			    (period_exponent << GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT))
 			    : 0);
 
+	/*
+	 * Initialize Super Queue Internal Cnt Register
+	 * Set PMON Enable in order to collect valid metrics.
+	 * Enable byets per clock reporting in OA for XEHPSDV onward.
+	 */
+	sqcnt1 = GEN12_SQCNT1_PMON_ENABLE |
+		 (HAS_OA_BPC_REPORTING(i915) ? GEN12_SQCNT1_OABPC : 0);
+
+	intel_uncore_rmw(uncore, GEN12_SQCNT1, 0, sqcnt1);
+
 	/*
 	 * Update all contexts prior writing the mux configurations as we need
 	 * to make sure all slices/subslices are ON before writing to NOA
@@ -2819,6 +2831,8 @@ static void gen11_disable_metric_set(struct i915_perf_stream *stream)
 static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
+	struct drm_i915_private *i915 = stream->perf->i915;
+	u32 sqcnt1;
 
 	/* Reset all contexts' slices/subslices configurations. */
 	gen12_configure_all_contexts(stream, NULL, NULL);
@@ -2829,6 +2843,12 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
 
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
index cdf78728dcad..42218c8d85f2 100644
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

