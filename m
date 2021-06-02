Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0572E39934A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 21:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7D16EDFD;
	Wed,  2 Jun 2021 19:12:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F202E6EDF4
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 19:12:17 +0000 (UTC)
IronPort-SDR: RBJdyruyzOGnTNVXeinnex25PasmyxRvuNy9KyVfziYXgAUmw7XLOUM2XPkH5xsHBfzzn+tefP
 dcCBzPBx9LAQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="203901852"
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="203901852"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 12:12:01 -0700
IronPort-SDR: mzJprd1gVLIqzSiJox1s21LYujOa/NqlIr25mq+0P4Oh7lecFKP5B+v/nAAEoxfCR90drL++fz
 /2gtAmIh4akw==
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="479828613"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 12:12:00 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Jun 2021 12:11:43 -0700
Message-Id: <20210602191148.3344574-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210602191148.3344574-1-lucas.demarchi@intel.com>
References: <20210602191148.3344574-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/7] drm/i915/gt: Add remaining conversions
 to GRAPHICS_VER
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

For some reason coccinelle misses a few cases in gt with calls to
INTEL_GEN()/IS_GEN(). Do a manual conversion for those.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c      | 2 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 4 ++--
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c | 6 +++---
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
index 0389bceebd06..4270b5a34a83 100644
--- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
@@ -230,7 +230,7 @@ static int drpc_show(struct seq_file *m, void *unused)
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
 		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 			err = vlv_drpc(m);
-		else if (INTEL_GEN(i915) >= 6)
+		else if (GRAPHICS_VER(i915) >= 6)
 			err = gen6_drpc(m);
 		else
 			err = ilk_drpc(m);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 9ef349cd5cea..e113f93b3274 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -606,10 +606,10 @@ intel_engine_has_relative_mmio(const struct intel_engine_cs * const engine)
 }
 
 #define instdone_has_slice(dev_priv___, sseu___, slice___) \
-	((IS_GEN(dev_priv___, 7) ? 1 : ((sseu___)->slice_mask)) & BIT(slice___))
+	((GRAPHICS_VER(dev_priv___) == 7 ? 1 : ((sseu___)->slice_mask)) & BIT(slice___))
 
 #define instdone_has_subslice(dev_priv__, sseu__, slice__, subslice__) \
-	(IS_GEN(dev_priv__, 7) ? (1 & BIT(subslice__)) : \
+	(GRAPHICS_VER(dev_priv__) == 7 ? (1 & BIT(subslice__)) : \
 	 intel_sseu_has_subslice(sseu__, 0, subslice__))
 
 #define for_each_instdone_slice_subslice(dev_priv_, sseu_, slice_, subslice_) \
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
index 51780282d872..714fe8495775 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
@@ -248,7 +248,7 @@ int intel_sseu_status(struct seq_file *m, struct intel_gt *gt)
 	struct sseu_dev_info sseu;
 	intel_wakeref_t wakeref;
 
-	if (INTEL_GEN(i915) < 8)
+	if (GRAPHICS_VER(i915) < 8)
 		return -ENODEV;
 
 	seq_puts(m, "SSEU Device Info\n");
@@ -265,9 +265,9 @@ int intel_sseu_status(struct seq_file *m, struct intel_gt *gt)
 			cherryview_sseu_device_status(gt, &sseu);
 		else if (IS_BROADWELL(i915))
 			bdw_sseu_device_status(gt, &sseu);
-		else if (IS_GEN(i915, 9))
+		else if (GRAPHICS_VER(i915) == 9)
 			gen9_sseu_device_status(gt, &sseu);
-		else if (INTEL_GEN(i915) >= 10)
+		else if (GRAPHICS_VER(i915) >= 10)
 			gen10_sseu_device_status(gt, &sseu);
 	}
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
