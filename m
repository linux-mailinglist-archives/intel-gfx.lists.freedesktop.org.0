Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2A222CB21
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 18:34:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 386BD6E0B6;
	Fri, 24 Jul 2020 16:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5872D6E0B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 16:34:29 +0000 (UTC)
IronPort-SDR: snNfqsVioRf+pqssda2fUyJIfIzHbrSbkJY88Xt6U2glRMHn1xdAwqwT86KE6HTx1NAKaGcIuK
 kvJ2/3kPgvNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="148651102"
X-IronPort-AV: E=Sophos;i="5.75,391,1589266800"; d="scan'208";a="148651102"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 09:34:20 -0700
IronPort-SDR: WbP1ciPUpqwZn+xJDi2clv453mT9vFjlxw57z7In/0wNvrTnVNsSczSrriLA2+hF2cB2u4Cwkc
 ZVCRPsA5PC7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,391,1589266800"; d="scan'208";a="327366206"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.213.227.31])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jul 2020 09:34:12 -0700
MIME-Version: 1.0
In-Reply-To: <20200724162956.GB28353@orsosgc001.amr.corp.intel.com>
References: <20200724001901.35662-1-umesh.nerlige.ramappa@intel.com>
 <20200724001901.35662-5-umesh.nerlige.ramappa@intel.com>
 <159559455387.21069.937949659631730547@build.alporthouse.com>
 <20200724162956.GB28353@orsosgc001.amr.corp.intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Date: Fri, 24 Jul 2020 17:34:11 +0100
Message-ID: <159560845126.2889.3198879925052513730@build.alporthouse.com>
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Umesh Nerlige Ramappa (2020-07-24 17:29:56)
> On Fri, Jul 24, 2020 at 01:42:33PM +0100, Chris Wilson wrote:
> >Quoting Umesh Nerlige Ramappa (2020-07-24 01:19:01)
> >> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
> >>
> >> i915 used to support time based sampling mode which is good for overall
> >> system monitoring, but is not enough for query mode used to measure a
> >> single draw call or dispatch. Gen9-Gen11 are using current i915 perf
> >> implementation for query, but Gen12+ requires a new approach for query
> >> based on triggered reports within oa buffer.
> >>
> >> Triggering reports into the OA buffer is achieved by writing into a
> >> a trigger register. Optionally an unused counter/register is set with a
> >> marker value such that a triggered report can be identified in the OA
> >> buffer. Reports are usually triggered at the start and end of work that
> >> is measured.
> >>
> >> Since OA buffer is large and queries can be frequent, an efficient way
> >> to look for triggered reports is required. By knowing the current head
> >> and tail offsets into the OA buffer, it is easier to determine the
> >> locality of the reports of interest.
> >>
> >> Current perf OA interface does not expose head/tail information to the
> >> user and it filters out invalid reports before sending data to user.
> >> Also considering limited size of user buffer used during a query,
> >> creating a 1:1 copy of the OA buffer at the user space added undesired
> >> complexity.
> >>
> >> The solution was to map the OA buffer to user space provided
> >>
> >> (1) that it is accessed from a privileged user.
> >> (2) OA report filtering is not used.
> >>
> >> These 2 conditions would satisfy the safety criteria that the current
> >> perf interface addresses.
> >>
> >> To enable the query:
> >> - Add an ioctl to expose head and tail to the user
> >> - Add an ioctl to return size and offset of the OA buffer
> >> - Map the OA buffer to the user space
> >>
> >> v2:
> >> - Improve commit message (Chris)
> >> - Do not mmap based on gem object filp. Instead, use perf_fd and support
> >>   mmap syscall (Chris)
> >> - Pass non-zero offset in mmap to enforce the right object is
> >>   mapped (Chris)
> >> - Do not expose gpu_address (Chris)
> >> - Verify start and length of vma for page alignment (Lionel)
> >> - Move SQNTL config out (Lionel)
> >>
> >> v3: (Chris)
> >> - Omit redundant checks
> >> - Return VM_FAULT_SIGBUS is old stream is closed
> >> - Maintain reference counts to stream in vm_open and vm_close
> >> - Use switch to identify object to be mapped
> >>
> >> v4: Call kref_put on closing perf fd (Chris)
> >> v5:
> >> - Strip access to OA buffer from unprivileged child of a privileged
> >>   parent. Use VM_DONTCOPY
> >> - Enforce MAP_PRIVATE by checking for VM_MAYSHARE
> >>
> >> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
> >> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> >> ---
> >> @@ -3314,12 +3427,113 @@ static int i915_perf_release(struct inode *inode, struct file *file)
> >>         i915_perf_destroy_locked(stream);
> >>         mutex_unlock(&perf->lock);
> >>
> >> +       unmap_mapping_range(file->f_mapping, 0, OA_BUFFER_SIZE, 1);
> >
> >You can just used unmap_mapping_range(file->f_mapping, 0, -1, 1);
> >It scales with the number of vma present, so no worries, be conservative.
> >(Otherwise, you need s/0/OA_BUFFER_OFFSET/.)
> >
> >> +
> >>         /* Release the reference the perf stream kept on the driver. */
> >>         drm_dev_put(&perf->i915->drm);
> >>
> >>         return 0;
> >>  }
> >>
> >> +static void vm_open_oa(struct vm_area_struct *vma)
> >> +{
> >> +       struct i915_perf_stream *stream = vma->vm_private_data;
> >> +
> >> +       GEM_BUG_ON(!stream);
> >> +       perf_stream_get(stream);
> >> +}
> >> +
> >> +static void vm_close_oa(struct vm_area_struct *vma)
> >> +{
> >> +       struct i915_perf_stream *stream = vma->vm_private_data;
> >> +
> >> +       GEM_BUG_ON(!stream);
> >> +       perf_stream_put(stream);
> >> +}
> >> +
> >> +static vm_fault_t vm_fault_oa(struct vm_fault *vmf)
> >> +{
> >> +       struct vm_area_struct *vma = vmf->vma;
> >> +       struct i915_perf_stream *stream = vma->vm_private_data;
> >> +       struct i915_perf *perf = stream->perf;
> >> +       struct drm_i915_gem_object *obj = stream->oa_buffer.vma->obj;
> >> +       int err;
> >> +       bool closed;
> >
> >So vm_area_struct has a reference to the stream, that looks good now.
> >But there's no reference held to the vma itself.
> 
> How do I get a reference to the vma.

That would be i915_vma_get(), but you don't need to if we control the
order correctly, as then neither the PTE nor the ongoing faulthandler
last longer than the i915_perf_stream
 
> >> +       mutex_lock(&perf->lock);
> >> +       closed = READ_ONCE(stream->closed);
> >> +       mutex_unlock(&perf->lock);
> >
> >We do WRITE_ONCE(stream->closed, true) then invalidate all the mappings,
> >so that part looks good. The invalidate is serialised with the
> >vm_fault_oa, so we can just use a plain READ_ONCE(stream->closed) here
> >and not worry about the perf->lock.
> 
> will do
> >
> >However... I think it should close&invalidate before releasing
> >stream->oa_buffer.
> 
> will do
> >
> >And the read here of stream->oa_buffer should be after checking
> >stream->closed.
> 
> I don't understand. I am checking for closed before remap_io_sg.

It's the 

struct drm_i915_gem_object *obj = stream->oa_buffer.vma->obj;

that's before the stream->closed check. That's dereferencing vma, but vma
will be set to NULL in i915_perf_destroy.
-Chris
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
