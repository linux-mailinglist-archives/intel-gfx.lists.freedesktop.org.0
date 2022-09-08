Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0825B1402
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 07:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5AEE10E959;
	Thu,  8 Sep 2022 05:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B79B10E95A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 05:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662614641; x=1694150641;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V8DiyaTz8VcDayxPPKzrmtyRLBtI7G0EHNIgO5qvotc=;
 b=HThkxBooi/vxOuXlnqwZpLK4fjoUBnqYK1qanjt0VLBr7JSxnnrX2SU2
 tOb7cAxRtXIFvfa9AL/1tMp7B82S+F8QDcF7ewquHgxF481aCJPjHgfiK
 CWjAKCg2bEqBRPQGMlXMxniVbxVC5SSj6FVBHMklojY3HpMyoaeuj+Ivj
 vTLzjxjaka1QYRFBW02dkMia6V5UzCGEGoJ2ojO1PenibKKlWkQmYYGa4
 zS0BqfkkuFZyX8gxL2Uo+4su2xy/fKJyLewDDZ/BKXDFKxuea2/8N8RFE
 xViZ1HxoGLAW360zrQa6ld9mtczjkU3f0izWpRzpJby8+ndGgDsXuNn9h A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="295806113"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="295806113"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:24:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="943192296"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:24:00 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 22:23:57 -0700
Message-Id: <ec1aee8c7c0c8bce3e9d056fb90cc16135dd3be6.1662613377.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662613377.git.ashutosh.dixit@intel.com>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/rps: Freq caps for MTL
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

For MTL, when reading from HW, RP0, RP1 (actuall RPe) and RPn freq use an
entirely different set of registers with different fields, bitwidths and
units.

v2: Move MTL check into a separate function (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 46 +++++++++++++++++++++++------
 drivers/gpu/drm/i915/i915_reg.h     |  9 ++++++
 2 files changed, 46 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 6fadde4ee7bf..234c69e2ca03 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1085,15 +1085,25 @@ static u32 intel_rps_read_state_cap(struct intel_rps *rps)
 		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
 }
 
-/**
- * gen6_rps_get_freq_caps - Get freq caps exposed by HW
- * @rps: the intel_rps structure
- * @caps: returned freq caps
- *
- * Returned "caps" frequencies should be converted to MHz using
- * intel_gpu_freq()
- */
-void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)
+static void
+mtl_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)
+{
+	struct intel_uncore *uncore = rps_to_uncore(rps);
+	u32 rp_state_cap = rps_to_gt(rps)->type == GT_MEDIA ?
+				intel_uncore_read(uncore, MTL_MEDIAP_STATE_CAP) :
+				intel_uncore_read(uncore, MTL_RP_STATE_CAP);
+	u32 rpe = rps_to_gt(rps)->type == GT_MEDIA ?
+			intel_uncore_read(uncore, MTL_MPE_FREQUENCY) :
+			intel_uncore_read(uncore, MTL_GT_RPE_FREQUENCY);
+
+	/* MTL values are in units of 16.67 MHz */
+	caps->rp0_freq = REG_FIELD_GET(MTL_RP0_CAP_MASK, rp_state_cap);
+	caps->min_freq = REG_FIELD_GET(MTL_RPN_CAP_MASK, rp_state_cap);
+	caps->rp1_freq = REG_FIELD_GET(MTL_RPE_MASK, rpe);
+}
+
+static void
+__gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 rp_state_cap;
@@ -1128,6 +1138,24 @@ void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *c
 	}
 }
 
+/**
+ * gen6_rps_get_freq_caps - Get freq caps exposed by HW
+ * @rps: the intel_rps structure
+ * @caps: returned freq caps
+ *
+ * Returned "caps" frequencies should be converted to MHz using
+ * intel_gpu_freq()
+ */
+void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)
+{
+	struct drm_i915_private *i915 = rps_to_i915(rps);
+
+	if (IS_METEORLAKE(i915))
+		return mtl_get_freq_caps(rps, caps);
+	else
+		return __gen6_rps_get_freq_caps(rps, caps);
+}
+
 static void gen6_rps_init(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 10a89d869b00..f008367a3433 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1792,6 +1792,15 @@
 #define XEHPSDV_RP_STATE_CAP	_MMIO(0x250014)
 #define PVC_RP_STATE_CAP	_MMIO(0x281014)
 
+#define MTL_RP_STATE_CAP	_MMIO(0x138000)
+#define MTL_MEDIAP_STATE_CAP	_MMIO(0x138020)
+#define   MTL_RP0_CAP_MASK	REG_GENMASK(8, 0)
+#define   MTL_RPN_CAP_MASK	REG_GENMASK(24, 16)
+
+#define MTL_GT_RPE_FREQUENCY	_MMIO(0x13800c)
+#define MTL_MPE_FREQUENCY	_MMIO(0x13802c)
+#define   MTL_RPE_MASK		REG_GENMASK(8, 0)
+
 #define GT0_PERF_LIMIT_REASONS		_MMIO(0x1381a8)
 #define   GT0_PERF_LIMIT_REASONS_MASK	0xde3
 #define   PROCHOT_MASK			REG_BIT(0)
-- 
2.34.1

