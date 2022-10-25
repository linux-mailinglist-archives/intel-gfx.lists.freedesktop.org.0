Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B24FE60D570
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 22:19:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 671F1890BB;
	Tue, 25 Oct 2022 20:19:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B6B910E1E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 20:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666729031; x=1698265031;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DJafpqtsWp+wpO3jNcUzovjADb2i4yEJI1/tstnegV0=;
 b=mbQllwaG5FdRm+s8PnRed98nAiSdGYr8AaoqY2Hi8apqCvDDyhDL7W3m
 spJtWIpMi7tAqo48wwUQz4F1ijy2dnCAlzyJB4uovstyzHiHUYZJlKTvn
 FVIqI2j+EMcEQU5WFA2e03FsjKhEDr/mO8s6+j+Mo+wu63trV6BDv1rUc
 zySLXVW3NSXrvHYGrijhnG/SS5ajQEfkXj4V7JOKLhFR7IauGq1tpgQEr
 5y0cgHU3J1bc8NIWrU4JNqs+bW+qhhoQxphI6EhCpzaRCZIKm0Z1SXKvp
 X38I4h5c07f8QwOxiclkpr9ozUOSs9ejqW6iYboPnV3yUQSaX61C0bIy2 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="288177917"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="288177917"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="609699735"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="609699735"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:10 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 20:17:07 +0000
Message-Id: <20221025201708.84018-16-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
References: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 15/16] drm/i915/perf: complete programming
 whitelisting for XEHPSDV
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

From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

We have an additional register to select which slices contribute to
OAG/OAG counter increments.

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  2 ++
 drivers/gpu/drm/i915/i915_pci.c          |  1 +
 drivers/gpu/drm/i915/i915_perf.c         | 13 +++++++++++++
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 4 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 438aebeea103..3bbcd726c2da 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -900,6 +900,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_OA_BPC_REPORTING(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_oa_bpc_reporting)
+#define HAS_OA_SLICE_CONTRIB_LIMITS(dev_priv) \
+	(INTEL_INFO(dev_priv)->has_oa_slice_contrib_limits)
 
 /*
  * Set this flag, when platform requires 64K GTT page sizes or larger for
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index cbced3f3db17..3f505ee15d66 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1024,6 +1024,7 @@ static const struct intel_device_info adl_p_info = {
 	.has_logical_ring_elsq = 1, \
 	.has_mslice_steering = 1, \
 	.has_oa_bpc_reporting = 1, \
+	.has_oa_slice_contrib_limits = 1, \
 	.has_rc6 = 1, \
 	.has_reset_engine = 1, \
 	.has_rps = 1, \
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index bc0c486cf7d4..176442d5e57e 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4261,6 +4261,11 @@ static const struct i915_range gen12_oa_b_counters[] = {
 	{}
 };
 
+static const struct i915_range xehp_oa_b_counters[] = {
+	{ .start = 0xdc48, .end = 0xdc48 },	/* OAA_ENABLE_REG */
+	{ .start = 0xdd00, .end = 0xdd48 },	/* OAG_LCE0_0 - OAA_LENABLE_REG */
+};
+
 static const struct i915_range gen7_oa_mux_regs[] = {
 	{ .start = 0x91b8, .end = 0x91cc },	/* OA_PERFCNT[1-2], OA_PERFMATRIX */
 	{ .start = 0x9800, .end = 0x9888 },	/* MICRO_BP0_0 - NOA_WRITE */
@@ -4335,6 +4340,12 @@ static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 	return reg_in_range_table(addr, gen12_oa_b_counters);
 }
 
+static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
+{
+	return reg_in_range_table(addr, xehp_oa_b_counters) ||
+		reg_in_range_table(addr, gen12_oa_b_counters);
+}
+
 static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
 	return reg_in_range_table(addr, gen12_oa_mux_regs);
@@ -4847,6 +4858,8 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
 		} else if (GRAPHICS_VER(i915) == 12) {
 			perf->ops.is_valid_b_counter_reg =
+				HAS_OA_SLICE_CONTRIB_LIMITS(i915) ?
+				xehp_is_valid_b_counter_addr :
 				gen12_is_valid_b_counter_addr;
 			perf->ops.is_valid_mux_reg =
 				gen12_is_valid_mux_addr;
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 42218c8d85f2..e292c1ee7c93 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -165,6 +165,7 @@ enum intel_ppgtt_type {
 	func(has_media_ratio_mode); \
 	func(has_mslice_steering); \
 	func(has_oa_bpc_reporting); \
+	func(has_oa_slice_contrib_limits); \
 	func(has_one_eu_per_fuse_bit); \
 	func(has_pxp); \
 	func(has_rc6); \
-- 
2.25.1

