Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F32BF163633
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:33:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E14AB6EACA;
	Tue, 18 Feb 2020 22:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93ACF6EA97
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 22:33:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 14:33:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="434264058"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga005.fm.intel.com with ESMTP; 18 Feb 2020 14:33:42 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 14:33:19 -0800
Message-Id: <20200218223327.11058-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
References: <20200218223327.11058-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 02/10] drm/i915/guc: Kill USES_GUC macro
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

use intel_uc_uses_guc() directly instead, to be consistent in the way we
check what we want to do with the GuC.

v2: split guc_log_info changes to their own patch (Michal)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c |  2 +-
 drivers/gpu/drm/i915/i915_debugfs.c  | 15 +++++++++------
 drivers/gpu/drm/i915/i915_drv.h      |  1 -
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 7204e1c3de49..41a00281f364 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -427,7 +427,7 @@ static int ggtt_reserve_guc_top(struct i915_ggtt *ggtt)
 	u64 size;
 	int ret;
 
-	if (!USES_GUC(ggtt->vm.i915))
+	if (!intel_uc_uses_guc(&ggtt->vm.gt->uc))
 		return 0;
 
 	GEM_BUG_ON(ggtt->vm.total <= GUC_GGTT_TOP);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 4afa5c48994e..81b3851ddca2 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1558,11 +1558,12 @@ static void i915_guc_log_info(struct seq_file *m, struct intel_guc_log *log)
 static int i915_guc_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
+	struct intel_uc *uc = &dev_priv->gt.uc;
 
-	if (!USES_GUC(dev_priv))
+	if (!intel_uc_uses_guc(uc))
 		return -ENODEV;
 
-	i915_guc_log_info(m, &dev_priv->gt.uc.guc.log);
+	i915_guc_log_info(m, &uc->guc.log);
 
 	/* Add more as required ... */
 
@@ -1663,11 +1664,12 @@ static int i915_guc_log_dump(struct seq_file *m, void *data)
 static int i915_guc_log_level_get(void *data, u64 *val)
 {
 	struct drm_i915_private *dev_priv = data;
+	struct intel_uc *uc = &dev_priv->gt.uc;
 
-	if (!USES_GUC(dev_priv))
+	if (!intel_uc_uses_guc(uc))
 		return -ENODEV;
 
-	*val = intel_guc_log_get_level(&dev_priv->gt.uc.guc.log);
+	*val = intel_guc_log_get_level(&uc->guc.log);
 
 	return 0;
 }
@@ -1675,11 +1677,12 @@ static int i915_guc_log_level_get(void *data, u64 *val)
 static int i915_guc_log_level_set(void *data, u64 val)
 {
 	struct drm_i915_private *dev_priv = data;
+	struct intel_uc *uc = &dev_priv->gt.uc;
 
-	if (!USES_GUC(dev_priv))
+	if (!intel_uc_uses_guc(uc))
 		return -ENODEV;
 
-	return intel_guc_log_set_level(&dev_priv->gt.uc.guc.log, val);
+	return intel_guc_log_set_level(&uc->guc.log, val);
 }
 
 DEFINE_SIMPLE_ATTRIBUTE(i915_guc_log_level_fops,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3330b538d379..fb397a52ed33 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1694,7 +1694,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_GT_UC(dev_priv)	(INTEL_INFO(dev_priv)->has_gt_uc)
 
 /* Having GuC is not the same as using GuC */
-#define USES_GUC(dev_priv)		intel_uc_uses_guc(&(dev_priv)->gt.uc)
 #define USES_GUC_SUBMISSION(dev_priv)	intel_uc_uses_guc_submission(&(dev_priv)->gt.uc)
 
 #define HAS_POOLED_EU(dev_priv)	(INTEL_INFO(dev_priv)->has_pooled_eu)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
