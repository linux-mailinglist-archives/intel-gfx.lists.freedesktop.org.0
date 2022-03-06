Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FFE4CEA69
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Mar 2022 11:01:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E13B112309;
	Sun,  6 Mar 2022 10:01:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE5F112307;
 Sun,  6 Mar 2022 10:01:41 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 314D0611FA;
 Sun,  6 Mar 2022 10:01:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E17FDC340EC;
 Sun,  6 Mar 2022 10:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1646560899;
 bh=tWOO0ueZM0TxA/mZfTkeEMBGYFRJ0CsEHmRlfeNLsuI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=deotAlwf6wSuJyZfOJmHrjfd+h9Wp09amboA1hEbBfApU+qyf/CwgBoRpCqQ1TspJ
 XNXBxqWGnldkKo03mDYeMJFs4Chsk3zCxdAp9ZgySLo1AiWKPcObcvYq0+hoo/EywF
 +8VdGKEH0u1uRm0bEmNOqJu6kkjDkJgDmsC+QrUY=
Date: Sun, 6 Mar 2022 11:01:36 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jarkko Sakkinen <jarkko@kernel.org>
Message-ID: <YiSGgCV9u9NglYsM@kroah.com>
References: <20220306053211.135762-1-jarkko@kernel.org>
 <20220306053211.135762-2-jarkko@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220306053211.135762-2-jarkko@kernel.org>
Subject: Re: [Intel-gfx] [PATCH RFC 1/3] mm: Add f_ops->populate()
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
Cc: zhangyiru <zhangyiru3@huawei.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Alexander Mikhalitsyn <alexander.mikhalitsyn@virtuozzo.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-unionfs@vger.kernel.org,
 codalist@coda.cs.cmu.edu, Matthew Auld <matthew.auld@intel.com>,
 Vasily Averin <vvs@virtuozzo.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Shakeel Butt <shakeelb@google.com>,
 Reinette Chatre <reinette.chatre@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-sgx@vger.kernel.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nathaniel McCallum <nathaniel@profian.com>, linux-mips@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Alexey Gladkov <legion@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Mar 06, 2022 at 07:32:05AM +0200, Jarkko Sakkinen wrote:
> Sometimes you might want to use MAP_POPULATE to ask a device driver to
> initialize the device memory in some specific manner. SGX driver can use
> this to request more memory by issuing ENCLS[EAUG] x86 opcode for each
> page in the address range.
> 
> Add f_ops->populate() with the same parameters as f_ops->mmap() and make
> it conditionally called inside call_mmap(). Update call sites
> accodingly.
> ---
> Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
> v3:
> -       if (!ret && do_populate && file->f_op->populate)
> +       if (!ret && do_populate && file->f_op->populate &&
> +           !!(vma->vm_flags & (VM_IO | VM_PFNMAP)))
> (reported by Matthew Wilcox)
> v2:
> -       if (!ret && do_populate)
> +       if (!ret && do_populate && file->f_op->populate)
> (reported by Jan Harkes)
> ---
>  arch/mips/kernel/vdso.c                    |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c |  2 +-
>  fs/coda/file.c                             |  2 +-
>  fs/overlayfs/file.c                        |  2 +-
>  include/linux/fs.h                         | 12 ++++++++++--
>  include/linux/mm.h                         |  2 +-
>  ipc/shm.c                                  |  2 +-
>  mm/mmap.c                                  | 10 +++++-----
>  mm/nommu.c                                 |  4 ++--
>  9 files changed, 23 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/mips/kernel/vdso.c b/arch/mips/kernel/vdso.c
> index 3d0cf471f2fe..89f3f3da9abd 100644
> --- a/arch/mips/kernel/vdso.c
> +++ b/arch/mips/kernel/vdso.c
> @@ -102,7 +102,7 @@ int arch_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
>  		base = mmap_region(NULL, STACK_TOP, PAGE_SIZE,
>  				VM_READ | VM_EXEC |
>  				VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
> -				0, NULL);
> +				0, NULL, false);
>  		if (IS_ERR_VALUE(base)) {
>  			ret = base;
>  			goto out;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index 1b526039a60d..4c71f64d6a79 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -107,7 +107,7 @@ static int i915_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *
>  	if (!obj->base.filp)
>  		return -ENODEV;
>  
> -	ret = call_mmap(obj->base.filp, vma);
> +	ret = call_mmap(obj->base.filp, vma, false);
>  	if (ret)
>  		return ret;
>  
> diff --git a/fs/coda/file.c b/fs/coda/file.c
> index 29dd87be2fb8..e14f312fdbf8 100644
> --- a/fs/coda/file.c
> +++ b/fs/coda/file.c
> @@ -173,7 +173,7 @@ coda_file_mmap(struct file *coda_file, struct vm_area_struct *vma)
>  	spin_unlock(&cii->c_lock);
>  
>  	vma->vm_file = get_file(host_file);
> -	ret = call_mmap(vma->vm_file, vma);
> +	ret = call_mmap(vma->vm_file, vma, false);
>  
>  	if (ret) {
>  		/* if call_mmap fails, our caller will put host_file so we
> diff --git a/fs/overlayfs/file.c b/fs/overlayfs/file.c
> index fa125feed0ff..b963a9397e80 100644
> --- a/fs/overlayfs/file.c
> +++ b/fs/overlayfs/file.c
> @@ -503,7 +503,7 @@ static int ovl_mmap(struct file *file, struct vm_area_struct *vma)
>  	vma_set_file(vma, realfile);
>  
>  	old_cred = ovl_override_creds(file_inode(file)->i_sb);
> -	ret = call_mmap(vma->vm_file, vma);
> +	ret = call_mmap(vma->vm_file, vma, false);
>  	revert_creds(old_cred);
>  	ovl_file_accessed(file);
>  
> diff --git a/include/linux/fs.h b/include/linux/fs.h
> index e2d892b201b0..2909e2d14af8 100644
> --- a/include/linux/fs.h
> +++ b/include/linux/fs.h
> @@ -42,6 +42,7 @@
>  #include <linux/mount.h>
>  #include <linux/cred.h>
>  #include <linux/mnt_idmapping.h>
> +#include <linux/mm.h>
>  
>  #include <asm/byteorder.h>
>  #include <uapi/linux/fs.h>
> @@ -1993,6 +1994,7 @@ struct file_operations {
>  	long (*unlocked_ioctl) (struct file *, unsigned int, unsigned long);
>  	long (*compat_ioctl) (struct file *, unsigned int, unsigned long);
>  	int (*mmap) (struct file *, struct vm_area_struct *);
> +	int (*populate)(struct file *, struct vm_area_struct *);
>  	unsigned long mmap_supported_flags;
>  	int (*open) (struct inode *, struct file *);
>  	int (*flush) (struct file *, fl_owner_t id);
> @@ -2074,9 +2076,15 @@ static inline ssize_t call_write_iter(struct file *file, struct kiocb *kio,
>  	return file->f_op->write_iter(kio, iter);
>  }
>  
> -static inline int call_mmap(struct file *file, struct vm_area_struct *vma)
> +static inline int call_mmap(struct file *file, struct vm_area_struct *vma, bool do_populate)
>  {
> -	return file->f_op->mmap(file, vma);
> +	int ret = file->f_op->mmap(file, vma);
> +
> +	if (!ret && do_populate && file->f_op->populate &&
> +	    !!(vma->vm_flags & (VM_IO | VM_PFNMAP)))
> +		ret = file->f_op->populate(file, vma);
> +
> +	return ret;
>  }
>  
>  extern ssize_t vfs_read(struct file *, char __user *, size_t, loff_t *);
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 213cc569b192..6c8c036f423b 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -2683,7 +2683,7 @@ extern unsigned long get_unmapped_area(struct file *, unsigned long, unsigned lo
>  
>  extern unsigned long mmap_region(struct file *file, unsigned long addr,
>  	unsigned long len, vm_flags_t vm_flags, unsigned long pgoff,
> -	struct list_head *uf);
> +	struct list_head *uf, bool do_populate);

As I have said many times before, don't add random boolean flags to
function arguments, as they provide no hint as to what they do at all.
When you read the code, you then have to go back and look up the
function definition here and see what exactly it means and the flow is
broken.

Make function names mean something obvious, for this, if it really is a
good idea to have this new flag (and I doubt it, but that's not my
call), then make this a mmap_region_populate() call to make it obvious
it is something different than the notmal mmap_region() call.

But as is, this is pretty horrid, don't you agree?

thanks,

greg k-h
