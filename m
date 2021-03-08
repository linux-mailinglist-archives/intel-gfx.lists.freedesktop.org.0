Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C1B330819
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 07:28:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B5D6E81B;
	Mon,  8 Mar 2021 06:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F8D76E817
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 06:28:46 +0000 (UTC)
IronPort-SDR: dof4xCgWUlghuDzjAzAk0dljmH7Icfio/ke3Z60yMhg0VZ2kkUObveVb3bzpFwowCa+ES8LT81
 3GnNDEilDPrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="249354875"
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="249354875"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 22:28:38 -0800
IronPort-SDR: dw16VgBnX99MAH347jLFNexdMxpQvor4XEEavslsTbxRWXr/M7CUNpy3JVaGAL8dE+SIAYUq4R
 96cgUwoBY47w==
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="409182040"
Received: from twinkler-lnx.jer.intel.com ([10.12.91.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 22:28:35 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon,  8 Mar 2021 08:27:48 +0200
Message-Id: <20210308062748.208017-11-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210308062748.208017-1-tomas.winkler@intel.com>
References: <20210308062748.208017-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 10/10 v2] mtd: use refcount to prevent
 corruption
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
Cc: linux-mtd@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Content-Type: multipart/mixed; boundary="===============0580110311=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0580110311==
Content-Type: text/plain; charset=yes
Content-Transfer-Encoding: 8bit

When underlying device is removed mtd core will crash
in case user space is holding open handle.
Need to use proper refcounting so device is release
only when has no users.


Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
V2:
1. define pr_fmt macro
 drivers/mtd/mtdcore.c   | 64 +++++++++++++++++++++++++----------------
 drivers/mtd/mtdcore.h   |  1 +
 drivers/mtd/mtdpart.c   | 13 +++++----
 include/linux/mtd/mtd.h |  2 +-
 4 files changed, 48 insertions(+), 32 deletions(-)

diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
index 2d6423d89a17..152aba9822a0 100644
--- a/drivers/mtd/mtdcore.c
+++ b/drivers/mtd/mtdcore.c
@@ -7,6 +7,7 @@
  * Copyright © 2006      Red Hat UK Limited 
  */
 
+#define pr_fmt(fmt) "[" KBUILD_MODNAME ":%s:%d] " fmt, __func__, __LINE__
 #include <linux/module.h>
 #include <linux/kernel.h>
 #include <linux/ptrace.h>
@@ -93,9 +94,31 @@ static void mtd_release(struct device *dev)
 	dev_t index = MTD_DEVT(mtd->index);
 
 	/* remove /dev/mtdXro node */
+	if (mtd_is_partition(mtd))
+		release_mtd_partition(mtd);
+
 	device_destroy(&mtd_class, index + 1);
 }
 
+static void mtd_device_release(struct kref *kref)
+{
+	struct mtd_info *mtd = container_of(kref, struct mtd_info, refcnt);
+
+	pr_debug("releasing %s\n", mtd->name);
+
+	if (mtd->nvmem) {
+		nvmem_unregister(mtd->nvmem);
+		mtd->nvmem = NULL;
+	}
+
+	idr_remove(&mtd_idr, mtd->index);
+	of_node_put(mtd_get_of_node(mtd));
+
+	device_unregister(&mtd->dev);
+
+	module_put(THIS_MODULE);
+}
+
 static ssize_t mtd_type_show(struct device *dev,
 		struct device_attribute *attr, char *buf)
 {
@@ -619,7 +642,7 @@ int add_mtd_device(struct mtd_info *mtd)
 	}
 
 	mtd->index = i;
-	mtd->usecount = 0;
+	kref_init(&mtd->refcnt);
 
 	/* default value if not set by driver */
 	if (mtd->bitflip_threshold == 0)
@@ -719,6 +742,8 @@ int del_mtd_device(struct mtd_info *mtd)
 	int ret;
 	struct mtd_notifier *not;
 
+	pr_debug("%s %s\n", __func__, mtd->name);
+
 	mutex_lock(&mtd_table_mutex);
 
 	debugfs_remove_recursive(mtd->dbg.dfs_dir);
@@ -733,23 +758,8 @@ int del_mtd_device(struct mtd_info *mtd)
 	list_for_each_entry(not, &mtd_notifiers, list)
 		not->remove(mtd);
 
-	if (mtd->usecount) {
-		printk(KERN_NOTICE "Removing MTD device #%d (%s) with use count %d\n",
-		       mtd->index, mtd->name, mtd->usecount);
-		ret = -EBUSY;
-	} else {
-		/* Try to remove the NVMEM provider */
-		if (mtd->nvmem)
-			nvmem_unregister(mtd->nvmem);
-
-		device_unregister(&mtd->dev);
-
-		idr_remove(&mtd_idr, mtd->index);
-		of_node_put(mtd_get_of_node(mtd));
-
-		module_put(THIS_MODULE);
-		ret = 0;
-	}
+	kref_put(&mtd->refcnt, mtd_device_release);
+	ret = 0;
 
 out_error:
 	mutex_unlock(&mtd_table_mutex);
@@ -984,20 +994,23 @@ int __get_mtd_device(struct mtd_info *mtd)
 	if (!try_module_get(master->owner))
 		return -ENODEV;
 
+	kref_get(&mtd->refcnt);
+	pr_debug("get mtd %s %d\n", mtd->name, kref_read(&mtd->refcnt));
+
 	if (master->_get_device) {
 		err = master->_get_device(mtd);
 
 		if (err) {
+			kref_put(&mtd->refcnt, mtd_device_release);
 			module_put(master->owner);
 			return err;
 		}
 	}
 
-	master->usecount++;
-
 	while (mtd->parent) {
-		mtd->usecount++;
 		mtd = mtd->parent;
+		kref_get(&mtd->refcnt);
+		pr_debug("get mtd %s %d\n", mtd->name, kref_read(&mtd->refcnt));
 	}
 
 	return 0;
@@ -1055,14 +1068,15 @@ void __put_mtd_device(struct mtd_info *mtd)
 {
 	struct mtd_info *master = mtd_get_master(mtd);
 
+	kref_put(&mtd->refcnt, mtd_device_release);
+	pr_debug("put mtd %s %d\n", mtd->name, kref_read(&mtd->refcnt));
+
 	while (mtd->parent) {
-		--mtd->usecount;
-		BUG_ON(mtd->usecount < 0);
 		mtd = mtd->parent;
+		kref_put(&mtd->refcnt, mtd_device_release);
+		pr_debug("put mtd %s %d\n", mtd->name, kref_read(&mtd->refcnt));
 	}
 
-	master->usecount--;
-
 	if (master->_put_device)
 		master->_put_device(master);
 
diff --git a/drivers/mtd/mtdcore.h b/drivers/mtd/mtdcore.h
index b5eefeabf310..b014861a06a6 100644
--- a/drivers/mtd/mtdcore.h
+++ b/drivers/mtd/mtdcore.h
@@ -12,6 +12,7 @@ int __must_check add_mtd_device(struct mtd_info *mtd);
 int del_mtd_device(struct mtd_info *mtd);
 int add_mtd_partitions(struct mtd_info *, const struct mtd_partition *, int);
 int del_mtd_partitions(struct mtd_info *);
+void release_mtd_partition(struct mtd_info *mtd);
 
 struct mtd_partitions;
 
diff --git a/drivers/mtd/mtdpart.c b/drivers/mtd/mtdpart.c
index 12ca4f19cb14..6d70b5d0e663 100644
--- a/drivers/mtd/mtdpart.c
+++ b/drivers/mtd/mtdpart.c
@@ -27,10 +27,17 @@
 
 static inline void free_partition(struct mtd_info *mtd)
 {
+	pr_err("free_partition \"%s\"\n", mtd->name);
 	kfree(mtd->name);
 	kfree(mtd);
 }
 
+void release_mtd_partition(struct mtd_info *mtd)
+{
+	list_del_init(&mtd->part.node);
+	free_partition(mtd);
+}
+
 static struct mtd_info *allocate_partition(struct mtd_info *parent,
 					   const struct mtd_partition *part,
 					   int partno, uint64_t cur_offset)
@@ -313,9 +320,6 @@ static int __mtd_del_partition(struct mtd_info *mtd)
 	if (err)
 		return err;
 
-	list_del(&child->part.node);
-	free_partition(mtd);
-
 	return 0;
 }
 
@@ -341,9 +345,6 @@ static int __del_mtd_partitions(struct mtd_info *mtd)
 			err = ret;
 			continue;
 		}
-
-		list_del(&child->part.node);
-		free_partition(child);
 	}
 
 	return err;
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 157357ec1441..1217c9d8d69d 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -373,7 +373,7 @@ struct mtd_info {
 
 	struct module *owner;
 	struct device dev;
-	int usecount;
+	struct kref refcnt;
 	struct mtd_debug_info dbg;
 	struct nvmem_device *nvmem;
 
-- 
2.26.2


--===============0580110311==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0580110311==--
