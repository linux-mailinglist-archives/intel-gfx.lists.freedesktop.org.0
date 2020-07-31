Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FFB23435B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 11:36:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF786EA4D;
	Fri, 31 Jul 2020 09:36:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5DDB6EA4D
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 09:36:02 +0000 (UTC)
IronPort-SDR: Y2r5beVFG3+fYAEzEMknRu1tesvhtCDPzDs8vdWtV0/uAWfaYorRJj05HIJvZgwz/wmo1NlK9e
 B7VHWAXKLIIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="169864900"
X-IronPort-AV: E=Sophos;i="5.75,417,1589266800"; d="scan'208";a="169864900"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 02:36:01 -0700
IronPort-SDR: Q0I/WJY6s5qOrt1FpbXrs5ujcSZ2ksQh/2htxj0OUwWoMQ4pvXtWSu+30Dmy3pGogagiKTpW3v
 3sYbPcbaBb6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,417,1589266800"; d="scan'208";a="491431252"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.249.40.179])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jul 2020 02:36:00 -0700
MIME-Version: 1.0
In-Reply-To: <20200731060723.3911-5-umesh.nerlige.ramappa@intel.com>
References: <20200731060723.3911-1-umesh.nerlige.ramappa@intel.com>
 <20200731060723.3911-5-umesh.nerlige.ramappa@intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 10:35:59 +0100
Message-ID: <159618815944.9621.11843144748233148399@build.alporthouse.com>
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

Quoting Umesh Nerlige Ramappa (2020-07-31 07:07:23)
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
> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c |   2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_mman.h |   2 +
>  drivers/gpu/drm/i915/i915_perf.c         | 123 ++++++++++++++++++++++-
>  include/uapi/drm/i915_drm.h              |  18 ++++
>  4 files changed, 143 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index b23368529a40..7c4b9b0c334b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -204,7 +204,7 @@ compute_partial_view(const struct drm_i915_gem_object *obj,
>         return view;
>  }
>  
> -static vm_fault_t i915_error_to_vmf_fault(int err)
> +vm_fault_t i915_error_to_vmf_fault(int err)
>  {
>         switch (err) {
>         default:
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> index efee9e0d2508..1190a3a228ea 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
> @@ -29,4 +29,6 @@ void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
>  
>  void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj);
>  
> +vm_fault_t i915_error_to_vmf_fault(int err);
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 8ff502719dfd..8ac7944c24b8 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -192,10 +192,12 @@
>   */
>  
>  #include <linux/anon_inodes.h>
> +#include <linux/mman.h>
>  #include <linux/sizes.h>
>  #include <linux/uuid.h>
>  
>  #include "gem/i915_gem_context.h"
> +#include "gem/i915_gem_mman.h"
>  #include "gt/intel_engine_pm.h"
>  #include "gt/intel_engine_user.h"
>  #include "gt/intel_gt.h"
> @@ -3269,6 +3271,42 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
>         return ret;
>  }
>  
> +#define I915_PERF_OA_BUFFER_MMAP_OFFSET 1
> +
> +/**
> + * i915_perf_oa_buffer_info_locked - size and offset of the OA buffer
> + * @stream: i915 perf stream
> + * @arg: pointer to oa buffer info filled by this function.
> + */
> +static int i915_perf_oa_buffer_info_locked(struct i915_perf_stream *stream,
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
> +       if (!output)
> +               return -EINVAL;

I'd leave that for copy_from_user to return EFAULT?

But you should pass the cmd in so we can validate arg is large enough.
Otherwise we may accidentally overwrite the user's data should the
struct change.

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
> @@ -3294,6 +3332,8 @@ static long i915_perf_ioctl_locked(struct i915_perf_stream *stream,
>                 return 0;
>         case I915_PERF_IOCTL_CONFIG:
>                 return i915_perf_config_locked(stream, arg);
> +       case I915_PERF_IOCTL_GET_OA_BUFFER_INFO:
> +               return i915_perf_oa_buffer_info_locked(stream, arg);
>         }
>  
>         return -EINVAL;
> @@ -3365,6 +3405,14 @@ static int i915_perf_release(struct inode *inode, struct file *file)
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
> @@ -3375,6 +3423,75 @@ static int i915_perf_release(struct inode *inode, struct file *file)
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
> +int i915_perf_mmap(struct file *file, struct vm_area_struct *vma)

static int i915_perf_mmap

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
>  
>  static const struct file_operations fops = {
>         .owner          = THIS_MODULE,
> @@ -3387,6 +3504,7 @@ static const struct file_operations fops = {
>          * to handle 32bits compatibility.
>          */
>         .compat_ioctl   = i915_perf_ioctl,
> +       .mmap           = i915_perf_mmap,
>  };
>  
>  
> @@ -4531,8 +4649,11 @@ int i915_perf_ioctl_version(void)
>          *
>          *    - OA buffer head/tail/status/buffer registers for read only
>          *    - OA counters A18, A19, A20 for read/write
> +        *
> +        * 8: Added an option to map oa buffer at umd driver level and trigger
> +        *    oa reports within oa buffer from command buffer.

Add a cross-reference?

	   *    See I915_PERF_IOCTL_GET_OA_BUFFER_INFO

>          */
> -       return 7;
> +       return 8;
>  }
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 00546062e023..35b8ed02ad25 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2048,6 +2048,24 @@ struct drm_i915_perf_open_param {
>   */
>  #define I915_PERF_IOCTL_CONFIG _IO('i', 0x2)
>  
> +/**
> + * Returns OA buffer properties to be used with mmap.
> + *
> + * This ioctl is available in perf revision 8.
> + */
> +#define I915_PERF_IOCTL_GET_OA_BUFFER_INFO _IOWR('i', 0x3, struct drm_i915_perf_oa_buffer_info)
> +
> +/**
> + * OA buffer size and offset.

Declare the available types and their limitations.

OA output buffer
	type: 0
	flags: mbz

	After querying the info, pass (size,offset) to mmap(),
	mmap(0, info.size, PROT_READ, MAP_PRIVATE, perf_fd, info.offset)

	Note that only a private (not shared between processes, or across
	fork()) read-only mmapping is allowed.

We probably also should mention that userspace must treat the incoming
data as tainted, but it is expected to conform to the OA format as
specified by their config. And mention the set of control registers
associated with the buffer? [At least in general terms such that one can
find the relevant information in the specs.]

> + */
> +struct drm_i915_perf_oa_buffer_info {
> +       __u32 type;   /* in */
> +       __u32 flags;  /* in */
> +       __u64 size;   /* out */
> +       __u64 offset; /* out */
> +       __u64 rsvd;   /* mbz */
> +};
> +
>  /**
>   * Common to all i915 perf records
>   */
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
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
