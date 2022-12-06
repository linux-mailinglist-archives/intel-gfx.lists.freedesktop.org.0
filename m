Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD38643FAC
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 10:18:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8EFF10E312;
	Tue,  6 Dec 2022 09:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 635A210E302
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 09:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670318291; x=1701854291;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BZBnyq85gvK88mk4cO70dCaLgEmckouYL4n6A0Pm6L0=;
 b=CEtYZjr8yjFGGmwHbRAxFuqdDCoXeHpwIJxCrt8RYCNinMDllpGqsgjy
 5dp4+j7qV/pGCnhhL+jzbq4CAkCPyg65WsMgrYo44ROvMIzDN2NCk8pjX
 GnofyQDdsG/H3b0tA0iVqzRnN7b4Mukgj+zNbMhU7t2Mclj+3gJGiYzgB
 EZPLuSHJnWankCHbfwopMJx5ONDmf4ouSUmMCao522a4CxABjeG7D7ZLd
 //qyH1eazibGm5YWwrDNL3f3sE4VwGtoir6z5bZlHxa1ILsXzL5oHOHGE
 +nUQf5CKRIbMYG6G4Yt1rzLwgkw62/qumPxPqMkrVllsYvimjyhsoGP6S A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="318438117"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="318438117"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 01:18:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="623833217"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="623833217"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 06 Dec 2022 01:18:10 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 01:21:00 -0800
Message-Id: <20221206092100.274195-6-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915/guc: Move guc_log_relay_chan
 debugfs path to uc
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

All other GuC Relay Logging debugfs handles including recent
additions are under the 'i915/gt/uc/path' so let's also move
'guc_log_relay_chan' to its proper home.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 2 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c | 2 ++
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index bb4dfe707a7d..f5394d12c3dd 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -41,6 +41,8 @@ struct intel_guc {
 	struct intel_guc_slpc slpc;
 	/** @capture: the error-state-capture module's data and objects */
 	struct intel_guc_state_capture *capture;
+	/** @dbgfs_node: the debugfs path for guc file handles */
+	struct dentry *dbgfs_node;
 
 	/** @sched_engine: Global engine used to submit requests to GuC */
 	struct i915_sched_engine *sched_engine;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index d019c60d34e8..2f1825f367bf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -552,7 +552,7 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 	n_subbufs = intel_guc_log_relay_subbuf_count(log);
 
 	guc_log_relay_chan = relay_open("guc_log_relay_chan",
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

