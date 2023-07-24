Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 959A875F7B0
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jul 2023 15:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD6B10E30B;
	Mon, 24 Jul 2023 13:01:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A01610E30B
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jul 2023 13:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690203682; x=1721739682;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rnP+cgG41rhwzkkzX/+nmAbYIF8OlTDb0osZ6R8dmnw=;
 b=RlqDoZntufGkezmnSFyXQHELUkx+GlM1LRqSo23LNYzn2n0JysKJ9o16
 Ek1eUiT4wZWV68baMrv2Pj1o8HWnDNHVEsp5RbeD0EIxQhBWpR+BJM65a
 GUF252GDs0EWeinB6opWmqreLSV7V/R0gpHRJL4ex94T1R4gGLalWTOUK
 kV4yvKgKDlHgNnFSL/xzswrxtExiowC1UQ+AKW6e6kjY0j0pBZbvIxsT3
 +V+vVJ2k5WYhfD6yq2V65bxdJa7c6rSwBDRSFz5BuCUEWB2iR7hJzuZfc
 BCDW0j/0HaBt6OfUuGLsum73VsO9LI1zFrsNcA9XvMZ0TXPQw7ewS4LhR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="433676307"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="433676307"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 06:01:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="728896538"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="728896538"
Received: from srichara-mobl.amr.corp.intel.com (HELO [10.209.170.186])
 ([10.209.170.186])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 06:01:04 -0700
Message-ID: <4689a2b2-551b-17f4-4201-8636a9e3acbb@linux.intel.com>
Date: Mon, 24 Jul 2023 14:01:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "Yang, Fei" <fei.yang@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230718225118.2562132-1-radhakrishna.sripada@intel.com>
 <37f64727-9bbd-c967-193c-97266dfc1331@linux.intel.com>
 <SN6PR11MB2574001C852621E0AFF4CF7F9A39A@SN6PR11MB2574.namprd11.prod.outlook.com>
 <46e2c9cc-bc9d-69cb-c40d-53a4012cf80c@linux.intel.com>
 <DM4PR11MB59711839F6735AB3330B226B873EA@DM4PR11MB5971.namprd11.prod.outlook.com>
 <3f5d4b87-16fe-11e3-a4b3-f14aa2a0b67a@linux.intel.com>
 <DM4PR11MB59717CDB6DA18A58BC7F3B04873FA@DM4PR11MB5971.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <DM4PR11MB59717CDB6DA18A58BC7F3B04873FA@DM4PR11MB5971.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dpt: Use shmem for dpt objects
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
Cc: "Wilson, Chris P" <chris.p.wilson@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/07/2023 00:54, Sripada, Radhakrishna wrote:
> Hi Tvrtko,
> 
>> -----Original Message-----
>> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Sent: Friday, July 21, 2023 1:17 AM
>> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; Yang, Fei
>> <fei.yang@intel.com>; intel-gfx@lists.freedesktop.org
>> Cc: stable@vger.kernel.org; Ville Syrjälä <ville.syrjala@linux.intel.com>; Wilson,
>> Chris P <chris.p.wilson@intel.com>
>> Subject: Re: [PATCH v2] drm/i915/dpt: Use shmem for dpt objects
>>
>>
>> On 20/07/2023 18:02, Sripada, Radhakrishna wrote:
>>> Hi Tvrtko,
>>>
>>>> -----Original Message-----
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>>> Sent: Thursday, July 20, 2023 2:17 AM
>>>> To: Yang, Fei <fei.yang@intel.com>; Sripada, Radhakrishna
>>>> <radhakrishna.sripada@intel.com>; intel-gfx@lists.freedesktop.org
>>>> Cc: stable@vger.kernel.org; Ville Syrjälä <ville.syrjala@linux.intel.com>;
>> Wilson,
>>>> Chris P <chris.p.wilson@intel.com>
>>>> Subject: Re: [PATCH v2] drm/i915/dpt: Use shmem for dpt objects
>>>>
>>>>
>>>> On 19/07/2023 21:53, Yang, Fei wrote:
>>>>>> On 18/07/2023 23:51, Radhakrishna Sripada wrote:
>>>>>>> Dpt objects that are created from internal get evicted when there is
>>>>>>> memory pressure and do not get restored when pinned during scanout.
>>>>>>> The pinned page table entries look corrupted and programming the
>>>>>>> display engine with the incorrect pte's result in DE throwing pipe faults.
>>>>>>>
>>>>>>> Create DPT objects from shmem and mark the object as dirty when
>>>>>>> pinning so that the object is restored when shrinker evicts an unpinned
>>>> buffer object.
>>>>>>>
>>>>>>> v2: Unconditionally mark the dpt objects dirty during pinning(Chris).
>>>>>>>
>>>>>>> Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation
>>>>>>> for dpt")
>>>>>>> Cc: <stable@vger.kernel.org> # v6.0+
>>>>>>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>>>>>> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
>>>>>>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>>>>>>> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>>>>>>> ---
>>>>>>>      drivers/gpu/drm/i915/display/intel_dpt.c | 4 +++-
>>>>>>>      1 file changed, 3 insertions(+), 1 deletion(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c
>>>>>>> b/drivers/gpu/drm/i915/display/intel_dpt.c
>>>>>>> index 7c5fddb203ba..fbfd8f959f17 100644
>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>>>>>>> @@ -166,6 +166,8 @@ struct i915_vma *intel_dpt_pin(struct
>>>> i915_address_space *vm)
>>>>>>>                 i915_vma_get(vma);
>>>>>>>         }
>>>>>>>
>>>>>>> +    dpt->obj->mm.dirty = true;
>>>>>>> +
>>>>>>>         atomic_dec(&i915->gpu_error.pending_fb_pin);
>>>>>>>         intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>>>>>>>
>>>>>>> @@ -261,7 +263,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
>>>>>>>                 dpt_obj = i915_gem_object_create_stolen(i915, size);
>>>>>>>         if (IS_ERR(dpt_obj) && !HAS_LMEM(i915)) {
>>>>>>>                 drm_dbg_kms(&i915->drm, "Allocating dpt from smem\n");
>>>>>>> -            dpt_obj = i915_gem_object_create_internal(i915, size);
>>>>>>> +            dpt_obj = i915_gem_object_create_shmem(i915, size);
>>>>>>>         }
>>>>>>>         if (IS_ERR(dpt_obj))
>>>>>>>                 return ERR_CAST(dpt_obj);
>>>>>>
>>>>>> Okay I think I get it after some more looking at the DPT code paths.
>>>>>> Problem seems pretty clear - page tables are stored in dpt_obj and so
>>>>>> are lost when backing store is discarded.
>>>>>>
>>>>>> Changing to shmem object indeed looks the easiest option.
>>>>>>
>>>>>> Some related thoughts:
>>>>>>
>>>>>> 1)
>>>>>> I wonder if intel_dpt_suspend/resume remain needed after this patch.
>>>>>> Could you investigate please? On a glance their job was to restore the
>>>>>> PTEs which would be lost from internal objects backing storage. With
>>>>>> shmem objects that content should be preserved.
>>>>>
>>>>> intel_dpt_suspend is "suspending" the whole VM where, not only the dpt
>>>>> objects are mapped into, but also the framebuffer objects. I don't have
>>>>> much knowledge on how the framebuffer objects are managed, but the
>>>> suspend
>>>>> resume path still look necessary to me, unless the content of these
>>>>> framebuffer objects are also preserved.
>>>>
>>>> I don't think it has anything to do with fb content, but you are correct
>>>> it is still needed. Because 9755f055f512 ("drm/i915: Restore memory
>>>> mapping for DPT FBs across system suspend/resume") reminds me backing
>>>> store for DPT PTEs can be either lmem, stolen or internal (now shmem).
>>>> Even though with this patch internal is out of the picture, stolen
>>>> remains and so the issue of losing the page table content remains.
>>>> Perhaps resume could be optimised to only restore PTEs when VM page
>>>> tables are backed by stolen which may win some suspend/resume speed on
>>>> some platforms.
>>>
>>> I will have to look into how suspend resume will change with the current flow
>>> as you said it can be looked in a later patch.
>>
>> Thanks!
>>
>>>>>> 2)
>>>>>> I wonder if i915_vma_flush_writes should be used (as a companion of
>>>>>> i915_vma_pin_iomap) from DPT dpt_bind_vma, dpt_insert_entries, etc.
>> But
>>>>>> then I am also not sure if it does the right thing for the
>>>>>> i915_gem_object_pin_map path of i915_vma_pin_iomap. Perhaps it
>> should
>>>>>> call __i915_gem_object_flush_map itself for that mapping flavour and
>>>>>> not do the ggtt flushing in that case.
>>> I am not sure if dpt_bind_vma will be called each time during pinning. IMO it
>> gets called
>>> Only when the fb object needs to be bind after and unbind(triggered during obj
>> destroy).
>>> Do you think if i915_vma_flush_writes should not be used if dpt objects are
>> created from internal?
>>
>> No, I *think* correct API usage is supposed to be: If one uses
>> i915_vma_pin_iomap() for CPU access, then one should call
>> i915_vma_flush_writes() after CPU writes are done - presumably as a
>> barrier to make sure writes are visible before proceeding.
>>
>> If that is correct, the I noticed problem (or I am missing something),
>> that i915_vma_flush_writes only does something for the one of the three
>> ways i915_vma_pin_iomap() can set up the CPU visible mapping (the
>> ggtt->iomap path).
>>
>> The i915_gem_object_lmem_io_map() path, relevant on dgfx, has no
>> flushing. Maybe it does need it due WC, or maybe flushing the
>> write-combine buffers would still be needed.
>>
>> And the i915_gem_object_pin_map() path is also WC and in theory there is
>> the corresponding __i915_gem_object_flush_map().
>>
>> Don't know, maybe I am indeed missing something.
>>
>> But for instance if __i915_gem_object_flush_map() *was* called from
>> i915_vma_flush_writes(), and the latter *was* called after dpt_bind_vma
>> does its thing, then notice how obj->mm.dirty *would* be set by that
>> helper. Removing the need for this patch.
>>
>> So perhaps i915_vma_flush_writes() should just dirty the object, *if*
>> the idea is to be called after CPU writes. And perhaps it should call
>> i915_gem_object_flush_map *if* the method of mmaping was other than
>> ggtt. But the information would have to be recorded first, probably same
>> as the i915_gem_object_pin_map() path records it in the bit 0 of the
>> vma->iomap pointer.
> 
> So a question arises if marking the object as dirty/ doing i915_gem_object_flush_map
> Needs to happen after vma bind or after pinning the dpt?

New week and fresh perspective - it probably isn't the case that 
i915_vma_flush_writes() should be used for flushing after any write and 
so also setting obj->mm.dirty. I now think so because of the one-shot 
nature of the i915_vma_unset_ggtt_write(). It wouldn't make sense for it 
to be for persistently mapped objects since 2nd flush would be a no-op 
per design.

So I think we might be simply relying on some implicit/natural 
write-combine flushing with other paths in the driver too.

I've sent a small patch to hopefully clarify the flushing in the 
i915_vma_pin_iomap + i915_vma_flush_writes pair, but other than that, 
and the DPT suspend-resume open, I think lets leave it be for now.

Regards,

Tvrtko

> 
> 
>>
>>> Or should we have a different flavor of i915_vm_pin_iomap that skips
>> i915_vma_set_ggtt_write
>>> so that we can drop i915_vma_flush_writes during unpinning and move
>> i915_vma_set_ggtt_write
>>> to dpt_insert_entires and do i915_vma_flush during clear range? Then I guess
>> __i915_gem_object_flush_map
>>> called during vma bind and not object pinning. In either case I believe it is a
>> larger cleanup
>>> which requires more extensive validation and analysis.
>>
>> Yes definitely wasn't suggesting to do it in this patch.
>>
>>>>>> In summary I think the fix is safe and correct but at least point 1) I
>>>>>> think needs looking into. It can be a follow up work too.
>>>
>>> If you think this fix can work then I will look into the suspend/resume as a
>> follow up and will appreciate
>>> an r-b for this change.  I believe 2) is a larger cleanup that may not be
>> immediately required. I will have
>>> to dig more into the ramifications of the changes proposed above.
>>>
>>> Thoughts ?
>>
>> Yeah it is fine. I assumed someone else would r-b but I can too.
>>
>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Thank you for the review, merged the patch.
> 
> --Radhakrishna Sripada
>>
>> Regards,
>>
>> Tvrtko
