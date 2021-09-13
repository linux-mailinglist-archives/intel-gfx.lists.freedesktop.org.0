Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F4C4088D8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 12:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF076E11F;
	Mon, 13 Sep 2021 10:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD1189CAA;
 Mon, 13 Sep 2021 10:16:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="221671981"
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="221671981"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 03:16:52 -0700
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="481263968"
Received: from vdvoloki-mobl.ccr.corp.intel.com (HELO [10.249.254.107])
 ([10.249.254.107])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 03:16:51 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com, matthew.auld@intel.com,
 Matthew Auld <matthew.william.auld@gmail.com>
References: <20210910131512.161655-1-thomas.hellstrom@linux.intel.com>
 <d7570cab-d402-761d-40e0-3d08d9b9d3c9@amd.com>
 <a1a8fd3f1ca13b84192bd3c8719f510e5b655b2c.camel@linux.intel.com>
 <c8484b51-4365-bedd-be73-4c0898ac70b1@amd.com>
 <5ea3f498cc5ae84fa6aeba97a64e4eb8ab32e02b.camel@linux.intel.com>
 <c67b3b42-d260-44dc-81cb-1d1eb18db643@amd.com>
 <a6badfa3-efbb-7830-e019-1dd61b0f800e@linux.intel.com>
 <5ca10e93-9bac-bd8f-39b0-d60fe06bc289@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <4b9e25e3-0a9d-a7a8-e092-8355c6b5878f@linux.intel.com>
Date: Mon, 13 Sep 2021 12:16:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <5ca10e93-9bac-bd8f-39b0-d60fe06bc289@amd.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH] drm/ttm: Add a private member to the
 struct ttm_resource
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/13/21 11:41 AM, Christian König wrote:
> Am 13.09.21 um 11:36 schrieb Thomas Hellström:
>> On 9/13/21 8:17 AM, Christian König wrote:
>>> Am 11.09.21 um 08:07 schrieb Thomas Hellström:
>>>> On Fri, 2021-09-10 at 19:03 +0200, Christian König wrote:
>>>>> Am 10.09.21 um 17:30 schrieb Thomas Hellström:
>>>>>> On Fri, 2021-09-10 at 16:40 +0200, Christian König wrote:
>>>>>>> Am 10.09.21 um 15:15 schrieb Thomas Hellström:
>>>>>>>> Both the provider (resource manager) and the consumer (the TTM
>>>>>>>> driver)
>>>>>>>> want to subclass struct ttm_resource. Since this is left for
>>>>>>>> the
>>>>>>>> resource
>>>>>>>> manager, we need to provide a private pointer for the TTM
>>>>>>>> driver.
>>>>>>>>
>>>>>>>> Provide a struct ttm_resource_private for the driver to
>>>>>>>> subclass
>>>>>>>> for
>>>>>>>> data with the same lifetime as the struct ttm_resource: In the
>>>>>>>> i915
>>>>>>>> case
>>>>>>>> it will, for example, be an sg-table and radix tree into the
>>>>>>>> LMEM
>>>>>>>> /VRAM pages that currently are awkwardly attached to the GEM
>>>>>>>> object.
>>>>>>>>
>>>>>>>> Provide an ops structure for associated ops (Which is only
>>>>>>>> destroy() ATM)
>>>>>>>> It might seem pointless to provide a separate ops structure,
>>>>>>>> but
>>>>>>>> Linus
>>>>>>>> has previously made it clear that that's the norm.
>>>>>>>>
>>>>>>>> After careful audit one could perhaps also on a per-driver
>>>>>>>> basis
>>>>>>>> replace the delete_mem_notify() TTM driver callback with the
>>>>>>>> above
>>>>>>>> destroy function.
>>>>>>> Well this is a really big NAK to this approach.
>>>>>>>
>>>>>>> If you need to attach some additional information to the resource
>>>>>>> then
>>>>>>> implement your own resource manager like everybody else does.
>>>>>> Well this was the long discussion we had back then when the
>>>>>> resource
>>>>>> mangagers started to derive from struct resource and I was under
>>>>>> the
>>>>>> impression that we had come to an agreement about the different
>>>>>> use-
>>>>>> cases here, and this was my main concern.
>>>>> Ok, then we somehow didn't understood each other.
>>>>>
>>>>>> I mean, it's a pretty big layer violation to do that for this use-
>>>>>> case.
>>>>> Well exactly that's the point. TTM should not have a layer design in
>>>>> the
>>>>> first place.
>>>>>
>>>>> Devices, BOs, resources etc.. are base classes which should implement
>>>>> a
>>>>> base functionality which is then extended by the drivers to implement
>>>>> the driver specific functionality.
>>>>>
>>>>> That is a component based approach, and not layered at all.
>>>>>
>>>>>> The TTM resource manager doesn't want to know about this data at
>>>>>> all,
>>>>>> it's private to the ttm resource user layer and the resource
>>>>>> manager
>>>>>> works perfectly well without it. (I assume the other drivers that
>>>>>> implement their own resource managers need the data that the
>>>>>> subclassing provides?)
>>>>> Yes, that's exactly why we have the subclassing.
>>>>>
>>>>>> The fundamental problem here is that there are two layers wanting
>>>>>> to
>>>>>> subclass struct ttm_resource. That means one layer gets to do that,
>>>>>> the
>>>>>> second gets to use a private pointer, (which in turn can provide
>>>>>> yet
>>>>>> another private pointer to a potential third layer). With your
>>>>>> suggestion, the second layer instead is forced to subclass each
>>>>>> subclassed instance it uses from  the first layer provides?
>>>>> Well completely drop the layer approach/thinking here.
>>>>>
>>>>> The resource is an object with a base class. The base class
>>>>> implements
>>>>> the interface TTM needs to handle the object, e.g.
>>>>> create/destroy/debug
>>>>> etc...
>>>>>
>>>>> Then we need to subclass this object because without any additional
>>>>> information the object is pretty pointless.
>>>>>
>>>>> One possibility for this is to use the range manager to implement
>>>>> something drm_mm based. BTW: We should probably rename that to
>>>>> something
>>>>> like ttm_res_drm_mm or similar.
>>>> Sure I'm all in on that, but my point is this becomes pretty awkward
>>>> because the reusable code already subclasses struct ttm_resource. Let
>>>> me give you an example:
>>>>
>>>> Prereqs:
>>>> 1) We want to be able to re-use resource manager implementations among
>>>> drivers.
>>>> 2) A driver might want to re-use multiple implementations and have
>>>> identical data "struct i915_data" attached to both
>>>
>>> Well that's the point I don't really understand. Why would a driver 
>>> want to do this?
>>
>> Let's say you have a struct ttm_object_vram and a struct 
>> ttm_object_gtt, both subclassing drm_gem_object. Then I'd say a 
>> driver would want to subclass those to attach identical data, extend 
>> functionality and provide a single i915_gem_object to the rest of the 
>> driver, which couldn't care less whether it's vram or gtt? Wouldn't 
>> you say having separate struct ttm_object_vram and a struct 
>> ttm_object_gtt in this case would be awkward?. We *want* to allow 
>> common handling.
>
> Yeah, but that's a bad idea. This is like diamond inheritance in C++.
>
> When you need the same functionality in different backends you 
> implement that as separate object and then add a parent class.
>
>>
>> It's the exact same situation here. With struct ttm_resource you let 
>> *different* implementation flavours subclass it, which makes it 
>> awkward for the driver to extend the functionality in a common way by 
>> subclassing, unless the driver only uses a single implementation.
>
> Well the driver should use separate implementations for their 
> different domains as much as possible.
>
Hmm, Now you lost me a bit. Are you saying that the way we do dynamic 
backends in the struct ttm_buffer_object to facilitate driver 
subclassing is a bad idea or that the RFC with backpointer is a bad idea?

If the latter, I can agree with that, but could we perhaps then work to 
find a way to turn the common manager (or in the future perhaps 
managers) into helpers that doesn't embed struct ttm_resource rather 
than a full-fledged resource manager. Then the driver will always be 
responsible for embedding the struct ttm_resource and combines helpers 
as it sees fit?

Thanks,
/Thomas



