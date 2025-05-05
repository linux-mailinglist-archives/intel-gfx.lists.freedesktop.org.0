Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9764AA91E4
	for <lists+intel-gfx@lfdr.de>; Mon,  5 May 2025 13:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D07D10E3CD;
	Mon,  5 May 2025 11:18:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="huWHhHMX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 659C610E3CD
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 May 2025 11:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746443914; x=1777979914;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fV++2/xJmAByTvDKI7AfzC/XV63ix/lgOAMMKzQUoXg=;
 b=huWHhHMXHCm1Bo+N08r9Ud6m639pOCk2s5kMNXULg7mmn+hTyaDRDh93
 8tS+XltuzCJulCc2XgTxuPaTKr965GiLY6YzeQFnUzZ+rJ7wLNrBvsmvr
 IkI0lDSaYo341l65uQ9zPcpy960KAKeWMeV5Ca6Vgoqp9jZErR2YsclU2
 LIrErp5jW65iuMi1qWLxU72MmER6bnnwQeh/Gfe3ZJEEdihbdEWrovEDP
 kBSX6EcdYAlVXBi6Efkm9dZbpoWdwoEGEaJe5Yq5CYterYodime72K+nH
 bwUtBPFygbSKDDGUJ6JY1+3oVNzeKj70JRVE82+yEbnM7vlIvX2r/zB4Q w==;
X-CSE-ConnectionGUID: 99/HhvfbSXOENt9Vpit79w==
X-CSE-MsgGUID: Z9ZTeijoReiyjNv/vR7YIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11423"; a="58709993"
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="58709993"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 04:18:32 -0700
X-CSE-ConnectionGUID: xuv3Y19ATROi7tSZioOfng==
X-CSE-MsgGUID: rRrELvZQTfuAzGkzbM6R0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="140382349"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.232])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 04:18:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Al Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org
Cc: Melissa Wen <mwen@igalia.com>, Christian Brauner <brauner@kernel.org>,
 Jan Kara <jack@suse.cz>, intel-gfx@lists.freedesktop.org, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH][CFT][RFC] sanitize handling of long-term internal mounts
In-Reply-To: <20250503230251.GA2023217@ZenIV>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250503230251.GA2023217@ZenIV>
Date: Mon, 05 May 2025 14:18:26 +0300
Message-ID: <875xifwbjx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Sun, 04 May 2025, Al Viro <viro@zeniv.linux.org.uk> wrote:
> [folks, review and testing would be very welcome; i915 and v3d conversions
> are essentially untested and I would really like to hear from DRM people
> before pushing those anywhere.  I've no problem with splitting these
> parts off and putting the infrastructure bits into a never-rebased
> branch, if somebody prefers to have those taken via drm tree]

I bounced this to intel-gfx with hopes to get some CI results on it.

Also Cc: Joonas and Tvrtko.

BR,
Jani.

> Original rationale for those had been the reduced cost of mntput()
> for the stuff that is mounted somewhere.  Mount refcount increments and
> decrements are frequent; what's worse, they tend to concentrate on the
> same instances and cacheline pingpong is quite noticable.
>
> As the result, mount refcounts are per-cpu; that allows a very cheap
> increment.  Plain decrement would be just as easy, but decrement-and-test
> is anything but (we need to add the components up, with exclusion against
> possible increment-from-zero, etc.).
>
> Fortunately, there is a very common case where we can tell that decrement
> won't be the final one - if the thing we are dropping is currently
> mounted somewhere.  We have an RCU delay between the removal from mount
> tree and dropping the reference that used to pin it there, so we can
> just take rcu_read_lock() and check if the victim is mounted somewhere.
> If it is, we can go ahead and decrement without and further checks -
> the reference we are dropping is not the last one.  If it isn't, we
> get all the fun with locking, carefully adding up components, etc.,
> but the majority of refcount decrements end up taking the fast path.
>
> There is a major exception, though - pipes and sockets.  Those live
> on the internal filesystems that are not going to be mounted anywhere.
> They are not going to be _un_mounted, of course, so having to take the
> slow path every time a pipe or socket gets closed is really obnoxious.
> Solution had been to mark them as long-lived ones - essentially faking
> "they are mounted somewhere" indicator.
>
> With minor modification that works even for ones that do eventually get
> dropped - all it takes is making sure we have an RCU delay between
> clearing the "mounted somewhere" indicator and dropping the reference.
>
> There are some additional twists (if you want to drop a dozen of such
> internal mounts, you'd be better off with clearing the indicator on
> all of them, doing an RCU delay once, then dropping the references),
> but in the basic form it had been
> 	* use kern_mount() if you want your internal mount to be
> a long-term one.
> 	* use kern_unmount() to undo that.
>
> Unfortunately, the things did rot a bit during the mount API reshuffling.
> In several cases we have lost the "fake the indicator" part; kern_unmount()
> on the unmount side remained (it doesn't warn if you use it on a mount
> without the indicator), but all benefits regaring mntput() cost had been
> lost.
>
> To get rid of that bitrot, let's add a new helper that would work
> with fs_context-based API: fc_mount_longterm().  It's a counterpart
> of fc_mount() that does, on success, mark its result as long-term.
> It must be paired with kern_unmount() or equivalents.
>
> Converted:
> 	1) mqueue (it used to use kern_mount_data() and the umount side
> is still as it used to be)
> 	2) hugetlbfs (used to use kern_mount_data(), internal mount is
> never unmounted in this one)
> 	3) i915 gemfs (used to be kern_mount() + manual remount to set
> options, still uses kern_unmount() on umount side)
> 	4) v3d gemfs (copied from i915)
>
> Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
> ---
> diff --git a/drivers/gpu/drm/i915/gem/i915_gemfs.c b/drivers/gpu/drm/i915/gem/i915_gemfs.c
> index 46b9a17d6abc..aae7c0a3c966 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gemfs.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gemfs.c
> @@ -6,16 +6,23 @@
>  
>  #include <linux/fs.h>
>  #include <linux/mount.h>
> +#include <linux/fs_context.h>
>  
>  #include "i915_drv.h"
>  #include "i915_gemfs.h"
>  #include "i915_utils.h"
>  
> +static int add_param(struct fs_context *fc, const char *key, const char *val)
> +{
> +	return vfs_parse_fs_string(fc, key, val, strlen(val));
> +}
> +
>  void i915_gemfs_init(struct drm_i915_private *i915)
>  {
> -	char huge_opt[] = "huge=within_size"; /* r/w */
>  	struct file_system_type *type;
> +	struct fs_context *fc;
>  	struct vfsmount *gemfs;
> +	int ret;
>  
>  	/*
>  	 * By creating our own shmemfs mountpoint, we can pass in
> @@ -39,8 +46,16 @@ void i915_gemfs_init(struct drm_i915_private *i915)
>  	if (!type)
>  		goto err;
>  
> -	gemfs = vfs_kern_mount(type, SB_KERNMOUNT, type->name, huge_opt);
> -	if (IS_ERR(gemfs))
> +	fc = fs_context_for_mount(type, SB_KERNMOUNT);
> +	if (IS_ERR(fc))
> +		goto err;
> +	ret = add_param(fc, "source", "tmpfs");
> +	if (!ret)
> +		ret = add_param(fc, "huge", "within_size");
> +	if (!ret)
> +		gemfs = fc_mount_longterm(fc);
> +	put_fs_context(fc);
> +	if (ret)
>  		goto err;
>  
>  	i915->mm.gemfs = gemfs;
> diff --git a/drivers/gpu/drm/v3d/v3d_gemfs.c b/drivers/gpu/drm/v3d/v3d_gemfs.c
> index 4c5e18590a5c..8ec6ed82b3d9 100644
> --- a/drivers/gpu/drm/v3d/v3d_gemfs.c
> +++ b/drivers/gpu/drm/v3d/v3d_gemfs.c
> @@ -3,14 +3,21 @@
>  
>  #include <linux/fs.h>
>  #include <linux/mount.h>
> +#include <linux/fs_context.h>
>  
>  #include "v3d_drv.h"
>  
> +static int add_param(struct fs_context *fc, const char *key, const char *val)
> +{
> +	return vfs_parse_fs_string(fc, key, val, strlen(val));
> +}
> +
>  void v3d_gemfs_init(struct v3d_dev *v3d)
>  {
> -	char huge_opt[] = "huge=within_size";
>  	struct file_system_type *type;
> +	struct fs_context *fc;
>  	struct vfsmount *gemfs;
> +	int ret;
>  
>  	/*
>  	 * By creating our own shmemfs mountpoint, we can pass in
> @@ -28,8 +35,16 @@ void v3d_gemfs_init(struct v3d_dev *v3d)
>  	if (!type)
>  		goto err;
>  
> -	gemfs = vfs_kern_mount(type, SB_KERNMOUNT, type->name, huge_opt);
> -	if (IS_ERR(gemfs))
> +	fc = fs_context_for_mount(type, SB_KERNMOUNT);
> +	if (IS_ERR(fc))
> +		goto err;
> +	ret = add_param(fc, "source", "tmpfs");
> +	if (!ret)
> +		ret = add_param(fc, "huge", "within_size");
> +	if (!ret)
> +		gemfs = fc_mount_longterm(fc);
> +	put_fs_context(fc);
> +	if (ret)
>  		goto err;
>  
>  	v3d->gemfs = gemfs;
> diff --git a/fs/hugetlbfs/inode.c b/fs/hugetlbfs/inode.c
> index e4de5425838d..4e0397775167 100644
> --- a/fs/hugetlbfs/inode.c
> +++ b/fs/hugetlbfs/inode.c
> @@ -1587,7 +1587,7 @@ static struct vfsmount *__init mount_one_hugetlbfs(struct hstate *h)
>  	} else {
>  		struct hugetlbfs_fs_context *ctx = fc->fs_private;
>  		ctx->hstate = h;
> -		mnt = fc_mount(fc);
> +		mnt = fc_mount_longterm(fc);
>  		put_fs_context(fc);
>  	}
>  	if (IS_ERR(mnt))
> diff --git a/fs/namespace.c b/fs/namespace.c
> index 6f7b2174f25b..07f636036b86 100644
> --- a/fs/namespace.c
> +++ b/fs/namespace.c
> @@ -1258,6 +1258,15 @@ struct vfsmount *fc_mount(struct fs_context *fc)
>  }
>  EXPORT_SYMBOL(fc_mount);
>  
> +struct vfsmount *fc_mount_longterm(struct fs_context *fc)
> +{
> +	struct vfsmount *mnt = fc_mount(fc);
> +	if (!IS_ERR(mnt))
> +		real_mount(mnt)->mnt_ns = MNT_NS_INTERNAL;
> +	return mnt;
> +}
> +EXPORT_SYMBOL(fc_mount_longterm);
> +
>  struct vfsmount *vfs_kern_mount(struct file_system_type *type,
>  				int flags, const char *name,
>  				void *data)
> diff --git a/include/linux/mount.h b/include/linux/mount.h
> index dcc17ce8a959..9376d76dd61f 100644
> --- a/include/linux/mount.h
> +++ b/include/linux/mount.h
> @@ -94,6 +94,7 @@ int mnt_get_write_access(struct vfsmount *mnt);
>  void mnt_put_write_access(struct vfsmount *mnt);
>  
>  extern struct vfsmount *fc_mount(struct fs_context *fc);
> +extern struct vfsmount *fc_mount_longterm(struct fs_context *fc);
>  extern struct vfsmount *vfs_create_mount(struct fs_context *fc);
>  extern struct vfsmount *vfs_kern_mount(struct file_system_type *type,
>  				      int flags, const char *name,
> diff --git a/ipc/mqueue.c b/ipc/mqueue.c
> index 35b4f8659904..daabf7f02b63 100644
> --- a/ipc/mqueue.c
> +++ b/ipc/mqueue.c
> @@ -482,7 +482,7 @@ static struct vfsmount *mq_create_mount(struct ipc_namespace *ns)
>  	put_user_ns(fc->user_ns);
>  	fc->user_ns = get_user_ns(ctx->ipc_ns->user_ns);
>  
> -	mnt = fc_mount(fc);
> +	mnt = fc_mount_longterm(fc);
>  	put_fs_context(fc);
>  	return mnt;
>  }

-- 
Jani Nikula, Intel
