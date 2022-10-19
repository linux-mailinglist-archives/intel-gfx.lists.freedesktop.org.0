Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 643E560426D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 13:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13DCC10EAC0;
	Wed, 19 Oct 2022 11:02:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5D2010EAC0
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 11:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666177321; x=1697713321;
 h=message-id:date:mime-version:from:subject:to:cc:
 references:in-reply-to;
 bh=kPpd+1wwz/RSRPxvz684oMrk4paIaDWvIFzH3aRJdUI=;
 b=LgOcKVHkNhEZxlzUdJsXmXiPllzfjea5OJ2Yx8LOGAETJGzqNR7RZvmo
 gkVLc6De6qC3PJpiIg+4uD9UP49AIUBFN6BPl82i3Fg18hIwSFubt44zh
 lZJ0rZ/2DlqFjDUUaHm9IZMIvhf/Qnj9AVaRepeDQCY0iwMkYaKNKC8Gy
 rV6+lpLlTqZyWjrJrVrpjn6iCmrm1F+fQDx6K9A3mukpi5Sop0eKxC2Yj
 IfdOILHCfcA+96Jp4N3pJpkzDT6QnkhUIg0P5F4Wy6GDybewTZr+VaL+L
 2Bu47T0olbTQ+/3PztjVaMlouYx8tIYU9ZMu5Z2g8vf7DCI5BnLdF6E3g A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="286767905"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; 
 d="scan'208,217";a="286767905"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 04:01:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="660296326"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; 
 d="scan'208,217";a="660296326"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.2.9])
 ([10.213.2.9])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 04:01:46 -0700
Content-Type: multipart/alternative;
 boundary="------------uoG8oTcIPIdatWk7GDwMXmgA"
Message-ID: <cd6d9802-353c-642d-4ee7-af7b2eac5a01@intel.com>
Date: Wed, 19 Oct 2022 13:01:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221019071252.180682-1-andrzej.hajda@intel.com>
 <7c31859f-5afc-fc24-98c9-8a14bacd66cd@intel.com>
 <ca42bc29-ef8c-cb36-a8f7-897c7baee0ca@intel.com>
Content-Language: en-US
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <ca42bc29-ef8c-cb36-a8f7-897c7baee0ca@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: add prefetch padding to
 store_dw batchbuffer
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------uoG8oTcIPIdatWk7GDwMXmgA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 19.10.2022 11:14, Matthew Auld wrote:
> On 19/10/2022 10:12, Matthew Auld wrote:
>> On 19/10/2022 08:12, Andrzej Hajda wrote:
>>> Instruction prefetch mechanism requires that 512 bytes after the last
>>> command should be readable by EU. Otherwise DMAR errors and engine
>>> hangs can happen.
>>>
>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5278
>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>
>> Is there a Bspec ref for this? I would have assumed that EU was more 
>> about kernels/shaders, than simple MI commands? Also should we be 
>> hitting dmar errors for ppGTT if this were some kind of overfetch? 
>> AFAICT we always point entries back to scratch, unlike with say the 
>> GGTT where we might have stale entries, and unbinding should flush 
>> the tlb?
>
> s/unbinding/put_pages/

Bspec is here [1], but when you made distinction between simple MI 
commands and kernel/shaders I am not so sure if it applies to this case, 
so I will present my finding leading to this conclusion:

My findings (on RaptorLake):
1. dmar errors always print physical address of recently removed bb 
created by igt_emit_store_dw, at least in my tests.
2. intel_iommu enqueues tlb flush during put_pages of this bb, but 
actual flush happens later, triggered by timer.
3. Together with dmar errors GuC reports CAT error on context/engine 
executing this batch (with IPEHR=MI_BATCH_BUFFER_END).
4. Errors happens only on vcs/vecs (???).
5. Errors happens only in case tested huge page has size SZ_2M - SZ_64K, 
or SZ_2M - SZ_4K. In both cases calculated size of bb (8kb) is just few 
dwords after the last cmd, in other cases there is much more padding.
6. Enlarging bb works (as in this patch).
7. Flushing iommu tlb for the phys address of bb just before calling 
dma_unmap_sg (in i915_gem_gtt_finish_pages) helps as well :)
8. There is already some workaround present in i915_gem_gtt_finish_pages:
>
> /* XXXThis does not prevent more requests being submitted! */
>
> if(unlikely(ggtt->do_idle_maps))
>
> /* Wait a bit, in the hope it avoids the hang */
>
>     usleep_range(100, 250);
>
but it is only implemented for Gen5 and is slow, but also works 
(probably because tlb is flushed meantime).

[1]: https://gfxspecs.intel.com/Predator/Home/Index/47286

Regards
Andrzej

>
>>
>>> ---
>>>   drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c 
>>> b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
>>> index 3c55e77b0f1b00..fe999a02f8e10a 100644
>>> --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
>>> +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
>>> @@ -50,7 +50,7 @@ igt_emit_store_dw(struct i915_vma *vma,
>>>       u32 *cmd;
>>>       int err;
>>> -    size = (4 * count + 1) * sizeof(u32);
>>> +    size = (4 * count + 1) * sizeof(u32) + 512;
>>>       size = round_up(size, PAGE_SIZE);
>>>       obj = i915_gem_object_create_internal(vma->vm->i915, size);
>>>       if (IS_ERR(obj))

--------------uoG8oTcIPIdatWk7GDwMXmgA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 19.10.2022 11:14, Matthew Auld
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:ca42bc29-ef8c-cb36-a8f7-897c7baee0ca@intel.com">On
      19/10/2022 10:12, Matthew Auld wrote: <br>
      <blockquote type="cite">On 19/10/2022 08:12, Andrzej Hajda wrote:
        <br>
        <blockquote type="cite">Instruction prefetch mechanism requires
          that 512 bytes after the last <br>
          command should be readable by EU. Otherwise DMAR errors and
          engine <br>
          hangs can happen. <br>
          <br>
          Closes: <a class="moz-txt-link-freetext"
            href="https://gitlab.freedesktop.org/drm/intel/-/issues/5278">https://gitlab.freedesktop.org/drm/intel/-/issues/5278</a>
          <br>
          Signed-off-by: Andrzej Hajda <a class="moz-txt-link-rfc2396E"
            href="mailto:andrzej.hajda@intel.com">&lt;andrzej.hajda@intel.com&gt;</a>
          <br>
        </blockquote>
        <br>
        Is there a Bspec ref for this? I would have assumed that EU was
        more about kernels/shaders, than simple MI commands? Also should
        we be hitting dmar errors for ppGTT if this were some kind of
        overfetch? AFAICT we always point entries back to scratch,
        unlike with say the GGTT where we might have stale entries, and
        unbinding should flush the tlb? <br>
      </blockquote>
      <br>
      s/unbinding/put_pages/ <br>
    </blockquote>
    <br>
    Bspec is here [1], but when you made distinction between simple MI
    commands and kernel/shaders I am not so sure if it applies to this
    case, so I will present my finding leading to this conclusion:<br>
    <br>
    My findings (on RaptorLake):<br>
    1. dmar errors always print physical address of recently removed bb
    created by igt_emit_store_dw, at least in my tests.<br>
    2. intel_iommu enqueues tlb flush during put_pages of this bb, but
    actual flush happens later, triggered by timer.<br>
    3. Together with dmar errors GuC reports CAT error on context/engine
    executing this batch (with IPEHR=MI_BATCH_BUFFER_END).<br>
    4. Errors happens only on vcs/vecs (???).<br>
    5. Errors happens only in case tested huge page has size SZ_2M -
    SZ_64K, or SZ_2M - SZ_4K. In both cases calculated size of bb (8kb)
    is just few dwords after the last cmd, in other cases there is much
    more padding.<br>
    6. Enlarging bb works (as in this patch).<br>
    7. Flushing iommu tlb for the phys address of bb just before calling
    dma_unmap_sg (in i915_gem_gtt_finish_pages) helps as well :)<br>
    8. There is already some workaround present in
    i915_gem_gtt_finish_pages:<br>
    <blockquote type="cite">
      <div
style="background-color:#ffffff;padding-left:2px;padding-top:0px;padding-right:0px;padding-bottom:0px;">
        <div
style="color:#000000;background-color:#ffffff;font-family:&quot;Consolas&quot;;font-size:10pt;white-space:nowrap;">
          <p><span style="color:#000000;"> </span><span
              style="color:#3f7f5f;">/* </span><span
              style="color:#7f9fbf;font-weight:bold;">XXX</span><span
              style="color:#3f7f5f;"> This does not prevent more
              requests being submitted! */</span></p>
          <p><span style="color:#000000;"> </span><span
              style="color:#7f0055;font-weight:bold;">if</span><span
              style="color:#000000;"> (unlikely(ggtt-&gt;</span><span
              style="color:#0000c0;">do_idle_maps</span><span
              style="color:#000000;">))</span></p>
          <p><span style="color:#000000;"> </span><span
              style="color:#3f7f5f;">/* Wait a bit, in the hope it
              avoids the hang */</span></p>
          <p><span style="color:#000000;">     usleep_range(100, 250);</span></p>
          <p></p>
        </div>
      </div>
    </blockquote>
    but it is only implemented for Gen5 and is slow, but also works
    (probably because tlb is flushed meantime).<br>
    <br>
    [1]: <a class="moz-txt-link-freetext" href="https://gfxspecs.intel.com/Predator/Home/Index/47286">https://gfxspecs.intel.com/Predator/Home/Index/47286</a><br>
    <br>
    Regards<br>
    Andrzej<br>
    <br>
    <blockquote type="cite"
      cite="mid:ca42bc29-ef8c-cb36-a8f7-897c7baee0ca@intel.com"> <br>
      <blockquote type="cite"> <br>
        <blockquote type="cite">--- <br>
            drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c | 2 +- <br>
            1 file changed, 1 insertion(+), 1 deletion(-) <br>
          <br>
          diff --git
          a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
          b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c <br>
          index 3c55e77b0f1b00..fe999a02f8e10a 100644 <br>
          --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c <br>
          +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c <br>
          @@ -50,7 +50,7 @@ igt_emit_store_dw(struct i915_vma *vma, <br>
                u32 *cmd; <br>
                int err; <br>
          -    size = (4 * count + 1) * sizeof(u32); <br>
          +    size = (4 * count + 1) * sizeof(u32) + 512; <br>
                size = round_up(size, PAGE_SIZE); <br>
                obj =
          i915_gem_object_create_internal(vma-&gt;vm-&gt;i915, size); <br>
                if (IS_ERR(obj)) <br>
        </blockquote>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------uoG8oTcIPIdatWk7GDwMXmgA--
