Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0895B2C46
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 04:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A6310E2EE;
	Fri,  9 Sep 2022 02:55:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C3D10E244
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 02:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662692070; x=1694228070;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pMaZXsexbfLDoNETKdUgJr36uAyinXAKyHspca8gjeg=;
 b=Sp1xICHNekFlEG8aqkQQJYHfoKw10YUc94NyfwLDTAcCBA+7leCUNN6f
 kqq5EyYA33H3xBw/AMJpFuJfNJi6W6D55aAK2J0Z02fRNaKXEPHVmlI+X
 4WGluOnp7f7ADYZ7v9Ro7dPQKJR4JcKdoRL9jO+vryFzJ8CJi4ARM5c+g
 Ff15rm+xSTV0IX8qcJPDmeJ1f9/wvUr7yQ1u07DDoPQ/E5t8V+W4LRNUT
 2QpXWD0NxoMvegKqh5WkG4/ZSJREuzvtjd0iFJ/gP4HFsrfrSDJIg1kuO
 OTz7m85MvZfa6Z5KoU5jFJ+IraAwBi+MMoteyxc81vyNekmbrscc4aZ4o w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="280407133"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="280407133"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 19:54:30 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="943609602"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 19:54:28 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Sep 2022 08:26:44 +0530
Message-Id: <20220909025646.3397620-5-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220909025646.3397620-1-badal.nilawar@intel.com>
References: <20220909025646.3397620-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Use GEN12 RPSTAT register
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

From: Don Hiatt <don.hiatt@intel.com>

On GEN12, use the correct GEN12 RPSTAT register mask/shift.

HSD: 1409538411

Cc: Don Hiatt <donhiatt@gmail.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Signed-off-by: Don Hiatt <don.hiatt@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  5 +++++
 drivers/gpu/drm/i915/gt/intel_rps.c           | 17 ++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_rps.h           |  1 +
 drivers/gpu/drm/i915/i915_pmu.c               |  3 +--
 5 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 108b9e76c32e..96c03a1258e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -380,7 +380,7 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 		rpinclimit = intel_uncore_read(uncore, GEN6_RP_UP_THRESHOLD);
 		rpdeclimit = intel_uncore_read(uncore, GEN6_RP_DOWN_THRESHOLD);
 
-		rpstat = intel_uncore_read(uncore, GEN6_RPSTAT1);
+		rpstat = intel_rps_read_rpstat(rps);
 		rpcurupei = intel_uncore_read(uncore, GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;
 		rpcurup = intel_uncore_read(uncore, GEN6_RP_CUR_UP) & GEN6_CURBSYTAVG_MASK;
 		rpprevup = intel_uncore_read(uncore, GEN6_RP_PREV_UP) & GEN6_CURBSYTAVG_MASK;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index fb2c56777480..dac59c3e68db 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1510,6 +1510,11 @@
 #define VLV_RENDER_C0_COUNT			_MMIO(0x138118)
 #define VLV_MEDIA_C0_COUNT			_MMIO(0x13811c)
 
+#define GEN12_RPSTAT1				_MMIO(0x1381b4)
+#define   GEN12_CAGF_SHIFT			11
+#define   GEN12_CAGF_MASK			REG_GENMASK(19, 11)
+#define   GEN12_VOLTAGE_MASK			REG_GENMASK(10, 0)
+
 #define GEN11_GT_INTR_DW(x)			_MMIO(0x190018 + ((x) * 4))
 #define   GEN11_CSME				(31)
 #define   GEN11_GUNIT				(28)
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 6fadde4ee7bf..341f96f536e8 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2040,6 +2040,19 @@ void intel_rps_sanitize(struct intel_rps *rps)
 		rps_disable_interrupts(rps);
 }
 
+u32 intel_rps_read_rpstat(struct intel_rps *rps)
+{
+	struct drm_i915_private *i915 = rps_to_i915(rps);
+	u32 rpstat;
+
+	if (GRAPHICS_VER(i915) >= 12)
+		rpstat = intel_uncore_read(rps_to_gt(rps)->uncore, GEN12_RPSTAT1);
+	else
+		rpstat = intel_uncore_read(rps_to_gt(rps)->uncore, GEN6_RPSTAT1);
+
+	return rpstat;
+}
+
 u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
@@ -2047,6 +2060,8 @@ u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat)
 
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		cagf = (rpstat >> 8) & 0xff;
+	else if (GRAPHICS_VER(i915) >= 12)
+		cagf = (rpstat & GEN12_CAGF_MASK) >> GEN12_CAGF_SHIFT;
 	else if (GRAPHICS_VER(i915) >= 9)
 		cagf = (rpstat & GEN9_CAGF_MASK) >> GEN9_CAGF_SHIFT;
 	else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
@@ -2071,7 +2086,7 @@ static u32 read_cagf(struct intel_rps *rps)
 		freq = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
 		vlv_punit_put(i915);
 	} else if (GRAPHICS_VER(i915) >= 6) {
-		freq = intel_uncore_read(uncore, GEN6_RPSTAT1);
+		freq = intel_rps_read_rpstat(rps);
 	} else {
 		freq = intel_uncore_read(uncore, MEMSTAT_ILK);
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index 4509dfdc52e0..08bae6d97870 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -47,6 +47,7 @@ u32 intel_rps_get_rp1_frequency(struct intel_rps *rps);
 u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
 u32 intel_rps_read_punit_req(struct intel_rps *rps);
 u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
+u32 intel_rps_read_rpstat(struct intel_rps *rps);
 void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps);
 void intel_rps_raise_unslice(struct intel_rps *rps);
 void intel_rps_lower_unslice(struct intel_rps *rps);
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 958b37123bf1..a24704ec2c18 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -371,7 +371,6 @@ static void
 frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 {
 	struct drm_i915_private *i915 = gt->i915;
-	struct intel_uncore *uncore = gt->uncore;
 	struct i915_pmu *pmu = &i915->pmu;
 	struct intel_rps *rps = &gt->rps;
 
@@ -394,7 +393,7 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 		 * case we assume the system is running at the intended
 		 * frequency. Fortunately, the read should rarely fail!
 		 */
-		val = intel_uncore_read_fw(uncore, GEN6_RPSTAT1);
+		val = intel_rps_read_rpstat(rps);
 		if (val)
 			val = intel_rps_get_cagf(rps, val);
 		else
-- 
2.25.1

