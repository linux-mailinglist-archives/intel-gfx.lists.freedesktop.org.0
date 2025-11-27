Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AACC8DBAB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 11:20:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D991110E809;
	Thu, 27 Nov 2025 10:20:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="la0SHrPr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 955A910E80E;
 Thu, 27 Nov 2025 10:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764238851; x=1795774851;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZzHUBGN1VFguLHVaAo/QngF2ato47wi5Fy4aJz5eFc0=;
 b=la0SHrPryTJmf+uTbe2zyBw9RRb4qmlEyCGRWNy2uMsbdv3ANFXZgeEo
 JtVEsIR5kE5NGtfbKaLWZwrFQH1naWHpYVz8LXzyQRVd9MialeIqs4OfD
 mdzzRNNwBXGojP9ksCTlkgDi9mzFtjwu7hJ1kl/3GfD0BfBvJwYL6hOFR
 G3FVAnfmlHe7iuerTcK6Bm5oTh436sDqE+oQgg9rq83yeM+S1r7xZOoPI
 DulDZWY0uyx0CAz5ocdkhwjIF1VTk9fVwHxAeOXZfvrMIL7H6k42IO2PA
 QK3Y8fvIpviDNOJ4yHkBCOea6a1dFOG3f92nYkPXTSaz5VBSwjzwIwci/ Q==;
X-CSE-ConnectionGUID: UcH7j8d2Q26tJPJmrmEpPA==
X-CSE-MsgGUID: P627qOaRR6mP+EYTu3djBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="65470209"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="65470209"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 02:20:51 -0800
X-CSE-ConnectionGUID: MEh1p7OgQvSiuLEp0Vr/Ow==
X-CSE-MsgGUID: k2bAcksTSXuOcSO4+P7jug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="197353313"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa003.jf.intel.com with ESMTP; 27 Nov 2025 02:20:50 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [Core-for-CI] Revert "power: always freeze efivarfs"
Date: Thu, 27 Nov 2025 15:34:00 +0530
Message-Id: <20251127100400.1372221-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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

This reverts commit a3f8f8662771285511ae26c4c8d3ba1cd22159b9.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15317
References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15341
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 fs/efivarfs/super.c      |  1 -
 fs/super.c               | 13 +++----------
 include/linux/fs.h       |  3 +--
 kernel/power/hibernate.c |  9 ++++++---
 kernel/power/suspend.c   |  3 ++-
 5 files changed, 12 insertions(+), 17 deletions(-)

diff --git a/fs/efivarfs/super.c b/fs/efivarfs/super.c
index 6de97565d5f7..1f4d8ce56667 100644
--- a/fs/efivarfs/super.c
+++ b/fs/efivarfs/super.c
@@ -533,7 +533,6 @@ static struct file_system_type efivarfs_type = {
 	.init_fs_context = efivarfs_init_fs_context,
 	.kill_sb = efivarfs_kill_sb,
 	.parameters = efivarfs_parameters,
-	.fs_flags = FS_POWER_FREEZE,
 };
 
 static __init int efivarfs_init(void)
diff --git a/fs/super.c b/fs/super.c
index 277b84e5c279..5bab94fb7e03 100644
--- a/fs/super.c
+++ b/fs/super.c
@@ -1183,14 +1183,11 @@ static inline bool get_active_super(struct super_block *sb)
 
 static const char *filesystems_freeze_ptr = "filesystems_freeze";
 
-static void filesystems_freeze_callback(struct super_block *sb, void *freeze_all_ptr)
+static void filesystems_freeze_callback(struct super_block *sb, void *unused)
 {
 	if (!sb->s_op->freeze_fs && !sb->s_op->freeze_super)
 		return;
 
-	if (freeze_all_ptr && !(sb->s_type->fs_flags & FS_POWER_FREEZE))
-		return;
-
 	if (!get_active_super(sb))
 		return;
 
@@ -1204,13 +1201,9 @@ static void filesystems_freeze_callback(struct super_block *sb, void *freeze_all
 	deactivate_super(sb);
 }
 
-void filesystems_freeze(bool freeze_all)
+void filesystems_freeze(void)
 {
-	void *freeze_all_ptr = NULL;
-
-	if (freeze_all)
-		freeze_all_ptr = &freeze_all;
-	__iterate_supers(filesystems_freeze_callback, freeze_all_ptr,
+	__iterate_supers(filesystems_freeze_callback, NULL,
 			 SUPER_ITER_UNLOCKED | SUPER_ITER_REVERSE);
 }
 
diff --git a/include/linux/fs.h b/include/linux/fs.h
index dd3b57cfadee..6abc3bb2939d 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -2689,7 +2689,6 @@ struct file_system_type {
 #define FS_ALLOW_IDMAP         32      /* FS has been updated to handle vfs idmappings. */
 #define FS_MGTIME		64	/* FS uses multigrain timestamps */
 #define FS_LBS			128	/* FS supports LBS */
-#define FS_POWER_FREEZE		256	/* Always freeze on suspend/hibernate */
 #define FS_RENAME_DOES_D_MOVE	32768	/* FS will handle d_move() during rename() internally. */
 	int (*init_fs_context)(struct fs_context *);
 	const struct fs_parameter_spec *parameters;
@@ -3608,7 +3607,7 @@ extern void drop_super_exclusive(struct super_block *sb);
 extern void iterate_supers(void (*f)(struct super_block *, void *), void *arg);
 extern void iterate_supers_type(struct file_system_type *,
 			        void (*)(struct super_block *, void *), void *);
-void filesystems_freeze(bool freeze_all);
+void filesystems_freeze(void);
 void filesystems_thaw(void);
 
 extern int dcache_dir_open(struct inode *, struct file *);
diff --git a/kernel/power/hibernate.c b/kernel/power/hibernate.c
index 26e45f86b955..53166ef86ba4 100644
--- a/kernel/power/hibernate.c
+++ b/kernel/power/hibernate.c
@@ -821,7 +821,8 @@ int hibernate(void)
 		goto Restore;
 
 	ksys_sync_helper();
-	filesystems_freeze(filesystem_freeze_enabled);
+	if (filesystem_freeze_enabled)
+		filesystems_freeze();
 
 	error = freeze_processes();
 	if (error)
@@ -927,7 +928,8 @@ int hibernate_quiet_exec(int (*func)(void *data), void *data)
 	if (error)
 		goto restore;
 
-	filesystems_freeze(filesystem_freeze_enabled);
+	if (filesystem_freeze_enabled)
+		filesystems_freeze();
 
 	error = freeze_processes();
 	if (error)
@@ -1077,7 +1079,8 @@ static int software_resume(void)
 	if (error)
 		goto Restore;
 
-	filesystems_freeze(filesystem_freeze_enabled);
+	if (filesystem_freeze_enabled)
+		filesystems_freeze();
 
 	pm_pr_dbg("Preparing processes for hibernation restore.\n");
 	error = freeze_processes();
diff --git a/kernel/power/suspend.c b/kernel/power/suspend.c
index 3d4ebedad69f..b4ca17c2fecf 100644
--- a/kernel/power/suspend.c
+++ b/kernel/power/suspend.c
@@ -375,7 +375,8 @@ static int suspend_prepare(suspend_state_t state)
 	if (error)
 		goto Restore;
 
-	filesystems_freeze(filesystem_freeze_enabled);
+	if (filesystem_freeze_enabled)
+		filesystems_freeze();
 	trace_suspend_resume(TPS("freeze_processes"), 0, true);
 	error = suspend_freeze_processes();
 	trace_suspend_resume(TPS("freeze_processes"), 0, false);
-- 
2.25.1

