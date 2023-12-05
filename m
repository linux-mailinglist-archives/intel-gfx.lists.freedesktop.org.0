Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1C58055C6
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 14:24:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0901910E23E;
	Tue,  5 Dec 2023 13:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A03AF10E23E
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 13:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701782642; x=1733318642;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+Q6Q1eWCBj8NgJefpiHl1Z5wX9KrN4WyicUdAHWJmYg=;
 b=AAfYdBoHtPLjSnRYgFAhpajiefQTmoFqHe573PTB16neWTA+cAyg12S+
 jzLd2KJoDUES8Kc0hZJf5j3qguhWcMFotX7ssOSOKX/5Bq8uMWvnljB3d
 kAjxIBwCvgAFi5Bsbp2omdNhXcbNEQC5bFFIwBaAhfdhDeG8ren5zDkoK
 bya5xKdMyCwzoeI1uoFhmg7bL/YAxzEn5vn68ept3fi7qScZat4gP6pw1
 7Tf4CsQLKeoojhoodVWY9nY9yXuSrFFgaiB3HjpJcVvjezd/nNBXa+fjn
 KXB7cSkMdHqeQ/3GUHjr/4IFmtr7LkGSlOptKgmKnOy8lMadUusbWZFFT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="374078676"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="374078676"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:24:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="18964214"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa001.jf.intel.com with ESMTP; 05 Dec 2023 05:23:59 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Dec 2023 18:50:03 +0530
Message-Id: <20231205132003.1535960-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate debugfs
 handlers vs. removal with lockdep"
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
Cc: Johannes Berg <johannes.berg@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Johannes Berg <johannes.berg@intel.com>

This reverts commit f4acfcd4deb1 ("debugfs: annotate debugfs handlers
vs. removal with lockdep"), it appears to have false positives and
really shouldn't have been in the -rc series with the fixes anyway.

topic/core-for-CI note: cherry-picked from
https://patchwork.kernel.org/project/linux-fsdevel/patch/20231202114936.fd55431ab160.I911aa53abeeca138126f690d383a89b13eb05667@changeid/

Signed-off-by: Johannes Berg <johannes.berg@intel.com>
Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 fs/debugfs/file.c     | 10 ----------
 fs/debugfs/inode.c    |  7 -------
 fs/debugfs/internal.h |  6 ------
 3 files changed, 23 deletions(-)

diff --git a/fs/debugfs/file.c b/fs/debugfs/file.c
index a5ade8c16375..5063434be0fc 100644
--- a/fs/debugfs/file.c
+++ b/fs/debugfs/file.c
@@ -108,12 +108,6 @@ int debugfs_file_get(struct dentry *dentry)
 			kfree(fsd);
 			fsd = READ_ONCE(dentry->d_fsdata);
 		}
-#ifdef CONFIG_LOCKDEP
-		fsd->lock_name = kasprintf(GFP_KERNEL, "debugfs:%pd", dentry);
-		lockdep_register_key(&fsd->key);
-		lockdep_init_map(&fsd->lockdep_map, fsd->lock_name ?: "debugfs",
-				 &fsd->key, 0);
-#endif
 		INIT_LIST_HEAD(&fsd->cancellations);
 		mutex_init(&fsd->cancellations_mtx);
 	}
@@ -132,8 +126,6 @@ int debugfs_file_get(struct dentry *dentry)
 	if (!refcount_inc_not_zero(&fsd->active_users))
 		return -EIO;
 
-	lock_map_acquire_read(&fsd->lockdep_map);
-
 	return 0;
 }
 EXPORT_SYMBOL_GPL(debugfs_file_get);
@@ -151,8 +143,6 @@ void debugfs_file_put(struct dentry *dentry)
 {
 	struct debugfs_fsdata *fsd = READ_ONCE(dentry->d_fsdata);
 
-	lock_map_release(&fsd->lockdep_map);
-
 	if (refcount_dec_and_test(&fsd->active_users))
 		complete(&fsd->active_users_drained);
 }
diff --git a/fs/debugfs/inode.c b/fs/debugfs/inode.c
index e4e7fe1bd9fb..034a617cb1a5 100644
--- a/fs/debugfs/inode.c
+++ b/fs/debugfs/inode.c
@@ -243,10 +243,6 @@ static void debugfs_release_dentry(struct dentry *dentry)
 
 	/* check it wasn't a dir (no fsdata) or automount (no real_fops) */
 	if (fsd && fsd->real_fops) {
-#ifdef CONFIG_LOCKDEP
-		lockdep_unregister_key(&fsd->key);
-		kfree(fsd->lock_name);
-#endif
 		WARN_ON(!list_empty(&fsd->cancellations));
 		mutex_destroy(&fsd->cancellations_mtx);
 	}
@@ -755,9 +751,6 @@ static void __debugfs_file_removed(struct dentry *dentry)
 	if ((unsigned long)fsd & DEBUGFS_FSDATA_IS_REAL_FOPS_BIT)
 		return;
 
-	lock_map_acquire(&fsd->lockdep_map);
-	lock_map_release(&fsd->lockdep_map);
-
 	/* if we hit zero, just wait for all to finish */
 	if (!refcount_dec_and_test(&fsd->active_users)) {
 		wait_for_completion(&fsd->active_users_drained);
diff --git a/fs/debugfs/internal.h b/fs/debugfs/internal.h
index 0c4c68cf161f..dae80c2a469e 100644
--- a/fs/debugfs/internal.h
+++ b/fs/debugfs/internal.h
@@ -7,7 +7,6 @@
 
 #ifndef _DEBUGFS_INTERNAL_H_
 #define _DEBUGFS_INTERNAL_H_
-#include <linux/lockdep.h>
 #include <linux/list.h>
 
 struct file_operations;
@@ -25,11 +24,6 @@ struct debugfs_fsdata {
 		struct {
 			refcount_t active_users;
 			struct completion active_users_drained;
-#ifdef CONFIG_LOCKDEP
-			struct lockdep_map lockdep_map;
-			struct lock_class_key key;
-			char *lock_name;
-#endif
 
 			/* protect cancellations */
 			struct mutex cancellations_mtx;
-- 
2.25.1

