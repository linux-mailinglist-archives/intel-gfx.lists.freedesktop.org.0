Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5696A74D1
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 21:11:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0766710E256;
	Wed,  1 Mar 2023 20:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFA2A10E24B
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 20:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677701507; x=1709237507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XZv71f37ibq5Slxyc6vT/ttFkZq4IJYO/iB3Gp33b9k=;
 b=R+Zquy4BFaGLd17mUi7KqdrNA9eTEZCSSq9YbI5kGTsGES1TJ5/wojti
 XqHXPZES0+rwdIq6uWtV87NtRcqhwYqx1eRgpbovKovNlaV+UU7LOQyzs
 YgEYJMH8S5xfy5vXBIuLIfL9ZBtQ3rwPXeQ6zLFVXl8OvS0670RQ8HavO
 Dk4m4AsyGdhFpBWlGhVeONRteNcLgH7frEBqKdTbFaxohWb2ZXtv9jZnn
 TPGjVfuk109cT8ln+LfX+TyjNYYIuIFoRkDnjO2E/fi3fkf6N9Qo543rH
 wce5lvrivke19btDpQsa5siG0ag/+SscYuPlJSXcIjhIIqLWchKGHo7Lb w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="314933485"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="314933485"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 12:11:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="674691937"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="674691937"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 12:11:45 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 12:10:50 -0800
Message-Id: <20230301201053.928709-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/5] drm/i915/gt: generate per tile debugfs
 files
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
Cc: Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Andi Shyti <andi.shyti@intel.com>

In the view of multi-gt we want independent per gt debug files.

In debugfs create gt0/ gt1/ ... gtN/ for tile related files. In 4
tiles, the debugfs would be structured as follows:

/sys/kernel/debug/dri
                  └── 0
                      ├── gt0
                      │   ├── drpc
                      │   ├── engines
                      │   ├── forcewake
                      │   ├── frequency
                      │   └── rps_boost
                      ├── gt1
                      │   ├── drpc
                      │   ├── engines
                      │   ├── forcewake
                      │   ├── frequency
                      │   └── rps_boost
                      ├── gt2
                      │   ├── drpc
                      │   ├── engines
                      │   ├── forcewake
                      │   ├── frequency
                      │   └── rps_boost
                      └─- gt3
                      :   ├── drpc
                      :   ├── engines
                      :   ├── forcewake
                          ├── frequency
                          └── rps_boost

v2: Fix the missed assignment dbgfs_node

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
index 195db8c9d420..55bc8b55fbc0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -542,8 +542,11 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 	 */
 	n_subbufs = 8;
 
+	if (!guc->dbgfs_node)
+		return -ENOENT;
+
 	guc_log_relay_chan = relay_open("guc_log",
-					i915->drm.primary->debugfs_root,
+					guc->dbgfs_node,
 					subbuf_size, n_subbufs,
 					&relay_callbacks, i915);
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

