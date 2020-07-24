Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 887F622CEB7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 21:35:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3BF76E0C5;
	Fri, 24 Jul 2020 19:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A9806E0C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 19:35:13 +0000 (UTC)
IronPort-SDR: YOOLClRBFMCoXp4ZElAMXDa7QnjCXVz+or9eV9xkZ8DVUXDbFZ5e1LJ2LPimDNmYVpPRr+2Js5
 fUXdcsNw32rg==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="168902937"
X-IronPort-AV: E=Sophos;i="5.75,391,1589266800"; d="scan'208";a="168902937"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 12:35:12 -0700
IronPort-SDR: jgU3lHPC1gcn6rRYzxRixroH79/pLm83FGyWHdNlR1w9n2O33ce7uip+zdIdNNGkGjg+/aUArg
 nOUywzQyHnvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,391,1589266800"; d="scan'208";a="393398976"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga001.fm.intel.com with ESMTP; 24 Jul 2020 12:35:12 -0700
Date: Fri, 24 Jul 2020 12:35:11 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Chris Wilson <chris.p.wilson@intel.com>
Message-ID: <20200724193511.GD28353@orsosgc001.amr.corp.intel.com>
References: <20200724001901.35662-1-umesh.nerlige.ramappa@intel.com>
 <20200724001901.35662-5-umesh.nerlige.ramappa@intel.com>
 <159559455387.21069.937949659631730547@build.alporthouse.com>
 <20200724162956.GB28353@orsosgc001.amr.corp.intel.com>
 <159560845126.2889.3198879925052513730@build.alporthouse.com>
 <20200724184737.GC28353@orsosgc001.amr.corp.intel.com>
 <159561690616.2889.9530939268194445382@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159561690616.2889.9530939268194445382@build.alporthouse.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 24, 2020 at 07:55:06PM +0100, Chris Wilson wrote:
>Quoting Umesh Nerlige Ramappa (2020-07-24 19:47:37)
>> On Fri, Jul 24, 2020 at 05:34:11PM +0100, Chris Wilson wrote:
>> >Quoting Umesh Nerlige Ramappa (2020-07-24 17:29:56)
>> >> On Fri, Jul 24, 2020 at 01:42:33PM +0100, Chris Wilson wrote:
>> >> >Quoting Umesh Nerlige Ramappa (2020-07-24 01:19:01)
>> >> >> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
>> >> >>
>> >> >> i915 used to support time based sampling mode which is good for overall
>> >> >> system monitoring, but is not enough for query mode used to measure a
>> >> >> single draw call or dispatch. Gen9-Gen11 are using current i915 perf
>> >> >> implementation for query, but Gen12+ requires a new approach for query
>> >> >> based on triggered reports within oa buffer.
>> >> >>
>> >> >> Triggering reports into the OA buffer is achieved by writing into a
>> >> >> a trigger register. Optionally an unused counter/register is set with a
>> >> >> marker value such that a triggered report can be identified in the OA
>> >> >> buffer. Reports are usually triggered at the start and end of work that
>> >> >> is measured.
>> >> >>
>> >> >> Since OA buffer is large and queries can be frequent, an efficient way
>> >> >> to look for triggered reports is required. By knowing the current head
>> >> >> and tail offsets into the OA buffer, it is easier to determine the
>> >> >> locality of the reports of interest.
>> >> >>
>> >> >> Current perf OA interface does not expose head/tail information to the
>> >> >> user and it filters out invalid reports before sending data to user.
>> >> >> Also considering limited size of user buffer used during a query,
>> >> >> creating a 1:1 copy of the OA buffer at the user space added undesired
>> >> >> complexity.
>> >> >>
>> >> >> The solution was to map the OA buffer to user space provided
>> >> >>
>> >> >> (1) that it is accessed from a privileged user.
>> >> >> (2) OA report filtering is not used.
>> >> >>
>> >> >> These 2 conditions would satisfy the safety criteria that the current
>> >> >> perf interface addresses.
>> >> >>
>> >> >> To enable the query:
>> >> >> - Add an ioctl to expose head and tail to the user
>> >> >> - Add an ioctl to return size and offset of the OA buffer
>> >> >> - Map the OA buffer to the user space
>> >> >>
>> >> >> v2:
>> >> >> - Improve commit message (Chris)
>> >> >> - Do not mmap based on gem object filp. Instead, use perf_fd and support
>> >> >>   mmap syscall (Chris)
>> >> >> - Pass non-zero offset in mmap to enforce the right object is
>> >> >>   mapped (Chris)
>> >> >> - Do not expose gpu_address (Chris)
>> >> >> - Verify start and length of vma for page alignment (Lionel)
>> >> >> - Move SQNTL config out (Lionel)
>> >> >>
>> >> >> v3: (Chris)
>> >> >> - Omit redundant checks
>> >> >> - Return VM_FAULT_SIGBUS is old stream is closed
>> >> >> - Maintain reference counts to stream in vm_open and vm_close
>> >> >> - Use switch to identify object to be mapped
>> >> >>
>> >> >> v4: Call kref_put on closing perf fd (Chris)
>> >> >> v5:
>> >> >> - Strip access to OA buffer from unprivileged child of a privileged
>> >> >>   parent. Use VM_DONTCOPY
>> >> >> - Enforce MAP_PRIVATE by checking for VM_MAYSHARE
>> >> >>
>> >> >> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
>> >> >> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> >> >> ---
>> >> >> @@ -3314,12 +3427,113 @@ static int i915_perf_release(struct inode *inode, struct file *file)
>> >> >>         i915_perf_destroy_locked(stream);
>> >> >>         mutex_unlock(&perf->lock);
>> >> >>
>> >> >> +       unmap_mapping_range(file->f_mapping, 0, OA_BUFFER_SIZE, 1);
>> >> >
>> >> >You can just used unmap_mapping_range(file->f_mapping, 0, -1, 1);
>> >> >It scales with the number of vma present, so no worries, be conservative.
>> >> >(Otherwise, you need s/0/OA_BUFFER_OFFSET/.)
>> >> >
>> >> >> +
>> >> >>         /* Release the reference the perf stream kept on the driver. */
>> >> >>         drm_dev_put(&perf->i915->drm);
>> >> >>
>> >> >>         return 0;
>> >> >>  }
>> >> >>
>> >> >> +static void vm_open_oa(struct vm_area_struct *vma)
>> >> >> +{
>> >> >> +       struct i915_perf_stream *stream = vma->vm_private_data;
>> >> >> +
>> >> >> +       GEM_BUG_ON(!stream);
>> >> >> +       perf_stream_get(stream);
>> >> >> +}
>> >> >> +
>> >> >> +static void vm_close_oa(struct vm_area_struct *vma)
>> >> >> +{
>> >> >> +       struct i915_perf_stream *stream = vma->vm_private_data;
>> >> >> +
>> >> >> +       GEM_BUG_ON(!stream);
>> >> >> +       perf_stream_put(stream);
>> >> >> +}
>> >> >> +
>> >> >> +static vm_fault_t vm_fault_oa(struct vm_fault *vmf)
>> >> >> +{
>> >> >> +       struct vm_area_struct *vma = vmf->vma;
>> >> >> +       struct i915_perf_stream *stream = vma->vm_private_data;
>> >> >> +       struct i915_perf *perf = stream->perf;
>> >> >> +       struct drm_i915_gem_object *obj = stream->oa_buffer.vma->obj;
>> >> >> +       int err;
>> >> >> +       bool closed;
>> >> >
>> >> >So vm_area_struct has a reference to the stream, that looks good now.
>> >> >But there's no reference held to the vma itself.
>> >>
>> >> How do I get a reference to the vma.
>> >
>> >That would be i915_vma_get(), but you don't need to if we control the
>> >order correctly, as then neither the PTE nor the ongoing faulthandler
>> >last longer than the i915_perf_stream
>>
>> I see that the do_mmap()->mmap_region() takes a reference to file
>>
>> vma->vm_file = get_file(file);
>
>By vma, I meant stream-oa_buffer.vma

aah, ok.

>
>> In our case this is perf_fd. do_munmap does a corresponding fput.
>>
>> so unmap_mapping_range() is never called unless both unmap() and
>> close(perf_fd) are called by user (or process terminates).
>
>The unmap_mapping_range() is called by destroy, so that should be
>independent of userspace munmap.

I agree, but strangely, with mmap sequence below, I don't see 
i915_perf_release() called at all.  So destroy() is not called.

perf_fd = i915_perf_open_ioctl()
mmap(..., perf_fd...)
close(perf_fd)
delay for a few seconds.

If I call munmap() after the close(), I see i915_perf_release() -> 
destroy() -> unmap_mapping_range()

Thanks,
Umesh

>
>> Is that good to take care of this ordering?
>>
>> This also explains why I cannot get a VM_FAULT_SIGBUS with the IGTs.
>
>To hit the stream->close you'll need to race mmap/munmap against perf
>destroy. You may like to challenge yourself to hit it :)
>
>> >> >> +       mutex_lock(&perf->lock);
>> >> >> +       closed = READ_ONCE(stream->closed);
>> >> >> +       mutex_unlock(&perf->lock);
>> >> >
>> >> >We do WRITE_ONCE(stream->closed, true) then invalidate all the mappings,
>> >> >so that part looks good. The invalidate is serialised with the
>> >> >vm_fault_oa, so we can just use a plain READ_ONCE(stream->closed) here
>> >> >and not worry about the perf->lock.
>> >>
>> >> will do
>> >> >
>> >> >However... I think it should close&invalidate before releasing
>> >> >stream->oa_buffer.
>> >>
>> >> will do
>> >> >
>> >> >And the read here of stream->oa_buffer should be after checking
>> >> >stream->closed.
>> >>
>> >> I don't understand. I am checking for closed before remap_io_sg.
>> >
>> >It's the
>> >
>> >struct drm_i915_gem_object *obj = stream->oa_buffer.vma->obj;
>> >
>> >that's before the stream->closed check. That's dereferencing vma, but vma
>> >will be set to NULL in i915_perf_destroy.
>>
>> I will not use stream->oa_buffer.vma->obj in vm_fault_oa based on your
>> earlier comments, so this should be taken care of.
>
>Aye.
>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
