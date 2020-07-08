Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD84A217C4E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 02:40:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2CC66E37C;
	Wed,  8 Jul 2020 00:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C646E424
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 00:39:58 +0000 (UTC)
IronPort-SDR: Io4MkIxuBqwyhMiXnm7clR5uA5ekcwulj714X5e5YJ/T3SKavnDpWbNFhIvUcAQF5dX7WctFiR
 Tqkm+/ScR7pw==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="165790551"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="165790551"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 17:39:58 -0700
IronPort-SDR: DgM94yQmVC2p5VPizfvvU9cTCEIPZ6NIYNlPxgsDCfscKPi1IivRY2ldUgPMRojHnwTos54rdC
 7AeB+l0QlVnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="314482734"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga008.jf.intel.com with ESMTP; 07 Jul 2020 17:39:57 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Jul 2020 17:39:51 -0700
Message-Id: <20200708003952.21831-9-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200708003952.21831-1-daniele.ceraolospurio@intel.com>
References: <20200708003952.21831-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 8/9] drm/i915: gt-fy sseu debugfs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ahead of moving the sseu debugfs logic under gt/, update the functions
to use intel_gt where possible to make the move cleaner.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 93 +++++++++++++++--------------
 1 file changed, 49 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 69acc6990a66..5ba9f1c03eb0 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1578,31 +1578,31 @@ i915_cache_sharing_set(void *data, u64 val)
 	return 0;
 }
 
-static void
-intel_sseu_copy_subslices(const struct sseu_dev_info *sseu, int slice,
-			  u8 *to_mask)
+DEFINE_SIMPLE_ATTRIBUTE(i915_cache_sharing_fops,
+			i915_cache_sharing_get, i915_cache_sharing_set,
+			"%llu\n");
+
+static void sseu_copy_subslices(const struct sseu_dev_info *sseu,
+				int slice, u8 *to_mask)
 {
 	int offset = slice * sseu->ss_stride;
 
 	memcpy(&to_mask[offset], &sseu->subslice_mask[offset], sseu->ss_stride);
 }
 
-DEFINE_SIMPLE_ATTRIBUTE(i915_cache_sharing_fops,
-			i915_cache_sharing_get, i915_cache_sharing_set,
-			"%llu\n");
-
-static void cherryview_sseu_device_status(struct drm_i915_private *dev_priv,
+static void cherryview_sseu_device_status(struct intel_gt *gt,
 					  struct sseu_dev_info *sseu)
 {
 #define SS_MAX 2
+	struct intel_uncore *uncore = gt->uncore;
 	const int ss_max = SS_MAX;
 	u32 sig1[SS_MAX], sig2[SS_MAX];
 	int ss;
 
-	sig1[0] = I915_READ(CHV_POWER_SS0_SIG1);
-	sig1[1] = I915_READ(CHV_POWER_SS1_SIG1);
-	sig2[0] = I915_READ(CHV_POWER_SS0_SIG2);
-	sig2[1] = I915_READ(CHV_POWER_SS1_SIG2);
+	sig1[0] = intel_uncore_read(uncore, CHV_POWER_SS0_SIG1);
+	sig1[1] = intel_uncore_read(uncore, CHV_POWER_SS1_SIG1);
+	sig2[0] = intel_uncore_read(uncore, CHV_POWER_SS0_SIG2);
+	sig2[1] = intel_uncore_read(uncore, CHV_POWER_SS1_SIG2);
 
 	for (ss = 0; ss < ss_max; ss++) {
 		unsigned int eu_cnt;
@@ -1624,11 +1624,12 @@ static void cherryview_sseu_device_status(struct drm_i915_private *dev_priv,
 #undef SS_MAX
 }
 
-static void gen10_sseu_device_status(struct drm_i915_private *dev_priv,
+static void gen10_sseu_device_status(struct intel_gt *gt,
 				     struct sseu_dev_info *sseu)
 {
 #define SS_MAX 6
-	const struct intel_gt_info *info = &dev_priv->gt.info;
+	struct intel_uncore *uncore = gt->uncore;
+	const struct intel_gt_info *info = &gt->info;
 	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
 	int s, ss;
 
@@ -1639,10 +1640,12 @@ static void gen10_sseu_device_status(struct drm_i915_private *dev_priv,
 		 * although this seems wrong because it would leave many
 		 * subslices without ACK.
 		 */
-		s_reg[s] = I915_READ(GEN10_SLICE_PGCTL_ACK(s)) &
+		s_reg[s] = intel_uncore_read(uncore, GEN10_SLICE_PGCTL_ACK(s)) &
 			GEN10_PGCTL_VALID_SS_MASK(s);
-		eu_reg[2 * s] = I915_READ(GEN10_SS01_EU_PGCTL_ACK(s));
-		eu_reg[2 * s + 1] = I915_READ(GEN10_SS23_EU_PGCTL_ACK(s));
+		eu_reg[2 * s] = intel_uncore_read(uncore,
+						  GEN10_SS01_EU_PGCTL_ACK(s));
+		eu_reg[2 * s + 1] = intel_uncore_read(uncore,
+						      GEN10_SS23_EU_PGCTL_ACK(s));
 	}
 
 	eu_mask[0] = GEN9_PGCTL_SSA_EU08_ACK |
@@ -1660,7 +1663,7 @@ static void gen10_sseu_device_status(struct drm_i915_private *dev_priv,
 			continue;
 
 		sseu->slice_mask |= BIT(s);
-		intel_sseu_copy_subslices(&info->sseu, s, sseu->subslice_mask);
+		sseu_copy_subslices(&info->sseu, s, sseu->subslice_mask);
 
 		for (ss = 0; ss < info->sseu.max_subslices; ss++) {
 			unsigned int eu_cnt;
@@ -1681,18 +1684,19 @@ static void gen10_sseu_device_status(struct drm_i915_private *dev_priv,
 #undef SS_MAX
 }
 
-static void gen9_sseu_device_status(struct drm_i915_private *dev_priv,
+static void gen9_sseu_device_status(struct intel_gt *gt,
 				    struct sseu_dev_info *sseu)
 {
 #define SS_MAX 3
-	const struct intel_gt_info *info = &dev_priv->gt.info;
+	struct intel_uncore *uncore = gt->uncore;
+	const struct intel_gt_info *info = &gt->info;
 	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
 	int s, ss;
 
 	for (s = 0; s < info->sseu.max_slices; s++) {
-		s_reg[s] = I915_READ(GEN9_SLICE_PGCTL_ACK(s));
-		eu_reg[2*s] = I915_READ(GEN9_SS01_EU_PGCTL_ACK(s));
-		eu_reg[2*s + 1] = I915_READ(GEN9_SS23_EU_PGCTL_ACK(s));
+		s_reg[s] = intel_uncore_read(uncore, GEN9_SLICE_PGCTL_ACK(s));
+		eu_reg[2*s] = intel_uncore_read(uncore, GEN9_SS01_EU_PGCTL_ACK(s));
+		eu_reg[2*s + 1] = intel_uncore_read(uncore, GEN9_SS23_EU_PGCTL_ACK(s));
 	}
 
 	eu_mask[0] = GEN9_PGCTL_SSA_EU08_ACK |
@@ -1711,16 +1715,16 @@ static void gen9_sseu_device_status(struct drm_i915_private *dev_priv,
 
 		sseu->slice_mask |= BIT(s);
 
-		if (IS_GEN9_BC(dev_priv))
-			intel_sseu_copy_subslices(&info->sseu, s,
-						  sseu->subslice_mask);
+		if (IS_GEN9_BC(gt->i915))
+			sseu_copy_subslices(&info->sseu, s,
+					    sseu->subslice_mask);
 
 		for (ss = 0; ss < info->sseu.max_subslices; ss++) {
 			unsigned int eu_cnt;
 			u8 ss_idx = s * info->sseu.ss_stride +
 				    ss / BITS_PER_BYTE;
 
-			if (IS_GEN9_LP(dev_priv)) {
+			if (IS_GEN9_LP(gt->i915)) {
 				if (!(s_reg[s] & (GEN9_PGCTL_SS_ACK(ss))))
 					/* skip disabled subslice */
 					continue;
@@ -1740,11 +1744,11 @@ static void gen9_sseu_device_status(struct drm_i915_private *dev_priv,
 #undef SS_MAX
 }
 
-static void bdw_sseu_device_status(struct drm_i915_private *dev_priv,
+static void bdw_sseu_device_status(struct intel_gt *gt,
 				   struct sseu_dev_info *sseu)
 {
-	const struct intel_gt_info *info = &dev_priv->gt.info;
-	u32 slice_info = I915_READ(GEN8_GT_SLICE_INFO);
+	const struct intel_gt_info *info = &gt->info;
+	u32 slice_info = intel_uncore_read(gt->uncore, GEN8_GT_SLICE_INFO);
 	int s;
 
 	sseu->slice_mask = slice_info & GEN8_LSLICESTAT_MASK;
@@ -1752,8 +1756,8 @@ static void bdw_sseu_device_status(struct drm_i915_private *dev_priv,
 	if (sseu->slice_mask) {
 		sseu->eu_per_subslice = info->sseu.eu_per_subslice;
 		for (s = 0; s < fls(sseu->slice_mask); s++)
-			intel_sseu_copy_subslices(&info->sseu, s,
-						  sseu->subslice_mask);
+			sseu_copy_subslices(&info->sseu, s,
+					    sseu->subslice_mask);
 		sseu->eu_total = sseu->eu_per_subslice *
 				 intel_sseu_subslice_total(sseu);
 
@@ -1805,12 +1809,13 @@ static void i915_print_sseu_info(struct seq_file *m, bool is_available_info,
 
 static int i915_sseu_status(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	const struct intel_gt_info *info = &dev_priv->gt.info;
+	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct intel_gt *gt = &i915->gt;
+	const struct intel_gt_info *info = &gt->info;
 	struct sseu_dev_info sseu;
 	intel_wakeref_t wakeref;
 
-	if (INTEL_GEN(dev_priv) < 8)
+	if (INTEL_GEN(i915) < 8)
 		return -ENODEV;
 
 	seq_puts(m, "SSEU Device Info\n");
@@ -1822,15 +1827,15 @@ static int i915_sseu_status(struct seq_file *m, void *unused)
 			    info->sseu.max_subslices,
 			    info->sseu.max_eus_per_subslice);
 
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
-		if (IS_CHERRYVIEW(dev_priv))
-			cherryview_sseu_device_status(dev_priv, &sseu);
-		else if (IS_BROADWELL(dev_priv))
-			bdw_sseu_device_status(dev_priv, &sseu);
-		else if (IS_GEN(dev_priv, 9))
-			gen9_sseu_device_status(dev_priv, &sseu);
-		else if (INTEL_GEN(dev_priv) >= 10)
-			gen10_sseu_device_status(dev_priv, &sseu);
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		if (IS_CHERRYVIEW(i915))
+			cherryview_sseu_device_status(gt, &sseu);
+		else if (IS_BROADWELL(i915))
+			bdw_sseu_device_status(gt, &sseu);
+		else if (IS_GEN(i915, 9))
+			gen9_sseu_device_status(gt, &sseu);
+		else if (INTEL_GEN(i915) >= 10)
+			gen10_sseu_device_status(gt, &sseu);
 	}
 
 	i915_print_sseu_info(m, false, &sseu);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
