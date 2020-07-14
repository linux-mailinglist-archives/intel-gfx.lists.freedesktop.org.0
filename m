Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 416B721FE36
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 22:10:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64D76E882;
	Tue, 14 Jul 2020 20:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54E4C6E882
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 20:10:03 +0000 (UTC)
IronPort-SDR: 12JVfZOdjaZtcWGK5GGF69+sYlTsXrBoFYemMmwXQGBy6XKfiMNZycLrTMvrdaFR9iaR8Zoy0u
 w7CaAcYNG4dg==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="233875592"
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="233875592"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 13:10:02 -0700
IronPort-SDR: 1+2O5iBa8+uVtMSEu1DGiXbn2GCC9cz9y9cUOMP50K/ZP4rUoAB8rY5MmkkOnuZ2zs6jwflMl3
 uemc2mttQGzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="270091888"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jul 2020 13:10:02 -0700
Date: Tue, 14 Jul 2020 13:10:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200714201002.GA37629@orsosgc001.amr.corp.intel.com>
References: <20200714072239.70198-1-umesh.nerlige.ramappa@intel.com>
 <20200714072239.70198-2-umesh.nerlige.ramappa@intel.com>
 <159472609506.28577.3725857994649902167@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159472609506.28577.3725857994649902167@build.alporthouse.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/perf: Map OA buffer to user
 space
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

On Tue, Jul 14, 2020 at 12:28:15PM +0100, Chris Wilson wrote:
>Quoting Umesh Nerlige Ramappa (2020-07-14 08:22:39)
>> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
>>
>> i915 used to support time based sampling mode which is good for overall
>> system monitoring, but is not enough for query mode used to measure a
>> single draw call or dispatch. Gen9-Gen11 are using current i915 perf
>> implementation for query, but Gen12+ requires a new approach based on
>> triggered reports within oa buffer. In order to enable above feature
>> two changes are required:
>>
>> 1. Whitelist update:
>> - enable triggered reports within oa buffer
>> - reading oa buffer head/tail/status information
>> - reading gpu ticks counter.
>>
>> 2. Map oa buffer at umd driver level to solve below constraints related
>>    to time based sampling interface:
>> - longer time to access reports collected by oa buffer
>
>If you aren't talking about a few 10us, then something else is wrong.
>
>> - slow oa reports browsing since oa buffer size is large
>
>Nothing changes on the surface. That does not sound like inherent
>inefficiencies. Since the same number of events will be generated and
>need to be processed. You may argue that they are easier to process in
>situ, and that the number of events dwarf L1 cache. An mmap interface
>could eliminate one copy (and certainly a copy-to-user).
>
>> - missing oa report index, so query cannot browse report directly
>
>There's more to it than that otherwise you would have proposed an
>extension to the event format.
>
>> - with direct access to oa buffer, query can extract other useful
>>   reports like context switch information needed to calculate correct
>>   performance counters values.
>
>Why would you not start with an unprivileged mediated mmapped buffer?
>If the goal is to reduce sample latency by replacing read ioctls with a
>mmap, that would seem to be an orthogonal step to exposing the raw OA
>buffer. The inference would be that you do want to extract extra details
>from the OA that are not being catered for. That's perfectly fine, our
>goal is to _safely_ expose HW and not get in the way of userspace. But
>if that was the intent, it should not appear to be an afterthought.
>[i.e. that mmap should be inherently faster for accessing a large ring
>of data is much less important than discussing the safety concerns of
>letting userspace have direct control/access of OA.]

fwiu

The goal is mainly being able to quickly view reports of interest within 
a window in the OA buffer. The start and end of the window are defined 
by triggered OA reports using the OAREPORTTRIG registers along with some 
counters that act as markers (A18 - A20).

In initial implementation, the user was trying to maintain a copy of the 
oa buffer that was being built by reading OA reports from the perf_fd 
read interface. Using a new ioctl interface that returned HW TAIL, the 
user would try to index into the window in this buffer. However, the 
mapping was not 1:1 because perf_fd read would drop reports that are 
zeroed out or invalid. Added to that, the user buffer was limited by 
size. This made mapping things to an intermediate user buffer more messy 
as it would require more information from the driver to do so.

Hence, the decision was to map the OA buffer to umd provided (1) that it 
is accessed from a privileged user and (2) OA report filtering is not 
used. These 2 conditions would satisfy the safety criteria that the 
perf_fd interface addresses.

>
>> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c |  54 ++++++++
>>  drivers/gpu/drm/i915/i915_perf.c            | 130 +++++++++++++++++++-
>>  drivers/gpu/drm/i915/i915_perf_types.h      |  13 ++
>>  drivers/gpu/drm/i915/i915_reg.h             |  14 +++
>>  include/uapi/drm/i915_drm.h                 |  19 +++
>>  5 files changed, 227 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index 5726cd0a37e0..cf89928fc3a5 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -1365,6 +1365,48 @@ whitelist_reg(struct i915_wa_list *wal, i915_reg_t reg)
>>         whitelist_reg_ext(wal, reg, RING_FORCE_TO_NONPRIV_ACCESS_RW);
>>  }
>>
>> +static void gen9_whitelist_build_performance_counters(struct i915_wa_list *w)
>> +{
>> +       /* OA buffer trigger report 2/6 used by performance query */
>> +       whitelist_reg(w, OAREPORTTRIG2);
>> +       whitelist_reg(w, OAREPORTTRIG6);
>> +
>> +       /* Performance counters A18-20 used by tbs marker query */
>> +       whitelist_reg_ext(w, OA_PERF_COUNTER_A18,
>> +                         RING_FORCE_TO_NONPRIV_ACCESS_RW |
>> +                         RING_FORCE_TO_NONPRIV_RANGE_16);
>> +
>> +       /* Read access to gpu ticks */
>> +       whitelist_reg_ext(w, GEN8_GPU_TICKS,
>> +                         RING_FORCE_TO_NONPRIV_ACCESS_RD);
>> +
>> +       /* Read access to: oa status, head, tail, buffer settings */
>> +       whitelist_reg_ext(w, GEN8_OASTATUS,
>> +                         RING_FORCE_TO_NONPRIV_ACCESS_RD |
>> +                         RING_FORCE_TO_NONPRIV_RANGE_4);
>> +}
>> +
>> +static void gen12_whitelist_build_performance_counters(struct i915_wa_list *w)
>> +{
>> +       /* OA buffer trigger report 2/6 used by performance query */
>> +       whitelist_reg(w, GEN12_OAG_OAREPORTTRIG2);
>> +       whitelist_reg(w, GEN12_OAG_OAREPORTTRIG6);
>> +
>> +       /* Performance counters A18-20 used by tbs marker query */
>> +       whitelist_reg_ext(w, GEN12_OAG_PERF_COUNTER_A18,
>> +                         RING_FORCE_TO_NONPRIV_ACCESS_RW |
>> +                         RING_FORCE_TO_NONPRIV_RANGE_16);
>> +
>> +       /* Read access to gpu ticks */
>> +       whitelist_reg_ext(w, GEN12_OAG_GPU_TICKS,
>> +                         RING_FORCE_TO_NONPRIV_ACCESS_RD);
>> +
>> +       /* Read access to: oa status, head, tail, buffer settings */
>> +       whitelist_reg_ext(w, GEN12_OAG_OASTATUS,
>> +                         RING_FORCE_TO_NONPRIV_ACCESS_RD |
>> +                         RING_FORCE_TO_NONPRIV_RANGE_4);
>> +}
>> +
>>  static void gen9_whitelist_build(struct i915_wa_list *w)
>>  {
>>         /* WaVFEStateAfterPipeControlwithMediaStateClear:skl,bxt,glk,cfl */
>> @@ -1378,6 +1420,9 @@ static void gen9_whitelist_build(struct i915_wa_list *w)
>>
>>         /* WaSendPushConstantsFromMMIO:skl,bxt */
>>         whitelist_reg(w, COMMON_SLICE_CHICKEN2);
>> +
>> +       /* Performance counters support */
>> +       gen9_whitelist_build_performance_counters(w);
>>  }
>>
>>  static void skl_whitelist_build(struct intel_engine_cs *engine)
>> @@ -1471,6 +1516,9 @@ static void cnl_whitelist_build(struct intel_engine_cs *engine)
>>
>>         /* WaEnablePreemptionGranularityControlByUMD:cnl */
>>         whitelist_reg(w, GEN8_CS_CHICKEN1);
>> +
>> +       /* Performance counters support */
>> +       gen9_whitelist_build_performance_counters(w);
>>  }
>>
>>  static void icl_whitelist_build(struct intel_engine_cs *engine)
>> @@ -1500,6 +1548,9 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
>>                 whitelist_reg_ext(w, PS_INVOCATION_COUNT,
>>                                   RING_FORCE_TO_NONPRIV_ACCESS_RD |
>>                                   RING_FORCE_TO_NONPRIV_RANGE_4);
>> +
>> +               /* Performance counters support */
>> +               gen9_whitelist_build_performance_counters(w);
>>                 break;
>>
>>         case VIDEO_DECODE_CLASS:
>> @@ -1550,6 +1601,9 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
>>
>>                 /* Wa_1806527549:tgl */
>>                 whitelist_reg(w, HIZ_CHICKEN);
>> +
>> +               /* Performance counters support */
>> +               gen12_whitelist_build_performance_counters(w);
>>                 break;
>>         default:
>>                 whitelist_reg_ext(w,
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index c6f6370283cf..06a3fff52dfa 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -192,6 +192,7 @@
>>   */
>>
>>  #include <linux/anon_inodes.h>
>> +#include <linux/mman.h>
>>  #include <linux/sizes.h>
>>  #include <linux/uuid.h>
>>
>> @@ -434,6 +435,30 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
>>         return oastatus1 & GEN7_OASTATUS1_TAIL_MASK;
>>  }
>>
>> +static u32 gen12_oa_hw_head_read(struct i915_perf_stream *stream)
>> +{
>> +       struct intel_uncore *uncore = stream->uncore;
>> +
>> +       return intel_uncore_read(uncore, GEN12_OAG_OAHEADPTR) &
>> +              GEN12_OAG_OAHEADPTR_MASK;
>> +}
>> +
>> +static u32 gen8_oa_hw_head_read(struct i915_perf_stream *stream)
>> +{
>> +       struct intel_uncore *uncore = stream->uncore;
>> +
>> +       return intel_uncore_read(uncore, GEN8_OAHEADPTR) &
>> +              GEN8_OAHEADPTR_MASK;
>> +}
>> +
>> +static u32 gen7_oa_hw_head_read(struct i915_perf_stream *stream)
>> +{
>> +       struct intel_uncore *uncore = stream->uncore;
>> +       u32 oastatus2 = intel_uncore_read(uncore, GEN7_OASTATUS2);
>> +
>> +       return oastatus2 & GEN7_OASTATUS2_HEAD_MASK;
>> +}
>> +
>>  /**
>>   * oa_buffer_check_unlocked - check for data and update tail ptr state
>>   * @stream: i915 stream instance
>> @@ -1328,6 +1353,7 @@ free_oa_buffer(struct i915_perf_stream *stream)
>>         i915_vma_unpin_and_release(&stream->oa_buffer.vma,
>>                                    I915_VMA_RELEASE_MAP);
>>
>> +       stream->oa_buffer.cpu_address = 0;
>>         stream->oa_buffer.vaddr = NULL;
>>  }
>>
>> @@ -1448,7 +1474,8 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
>>          *  bit."
>>          */
>>         intel_uncore_write(uncore, GEN8_OABUFFER, gtt_offset |
>> -                  OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
>> +                          OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
>> +                          GEN7_OABUFFER_EDGE_TRIGGER);
>>         intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
>>
>>         /* Mark that we need updated tail pointers to read from... */
>> @@ -1501,7 +1528,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
>>          *  bit."
>>          */
>>         intel_uncore_write(uncore, GEN12_OAG_OABUFFER, gtt_offset |
>> -                          OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
>> +                          OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
>> +                          GEN7_OABUFFER_EDGE_TRIGGER);
>>         intel_uncore_write(uncore, GEN12_OAG_OATAILPTR,
>>                            gtt_offset & GEN12_OAG_OATAILPTR_MASK);
>>
>> @@ -1562,6 +1590,7 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
>>                 goto err_unref;
>>         }
>>         stream->oa_buffer.vma = vma;
>> +       stream->oa_buffer.cpu_address = 0;
>>
>>         stream->oa_buffer.vaddr =
>>                 i915_gem_object_pin_map(bo, I915_MAP_WB);
>> @@ -1584,6 +1613,52 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
>>         return ret;
>>  }
>>
>> +static int map_oa_buffer(struct i915_perf_stream *stream)
>
>You have a per-client perf fd. mmap that, with a known offset for the OA
>buffer. That is make userspace call something along the lines of
>
>ctl = mmap(0, 4096, PROT_WRITE, MAP_PRIVATE, perf_fd, PERF_MMAP_CTL);
>
>oa = mmap(0, ctl->oa_size, PROT_READ, MAP_PRIVATE, perf_fd, ctl->oa_offset);
>
>[ctl can be an ioctl to retrieve the size/offset]
>
>At every available opportunity, it should be reiterated that the mmap is
>unfiltered information leaks, continual reminders.
>
>> +{
>> +       unsigned long address = 0;
>> +       const u64 size = OA_BUFFER_SIZE;
>> +       struct i915_vma *oabuffer_vma = stream->oa_buffer.vma;
>> +       struct drm_i915_gem_object *oabuffer_obj = oabuffer_vma->obj;
>> +       struct mm_struct *mm = current->mm;
>> +       struct vm_area_struct *vma = NULL;
>> +
>> +       if(stream->oa_buffer.cpu_address != 0)
>> +               return 0;
>> +
>> +       if (!boot_cpu_has(X86_FEATURE_PAT))
>> +               return -ENODEV;
>> +
>> +       if (!oabuffer_obj || !oabuffer_vma)
>> +               return -ENOENT;
>> +
>> +       if (!oabuffer_obj->base.filp)
>> +               return -ENXIO;
>> +
>> +       if (range_overflows_t(u64, 0, size, oabuffer_obj->base.size))
>> +               return -EINVAL;
>> +
>> +       address = vm_mmap(oabuffer_obj->base.filp, 0, size,
>> +                         PROT_READ, MAP_SHARED, 0);
>> +
>> +       if (IS_ERR_VALUE(address))
>> +               return address;
>> +
>> +       if (mmap_write_lock_killable(mm))
>> +               return -EINTR;
>> +
>> +       vma = find_vma(mm, address);
>> +       if (vma) {
>> +               vma->vm_page_prot =
>> +                       pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
>
>This is dangerous code to copy! Let's avoid repeating mistakes of the
>past.
>
>> +
>> +               stream->oa_buffer.cpu_address = address;
>> +       }
>> +
>> +       mmap_write_unlock(mm);
>> +
>> +       return vma ? 0 : -ENOMEM;
>> +}
>
>> +/**
>> + * i915_perf_get_oa_buffer_info_locked - Properties of the i915-perf OA buffer
>> + * @arg: pointer to oa buffer info populated by this function.
>> + */
>> +static int i915_perf_get_oa_buffer_info_locked(struct i915_perf_stream *stream,
>> +                                              unsigned long arg)
>> +{
>> +       struct drm_i915_perf_oa_buffer_info info;
>> +       void __user *output = (void __user *) arg;
>> +       int ret;
>> +
>> +       if (!output)
>> +               return -EINVAL;
>> +
>> +       memset(&info, 0, sizeof(info));
>> +
>> +       info.size = stream->oa_buffer.vma->size;
>
>> +       info.head = stream->perf->ops.oa_hw_head_read(stream);
>> +       info.tail = stream->perf->ops.oa_hw_tail_read(stream);
>
>So this is a snapshot of the HW state, you expect this ioctl to be
>called frequently?

yes. this information is queried when the user wants to capture a window 
of events.

>
>> +       info.gpu_address = i915_ggtt_offset(stream->oa_buffer.vma);
>
>I'm not happy leaking this. I presume you have a very good reason. Add a
>comment to justify it, or better don't include it.

I don't see a use other than to calculate offset for the head/tail from 
cpu_address. Will remove and return offset directly in head/tail above.

>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
