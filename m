Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4606C4CAD88
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 19:28:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A93910E824;
	Wed,  2 Mar 2022 18:28:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com
 [199.106.114.39])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6450510E76E;
 Wed,  2 Mar 2022 18:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1646245686; x=1677781686;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ZIYoAlssJZ341oEocuZXeip+LpZBRaDJeBUqYum5bfc=;
 b=X56Bbi+jJoQg70t8+XvQhKwqqf9h9fC4d0uG+bcKlhMeOjD8k4zoZLUO
 mZ3LZQNF4wqiI6K5j6QQPIEaCTKS4rCPI/coRxcMka6X8BhS9aWU7qm1L
 LTA+jMOR9IVoCfDQ2RTvfuTQkZgvNGyeodqHFSy6maL/FCGdHanKmVz2/ k=;
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 02 Mar 2022 10:28:05 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg01-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 10:28:04 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Wed, 2 Mar 2022 10:28:04 -0800
Received: from [10.110.107.103] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.15; Wed, 2 Mar 2022
 10:28:03 -0800
Message-ID: <4d8daabe-10d9-a3cf-d305-68414cffe4ed@quicinc.com>
Date: Wed, 2 Mar 2022 10:28:03 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Jani Nikula
 <jani.nikula@intel.com>
References: <20220202085429.22261-1-suraj.kandpal@intel.com>
 <20220202085429.22261-6-suraj.kandpal@intel.com>
 <Yfp8Q6OFqTAvESOi@pendragon.ideasonboard.com> <87y22ts948.fsf@intel.com>
 <YfqGbqQQz5vrDaLI@pendragon.ideasonboard.com> <87v8xxs2hz.fsf@intel.com>
 <CAF6AEGtdnWWhGp7U7nAPD4r3Uoe5BJKVm2rQ2MS=q5GqF6MYDA@mail.gmail.com>
 <YhyB0WmJDWVFO1se@pendragon.ideasonboard.com> <871qzn6vmc.fsf@intel.com>
 <Yhy/6+z7QshG+qOo@pendragon.ideasonboard.com>
 <YhzROBOwTUkZw3Ez@pendragon.ideasonboard.com>
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
In-Reply-To: <YhzROBOwTUkZw3Ez@pendragon.ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/rcar_du: changes to rcar-du driver
 resulting from drm_writeback_connector structure changes
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
Cc: Carsten Haitzler <carsten.haitzler@arm.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2/28/2022 5:42 AM, Laurent Pinchart wrote:
> Hello,
> 
> On Mon, Feb 28, 2022 at 02:28:27PM +0200, Laurent Pinchart wrote:
>> On Mon, Feb 28, 2022 at 02:09:15PM +0200, Jani Nikula wrote:
>>> On Mon, 28 Feb 2022, Laurent Pinchart wrote:
>>>> On Sat, Feb 26, 2022 at 10:27:59AM -0800, Rob Clark wrote:
>>>>> On Wed, Feb 2, 2022 at 7:41 AM Jani Nikula wrote:
>>>>>> On Wed, 02 Feb 2022, Laurent Pinchart wrote:
>>>>>>> On Wed, Feb 02, 2022 at 03:15:03PM +0200, Jani Nikula wrote:
>>>>>>>> On Wed, 02 Feb 2022, Laurent Pinchart wrote:
>>>>>>>>> On Wed, Feb 02, 2022 at 02:24:28PM +0530, Kandpal Suraj wrote:
>>>>>>>>>> Changing rcar_du driver to accomadate the change of
>>>>>>>>>> drm_writeback_connector.base and drm_writeback_connector.encoder
>>>>>>>>>> to a pointer the reason for which is explained in the
>>>>>>>>>> Patch(drm: add writeback pointers to drm_connector).
>>>>>>>>>>
>>>>>>>>>> Signed-off-by: Kandpal Suraj <suraj.kandpal@intel.com>
>>>>>>>>>> ---
>>>>>>>>>>   drivers/gpu/drm/rcar-du/rcar_du_crtc.h      | 2 ++
>>>>>>>>>>   drivers/gpu/drm/rcar-du/rcar_du_writeback.c | 8 +++++---
>>>>>>>>>>   2 files changed, 7 insertions(+), 3 deletions(-)
>>>>>>>>>>
>>>>>>>>>> diff --git a/drivers/gpu/drm/rcar-du/rcar_du_crtc.h b/drivers/gpu/drm/rcar-du/rcar_du_crtc.h
>>>>>>>>>> index 66e8839db708..68f387a04502 100644
>>>>>>>>>> --- a/drivers/gpu/drm/rcar-du/rcar_du_crtc.h
>>>>>>>>>> +++ b/drivers/gpu/drm/rcar-du/rcar_du_crtc.h
>>>>>>>>>> @@ -72,6 +72,8 @@ struct rcar_du_crtc {
>>>>>>>>>>    const char *const *sources;
>>>>>>>>>>    unsigned int sources_count;
>>>>>>>>>>
>>>>>>>>>> + struct drm_connector connector;
>>>>>>>>>> + struct drm_encoder encoder;
>>>>>>>>>
>>>>>>>>> Those fields are, at best, poorly named. Furthermore, there's no need in
>>>>>>>>> this driver or in other drivers using drm_writeback_connector to create
>>>>>>>>> an encoder or connector manually. Let's not polute all drivers because
>>>>>>>>> i915 doesn't have its abstractions right.
>>>>>>>>
>>>>>>>> i915 uses the quite common model for struct inheritance:
>>>>>>>>
>>>>>>>>       struct intel_connector {
>>>>>>>>               struct drm_connector base;
>>>>>>>>               /* ... */
>>>>>>>>       }
>>>>>>>>
>>>>>>>> Same with at least amd, ast, fsl-dcu, hisilicon, mga200, msm, nouveau,
>>>>>>>> radeon, tilcdc, and vboxvideo.
>>>>>>>>
>>>>>>>> We could argue about the relative merits of that abstraction, but I
>>>>>>>> think the bottom line is that it's popular and the drivers using it are
>>>>>>>> not going to be persuaded to move away from it.
>>>>>>>
>>>>>>> Nobody said inheritance is bad.
>>>>>>>
>>>>>>>> It's no coincidence that the drivers who've implemented writeback so far
>>>>>>>> (komeda, mali, rcar-du, vc4, and vkms) do not use the abstraction,
>>>>>>>> because the drm_writeback_connector midlayer does, forcing the issue.
>>>>>>>
>>>>>>> Are you sure it's not a coincidence ? :-)
>>>>>>>
>>>>>>> The encoder and especially connector created by drm_writeback_connector
>>>>>>> are there only because KMS requires a drm_encoder and a drm_connector to
>>>>>>> be exposed to userspace (and I could argue that using a connector for
>>>>>>> writeback is a hack, but that won't change). The connector is "virtual",
>>>>>>> I still fail to see why i915 or any other driver would need to wrap it
>>>>>>> into something else. The whole point of the drm_writeback_connector
>>>>>>> abstraction is that drivers do not have to manage the writeback
>>>>>>> drm_connector manually, they shouldn't touch it at all.
>>>>>>
>>>>>> The thing is, drm_writeback_connector_init() calling
>>>>>> drm_connector_init() on the drm_connector embedded in
>>>>>> drm_writeback_connector leads to that connector being added to the
>>>>>> drm_device's list of connectors. Ditto for the encoder.
>>>>>>
>>>>>> All the driver code that handles drm_connectors would need to take into
>>>>>> account they might not be embedded in intel_connector. Throughout the
>>>>>> driver. Ditto for the encoders.
>>>>>
>>>>> The assumption that a connector is embedded in intel_connector doesn't
>>>>> really play that well with how bridge and panel connectors work.. so
>>>>> in general this seems like a good thing to unwind.
>>>>>
>>>>> But as a point of practicality, i915 is a large driver covering a lot
>>>>> of generations of hw with a lot of users.  So I can understand
>>>>> changing this design isn't something that can happen quickly or
>>>>> easily.  IMO we should allow i915 to create it's own connector for
>>>>> writeback, and just document clearly that this isn't the approach new
>>>>> drivers should take.  I mean, I understand idealism, but sometimes a
>>>>> dose of pragmatism is needed. :-)
>>>>
>>>> i915 is big, but so is Intel. It's not fair to treat everybody else as a
>>>> second class citizen and let Intel get away without doing its homework.
>>>
>>> Laurent, as you accuse us of not doing our homework, I'll point out that
>>> we've been embedding drm crtc, encoder and connector ever since
>>> modesetting support was added to i915 in 2008, since before *any* of the
>>> things you now use as a rationale for asking us to do a massive rewrite
>>> of the driver existed.
>>>
>>> It's been ok to embed those structures for well over ten years. It's a
>>> common pattern, basically throughout the kernel. Other drivers do it
>>> too, not just i915. There hasn't been the slightest hint this should not
>>> be done until this very conversation.
>>>
>>>> I want to see this refactoring effort moving forward in i915 (and moving
>>>> to drm_bridge would then be a good idea too). If writeback support in
>>>> i915 urgent, then we can discuss *temporary* pragmatic stopgap measures,
>>>> but not without a real effort to fix the core issue.
>>>
>>> I think the onus is on you to first convince everyone that embedding the
>>> drm core kms structures is an antipattern that all drivers, not just
>>> i915, should stop using. In OO terms, you're saying they are classes
>>> that should be final and not extended.
>>>
>>> And even then, to be totally honest, refactoring the structures is not
>>> going to be anywhere near the top of our list of things to do, for a
>>> very long time.
>>
>> I may have not expressed myself correctly. There's nothing wrong as such
>> in embedded those structures in driver-specific structures (a.k.a. C
>> inheritance). That doesn't need to change (albeit for drm_encoder I
>> think we should move away from that pattern, but that's an entirely
>> different issue, and nothing that needs to be addressed soonà.
>>
>> The issue here is assuming that every drm_connector instance can be
>> up-casted to an i915-specific structure.
> 
> Thinking some more about this, I wonder a way forward could be to drop
> the writeback connectors from the connectors list, or at least make them
> invisible to drivers. The connectors list is used extensively for two
> different purposes: tracking all drm_connector instances, and tracking
> all real connectors. The former is mostly needed by the DRM core for
> bookkeeping purposes and to expose all drm_connector instances to
> userspace, while the latter is also used by drivers, in many cases in
> locations that don't expect writeback connectors. Using a drm_connector
> to implement writeback isn't something we can revisit, but we could
> avoid exposing that to drivers by considering "real" connectors and
> writeback connectors two different types of entities in the APIs the DRM
> core exposes to drivers. What do you think, would it help for i915 ?
> 

Hi Jani and Suraj

Since atleast there is agreement on changing the drm_encoder to a 
pointer in the drm_writeback_connector, can we re-arrange the series OR 
split it into encoder first and then connector so that atleast those 
bits can go in first? It will benefit both our (i915 & MSM ) 
implementations.

Hi Laurent

For the connector part, can you please post a RFC for your proposal?
Perhaps myself and Suraj can evaluate our implementations on top of that 
and the encoder change.

Thanks

Abhinav

>>>>>> The point is, you can't initialize a connector or an encoder for a
>>>>>> drm_device in isolation of the rest of the driver, even if it were
>>>>>> supposed to be hidden away.
> 
