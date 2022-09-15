Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0E85B9FB5
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 18:35:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15F4D10EB7A;
	Thu, 15 Sep 2022 16:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C42610EB7A
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 16:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663259742; x=1694795742;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=X8QBNXa7dnXLINcuV29dYmtEHWhKqeaNtw6iAoJyouE=;
 b=RQtqGfB5lSouoHBKr3VrFIl4LjSAa0TyNYk1JFfGHQIo3abruBSLHnJf
 8/G2JyAcViXuYOII3EQ3PhMmt6y3RlQpZK/NkQXwPScIxjPpUldE9jAH0
 zU2O0RqvTPSelcpaPNYqbZOvWbyJox2E7cj1Iq0HR0SWfUbCdbm/VRBmB
 APx2ALx3o4mUj2jTw5p9ANDamLihoSKOS+KeP88CvBwNTq6J/IT2PR1zM
 KD4wCtZmbU/StsCIzFMHCap5mzpH0mMj6PtnNi2LgBuA/yi9foiNjF0Yj
 Kk2M1Muf5UZ+CLYADEvqeYTY8M1+Hthh5ZKdKPw+HIyM7g0e+HdZv1wo8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="278493834"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="278493834"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 09:35:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="617344210"
Received: from alishana-mobl1.ger.corp.intel.com (HELO [10.213.218.26])
 ([10.213.218.26])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 09:35:40 -0700
Message-ID: <c915b287-fde9-b6d1-ab51-10867360f9cd@linux.intel.com>
Date: Thu, 15 Sep 2022 17:35:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Daniel J Blueman <daniel@quora.org>
References: <CAMVG2steKr8U9t67rqai=-Qb-aTC2ocJHMiuDHxYBsSusnHckA@mail.gmail.com>
 <YyMyKsy2XdInzarL@intel.com>
 <CAMVG2svdhBp-UU2L=Zofq2qgzapwvYGbXMZxtOTzK0T+2aLMHw@mail.gmail.com>
 <YyM8u75CwAamBUG+@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <YyM8u75CwAamBUG+@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] Intel Arc A370M vs Linux 5.19
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/09/2022 15:54, Rodrigo Vivi wrote:
> On Thu, Sep 15, 2022 at 10:40:59PM +0800, Daniel J Blueman wrote:
>> On Thu, 15 Sept 2022 at 22:09, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>>> On Thu, Sep 15, 2022 at 09:08:08PM +0800, Daniel J Blueman wrote:
>>>> Dear Intel et al,
>>>>
>>>> With a HP Spectre x360 16 16-f1xxx/891D (Intel i7-1260P) with an Arc
>>>> A370M GPU [1] running the latest Ubuntu 22.10 5.19.0-15-generic
>>>> kernel, we see:
>>>>
>>>> i915 0000:03:00.0: Your graphics device 5693 is not properly supported
>>>> by the driver in this kernel version. To force driver probe anyway,
>>>> use i915.force_probe=5693
>>>>
>>>> Since the GPU is unmanaged, battery life is around 30% of what it
>>>> could be. Unsurprisingly, adding i915.force_probe=5693 causes
>>>> additional  issues. Given a lack of BIOS option to disable the GPU, is
>>>> there any advice for Linux support or at least putting the GPU into
>>>> D3? I see only Windows drivers on the official support page [2], and
>>>> Linux 6.0-rc5 isn't buildable [3].
>>>
>>> I believe this is what you are looking for:
>>>
>>> echo auto | sudo tee /sys/bus/pci/devices/0000\:03\:00.0/power/control
>>>
>>> In Linux the default is to keep the unmanaged devices in D0.
>>> But changing the rpm to auto should transition the device to D3.
>>>
>>> You can go further and check with the lspci -vv if there are other
>>> unmanaged devices in the same pci root tree and also add them to the
>>> 'auto' rpm so you can even achieve D3cold in that whole device, what
>>> gives you extra power savings.
>>>
>>> I hope this helps for now.
>>
>> Yes, I was also hoping this would work as we see D3hot is supported:
>>
>> # echo auto > /sys/bus/pci/devices/0000\:03\:00.0/power/control
>> # lspci -vvvs 03:00.0
>> ...
>> Capabilities: [d0] Power Management version 3
>>          Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
>> PME(D0+,D1-,D2-,D3hot+,D3cold-)
>>          Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
>>                  ^^
>>
>> However it stays in D0 with PME disabled as we see. "Kernel modules:
>> i915" may suggest the i915 driver holds a reference to it, preventing
>> the transition.
> 
> Oh, yes. I was thinking more on using the command line I sent when
> the i915 is not probed. i.e. without using the force probe. your first
> scenario.

Could it help to bind DG2 to vfio-pci and so prevent i915 touching it?

Regards,

Tvrtko
