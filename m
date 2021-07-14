Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA0F3C7CA9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F23F6E193;
	Wed, 14 Jul 2021 03:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 464AC6E167
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210256261"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="210256261"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:53 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031500"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:07 -0700
Message-Id: <20210714031540.3539704-18-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 17/50] drm/i915/xehpsdv: Add maximum sseu
 limits
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

Due to the removal of legacy slices and the transition to a
gslice/cslice/mslice/etc. design, we'll internally store all DSS under
"slice0."

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_sseu.c         | 5 ++++-
 drivers/gpu/drm/i915/gt/intel_sseu.h         | 2 +-
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c | 2 +-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 5d1b7d06c96b..16c0552fcd1d 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -145,7 +145,10 @@ static void gen12_sseu_info_init(struct intel_gt *gt)
 	 * across the entire device. Then calculate out the DSS for each
 	 * workload type within that software slice.
 	 */
-	intel_sseu_set_info(sseu, 1, 6, 16);
+	if (IS_XEHPSDV(gt->i915))
+		intel_sseu_set_info(sseu, 1, 32, 16);
+	else
+		intel_sseu_set_info(sseu, 1, 6, 16);
 
 	/*
 	 * As mentioned above, Xe_HP does not have the concept of a slice.
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
index 74487650b08f..204ea6709460 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.h
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
@@ -16,7 +16,7 @@ struct intel_gt;
 struct drm_printer;
 
 #define GEN_MAX_SLICES		(6) /* CNL upper bound */
-#define GEN_MAX_SUBSLICES	(8) /* ICL upper bound */
+#define GEN_MAX_SUBSLICES	(32) /* XEHPSDV upper bound */
 #define GEN_SSEU_STRIDE(max_entries) DIV_ROUND_UP(max_entries, BITS_PER_BYTE)
 #define GEN_MAX_SUBSLICE_STRIDE GEN_SSEU_STRIDE(GEN_MAX_SUBSLICES)
 #define GEN_MAX_EUS		(16) /* TGL upper bound */
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
index 714fe8495775..a424150b052e 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
@@ -53,7 +53,7 @@ static void cherryview_sseu_device_status(struct intel_gt *gt,
 static void gen10_sseu_device_status(struct intel_gt *gt,
 				     struct sseu_dev_info *sseu)
 {
-#define SS_MAX 6
+#define SS_MAX 8
 	struct intel_uncore *uncore = gt->uncore;
 	const struct intel_gt_info *info = &gt->info;
 	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
