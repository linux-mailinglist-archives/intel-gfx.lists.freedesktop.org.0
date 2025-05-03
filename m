Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9712CAA91D1
	for <lists+intel-gfx@lfdr.de>; Mon,  5 May 2025 13:17:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC9D10E3C6;
	Mon,  5 May 2025 11:17:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=linux.org.uk header.i=@linux.org.uk header.b="ky4MTvyl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85B6410E3C6
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 May 2025 11:17:11 +0000 (UTC)
X-CSE-ConnectionGUID: pyV0w+xqRUC4y8Z2InWUTQ==
X-CSE-MsgGUID: 4h9gfeBaR9utcQQ9JayAxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11423"; a="47945747"
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="47945747"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 04:17:11 -0700
X-CSE-ConnectionGUID: VctQSSpvTFK/x2yW2+Jebw==
X-CSE-MsgGUID: f/ydwMxZTq+zqzgPzQWi8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="135150698"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.232])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 04:17:09 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 05 May 2025 14:17:06 +0300
Resent-Message-ID: <87a57rwbm5.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from fmviesa001.fm.intel.com (fmviesa001.fm.intel.com
 [10.60.135.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 001F720B5736
 for <jani.nikula@linux.intel.com>; Sat,  3 May 2025 16:03:02 -0700 (PDT)
X-CSE-ConnectionGUID: ZrIZIhkjQ4aO7OacvH5anw==
X-CSE-MsgGUID: 7TaSK4OkTRC7YOGFJOG8vA==
X-IronPort-AV: E=Sophos;i="6.15,258,1739865600"; d="scan'208";a="165971367"
Received: from orvoesa111.jf.intel.com ([10.18.183.151])
 by smtp.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 May 2025
 16:03:02 -0700
X-CSE-ConnectionGUID: ROVhLYTvQOSAx5Y4QVSIww==
X-CSE-MsgGUID: vp0FfPeHQqG0KhJmjaj10g==
Authentication-Results: mtab.intel.com; spf=None
 smtp.pra=viro@ftp.linux.org.uk; spf=None
 smtp.mailfrom=viro@ftp.linux.org.uk; spf=None
 smtp.helo=postmaster@zeniv.linux.org.uk; dkim=pass (signature verified)
 header.i=@linux.org.uk; dmarc=pass (p=none dis=none) d=zeniv.linux.org.uk
IronPort-SDR: 6816a0a5_rcSlE0WgAC9WmyddQIRAkjVPpzZ3NZYl1470bmMjPzV4EJV
 DKuiB9kAUdgK7ksoj/FBD08/I7LRJU3dZfvilIA==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0EkAAAOnxZoha2NWT5aHAEBAQEBAQcBARIBAQQEAQFAg?=
 =?us-ascii?q?UEFAQELAYJDgVY0BAtJlCWCIZ4Xgg0BAQEBAQEBAQEJTgECBAEBAwEDkDsCH?=
 =?us-ascii?q?gYGMgcNAQECAQIBAQEBAQMCAQIBAQEBAQEBAQEBAQsBAQECAgEBAQIBAQIEA?=
 =?us-ascii?q?wEBAQECEAEBAQFASYV7DYJiATOCFiwNgSsTBgEBNwEQPoEBG4JngmUHAbF3g?=
 =?us-ascii?q?QEzgQGCDAEBBgQFAd17CYFJAYhPAYsKG4INglCLBYIvg0eJEItVfIhBgU0cA?=
 =?us-ascii?q?1ksAUsKExcLBwU5gTADgQ9uMwoTgQmBBoFYg0OCD4QphmSETS1PU4RegSpKQ?=
 =?us-ascii?q?AMLbT03FBsGlwGCeWwIDXcUgTkIJU5konmjKIQlhHCcW00TqkUBmQCpNYFuA?=
 =?us-ascii?q?zCBXE00BIMiTwMZD1eNSgwWi1e3CEUyPAIHCwEBAwmFRgEBin2BSwEB?=
IronPort-PHdr: A9a23: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
 wwdJZ46ZwP48QMkOOqiI1XAuug=
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:cEUSWa68kJ3TDFkcmwPXwN/XdLJyesId70hD6qm+c3Jom+ij5q
 WTdZUgpH3JYVMqM03I9ursBEDtex/hHP1OkOos1NWZPDUO0VHAROtfBKTZslnd8kbFl9K1u5
 0OT5RD
X-Talos-CUID: 9a23:TWtNy2B3llSdgpf6ExNAyk4wK/w7S1rm5WeNEhOBN11IV6LAHA==
X-Talos-MUID: 9a23:dNROfgg8sMDnYr10QlR4VcMpKt8wzaqWBWA0iLpemMmmMC55OW7Fg2Hi
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6700,10204,11422"; a="47842947"
X-IronPort-AV: E=Sophos;i="6.15,258,1739865600"; d="scan'208";a="47842947"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 May 2025
 16:02:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=SkKwhAML8JXSnXowUr2+V7pBJaOW6+Dd4dupistZ3rY=; b=ky4MTvylvJ1IwCac2cTA8XnLiK
 1rfgDO+1WhAHJZIXPJDcSFyLuyWV/5bmhm8dXPBYREpiuocna5GHdgwMeABD68P3FNzwaJxo5Skun
 7W2Bb5OGaPbWby+C/y0G4XFHTUnLed6xvyN4afttGaFuaDTIuK5FlVKg9+uRl/JhfLZWJVOVPWOu2
 0t/9iB8tzTj83DxeLhC6bRy0Du4N+CVnuzv+4PsZrPlPjEy65ViDAPsT3YZUGZldrFFsqUlN6Q1R2
 T4FnoZIL2gLryKC3OcItk7cMT36R8LbNJt2YQGvwXxkIK4T3yt2uQLX1KS3ahGzA8kLHntlS6z0kx
 ZgUP1gaA==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1uBLsh-0000000AWY4-2YZZ;
 Sat, 03 May 2025 23:02:51 +0000
Date: Sun, 4 May 2025 00:02:51 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: linux-fsdevel@vger.kernel.org
Cc: Melissa Wen <mwen@igalia.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>
Subject: [PATCH][CFT][RFC] sanitize handling of long-term internal mounts
Message-ID: <20250503230251.GA2023217@ZenIV>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-TUID: LEVWmF/AhYjA
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

[folks, review and testing would be very welcome; i915 and v3d conversions
are essentially untested and I would really like to hear from DRM people
before pushing those anywhere.  I've no problem with splitting these
parts off and putting the infrastructure bits into a never-rebased
branch, if somebody prefers to have those taken via drm tree]

Original rationale for those had been the reduced cost of mntput()
for the stuff that is mounted somewhere.  Mount refcount increments and
decrements are frequent; what's worse, they tend to concentrate on the
same instances and cacheline pingpong is quite noticable.

As the result, mount refcounts are per-cpu; that allows a very cheap
increment.  Plain decrement would be just as easy, but decrement-and-test
is anything but (we need to add the components up, with exclusion against
possible increment-from-zero, etc.).

Fortunately, there is a very common case where we can tell that decrement
won't be the final one - if the thing we are dropping is currently
mounted somewhere.  We have an RCU delay between the removal from mount
tree and dropping the reference that used to pin it there, so we can
just take rcu_read_lock() and check if the victim is mounted somewhere.
If it is, we can go ahead and decrement without and further checks -
the reference we are dropping is not the last one.  If it isn't, we
get all the fun with locking, carefully adding up components, etc.,
but the majority of refcount decrements end up taking the fast path.

There is a major exception, though - pipes and sockets.  Those live
on the internal filesystems that are not going to be mounted anywhere.
They are not going to be _un_mounted, of course, so having to take the
slow path every time a pipe or socket gets closed is really obnoxious.
Solution had been to mark them as long-lived ones - essentially faking
"they are mounted somewhere" indicator.

With minor modification that works even for ones that do eventually get
dropped - all it takes is making sure we have an RCU delay between
clearing the "mounted somewhere" indicator and dropping the reference.

There are some additional twists (if you want to drop a dozen of such
internal mounts, you'd be better off with clearing the indicator on
all of them, doing an RCU delay once, then dropping the references),
but in the basic form it had been
	* use kern_mount() if you want your internal mount to be
a long-term one.
	* use kern_unmount() to undo that.

Unfortunately, the things did rot a bit during the mount API reshuffling.
In several cases we have lost the "fake the indicator" part; kern_unmount()
on the unmount side remained (it doesn't warn if you use it on a mount
without the indicator), but all benefits regaring mntput() cost had been
lost.

To get rid of that bitrot, let's add a new helper that would work
with fs_context-based API: fc_mount_longterm().  It's a counterpart
of fc_mount() that does, on success, mark its result as long-term.
It must be paired with kern_unmount() or equivalents.

Converted:
	1) mqueue (it used to use kern_mount_data() and the umount side
is still as it used to be)
	2) hugetlbfs (used to use kern_mount_data(), internal mount is
never unmounted in this one)
	3) i915 gemfs (used to be kern_mount() + manual remount to set
options, still uses kern_unmount() on umount side)
	4) v3d gemfs (copied from i915)

Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
---
diff --git a/drivers/gpu/drm/i915/gem/i915_gemfs.c b/drivers/gpu/drm/i915/gem/i915_gemfs.c
index 46b9a17d6abc..aae7c0a3c966 100644
--- a/drivers/gpu/drm/i915/gem/i915_gemfs.c
+++ b/drivers/gpu/drm/i915/gem/i915_gemfs.c
@@ -6,16 +6,23 @@
 
 #include <linux/fs.h>
 #include <linux/mount.h>
+#include <linux/fs_context.h>
 
 #include "i915_drv.h"
 #include "i915_gemfs.h"
 #include "i915_utils.h"
 
+static int add_param(struct fs_context *fc, const char *key, const char *val)
+{
+	return vfs_parse_fs_string(fc, key, val, strlen(val));
+}
+
 void i915_gemfs_init(struct drm_i915_private *i915)
 {
-	char huge_opt[] = "huge=within_size"; /* r/w */
 	struct file_system_type *type;
+	struct fs_context *fc;
 	struct vfsmount *gemfs;
+	int ret;
 
 	/*
 	 * By creating our own shmemfs mountpoint, we can pass in
@@ -39,8 +46,16 @@ void i915_gemfs_init(struct drm_i915_private *i915)
 	if (!type)
 		goto err;
 
-	gemfs = vfs_kern_mount(type, SB_KERNMOUNT, type->name, huge_opt);
-	if (IS_ERR(gemfs))
+	fc = fs_context_for_mount(type, SB_KERNMOUNT);
+	if (IS_ERR(fc))
+		goto err;
+	ret = add_param(fc, "source", "tmpfs");
+	if (!ret)
+		ret = add_param(fc, "huge", "within_size");
+	if (!ret)
+		gemfs = fc_mount_longterm(fc);
+	put_fs_context(fc);
+	if (ret)
 		goto err;
 
 	i915->mm.gemfs = gemfs;
diff --git a/drivers/gpu/drm/v3d/v3d_gemfs.c b/drivers/gpu/drm/v3d/v3d_gemfs.c
index 4c5e18590a5c..8ec6ed82b3d9 100644
--- a/drivers/gpu/drm/v3d/v3d_gemfs.c
+++ b/drivers/gpu/drm/v3d/v3d_gemfs.c
@@ -3,14 +3,21 @@
 
 #include <linux/fs.h>
 #include <linux/mount.h>
+#include <linux/fs_context.h>
 
 #include "v3d_drv.h"
 
+static int add_param(struct fs_context *fc, const char *key, const char *val)
+{
+	return vfs_parse_fs_string(fc, key, val, strlen(val));
+}
+
 void v3d_gemfs_init(struct v3d_dev *v3d)
 {
-	char huge_opt[] = "huge=within_size";
 	struct file_system_type *type;
+	struct fs_context *fc;
 	struct vfsmount *gemfs;
+	int ret;
 
 	/*
 	 * By creating our own shmemfs mountpoint, we can pass in
@@ -28,8 +35,16 @@ void v3d_gemfs_init(struct v3d_dev *v3d)
 	if (!type)
 		goto err;
 
-	gemfs = vfs_kern_mount(type, SB_KERNMOUNT, type->name, huge_opt);
-	if (IS_ERR(gemfs))
+	fc = fs_context_for_mount(type, SB_KERNMOUNT);
+	if (IS_ERR(fc))
+		goto err;
+	ret = add_param(fc, "source", "tmpfs");
+	if (!ret)
+		ret = add_param(fc, "huge", "within_size");
+	if (!ret)
+		gemfs = fc_mount_longterm(fc);
+	put_fs_context(fc);
+	if (ret)
 		goto err;
 
 	v3d->gemfs = gemfs;
diff --git a/fs/hugetlbfs/inode.c b/fs/hugetlbfs/inode.c
index e4de5425838d..4e0397775167 100644
--- a/fs/hugetlbfs/inode.c
+++ b/fs/hugetlbfs/inode.c
@@ -1587,7 +1587,7 @@ static struct vfsmount *__init mount_one_hugetlbfs(struct hstate *h)
 	} else {
 		struct hugetlbfs_fs_context *ctx = fc->fs_private;
 		ctx->hstate = h;
-		mnt = fc_mount(fc);
+		mnt = fc_mount_longterm(fc);
 		put_fs_context(fc);
 	}
 	if (IS_ERR(mnt))
diff --git a/fs/namespace.c b/fs/namespace.c
index 6f7b2174f25b..07f636036b86 100644
--- a/fs/namespace.c
+++ b/fs/namespace.c
@@ -1258,6 +1258,15 @@ struct vfsmount *fc_mount(struct fs_context *fc)
 }
 EXPORT_SYMBOL(fc_mount);
 
+struct vfsmount *fc_mount_longterm(struct fs_context *fc)
+{
+	struct vfsmount *mnt = fc_mount(fc);
+	if (!IS_ERR(mnt))
+		real_mount(mnt)->mnt_ns = MNT_NS_INTERNAL;
+	return mnt;
+}
+EXPORT_SYMBOL(fc_mount_longterm);
+
 struct vfsmount *vfs_kern_mount(struct file_system_type *type,
 				int flags, const char *name,
 				void *data)
diff --git a/include/linux/mount.h b/include/linux/mount.h
index dcc17ce8a959..9376d76dd61f 100644
--- a/include/linux/mount.h
+++ b/include/linux/mount.h
@@ -94,6 +94,7 @@ int mnt_get_write_access(struct vfsmount *mnt);
 void mnt_put_write_access(struct vfsmount *mnt);
 
 extern struct vfsmount *fc_mount(struct fs_context *fc);
+extern struct vfsmount *fc_mount_longterm(struct fs_context *fc);
 extern struct vfsmount *vfs_create_mount(struct fs_context *fc);
 extern struct vfsmount *vfs_kern_mount(struct file_system_type *type,
 				      int flags, const char *name,
diff --git a/ipc/mqueue.c b/ipc/mqueue.c
index 35b4f8659904..daabf7f02b63 100644
--- a/ipc/mqueue.c
+++ b/ipc/mqueue.c
@@ -482,7 +482,7 @@ static struct vfsmount *mq_create_mount(struct ipc_namespace *ns)
 	put_user_ns(fc->user_ns);
 	fc->user_ns = get_user_ns(ctx->ipc_ns->user_ns);
 
-	mnt = fc_mount(fc);
+	mnt = fc_mount_longterm(fc);
 	put_fs_context(fc);
 	return mnt;
 }
