Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DAEB14BC5
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 11:58:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A20F10E606;
	Tue, 29 Jul 2025 09:58:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ARThUS9i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4603B10E1DD;
 Tue, 29 Jul 2025 09:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753783079; x=1785319079;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=34wGe9ufCtq6zuhv2DjVGXm3fguobB+YGwwLAtv78NM=;
 b=ARThUS9i3AmtAPhS5f13nPZeRl1uRrtSeQ1oW6xR/8HK8MSirVvw4zgJ
 Et36fjAtw3i4nMfXu8PGKCM6KcH51Id1lT1tF5nY5texDk46B/Y7jaCco
 YSHZJo4jjn2mF0591gU3V3yuSa5HCHQ6lMGLKx74Z2LFdCz2LARBFl76Z
 MdL6JXlhTnxxz5/P9mVRv+sIj6Q+k6nC4pceE0Q18zkST7fsUhZJbDsTv
 DxJ3ptaYuamzCdHUMR0kuVgZT/Qa4ug/6lDnjmrCJiu10RWPpfOk0Iqhn
 CRDXw8itMFAjlMJSVNTbH+7VTaCkRAw8iQFv3JlNLZ4icLtXUHNvhboMA w==;
X-CSE-ConnectionGUID: hcXpcDxDSqm6pKlV9VELEQ==
X-CSE-MsgGUID: qib6aB4JS92TVbARJRdoMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="81484984"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="81484984"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 02:57:59 -0700
X-CSE-ConnectionGUID: iYVcildBS9aR6K0Vczm4LA==
X-CSE-MsgGUID: 4yqnWMJzTVKgE29XNSBLYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="167962150"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 02:57:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 3/3] drm/i915: use drm->debugfs_root for creating debugfs
 files
Date: Tue, 29 Jul 2025 12:57:39 +0300
Message-Id: <ba8a2a7ec10e54b4d0a96926ef20c96e268c0b94.1753782998.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753782998.git.jani.nikula@intel.com>
References: <cover.1753782998.git.jani.nikula@intel.com>
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

Since commit 0b30d57acafc ("drm/debugfs: rework debugfs directory
creation v5") we should be using drm->debugfs_root instead of
minor->debugfs_root for creating debugfs files.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c   |  5 +++--
 drivers/gpu/drm/i915/i915_debugfs.c          | 20 +++++++++-----------
 drivers/gpu/drm/i915/i915_debugfs_params.c   |  4 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c        |  6 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  8 ++++----
 5 files changed, 21 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
index 4dc23b8d3aa2..dcd40b30a96b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
@@ -82,14 +82,15 @@ static void gt_debugfs_register(struct intel_gt *gt, struct dentry *root)
 
 void intel_gt_debugfs_register(struct intel_gt *gt)
 {
+	struct dentry *debugfs_root = gt->i915->drm.debugfs_root;
 	struct dentry *root;
 	char gtname[4];
 
-	if (!gt->i915->drm.primary->debugfs_root)
+	if (!debugfs_root)
 		return;
 
 	snprintf(gtname, sizeof(gtname), "gt%u", gt->info.id);
-	root = debugfs_create_dir(gtname, gt->i915->drm.primary->debugfs_root);
+	root = debugfs_create_dir(gtname, debugfs_root);
 	if (IS_ERR(root))
 		return;
 
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 967c0501e91e..23fa098c4479 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -720,26 +720,24 @@ static const struct i915_debugfs_files {
 	{"i915_gem_drop_caches", &i915_drop_caches_fops},
 };
 
-void i915_debugfs_register(struct drm_i915_private *dev_priv)
+void i915_debugfs_register(struct drm_i915_private *i915)
 {
-	struct drm_minor *minor = dev_priv->drm.primary;
+	struct dentry *debugfs_root = i915->drm.debugfs_root;
 	int i;
 
-	i915_debugfs_params(dev_priv);
+	i915_debugfs_params(i915);
 
-	debugfs_create_file("i915_forcewake_user", S_IRUSR, minor->debugfs_root,
-			    to_i915(minor->dev), &i915_forcewake_fops);
+	debugfs_create_file("i915_forcewake_user", S_IRUSR, debugfs_root,
+			    i915, &i915_forcewake_fops);
 	for (i = 0; i < ARRAY_SIZE(i915_debugfs_files); i++) {
-		debugfs_create_file(i915_debugfs_files[i].name,
-				    S_IRUGO | S_IWUSR,
-				    minor->debugfs_root,
-				    to_i915(minor->dev),
+		debugfs_create_file(i915_debugfs_files[i].name, S_IRUGO | S_IWUSR,
+				    debugfs_root, i915,
 				    i915_debugfs_files[i].fops);
 	}
 
 	drm_debugfs_create_files(i915_debugfs_list,
 				 ARRAY_SIZE(i915_debugfs_list),
-				 minor->debugfs_root, minor);
+				 debugfs_root, i915->drm.primary);
 
-	i915_gpu_error_debugfs_register(dev_priv);
+	i915_gpu_error_debugfs_register(i915);
 }
diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c b/drivers/gpu/drm/i915/i915_debugfs_params.c
index 33d2dcb0de65..89ab5eb14779 100644
--- a/drivers/gpu/drm/i915/i915_debugfs_params.c
+++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
@@ -248,11 +248,11 @@ i915_debugfs_create_charp(const char *name, umode_t mode,
 /* add a subdirectory with files for each i915 param */
 struct dentry *i915_debugfs_params(struct drm_i915_private *i915)
 {
-	struct drm_minor *minor = i915->drm.primary;
+	struct dentry *debugfs_root = i915->drm.debugfs_root;
 	struct i915_params *params = &i915->params;
 	struct dentry *dir;
 
-	dir = debugfs_create_dir("i915_params", minor->debugfs_root);
+	dir = debugfs_create_dir("i915_params", debugfs_root);
 	if (IS_ERR(dir))
 		return dir;
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index f434b6825fc2..41256fbd1ce3 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -2445,11 +2445,11 @@ static const struct file_operations i915_error_state_fops = {
 
 void i915_gpu_error_debugfs_register(struct drm_i915_private *i915)
 {
-	struct drm_minor *minor = i915->drm.primary;
+	struct dentry *debugfs_root = i915->drm.debugfs_root;
 
-	debugfs_create_file("i915_error_state", 0644, minor->debugfs_root, i915,
+	debugfs_create_file("i915_error_state", 0644, debugfs_root, i915,
 			    &i915_error_state_fops);
-	debugfs_create_file("i915_gpu_info", 0644, minor->debugfs_root, i915,
+	debugfs_create_file("i915_gpu_info", 0644, debugfs_root, i915,
 			    &i915_gpu_info_fops);
 }
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
index e07c5b380789..545f79eb0cc5 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
@@ -69,17 +69,17 @@ DEFINE_SIMPLE_ATTRIBUTE(pxp_terminate_fops, pxp_terminate_get, pxp_terminate_set
 
 void intel_pxp_debugfs_register(struct intel_pxp *pxp)
 {
-	struct drm_minor *minor;
+	struct dentry *debugfs_root;
 	struct dentry *pxproot;
 
 	if (!intel_pxp_is_supported(pxp))
 		return;
 
-	minor = pxp->ctrl_gt->i915->drm.primary;
-	if (!minor->debugfs_root)
+	debugfs_root = pxp->ctrl_gt->i915->drm.debugfs_root;
+	if (!debugfs_root)
 		return;
 
-	pxproot = debugfs_create_dir("pxp", minor->debugfs_root);
+	pxproot = debugfs_create_dir("pxp", debugfs_root);
 	if (IS_ERR(pxproot))
 		return;
 
-- 
2.39.5

