Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CBA958E65
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 21:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0017A10E878;
	Tue, 20 Aug 2024 19:02:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BY7l2rYc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE0FE10E877;
 Tue, 20 Aug 2024 19:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724180521; x=1755716521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=04/aO+GWWHoN6rlXCZqS+tCL5zKwzTWL1lb7LEMFXr4=;
 b=BY7l2rYc9UkP8r1vJzqJNQhe+MAvYCYC/IBnOUnhB2KddQT10V/1FjTj
 QvWfvmCkhC2Y259U7hRVkHy1POmqoYewofRIcXTyHboqZTiqlfPDyjrvh
 nDJZJ47sSq5GEykuP0UXd00RunRX1QLYOpyNE+zHIXSVFBYD9UqX7p5tN
 L5amfRv0E/FdYnWQ0BDdW65zI3QBcHY2uMh8nRR0Xl3+a6oa1OY6uJL5n
 3zbvfxZ5CWPIFvMUnLZFOCslyExmYGzHQRpYCEMkvEuhJcFKWaOIEg+hJ
 zNt8zt96TEdWLZDazwlP+AS/PW1DeU2wg2kz3lkOOblKYFE5o5jtcJjqn Q==;
X-CSE-ConnectionGUID: 4eeAoMwdSAuSzUyP5+A+kw==
X-CSE-MsgGUID: 8yDLSHJCR82LisIk6iXA3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="26258560"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="26258560"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:52 -0700
X-CSE-ConnectionGUID: 5LqWvSHuTlyJhHzPZySSMw==
X-CSE-MsgGUID: 0+6E5W+qRTa3Dln8EZsFKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="61362450"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 10/10] drm/xe: remove display stepping handling
Date: Tue, 20 Aug 2024 22:00:43 +0300
Message-Id: <19bc7a3197f2bc6f3c0d337487ab19f3b7f5612a.1724180287.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724180287.git.jani.nikula@intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

The code is now unused. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/xe_debugfs.c    |  3 +-
 drivers/gpu/drm/xe/xe_pci.c        |  3 +-
 drivers/gpu/drm/xe/xe_step.c       | 57 +++++++++++++-----------------
 drivers/gpu/drm/xe/xe_step_types.h |  1 -
 4 files changed, 27 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_debugfs.c b/drivers/gpu/drm/xe/xe_debugfs.c
index 1011e5d281fa..a64bae36e0e3 100644
--- a/drivers/gpu/drm/xe/xe_debugfs.c
+++ b/drivers/gpu/drm/xe/xe_debugfs.c
@@ -47,10 +47,9 @@ static int info(struct seq_file *m, void *data)
 
 	drm_printf(&p, "graphics_verx100 %d\n", xe->info.graphics_verx100);
 	drm_printf(&p, "media_verx100 %d\n", xe->info.media_verx100);
-	drm_printf(&p, "stepping G:%s M:%s D:%s B:%s\n",
+	drm_printf(&p, "stepping G:%s M:%s B:%s\n",
 		   xe_step_name(xe->info.step.graphics),
 		   xe_step_name(xe->info.step.media),
-		   xe_step_name(xe->info.step.display),
 		   xe_step_name(xe->info.step.basedie));
 	drm_printf(&p, "is_dgfx %s\n", str_yes_no(xe->info.is_dgfx));
 	drm_printf(&p, "platform %d\n", xe->info.platform);
diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 3c34b032ebf4..0c2342988650 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -838,10 +838,9 @@ static int xe_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		xe->info.dma_mask_size, xe->info.tile_count,
 		xe->info.has_heci_gscfi, xe->info.has_heci_cscfi);
 
-	drm_dbg(&xe->drm, "Stepping = (G:%s, M:%s, D:%s, B:%s)\n",
+	drm_dbg(&xe->drm, "Stepping = (G:%s, M:%s, B:%s)\n",
 		xe_step_name(xe->info.step.graphics),
 		xe_step_name(xe->info.step.media),
-		xe_step_name(xe->info.step.display),
 		xe_step_name(xe->info.step.basedie));
 
 	drm_dbg(&xe->drm, "SR-IOV support: %s (mode: %s)\n",
diff --git a/drivers/gpu/drm/xe/xe_step.c b/drivers/gpu/drm/xe/xe_step.c
index eaf1b718f26c..c77b5c317fa0 100644
--- a/drivers/gpu/drm/xe/xe_step.c
+++ b/drivers/gpu/drm/xe/xe_step.c
@@ -28,23 +28,17 @@
  * use a macro to define these to make it easier to identify the platforms
  * where the two steppings can deviate.
  */
-#define COMMON_GT_MEDIA_STEP(x_)	\
-	.graphics = STEP_##x_,		\
-	.media = STEP_##x_
-
 #define COMMON_STEP(x_)			\
-	COMMON_GT_MEDIA_STEP(x_),	\
 	.graphics = STEP_##x_,		\
-	.media = STEP_##x_,		\
-	.display = STEP_##x_
+	.media = STEP_##x_
 
 __diag_push();
 __diag_ignore_all("-Woverride-init", "Allow field overrides in table");
 
 /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the same HW */
 static const struct xe_step_info tgl_revids[] = {
-	[0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_B0 },
-	[1] = { COMMON_GT_MEDIA_STEP(B0), .display = STEP_D0 },
+	[0] = { COMMON_STEP(A0) },
+	[1] = { COMMON_STEP(B0) },
 };
 
 static const struct xe_step_info dg1_revids[] = {
@@ -53,49 +47,49 @@ static const struct xe_step_info dg1_revids[] = {
 };
 
 static const struct xe_step_info adls_revids[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_A0 },
-	[0x1] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_A2 },
-	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display = STEP_B0 },
-	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display = STEP_B0 },
-	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display = STEP_C0 },
+	[0x0] = { COMMON_STEP(A0) },
+	[0x1] = { COMMON_STEP(A0) },
+	[0x4] = { COMMON_STEP(B0) },
+	[0x8] = { COMMON_STEP(C0) },
+	[0xC] = { COMMON_STEP(D0) },
 };
 
 static const struct xe_step_info adls_rpls_revids[] = {
-	[0x4] = { COMMON_GT_MEDIA_STEP(D0), .display = STEP_D0 },
-	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display = STEP_C0 },
+	[0x4] = { COMMON_STEP(D0) },
+	[0xC] = { COMMON_STEP(D0) },
 };
 
 static const struct xe_step_info adlp_revids[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_A0 },
-	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display = STEP_B0 },
-	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display = STEP_C0 },
-	[0xC] = { COMMON_GT_MEDIA_STEP(C0), .display = STEP_D0 },
+	[0x0] = { COMMON_STEP(A0) },
+	[0x4] = { COMMON_STEP(B0) },
+	[0x8] = { COMMON_STEP(C0) },
+	[0xC] = { COMMON_STEP(C0) },
 };
 
 static const struct xe_step_info adlp_rpl_revids[] = {
-	[0x4] = { COMMON_GT_MEDIA_STEP(C0), .display = STEP_E0 },
+	[0x4] = { COMMON_STEP(C0) },
 };
 
 static const struct xe_step_info adln_revids[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_D0 },
+	[0x0] = { COMMON_STEP(A0) },
 };
 
 static const struct xe_step_info dg2_g10_revid_step_tbl[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_A0 },
-	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display = STEP_A0 },
-	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display = STEP_B0 },
-	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display = STEP_C0 },
+	[0x0] = { COMMON_STEP(A0) },
+	[0x1] = { COMMON_STEP(A1) },
+	[0x4] = { COMMON_STEP(B0) },
+	[0x8] = { COMMON_STEP(C0) },
 };
 
 static const struct xe_step_info dg2_g11_revid_step_tbl[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_B0 },
-	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display = STEP_C0 },
-	[0x5] = { COMMON_GT_MEDIA_STEP(B1), .display = STEP_C0 },
+	[0x0] = { COMMON_STEP(A0) },
+	[0x4] = { COMMON_STEP(B0) },
+	[0x5] = { COMMON_STEP(B1) },
 };
 
 static const struct xe_step_info dg2_g12_revid_step_tbl[] = {
-	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display = STEP_C0 },
-	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display = STEP_C0 },
+	[0x0] = { COMMON_STEP(A0) },
+	[0x1] = { COMMON_STEP(A1) },
 };
 
 static const struct xe_step_info pvc_revid_step_tbl[] = {
@@ -195,7 +189,6 @@ struct xe_step_info xe_step_pre_gmdid_get(struct xe_device *xe)
 		} else {
 			drm_dbg(&xe->drm, "Using future steppings\n");
 			step.graphics = STEP_FUTURE;
-			step.display = STEP_FUTURE;
 		}
 	}
 
diff --git a/drivers/gpu/drm/xe/xe_step_types.h b/drivers/gpu/drm/xe/xe_step_types.h
index 95b38d2d6c50..d978cc2512f2 100644
--- a/drivers/gpu/drm/xe/xe_step_types.h
+++ b/drivers/gpu/drm/xe/xe_step_types.h
@@ -11,7 +11,6 @@
 struct xe_step_info {
 	u8 graphics;
 	u8 media;
-	u8 display;
 	u8 basedie;
 };
 
-- 
2.39.2

