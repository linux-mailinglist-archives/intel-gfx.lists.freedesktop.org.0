Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD26B520656
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 23:01:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCB2510F216;
	Mon,  9 May 2022 21:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090A010F1E8
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 21:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652130107; x=1683666107;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oXqVSDFtTFpVi3nh+tT1OXOPyGtiL/IQ59QXqyuPKq4=;
 b=aWH9VUB4FDy0MRHtXosOYXa9m+H5IoALj/LD6eyGIeA8nj4JNACoLKo8
 6eLy2EP+U9PmKLDJnOxZOgOohPNsPXkQnk5bv6pP1p4fmZ+o1iwBfsdkl
 QNNFIZGvSJ9a0KoQb6a/HoNGflZqOQicCzGqrOFCqMFpMABwqgjEVcgf+
 Jmvm+hWgqz3qXeEqqqGC9KrKUVlYa/TnaU8T2QthKln0qnZ4kTistcUg0
 7mrHVC3HI0Ot4ersaIYEaVO6Uoys8bTDTnHqxwyG0LuLBMXRlq6ep7SJQ
 hqd2Cnzyco8zPsfba+U70NJVrlkz3eQgZfGUoOObknavKpCILzi6AbwPZ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="249703601"
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="249703601"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 14:01:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="519410913"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2022 14:01:46 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 May 2022 14:01:51 -0700
Message-Id: <20220509210151.1843173-7-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 6/6] drm/i915/guc: Move guc_log_relay_chan
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
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 5 ++++-
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c | 2 ++
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 3f3373f68123..72deac11df8a 100644
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
index 793a06a16874..f6578565fed6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -419,8 +419,11 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 	 */
 	n_subbufs = intel_guc_log_relay_subbuf_count(log);
 
+	if (!guc->dbgfs_node)
+		return -ENOENT;
+
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
2.25.1

