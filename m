Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF866666748
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 00:56:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E72610E83E;
	Wed, 11 Jan 2023 23:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4193910E838
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 23:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673481376; x=1705017376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K0ux4J3aJ283Z6NQWZc+KUG7MV9Kn6PfbuHN6h1lPAU=;
 b=K7o2ddZMU1XfkKwWfIQm05aVV+JOKYpH/iYcmLfClncYW4h8U8RzeVU6
 QIdyxMNAEZ/6IBtGMkPHLarKonVYatWnh0iGEbhDx2Y+7ubnb/s/U+VTe
 cmBRc56/9gaDZd+InpkCTtdDNFmUjVNbtzRem8H+B8oTfDIdZjr+yBySr
 MotL2ZqT/H/FH7QEouftvzuSG05tp0aywLsnBenUIN79j0RNE3BZBYywg
 ycC00xTR+u1G8uiNoTh+LGp377JEhxs+Me8zMtfyZjwEJs9oQjW5JeUmU
 706AxCOhaYYM6Cdd6gdxRvsAYyw/J9Y+MmUQTPI9ftlFnYVgbv4x4hBxu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="307090900"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="307090900"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831486378"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="831486378"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jan 2023 15:55:27 -0800
Message-Id: <20230111235531.3353815-6-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client 5/9] drm/i915/gt: generate per gt
 debugfs files
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

From: Andi Shyti <andi.shyti@intel.com>

In the view of multi-gt we want independent per gt debug files.

In debugfs create gt0/ gt1/ ... gtN/ for gt related files. In
platforms with 2 gt's, the debugfs would be structured as follows:

/sys/kernel/debug/dri
                  └── 0
                      ├── gt0
                      │   ├── drpc
                      │   ├── engines
                      │   ├── forcewake
                      │   ├── frequency
                      │   └── rps_boost
                      └─- gt1
                      :   ├── drpc
                      :   ├── engines
                      :   ├── forcewake
                          ├── frequency
                          └── rps_boost

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    | 4 +++-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 5 ++++-
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c | 2 ++
 4 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
index 5fc2df01aa0d..4dc23b8d3aa2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
@@ -83,11 +83,13 @@ static void gt_debugfs_register(struct intel_gt *gt, struct dentry *root)
 void intel_gt_debugfs_register(struct intel_gt *gt)
 {
 	struct dentry *root;
+	char gtname[4];
 
 	if (!gt->i915->drm.primary->debugfs_root)
 		return;
 
-	root = debugfs_create_dir("gt", gt->i915->drm.primary->debugfs_root);
+	snprintf(gtname, sizeof(gtname), "gt%u", gt->info.id);
+	root = debugfs_create_dir(gtname, gt->i915->drm.primary->debugfs_root);
 	if (IS_ERR(root))
 		return;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index bb4dfe707a7d..e46aac1a41e6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -42,6 +42,8 @@ struct intel_guc {
 	/** @capture: the error-state-capture module's data and objects */
 	struct intel_guc_state_capture *capture;
 
+	struct dentry *dbgfs_node;
+
 	/** @sched_engine: Global engine used to submit requests to GuC */
 	struct i915_sched_engine *sched_engine;
 	/**
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 68331c538b0a..71b1f23b64c1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -542,8 +542,11 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 	 */
 	n_subbufs = 8;
 
+	if (!guc->dbgfs_node)
+		return -ENOENT;
+
 	guc_log_relay_chan = relay_open("guc_log",
-					dev_priv->drm.primary->debugfs_root,
+					guc->dbgfs_node,
 					subbuf_size, n_subbufs,
 					&relay_callbacks, dev_priv);
 	if (!guc_log_relay_chan) {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
index 284d6fbc2d08..2f93cc4e408a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
@@ -54,6 +54,8 @@ void intel_uc_debugfs_register(struct intel_uc *uc, struct dentry *gt_root)
 	if (IS_ERR(root))
 		return;
 
+	uc->guc.dbgfs_node = root;
+
 	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), uc);
 
 	intel_guc_debugfs_register(&uc->guc, root);
-- 
2.34.1

