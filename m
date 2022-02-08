Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFE94AE2CF
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 22:06:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 988FF10E21C;
	Tue,  8 Feb 2022 21:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EE7210E21C
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 21:06:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id E88D11F43ADE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1644354391;
 bh=i0w+gsRhSQ2a+hR7MKpo++w49rnQ/f67Yg3IP45+E8M=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=ThKdw6dD8jBeISJFXCvIxMWGbKDBtpA7DOJ58XWhz99t+kMTD8gQhx4dE+vzFvSCo
 JW3XWVlIKe6hf/q6Vq8Bz3XRr+Bzn+oK31lLgc1WEXadP3+3DNoJdun2i/VxDH/u3g
 mHqsYpc/EfAJSZCWiHR1PPWWAyBXary0ELiobDSSxGiqqyb1z8Hxy7cJbSTcKK3raJ
 gtNP7lHE+b1KWCVlnKF9Vi26+TqGFrH5O39tWsl/YezTyVZb9OS0ojjlnaemHXS1P/
 6DPCTC094pTfTJTFgvg0n8knl40GRVRKfTT8cTs/rWgWtvSsjYgh+hredKuO6WKe2y
 BeHY6PrYIsOPg==
Message-ID: <0258b0d0-84b1-0bef-6f61-e586e0aca19c@collabora.com>
Date: Tue, 8 Feb 2022 21:06:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: =?UTF-8?Q?Zbigniew_Kempczy=c5=84ski?= <zbigniew.kempczynski@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20211122191314.47254-1-zbigniew.kempczynski@intel.com>
 <82e3fcaf-d676-ea6e-3cc3-ef8ca5d9f176@linux.intel.com>
 <20211124080420.GA5295@zkempczy-mobl2>
 <6201d241-ebe3-0769-62d6-0cfb2d1b48ed@linux.intel.com>
 <20211124180737.GA3786@zkempczy-mobl2>
From: Robert Beckett <bob.beckett@collabora.com>
In-Reply-To: <20211124180737.GA3786@zkempczy-mobl2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 0/1] Ensure zero alignment on gens < 4
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 24/11/2021 18:07, Zbigniew Kempczyński wrote:
> On Wed, Nov 24, 2021 at 08:45:50AM +0000, Tvrtko Ursulin wrote:
>>
>> On 24/11/2021 08:04, Zbigniew Kempczyński wrote:
>>> On Tue, Nov 23, 2021 at 09:49:04AM +0000, Tvrtko Ursulin wrote:
>>>>
>>>> On 22/11/2021 19:13, Zbigniew Kempczyński wrote:
>>>>> In short - we want to enforce alignment == 0 for gen4+ GEM object
>>>>> settings.
>>>>>
>>>>> Before we merge this we need to inspect all UMD we expect can use
>>>>> this. My investigation was narrowed to UMD code:
>>>>>
>>>>> 1. IGT
>>>>> 2. Mesa
>>>>> 3. Media-Driver
>>>>> 4. NEO
>>>>> 5. libdrm
>>>>> 6. xf86-intel-video
>>>>>
>>>>> I would like to ask subsystem developers / maintainers to confirm
>>>>> my analysis.
>>>>>
>>>>> 1. IGT:
>>>>>       We've already removed / fixed most of the code where alignment != 0.
>>>>>       What left was few multi-card subtests I'm not able to rewrite due
>>>>>       to lack of such hw (nv + intel on the board).
>>>>>
>>>>> 2. Mesa:
>>>>>       gallium/drivers/iris/iris_batch.c,iris_bufmgr.c - it uses softpinning
>>>>>       only with alignment handled by allocator, so drm_i915_gem_exec_object2
>>>>>       alignment field == 0.
>>>>>
>>>>>       drivers/dri/i965/brw_batch.c,brw_screen.c - it uses relocations but
>>>>>       it is supported by allocator, there're no direct alignment settings
>>>>>       to value != 0.
>>>>>
>>>>>       vulcan/anv_batch_chain.c: drm_i915_gem_exec_object2 objects are
>>>>>       initialized within anv_execbuf_add_bo() and .alignment field
>>>>>       is set to 0 there. There's no other place where I've found vulcan
>>>>>       driver touches it both for softpinning / relocations.
>>>>>
>>>>> 3. Media-Driver:
>>>>>       It contains modified libdrm code and three functions which do
>>>>>       allocations, all of them uses mos_gem_bo_alloc_internal():
>>>>>       - mos_gem_bo_alloc() - internally uses alignment == 0, that's ok
>>>>>       - mos_gem_bo_alloc_tiled() - same as mos_gem_bo_alloc()
>>>>>       - mos_gem_bo_alloc_for_render() - this one passes alignment from
>>>>>         the caller and it may be != 0. But I haven't found practical
>>>>>         usage of this function externally (using mos_bo_alloc_for_render()
>>>>>         wrapper).
>>>>>       There's another userptr allocation function: mos_bo_alloc_userptr()
>>>>>       but it doesn't use alignment.
>>>>>
>>>>> 4. NEO:
>>>>>       Uses softpinning only with alignment == 0:
>>>>>       source/os_interface/linux/drm_buffer_object.cpp:
>>>>>       void BufferObject::fillExecObject() has execObject.alignment = 0;
>>>>>
>>>>> 5. libdrm:
>>>>>       Corresponding functions to Media-Driver:
>>>>>       drm_intel_bo_alloc(), drm_intel_bo_alloc_for_render(),
>>>>>       drm_intel_bo_alloc_userptr() and drm_intel_bo_alloc_tiled().
>>>>>       Alignment field is used in drm_intel_bo_alloc_for_render()
>>>>>       so couple not rewritten IGTs may encounter issue here (alignment
>>>>>       passed in IGTs which still uses libdrm == 4096).
>>>>>
>>>>> 6. xf86-intel-video:
>>>>>       src/sna/kgem.c: _kgem_submit() - alignment is set to 0 so this
>>>>>       shouldn't be a problem.
>>>>
>>>> You also need to figure out not only what codebase currently uses this, but
>>>> what maybe has an older version in the field which used to, right? Otherwise
>>>> kernel upgrade can break someones old userspace which is not allowed. Just
>>>> raising this for consideration if it isn't already on your radar.
>>>>
>>>
>>> Do you mean should I for example check each Ubuntu LTS (14.04, 16.04 and so on),
>>> find commit id used to build above and examine above source code again? And also
>>> do this for other distros?
>>
>> I think from another direction, for each of the above listed libraries see
>> in their git history (inputs from owners should help) if they ever used
>> non-zero alignment and if they have map it to released versions. Then see is
>> those released versions shipped in any distro, maybe via distro watch, if
>> they have a database going far enough.
>>
>> I don't know what would be the best plan of looking through codebase
>> history. Maybe git log -S/-G with strings which would catch assignemnts to
>> alignments, or passing in those parameters? Or just git log at first
>> instance.
>>
>> In the ideal world each userspace library above can say they never ever used
>> it and then it's simpler. Unless there is some obscure thing linking
>> directly to libdrm out in the wild? Maybe check distro packages to see all
>> that depend on it.
> 
> Thanks for hints, you're right. I should walk over rev-list history and find
> any problematic code. Problematic I mean direct obj alignment setting or
> usage of libdrm bo_alloc_for_render() where alignment can be passed as an
> argument. I've missed UXA also uses libdrm and bo_alloc_for_render() but
> alignment was set to 0 in whole history so this driver shouldn't be a problem.
> 
> If anyone knows which project would directly use libdrm with intel bo bufmgr
> I would appreciate.
> 
> --
> Zbigniew

I performed some code archaeology across the various userland projects.
See below for notes on each project.

 From what I could find, there appears to be only 1 historical use of 
alignment != 0:

mesa intel winsys driver used 4K alignments from 2012-2017, but was only 
actullay passed through from 2015-2017. Only gallium ilo driver appeared 
to ever use it.

Given this, we could either not care about that and go ahead with the 
patch (I don't know the significance of the ilo driver), or allow 0 or 
4K to be passed in for <= gen8


Notes:

### NEO

`execObject.alignment = 0` has been there since initial commit. Unable 
to check before open sourced.



### xf86-video-intel

`kgem->exec[i].alignment = 0` has been there since initial sna commit.

`drm_i915_gem_exec_obeject[2]` only ever called `exec`, `gem_exec` or 
`object`, all of which never had their alignments set other than 0

`drm_intel_bo_alloc_for_render()` only ever called with 0 alignment from uxa



### mesa



##### irs

commit f6be3d4f3aeaa2dfca34ff32610929561adb16a1 removed alignment

before then `bo->align` was set via `bo_alloc_internal`

`bo_alloc_internal` was only ever called with `alignment` parameter of 
`0` since iris first commit



##### vulkan

initial commit of vulkan driver 9851c8285f7bf70a6cb4bede2ee94110c14acc19

anv_execbuf_add_bo sets `obj->alignment = 0` and has been the same since



##### i965

commit `69ee316c1daf93b4a53b1c02301ffe9df9598d28` adds code to use non 
zero alignment for Yf/Ys tiled buffers, but then later

commit `f5c32b07628a6ee186f130f0510bfcdafc6ce36e` deletes Yf/Ys tiled 
resources claiming that they never got used.

commit `fb18d0dbe42150af57c562cea08eed10be6efaa5` removed alignment, 
description notes it is always 0 so no need for it.

Unable to find any earlier non zero alignment



##### winsys/intel/drm

commit `380e6875b8fc525e9431ad3130f59fe7d7ebf5e9` @2012-12-13 
`intel_winsys_alloc_buffer` calls `drm_intel_bo_alloc_for_render` with 
alignment set to 4K if `INTEL_ALLOC_FOR_RENDER` flag was used.

commit `4f080b46a8c629f416d4ba69d378f9083851a249` @2017-02-07 winsys was 
removed, noting only ilo ever used it



##### gallium/drivers/ilo (gen 6-8)

set `INTEL_ALLOC_FOR_RENDER` if `PIPE_BIND_DEPTH_STENCIL || 
PIPE_BIND_RENDER_TARGET`

TODO: how significant is this?



##### dri/intel

commit `40dd024be618d805b3744e15d25e115018641324` `intel_region_alloc` 
calls `drm_intel_bo_alloc_for_render` with alignment set to 64 @2009-02-18

commit `179d2c0e0bcf96fc40107882ccab909af8c89853` removed the call 
@2010-03-02

Looks like libdrm didn't pass it through in that timeframe, but might 
warrant closer study to be sure. Do we care about something this old?



### media-driver

`mos_gem_bo_alloc_for_render` was the only wrapper around 
`mos_gem_bo_alloc_internal` to ever pass through the alignment

it has never actually been called

`exec[2]_objects[...].alignment` only ever assigned from `bo->align`

`.align[ \t]*=[ \t]*` only ever present in `mos_gem_bo_alloc_internal`

`->align[ \t]*=[ \t]*` never present



### libdrm

commit `5ba34e1aeed3c343bc9b53727220449d244b3296` @2015-04-10 adds 
setting alignment from `bo->align`

commit `5c68f9f6f9bcc7edeacbc18b1052aed46a89c9f2` @2015-04-10 adds 
`bo.align` setting via `drm_intel_gem_bo_alloc_internal` explicitly 
mentioning:

`Mesa uses drm_intel_gem_bo_alloc_for_render() to allocate Yf/Ys 
buffers.` We know from mesa/i965 that that code never actually got used, 
however winsys was passing an alignment to 
`drm_intel_gem_bo_alloc_internal` via `drm_intel_bo_alloc_for_render`, 
so this potentially started winsys use of alignment.

no other use found internally.







##### other mentions of `drm_intel_bo_alloc_for_render`

searching online found plenty of copies of libdrm and igt that mention it.

The only other actual use I found was a uxa driver for bsd, which used 0 
as the alignment.




### NEO

`execObject.alignment = 0` has been there since initial commit. Unable 
to check before open sourced.



### xf86-video-intel

`kgem->exec[i].alignment = 0` has been there since initial sna commit.

`drm_i915_gem_exec_obeject[2]` only ever called `exec`, `gem_exec` or 
`object`, all of which never had their alignments set other than 0

`drm_intel_bo_alloc_for_render()` only ever called with 0 alignment from uxa



### mesa



##### irs

commit f6be3d4f3aeaa2dfca34ff32610929561adb16a1 removed alignment

before then `bo->align` was set via `bo_alloc_internal`

`bo_alloc_internal` was only ever called with `alignment` parameter of 
`0` since iris first commit



##### vulkan

initial commit of vulkan driver 9851c8285f7bf70a6cb4bede2ee94110c14acc19

anv_execbuf_add_bo sets `obj->alignment = 0` and has been the same since



##### i965

commit `69ee316c1daf93b4a53b1c02301ffe9df9598d28` adds code to use non 
zero alignment for Yf/Ys tiled buffers, but then later

commit `f5c32b07628a6ee186f130f0510bfcdafc6ce36e` deletes Yf/Ys tiled 
resources claiming that they never got used.

commit `fb18d0dbe42150af57c562cea08eed10be6efaa5` removed alignment, 
description notes it is always 0 so no need for it.

Unable to find any earlier non zero alignment



##### winsys/intel/drm

commit `380e6875b8fc525e9431ad3130f59fe7d7ebf5e9` @2012-12-13 
`intel_winsys_alloc_buffer` calls `drm_intel_bo_alloc_for_render` with 
alignment set to 4K if `INTEL_ALLOC_FOR_RENDER` flag was used.

commit `4f080b46a8c629f416d4ba69d378f9083851a249` @2017-02-07 winsys was 
removed, noting only ilo ever used it



##### gallium/drivers/ilo (gen 6-8)

set `INTEL_ALLOC_FOR_RENDER` if `PIPE_BIND_DEPTH_STENCIL || 
PIPE_BIND_RENDER_TARGET`

TODO: how significant is this?



##### dri/intel

commit `40dd024be618d805b3744e15d25e115018641324` `intel_region_alloc` 
calls `drm_intel_bo_alloc_for_render` with alignment set to 64 @2009-02-18

commit `179d2c0e0bcf96fc40107882ccab909af8c89853` removed the call 
@2010-03-02

Looks like libdrm didn't pass it through in that timeframe, but might 
warrant closer study to be sure. Do we care about something this old?



### media-driver

`mos_gem_bo_alloc_for_render` was the only wrapper around 
`mos_gem_bo_alloc_internal` to ever pass through the alignment

it has never actually been called

`exec[2]_objects[...].alignment` only ever assigned from `bo->align`

`.align[ \t]*=[ \t]*` only ever present in `mos_gem_bo_alloc_internal`

`->align[ \t]*=[ \t]*` never present



### libdrm

commit `5ba34e1aeed3c343bc9b53727220449d244b3296` @2015-04-10 adds 
setting alignment from `bo->align`

commit `5c68f9f6f9bcc7edeacbc18b1052aed46a89c9f2` @2015-04-10 adds 
`bo.align` setting via `drm_intel_gem_bo_alloc_internal` explicitly 
mentioning:

`Mesa uses drm_intel_gem_bo_alloc_for_render() to allocate Yf/Ys 
buffers.` We know from mesa/i965 that that code never actually got used, 
however winsys was passing an alignment to 
`drm_intel_gem_bo_alloc_internal` via `drm_intel_bo_alloc_for_render`, 
so this potentially started winsys use of alignment.

no other use found internally.







##### other mentions of `drm_intel_bo_alloc_for_render`

searching online found plenty of copies of libdrm and igt that mention it.

The only other actual use I found was a uxa driver for bsd, which used 0 
as the alignment.



>   
>>
>> Regards,
>>
>> Tvrtko
