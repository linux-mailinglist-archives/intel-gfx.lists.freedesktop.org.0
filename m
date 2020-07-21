Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E05227B26
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 10:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59B976E514;
	Tue, 21 Jul 2020 08:52:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C89F6E519
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 08:52:45 +0000 (UTC)
IronPort-SDR: fxBOcCZPgBdQ23vlYduMjpbr6PXGzvcK7fDv8qyoGNEFybHOuvfMK2kshNI2aFKlhI/1dMcRug
 DYhGkb8+qiLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="148029995"
X-IronPort-AV: E=Sophos;i="5.75,378,1589266800"; d="scan'208";a="148029995"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 01:52:44 -0700
IronPort-SDR: T4TWmLiyuc7UfUAzegGsl4BWKqop4BDCwiSs1fyX/MSNfdtVm++FXzqgKy+hJvFz8AAVofsOlI
 id2oDDWQXpRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,378,1589266800"; d="scan'208";a="301552231"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.213.220.189])
 by orsmga002.jf.intel.com with ESMTP; 21 Jul 2020 01:52:43 -0700
MIME-Version: 1.0
In-Reply-To: <20200721021759.GA26358@orsosgc001.amr.corp.intel.com>
References: <20200721020012.46506-1-umesh.nerlige.ramappa@intel.com>
 <20200721020012.46506-5-umesh.nerlige.ramappa@intel.com>
 <20200721021759.GA26358@orsosgc001.amr.corp.intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jul 2020 09:52:42 +0100
Message-ID: <159532156230.15672.14921993605096684585@build.alporthouse.com>
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

Quoting Umesh Nerlige Ramappa (2020-07-21 03:17:59)
> Hi Chris,
> 
> I have added your comments, but I have a few questions below:
> 
> Thanks for your help,
> Umesh
> 
> On Mon, Jul 20, 2020 at 07:00:12PM -0700, Umesh Nerlige Ramappa wrote:
> >From: Piotr Maciejewski <piotr.maciejewski@intel.com>
> >+static void vm_open_oa(struct vm_area_struct *vma)
> >+{
> >+      struct i915_perf_stream *stream = vma->vm_private_data;
> >+
> >+      GEM_BUG_ON(!stream);
> >+      kref_get(&stream->refcount);
> 
> When user calls mmap, after this call the count is 2 (since kref_init 
> started off the count with 1).
> 
> >+}
> >+
> >+static void vm_close_oa(struct vm_area_struct *vma)
> >+{
> >+      struct i915_perf_stream *stream = vma->vm_private_data;
> >+
> >+      GEM_BUG_ON(!stream);
> >+      kref_put(&stream->refcount, free_stream);
> 
> When the user closes perf fd or calls unmap, vm_close_oa is called and 
> refcount goes to 1, so not sure how the refcount goes to 0 so that 
> free_stream is called. Should I kref_put when closing perf fd also?

Yes, at a glance, I would say i915_perf_destroy_locked() should replace
the kfree(stream) with a kref_put.

> >+static vm_fault_t vm_fault_oa(struct vm_fault *vmf)
> >+{
> >+      struct vm_area_struct *vma = vmf->vma;
> >+      struct i915_perf_stream *stream = vma->vm_private_data;
> >+      struct drm_i915_gem_object *obj = stream->oa_buffer.vma->obj;
> >+      int err;
> >+
> >+      if (READ_ONCE(stream->closed))
> >+              return VM_FAULT_SIGBUS;
> >+
> >+      err = i915_gem_object_pin_pages(obj);
> >+      if (err)
> >+              goto out;
> >+
> >+      err = remap_io_sg(vma,
> >+                        vma->vm_start, vma->vm_end - vma->vm_start,
> >+                        obj->mm.pages->sgl, -1);
> >+
> >+      i915_gem_object_unpin_pages(obj);
> >+
> >+out:
> >+      return i915_error_to_vmf_fault(err);
> >+}
> >+
> >+static const struct vm_operations_struct vm_ops_oa = {
> >+      .open = vm_open_oa,
> >+      .close = vm_close_oa,
> >+      .fault = vm_fault_oa,
> >+};
> >+
> >+int i915_perf_mmap(struct file *file, struct vm_area_struct *vma)
> >+{
> >+      struct i915_perf_stream *stream = file->private_data;
> >+
> >+      if (i915_perf_stream_paranoid && !perfmon_capable()) {
> >+              DRM_DEBUG("Insufficient privileges to map OA buffer\n");
> >+              return -EACCES;
> >+      }
> >+
> >+      switch (vma->vm_pgoff) {
> >+      case I915_PERF_OA_BUFFER_MMAP_OFFSET:
> >+              if (vma->vm_end - vma->vm_start > OA_BUFFER_SIZE)
> >+                      return -EINVAL;
> >+
> >+              if (vma->vm_flags & VM_WRITE)
> >+                      return -EINVAL;
> >+
> >+              break;
> >+
> >+      default:
> >+              return -EINVAL;
> >+      }
> >+
> >+      vma->vm_flags &= ~(VM_MAYWRITE | VM_MAYEXEC | VM_MAYSHARE);
> >+      vma->vm_flags |= VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP;
> >+      vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
> >+      vma->vm_private_data = stream;
> >+      vma->vm_ops = &vm_ops_oa;
> >+      vm_open_oa(vma);
> 
> I am calling the open explicitly here to get the reference, otherwise I 
> don't see open being called by anyone/anything.

The initial vm_ops->open is implicit, i.e. the mmap starts opened, and
the vm_ops->open() is only called when the vma is cloned (e.g. on
fork()).

> If user calls mmap multiple times, does he get a unique vma each time?

Yes.

> Do I need to track all of them (and their sizes) and then unmap them 
> when perf_fd is closed?

Yes... But we can zap them all with a single unmap_mapping_range() call,
since they all exist within the perf_fd->f_mapping.

> >diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> >index a36a455ae336..2efbe35c5fa9 100644
> >--- a/drivers/gpu/drm/i915/i915_perf_types.h
> >+++ b/drivers/gpu/drm/i915/i915_perf_types.h
> >@@ -311,6 +311,18 @@ struct i915_perf_stream {
> >        * buffer should be checked for available data.
> >        */
> >       u64 poll_oa_period;
> >+
> >+      /**
> >+       * @closed: Open or closed state of the stream.
> >+       * True if stream is closed.
> >+       */
> >+      bool closed;
> 
> closed is part of the stream itself, so I cannot kfree(stream) until the 
> refcount goes to 0.

Correct. kfree must be part of the kref_put cb.

> >+      /**
> >+       * @refcount: References to the mapped OA buffer managed by this
> >+       * stream.
> >+       */
> >+      struct kref refcount;
> > };
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
