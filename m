Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FCE225E68
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:21:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A0E6E3C7;
	Mon, 20 Jul 2020 12:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB5956E3C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 12:21:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21873147-1500050 for multiple; Mon, 20 Jul 2020 13:21:38 +0100
MIME-Version: 1.0
In-Reply-To: <20200718000437.69033-5-umesh.nerlige.ramappa@intel.com>
References: <20200718000437.69033-1-umesh.nerlige.ramappa@intel.com>
 <20200718000437.69033-5-umesh.nerlige.ramappa@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jul 2020 13:21:37 +0100
Message-ID: <159524769778.15672.5998909935955392572@build.alporthouse.com>
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

Quoting Umesh Nerlige Ramappa (2020-07-18 01:04:37)
> +static vm_fault_t vm_fault_oa(struct vm_fault *vmf)
> +{
> +       struct vm_area_struct *vma = vmf->vma;
> +       struct i915_perf_stream *stream = vma->vm_private_data;
> +       struct drm_i915_gem_object *obj = stream->oa_buffer.vma->obj;
> +       int err;
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

Ok, basics look good (will handle any vma for which we have valid DMA
addresses, and since we control the construction of the vma we know we
can limit it to objects that work via CPU PTE). There is just one small
catch we have to be wary off -- the CPU pte are not holding a reference
to the pages themselves, and so we need to refault if we have to evict.

However! The oa_buffer is perma-pinned so the pages cannot just disappear,
but the mmap itself may outlive the perf-fd. So we need some way to
determine that the vm_fault_oa() is called on an old stream (e..g if
(stream->closed) return VM_FAULT_SIGBUS;), and during stream close to
call unmap_mmaping_range(perf_file->f_mapping, 0, -1);

Since the mmap may live longer than expected, the vm_ops should on
open() take a reference to the stream, and on close() release that
reference.

Now would be a good time to mmap and close the perf-fd in an igt and
verify the mmap is no longer accessible after the close. (To add
complications, you can fork after opening the mmap(perf-fd).)

> +out:
> +       return i915_error_to_vmf_fault(err);
> +}
> +
> +static const struct vm_operations_struct vm_ops_oa = {
> +       .fault = vm_fault_oa,
> +};
> +
> +int i915_perf_mmap(struct file *file, struct vm_area_struct *vma)
> +{
> +       struct i915_perf_stream *stream = file->private_data;
> +       int len;
> +
> +       if (!IS_ALIGNED(vma->vm_start, PAGE_SIZE))
> +               return -EINVAL;
> +
> +       if (vma->vm_end < vma->vm_start)
> +               return -EINVAL;

These strike me as being redundant.

> +       len = vma->vm_end - vma->vm_start;
> +       if (!IS_ALIGNED(len, PAGE_SIZE) || len > OA_BUFFER_SIZE)
> +               return -EINVAL;
> +
> +       if (vma->vm_flags & VM_WRITE)
> +               return -EINVAL;
> +
> +       if (vma->vm_pgoff != I915_PERF_OA_BUFFER_MMAP_OFFSET)
> +               return -EINVAL;

I'd throw this is into a switch and do it earlier, so the len and
writable checks can be based on the oa_vma. (Having a switch makes it
clearer that this doesn't have to be a one-off.)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
