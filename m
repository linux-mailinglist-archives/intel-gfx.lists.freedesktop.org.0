Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3538AD5946
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 16:51:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7102410E6A4;
	Wed, 11 Jun 2025 14:51:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QE+MkeR0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4932610E687;
 Wed, 11 Jun 2025 14:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749653497; x=1781189497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=34wGe9ufCtq6zuhv2DjVGXm3fguobB+YGwwLAtv78NM=;
 b=QE+MkeR0IqskmwiNldVlxfXVhqGBSA+xwmu8uaRjP5AUdW+Gv6mEJFGN
 XKDd12FdyW2VI2murt7S5hQAgAjBNERA5Gk1Yvn/G/Vwxgym1NdZagh1b
 WoH0RWSqaEbItiw2qSLboOKZClAzEEOsjbW1HNzTTbbHXlicR8qfXF4tv
 2E5Dghi/8WzabLn2ADuGJWLi0pyrryFKxB5dU7Ibkwq+qqpqKG4SjvOP1
 t/SmUpWVryb+9QEVLU+/RsLx5vwEuNRoDynkZ6PpXhRzSeTyY9Nt+LFrc
 V5lhlQsHuyAYBrKBROqQMIVLwa2RRKMwtASh512HvEHjZyBD6MINONJ+Q w==;
X-CSE-ConnectionGUID: o4gwOy4CQPSzaC6VEm/0Zg==
X-CSE-MsgGUID: Iyh6TJrdSmCqD6pNIOw7xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51714052"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51714052"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 07:51:37 -0700
X-CSE-ConnectionGUID: tUrqBAfuQgmzVdmPZ5QFMA==
X-CSE-MsgGUID: mPeuQQEDSvuJfhKZcgZxCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="147122257"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.209])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 07:51:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915: use drm->debugfs_root for creating debugfs files
Date: Wed, 11 Jun 2025 17:51:16 +0300
Message-Id: <71181f1b321b0628d119b1f2afad61ebb3da7bd8.1749653355.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749653354.git.jani.nikula@intel.com>
References: <cover.1749653354.git.jani.nikula@intel.com>
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

