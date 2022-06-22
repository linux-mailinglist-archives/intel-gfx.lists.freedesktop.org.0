Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD83554306
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 09:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19F9F113AE3;
	Wed, 22 Jun 2022 07:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D09D7113AE3
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 07:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655881213; x=1687417213;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=hZwgFrlbAx1JGeBSadXPAgND+7KK4/F+XTAmRCoUjTM=;
 b=gnsUrpEGcKaHmEdVCiqKRQ0h6CP7PU696mcofD2gQFWU++d0DNY+cU1c
 6R5Cbyc3ZtIIFeNQs5/kCtYAY5LY5bhSrgAGogy0Ztnc2FWyYbxiC2fZI
 DKAauDbmt2znyXvD94U2YUFB1N+TfnAua6TZmb6p0AutEsbb2pGWzPeeZ
 R6AruyAfdlBdBAC/UC0t0SUIJ1LgneN+3U1520/wF9yeXaks1ONYDSCtC
 9HrRMoa9bjGjpMci2mohLGGtIfotdDNHzLqV2sOeMnpArZYwDSWWSIAAl
 lgp7sODfNQ3DgxqnMyjgrGcfZ5ElcA+rvgbhgSTNyESJxUqCdFSG+vStT Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="366658557"
X-IronPort-AV: E=Sophos;i="5.92,211,1650956400"; d="scan'208";a="366658557"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 00:00:13 -0700
X-IronPort-AV: E=Sophos;i="5.92,211,1650956400"; d="scan'208";a="615042333"
Received: from ebrazil-mobl1.amr.corp.intel.com (HELO [10.213.200.60])
 ([10.213.200.60])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 00:00:12 -0700
Message-ID: <65582285-7181-2473-7417-2f0abc49957e@linux.intel.com>
Date: Wed, 22 Jun 2022 08:00:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <0249066a-2e95-c21d-d16a-fba08c633c0b@lio96.de>
 <f1a52ddc-5aad-cc76-282e-93206ae43477@amd.com>
 <70395b22-1857-2a25-1472-17ce3df22607@lio96.de>
 <6cd161d2-5caa-65c8-6b86-5992cc15d1af@amd.com>
 <957926e6-2462-4c42-b57f-9cfbd9fe7024@lio96.de>
 <27e6f4ec-0906-0d57-af9b-ebde534b68b3@amd.com>
 <CAKMK7uECjGw2K3S=Rwtz7rq-pV+eqbD8rc5GAPiemXJN1ybTsA@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CAKMK7uECjGw2K3S=Rwtz7rq-pV+eqbD8rc5GAPiemXJN1ybTsA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] Performance drop using deinterlace_vaapi on 5.19-rcX
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
Cc: Thomas Voegtle <tv@lio96.de>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 20/06/2022 18:28, Daniel Vetter wrote:
> On Mon, 20 Jun 2022 at 17:28, Christian König <christian.koenig@amd.com> wrote:
>>
>> Hi Thomas,
>>
>> Am 20.06.22 um 16:31 schrieb Thomas Voegtle:
>>> On Mon, 20 Jun 2022, Christian König wrote:
>>>
>>>> Am 20.06.22 um 13:40 schrieb Thomas Voegtle:
>>>>>   On Mon, 20 Jun 2022, Christian König wrote:
>>>>>
>>>>>>   Hi Thomas,
>>>>>>
>>>>>>   [moving vger to bcc]
>>>>>>
>>>>>>   mhm, sounds like something isn't running in parallel any more.
>>>>>>
>>>>>>   We usually don't test the multimedia engines for this but we do test
>>>>>>   gfx+compute, so I'm really wondering what goes wrong here.
>>>>>>
>>>>>>   Could you run some tests for me? Additional to that I'm going to
>>>>>> raise
>>>>>>   that issue with our multimedia guys later today.
>>>>>
>>>>>   Yes, I can run some tests for you. Which tests?
>>>>
>>>> Try this as root:
>>>>
>>>> echo 1 >
>>>> /sys/kernel/debug/tracing/events/dma_fence/dma_fence_init/enable
>>>> echo 1 >
>>>> /sys/kernel/debug/tracing/events/dma_fence/dma_fence_signaled/enable
>>>> cat /sys/kernel/debug/tracing/trace_pipe > trace.log
>>>>
>>>> Then start the encoding in another shell, after it completed cancel
>>>> the cat with cntr+c and save the log file.
>>>>
>>>> Do this one with the old kernel and once with the new one.
>>>
>>>
>>> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2F32h.de%2Ftv%2F5.18.0-i5-trace.log.bz2&amp;data=05%7C01%7Cchristian.koenig%40amd.com%7C41a052960a4d4f7dd38e08da52c99097%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637913323382588469%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=xv8vLUuBq37sBFcGxdua%2FnNQ51BiN1USn30ehP8bys0%3D&amp;reserved=0
>>> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2F32h.de%2Ftv%2F5.19.0-rc3-i5-trace.log.bz2&amp;data=05%7C01%7Cchristian.koenig%40amd.com%7C41a052960a4d4f7dd38e08da52c99097%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637913323382588469%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=xuBVrQMQ%2FDK3Gv1qN%2FntJ9NjXOZxD6XVkmDCWfG4K44%3D&amp;reserved=0
>>>
>>>
>>> I hope I have done this correctly.
>>> All necessary tracing things switched on?
>>
>> Yeah, that looks like what I wanted to see.
>>
>>>
>>> I want to add that this is a headless machine. No monitor connected.
>>>
>>
>> I've just realized that you aren't even using any AMD GPU for
>> transcoding, so I have no idea why removing the AMD specific workaround
>> can cause a performance problem for i915.
>>
>> It must be somehow related to i915 now adding some additional
>> synchronization in between submissions.
>>
>> Adding the Intel mailing list, maybe somebody has a better idea.
> 
> Only thing I can spot is that we now pile up USAGE_WRITE fences, but
> beforehand they got replaced. Also the deinterlace stuff means libva
> uses render engine, so this kinda fits - without using the render
> engine it's just a single engine, and hence you should never have
> multiple write fences (not logically, but hsw is a ringbuffer and i915
> doesn't have a ringbuffer scheduler, so it's all in-order anyway and
> hence not possible to change something).
> 
> This would mean that i915 is doing something silly (well not obeying
> the old dma_resv rules that any new exclusive fence must be a strict
> superset of all currently attached fences), which it totally is doing
> with the EXEC_OBJECT_ASYNC flag. But libva doesn't use that.
> 
> So tbh I have no idea, but maybe a quick hack that tosses any old
> USAGE_WRITE fence like the old dma_resv_add_excl_fence did would sched
> some light?

I did not see the original email but having found it in the archives 
(https://lore.kernel.org/lkml/0249066a-2e95-c21d-d16a-fba08c633c0b@lio96.de/), 
~3.8x slowdown is pretty bad.

Thomas, could you please file a bug using 
https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs 
for instructions please? It can get handled and prioritized from there.

Regards,

Tvrtko
