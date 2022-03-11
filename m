Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7524D69FF
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 23:55:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 405D310E037;
	Fri, 11 Mar 2022 22:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A1D310E036
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 22:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647039307; x=1678575307;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qB5CbRqbQJ8XGBIzgxkm5bKPVbTpzzwVHG5d2KiytEE=;
 b=YHild3nGB2F3lDB01nkB1cPMO/ry3nH4R4NSk7TDSLn3MYgOIRKfTwG/
 8E+hSV9AXTwrn6qo3c98g4xIt95fSs8Y4K2qI7YTEyuPwuatQiZsSribT
 B+NrRdjl+RkW3AgZtFs7w37zZKKQu0E1OuAUDQAGVsXRrcsAYz6Nky5nN
 9NLnNPYFvdgN+JA2x1iC5Xjk5+wcm2WWIhcKct0gFzoy1a4nUYDdP7qvg
 LzuC4I9nHXrCrA+WIjv0oRjvMupwpem9KpXl8Irj5DMtH/hcC5J1XMAIv
 UeK4p7UoPja4F09OhrX8lrQ7aukhlW02tsXbly0pYe0EGqbV98JoikIzB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="342095748"
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="342095748"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 14:55:06 -0800
X-IronPort-AV: E=Sophos;i="5.90,175,1643702400"; d="scan'208";a="514662804"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 14:55:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 14:54:59 -0800
Message-Id: <20220311225459.385515-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311225459.385515-1-matthew.d.roper@intel.com>
References: <20220311225459.385515-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/xehp: Update topology dumps for
 Xe_HP
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

When running on Xe_HP or beyond, let's use an updated format for
describing topology in our error state dumps and debugfs to give a
more accurate view of the hardware:

 - Just report DSS directly without the legacy "slice0" output that's no
   longer meaningful.
 - Indicate whether each DSS is accessible for geometry and/or compute.
 - Rename "rcs_topology" to "sseu_topology" since the information
   reported is common to both RCS and CCS engines now.

v2:
 - Name static functions in a more consistent manner.  (Lucas)

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_sseu.c         | 54 ++++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_sseu.h         |  3 +-
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c |  8 +--
 drivers/gpu/drm/i915/i915_gpu_error.c        |  2 +-
 4 files changed, 50 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 614915ffbd37..9881a6790574 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -10,6 +10,8 @@
 #include "intel_gt_regs.h"
 #include "intel_sseu.h"
 
+#include "linux/string_helpers.h"
+
 void intel_sseu_set_info(struct sseu_dev_info *sseu, u8 max_slices,
 			 u8 max_subslices, u8 max_eus_per_subslice)
 {
@@ -35,8 +37,8 @@ intel_sseu_subslice_total(const struct sseu_dev_info *sseu)
 }
 
 static u32
-_intel_sseu_get_subslices(const struct sseu_dev_info *sseu,
-			  const u8 *subslice_mask, u8 slice)
+sseu_get_subslices(const struct sseu_dev_info *sseu,
+		   const u8 *subslice_mask, u8 slice)
 {
 	int i, offset = slice * sseu->ss_stride;
 	u32 mask = 0;
@@ -51,12 +53,17 @@ _intel_sseu_get_subslices(const struct sseu_dev_info *sseu,
 
 u32 intel_sseu_get_subslices(const struct sseu_dev_info *sseu, u8 slice)
 {
-	return _intel_sseu_get_subslices(sseu, sseu->subslice_mask, slice);
+	return sseu_get_subslices(sseu, sseu->subslice_mask, slice);
+}
+
+static u32 sseu_get_geometry_subslices(const struct sseu_dev_info *sseu)
+{
+	return sseu_get_subslices(sseu, sseu->geometry_subslice_mask, 0);
 }
 
 u32 intel_sseu_get_compute_subslices(const struct sseu_dev_info *sseu)
 {
-	return _intel_sseu_get_subslices(sseu, sseu->compute_subslice_mask, 0);
+	return sseu_get_subslices(sseu, sseu->compute_subslice_mask, 0);
 }
 
 void intel_sseu_set_subslices(struct sseu_dev_info *sseu, int slice,
@@ -720,16 +727,11 @@ void intel_sseu_dump(const struct sseu_dev_info *sseu, struct drm_printer *p)
 		   str_yes_no(sseu->has_eu_pg));
 }
 
-void intel_sseu_print_topology(const struct sseu_dev_info *sseu,
-			       struct drm_printer *p)
+static void sseu_print_hsw_topology(const struct sseu_dev_info *sseu,
+				    struct drm_printer *p)
 {
 	int s, ss;
 
-	if (sseu->max_slices == 0) {
-		drm_printf(p, "Unavailable\n");
-		return;
-	}
-
 	for (s = 0; s < sseu->max_slices; s++) {
 		drm_printf(p, "slice%d: %u subslice(s) (0x%08x):\n",
 			   s, intel_sseu_subslices_per_slice(sseu, s),
@@ -744,6 +746,36 @@ void intel_sseu_print_topology(const struct sseu_dev_info *sseu,
 	}
 }
 
+static void sseu_print_xehp_topology(const struct sseu_dev_info *sseu,
+				     struct drm_printer *p)
+{
+	u32 g_dss_mask = sseu_get_geometry_subslices(sseu);
+	u32 c_dss_mask = intel_sseu_get_compute_subslices(sseu);
+	int dss;
+
+	for (dss = 0; dss < sseu->max_subslices; dss++) {
+		u16 enabled_eus = sseu_get_eus(sseu, 0, dss);
+
+		drm_printf(p, "DSS_%02d: G:%3s C:%3s, %2u EUs (0x%04hx)\n", dss,
+			   str_yes_no(g_dss_mask & BIT(dss)),
+			   str_yes_no(c_dss_mask & BIT(dss)),
+			   hweight16(enabled_eus), enabled_eus);
+	}
+}
+
+void intel_sseu_print_topology(struct drm_i915_private *i915,
+			       const struct sseu_dev_info *sseu,
+			       struct drm_printer *p)
+{
+	if (sseu->max_slices == 0) {
+		drm_printf(p, "Unavailable\n");
+	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+		sseu_print_xehp_topology(sseu, p);
+	} else {
+		sseu_print_hsw_topology(sseu, p);
+	}
+}
+
 u16 intel_slicemask_from_dssmask(u64 dss_mask, int dss_per_slice)
 {
 	u16 slice_mask = 0;
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
index b763b4e3dae6..5c078df4729c 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.h
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
@@ -139,7 +139,8 @@ u32 intel_sseu_make_rpcs(struct intel_gt *gt,
 			 const struct intel_sseu *req_sseu);
 
 void intel_sseu_dump(const struct sseu_dev_info *sseu, struct drm_printer *p);
-void intel_sseu_print_topology(const struct sseu_dev_info *sseu,
+void intel_sseu_print_topology(struct drm_i915_private *i915,
+			       const struct sseu_dev_info *sseu,
 			       struct drm_printer *p);
 
 u16 intel_slicemask_from_dssmask(u64 dss_mask, int dss_per_slice);
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
index a9d5bc49f361..6b944de48666 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
@@ -287,22 +287,22 @@ static int sseu_status_show(struct seq_file *m, void *unused)
 }
 DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(sseu_status);
 
-static int rcs_topology_show(struct seq_file *m, void *unused)
+static int sseu_topology_show(struct seq_file *m, void *unused)
 {
 	struct intel_gt *gt = m->private;
 	struct drm_printer p = drm_seq_file_printer(m);
 
-	intel_sseu_print_topology(&gt->info.sseu, &p);
+	intel_sseu_print_topology(gt->i915, &gt->info.sseu, &p);
 
 	return 0;
 }
-DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(rcs_topology);
+DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(sseu_topology);
 
 void intel_sseu_debugfs_register(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
 		{ "sseu_status", &sseu_status_fops, NULL },
-		{ "rcs_topology", &rcs_topology_fops, NULL },
+		{ "sseu_topology", &sseu_topology_fops, NULL },
 	};
 
 	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 866d485f47c2..a8acc6fbb299 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -712,7 +712,7 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
 	struct drm_printer p = i915_error_printer(m);
 
 	intel_gt_info_print(&gt->info, &p);
-	intel_sseu_print_topology(&gt->info.sseu, &p);
+	intel_sseu_print_topology(gt->_gt->i915, &gt->info.sseu, &p);
 }
 
 static void err_print_gt(struct drm_i915_error_state_buf *m,
-- 
2.34.1

