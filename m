Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DE922C56C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 14:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 475636E96A;
	Fri, 24 Jul 2020 12:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CA76E96A
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 12:42:38 +0000 (UTC)
IronPort-SDR: rk245j080WN9DbGoiKGbmsBwpzQbkaR4buqTUYKNd/2AnPGPNt6ZY6KJIGSdEoui7S0mcOB7Fp
 ObjPVeB76xBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="130775554"
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="130775554"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 05:42:36 -0700
IronPort-SDR: NNivP0wAL/tQMgbuvXUycOz4WYZehCsbfpkHeMrvo//WEMu0m3T9rvoHMkxsvluqpo1c833+2J
 16kavmdTfzfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="311392320"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.213.227.31])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jul 2020 05:42:35 -0700
MIME-Version: 1.0
In-Reply-To: <20200724001901.35662-5-umesh.nerlige.ramappa@intel.com>
References: <20200724001901.35662-1-umesh.nerlige.ramappa@intel.com>
 <20200724001901.35662-5-umesh.nerlige.ramappa@intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 13:42:33 +0100
Message-ID: <159559455387.21069.937949659631730547@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/perf: Map OA buffer to user
 space for gen12 performance query
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Umesh Nerlige Ramappa (2020-07-24 01:19:01)
> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
> 
> i915 used to support time based sampling mode which is good for overall
> system monitoring, but is not enough for query mode used to measure a
> single draw call or dispatch. Gen9-Gen11 are using current i915 perf
> implementation for query, but Gen12+ requires a new approach for query
> based on triggered reports within oa buffer.
> 
> Triggering reports into the OA buffer is achieved by writing into a
> a trigger register. Optionally an unused counter/register is set with a
> marker value such that a triggered report can be identified in the OA
> buffer. Reports are usually triggered at the start and end of work that
> is measured.
> 
> Since OA buffer is large and queries can be frequent, an efficient way
> to look for triggered reports is required. By knowing the current head
> and tail offsets into the OA buffer, it is easier to determine the
> locality of the reports of interest.
> 
> Current perf OA interface does not expose head/tail information to the
> user and it filters out invalid reports before sending data to user.
> Also considering limited size of user buffer used during a query,
> creating a 1:1 copy of the OA buffer at the user space added undesired
> complexity.
> 
> The solution was to map the OA buffer to user space provided
> 
> (1) that it is accessed from a privileged user.
> (2) OA report filtering is not used.
> 
> These 2 conditions would satisfy the safety criteria that the current
> perf interface addresses.
> 
> To enable the query:
> - Add an ioctl to expose head and tail to the user
> - Add an ioctl to return size and offset of the OA buffer
> - Map the OA buffer to the user space
> 
> v2:
> - Improve commit message (Chris)
> - Do not mmap based on gem object filp. Instead, use perf_fd and support
>   mmap syscall (Chris)
> - Pass non-zero offset in mmap to enforce the right object is
>   mapped (Chris)
> - Do not expose gpu_address (Chris)
> - Verify start and length of vma for page alignment (Lionel)
> - Move SQNTL config out (Lionel)
> 
> v3: (Chris)
> - Omit redundant checks
> - Return VM_FAULT_SIGBUS is old stream is closed
> - Maintain reference counts to stream in vm_open and vm_close
> - Use switch to identify object to be mapped
> 
> v4: Call kref_put on closing perf fd (Chris)
> v5:
> - Strip access to OA buffer from unprivileged child of a privileged
>   parent. Use VM_DONTCOPY
> - Enforce MAP_PRIVATE by checking for VM_MAYSHARE
> 
> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
> @@ -3314,12 +3427,113 @@ static int i915_perf_release(struct inode *inode, struct file *file)
>         i915_perf_destroy_locked(stream);
>         mutex_unlock(&perf->lock);
>  
> +       unmap_mapping_range(file->f_mapping, 0, OA_BUFFER_SIZE, 1);

You can just used unmap_mapping_range(file->f_mapping, 0, -1, 1);
It scales with the number of vma present, so no worries, be conservative.
(Otherwise, you need s/0/OA_BUFFER_OFFSET/.)

> +
>         /* Release the reference the perf stream kept on the driver. */
>         drm_dev_put(&perf->i915->drm);
>  
>         return 0;
>  }
>  
> +static void vm_open_oa(struct vm_area_struct *vma)
> +{
> +       struct i915_perf_stream *stream = vma->vm_private_data;
> +
> +       GEM_BUG_ON(!stream);
> +       perf_stream_get(stream);
> +}
> +
> +static void vm_close_oa(struct vm_area_struct *vma)
> +{
> +       struct i915_perf_stream *stream = vma->vm_private_data;
> +
> +       GEM_BUG_ON(!stream);
> +       perf_stream_put(stream);
> +}
> +
> +static vm_fault_t vm_fault_oa(struct vm_fault *vmf)
> +{
> +       struct vm_area_struct *vma = vmf->vma;
> +       struct i915_perf_stream *stream = vma->vm_private_data;
> +       struct i915_perf *perf = stream->perf;
> +       struct drm_i915_gem_object *obj = stream->oa_buffer.vma->obj;
> +       int err;
> +       bool closed;

So vm_area_struct has a reference to the stream, that looks good now.
But there's no reference held to the vma itself.

> +       mutex_lock(&perf->lock);
> +       closed = READ_ONCE(stream->closed);
> +       mutex_unlock(&perf->lock);

We do WRITE_ONCE(stream->closed, true) then invalidate all the mappings,
so that part looks good. The invalidate is serialised with the
vm_fault_oa, so we can just use a plain READ_ONCE(stream->closed) here
and not worry about the perf->lock.

However... I think it should close&invalidate before releasing
stream->oa_buffer.

And the read here of stream->oa_buffer should be after checking
stream->closed.

> +
> +       if (closed)
> +               return VM_FAULT_SIGBUS;
> +
> +       err = i915_gem_object_pin_pages(obj);
> +       if (err)
> +               goto out;
> +
> +       err = remap_io_sg(vma,
> +                         vma->vm_start, vma->vm_end - vma->vm_start,
> +                         obj->mm.pages->sgl, -1);
> +
> +       i915_gem_object_unpin_pages(obj);

I'd be really tempted here not to use stream->oa_buffer.vma->obj at all.
We know the oa_buffer is pinned while it is open (and we know we will be
serialised against close/destroy), so this can be reduced to just

       err = remap_io_sg(vma,
                         vma->vm_start, vma->vm_end - vma->vm_start,
			 stream->oa_buffer.vma->pages, -1);

> +
> +out:
> +       return i915_error_to_vmf_fault(err);
> +}
> +
> +static const struct vm_operations_struct vm_ops_oa = {
> +       .open = vm_open_oa,
> +       .close = vm_close_oa,
> +       .fault = vm_fault_oa,
> +};
> +
> +int i915_perf_mmap(struct file *file, struct vm_area_struct *vma)
> +{
> +       struct i915_perf_stream *stream = file->private_data;
> +
> +       /* mmap-ing OA buffer to user space MUST absolutely be privileged */
> +       if (i915_perf_stream_paranoid && !perfmon_capable()) {
> +               DRM_DEBUG("Insufficient privileges to map OA buffer\n");
> +               return -EACCES;
> +       }
> +
> +       switch (vma->vm_pgoff) {
> +       /* A non-zero offset ensures that we are mapping the right object. Also
> +        * leaves room for future objects added to this implementation.
> +        */

/*
 * Kernel block comment style.
 */

(There's a few subsystems, i.e net/ that use the other style, but we've
switch over to the more common open style and try to stick to it.)

> +       case I915_PERF_OA_BUFFER_MMAP_OFFSET:
> +               if (vma->vm_end - vma->vm_start > OA_BUFFER_SIZE)
> +                       return -EINVAL;
> +
> +               /* Only support VM_READ. Enforce MAP_PRIVATE by checking for
> +                * VM_MAYSHARE.
> +                */
> +               if (vma->vm_flags & (VM_WRITE | VM_EXEC |
> +                                    VM_SHARED | VM_MAYSHARE))
> +                       return -EINVAL;
> +
> +               vma->vm_flags &= ~(VM_MAYWRITE | VM_MAYEXEC);
> +
> +               /* If the privileged parent forks and child drops root
> +                * privilege, we do not want the child to retain access to the
> +                * mapped OA buffer. Explicitly set VM_DONTCOPY to avoid such
> +                * cases.
> +                */

The explanations are extremely valuable :)

> +               vma->vm_flags |= VM_PFNMAP | VM_DONTEXPAND |
> +                                VM_DONTDUMP | VM_DONTCOPY;
> +               break;
> +
> +       default:
> +               return -EINVAL;
> +       }
> +
> +       vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
> +       vma->vm_private_data = stream;
> +       vma->vm_ops = &vm_ops_oa;
> +       vm_open_oa(vma);
> +
> +       return 0;
> +}
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
