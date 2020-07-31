Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8761223480A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 16:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15366EAD5;
	Fri, 31 Jul 2020 14:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B77C66EAD5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 14:55:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21994750-1500050 for multiple; Fri, 31 Jul 2020 15:55:12 +0100
MIME-Version: 1.0
In-Reply-To: <20200731144643.32364-5-umesh.nerlige.ramappa@intel.com>
References: <20200731144643.32364-1-umesh.nerlige.ramappa@intel.com>
 <20200731144643.32364-5-umesh.nerlige.ramappa@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 15:55:11 +0100
Message-ID: <159620731156.21624.4304539777379371595@build.alporthouse.com>
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

Quoting Umesh Nerlige Ramappa (2020-07-31 15:46:43)
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
> v6:
> (Chris)
> - Use len of -1 in unmap_mapping_range
> - Don't use stream->oa_buffer.vma->obj in vm_fault_oa
> - Use kernel block comment style
> - do_mmap gets a reference to the file and puts it in do_munmap, so
>   no need to maintain a reference to i915_perf_stream. Hence, remove
>   vm_open/vm_close and stream->closed hooks/checks.
> (Umesh)
> - Do not allow mmap if SAMPLE_OA_REPORT is not set during
>   i915_perf_open_ioctl.
> - Drop ioctl returning head/tail since this information is already
>   whitelisted. Remove hooks to read head register.
> 
> v7: (Chris)
> - unmap before destroy
> - change ioctl argument struct
> 
> v8: Documentation and more checks (Chris)
> 
> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
> +#define I915_PERF_OA_BUFFER_MMAP_OFFSET 1
> +
> +/**
> + * i915_perf_oa_buffer_info_locked - size and offset of the OA buffer
> + * @stream: i915 perf stream
> + * @arg: pointer to oa buffer info filled by this function.
> + */
> +static int i915_perf_oa_buffer_info_locked(struct i915_perf_stream *stream,
> +                                          unsigned int cmd,
> +                                          unsigned long arg)
> +{
> +       struct drm_i915_perf_oa_buffer_info info;
> +       void __user *output = (void __user *)arg;
> +
> +       if (i915_perf_stream_paranoid && !perfmon_capable()) {
> +               DRM_DEBUG("Insufficient privileges to access OA buffer info\n");
> +               return -EACCES;
> +       }
> +
> +       if (_IOC_SIZE(cmd) != sizeof(info))
> +               return -EINVAL;

For total pedantry, we could check cmd & (IOC_IN | IOC_OUT) as well :)

> +
> +       if (copy_from_user(&info, output, sizeof(info)))
> +               return -EFAULT;
> +
> +       if (info.type || info.flags || info.rsvd)
> +               return -EINVAL;
> +
> +       info.size = stream->oa_buffer.vma->size;
> +       info.offset = I915_PERF_OA_BUFFER_MMAP_OFFSET * PAGE_SIZE;
> +
> +       if (copy_to_user(output, &info, sizeof(info)))
> +               return -EFAULT;
> +
> +       return 0;
> +}
> +
>  /**
>   * i915_perf_ioctl - support ioctl() usage with i915 perf stream FDs
>   * @stream: An i915 perf stream
> @@ -3290,6 +3329,8 @@ static long i915_perf_ioctl_locked(struct i915_perf_stream *stream,
>                 return 0;
>         case I915_PERF_IOCTL_CONFIG:
>                 return i915_perf_config_locked(stream, arg);
> +       case I915_PERF_IOCTL_GET_OA_BUFFER_INFO:
> +               return i915_perf_oa_buffer_info_locked(stream, cmd, arg);
>         }
>  
>         return -EINVAL;
> @@ -3361,6 +3402,14 @@ static int i915_perf_release(struct inode *inode, struct file *file)
>         struct i915_perf_stream *stream = file->private_data;
>         struct i915_perf *perf = stream->perf;
>  
> +       /*
> +        * User could have multiple vmas from multiple mmaps. We want to zap
> +        * them all here. Note that a fresh fault cannot occur as the mmap holds
> +        * a reference to the stream via the vma->vm_file, so before user's
> +        * munmap, the stream cannot be destroyed.
> +        */
> +       unmap_mapping_range(file->f_mapping, 0, -1, 1);
> +
>         mutex_lock(&perf->lock);
>         i915_perf_destroy_locked(stream);
>         mutex_unlock(&perf->lock);
> @@ -3371,6 +3420,75 @@ static int i915_perf_release(struct inode *inode, struct file *file)
>         return 0;
>  }
>  
> +static vm_fault_t vm_fault_oa(struct vm_fault *vmf)
> +{
> +       struct vm_area_struct *vma = vmf->vma;
> +       struct i915_perf_stream *stream = vma->vm_private_data;
> +       int err;
> +
> +       err = remap_io_sg(vma,
> +                         vma->vm_start, vma->vm_end - vma->vm_start,
> +                         stream->oa_buffer.vma->pages->sgl, -1);
> +
> +       return i915_error_to_vmf_fault(err);
> +}
> +
> +static const struct vm_operations_struct vm_ops_oa = {
> +       .fault = vm_fault_oa,
> +};
> +
> +static int i915_perf_mmap(struct file *file, struct vm_area_struct *vma)
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
> +       /*
> +        * A non-zero offset ensures that we are mapping the right object. Also
> +        * leaves room for future objects added to this implementation.
> +        */
> +       case I915_PERF_OA_BUFFER_MMAP_OFFSET:
> +               if (!(stream->sample_flags & SAMPLE_OA_REPORT))
> +                       return -EINVAL;
> +
> +               if (vma->vm_end - vma->vm_start > OA_BUFFER_SIZE)
> +                       return -EINVAL;
> +
> +               /*
> +                * Only support VM_READ. Enforce MAP_PRIVATE by checking for
> +                * VM_MAYSHARE.
> +                */
> +               if (vma->vm_flags & (VM_WRITE | VM_EXEC |
> +                                    VM_SHARED | VM_MAYSHARE))
> +                       return -EINVAL;
> +
> +               vma->vm_flags &= ~(VM_MAYWRITE | VM_MAYEXEC);
> +
> +               /*
> +                * If the privileged parent forks and child drops root
> +                * privilege, we do not want the child to retain access to the
> +                * mapped OA buffer. Explicitly set VM_DONTCOPY to avoid such
> +                * cases.
> +                */
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
> +
> +       return 0;
> +}

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
