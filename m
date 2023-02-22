Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7E169EF6C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 08:36:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF6B310E42A;
	Wed, 22 Feb 2023 07:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1282110E423
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 07:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677051352; x=1708587352;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xgbR71gOafmNXWmGbhinRIz2aeVzPbsp02uJDLcn8ws=;
 b=LGwKqcypOpjJKKcsjXcI7epi9bndffpT1jAuCb16d6IIm4a4100QPoWa
 Y4AfthgB2W9pTYJtZMjauFRqH+Xskct7PJYZnNRx017T1sSndsnPQYPSp
 nu48NmEuCmqBvswUcc/CSHWU2co3o6XuFLiNBe9ZzCtq1cGg3ulqp3WEE
 F4rxryXJXNJhHLosgb7PDJVeVde6WEAuT8WkTH3nnFBaRdeoKNL4DFJ2O
 YUwOnmF608fBFeQjItATq3Q13rweQABoSsZ7Iq9RtQ06y/wp2k1W8+lrw
 cy6db77R1XRqgWhtALG+8SKOx4DW8p4+IlFQ+1Znv5gH37KilXEk73WIH A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="397544105"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="397544105"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="795811228"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="795811228"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 23:35:00 -0800
Message-Id: <20230222073507.788705-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/9] drm/i915/gt: generate per tile debugfs
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

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c | 4 +++-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h     | 2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 5 ++++-
 3 files changed, 9 insertions(+), 2 deletions(-)

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
index 818e9e0e66a8..6eefbe6e3519 100644
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
-- 
2.34.1

