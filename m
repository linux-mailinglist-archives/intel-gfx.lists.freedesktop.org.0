Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB0913B6E8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 02:32:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 758C16E80B;
	Wed, 15 Jan 2020 01:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4628A6E80B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 01:32:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 17:32:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; d="scan'208";a="305337548"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 14 Jan 2020 17:32:26 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 17:31:37 -0800
Message-Id: <20200115013143.34961-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/guc: Kill USES_GUC macro
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

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c |  2 +-
 drivers/gpu/drm/i915/i915_debugfs.c  | 19 ++++++++++---------
 drivers/gpu/drm/i915/i915_drv.h      |  1 -
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 79096722ce16..bb4aa923dbd9 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -462,7 +462,7 @@ static int ggtt_reserve_guc_top(struct i915_ggtt *ggtt)
 	u64 size;
 	int ret;
 
-	if (!USES_GUC(ggtt->vm.i915))
+	if (!intel_uc_uses_guc(&ggtt->vm.gt->uc))
 		return 0;
 
 	GEM_BUG_ON(ggtt->vm.total <= GUC_GGTT_TOP);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index d5a9b8a964c2..c2f480defc71 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1752,10 +1752,8 @@ stringify_guc_log_type(enum guc_log_buffer_type type)
 	return "";
 }
 
-static void i915_guc_log_info(struct seq_file *m,
-			      struct drm_i915_private *dev_priv)
+static void i915_guc_log_info(struct seq_file *m, struct intel_guc_log *log)
 {
-	struct intel_guc_log *log = &dev_priv->gt.uc.guc.log;
 	enum guc_log_buffer_type type;
 
 	if (!intel_guc_log_relay_created(log)) {
@@ -1779,11 +1777,12 @@ static void i915_guc_log_info(struct seq_file *m,
 static int i915_guc_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
+	struct intel_uc *uc = &dev_priv->gt.uc;
 
-	if (!USES_GUC(dev_priv))
+	if (!intel_uc_uses_guc(uc))
 		return -ENODEV;
 
-	i915_guc_log_info(m, dev_priv);
+	i915_guc_log_info(m, &uc->guc.log);
 
 	/* Add more as required ... */
 
@@ -1884,11 +1883,12 @@ static int i915_guc_log_dump(struct seq_file *m, void *data)
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
@@ -1896,11 +1896,12 @@ static int i915_guc_log_level_get(void *data, u64 *val)
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
index 077af22b8340..ad0019cd2604 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1719,7 +1719,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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
