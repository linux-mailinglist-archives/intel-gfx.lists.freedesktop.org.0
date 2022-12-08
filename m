Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 755606472DB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 16:26:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 283AD10E0D2;
	Thu,  8 Dec 2022 15:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A58810E0D2
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 15:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670513202; x=1702049202;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=OI09KqidsYJszmNtxnlLtStiVFq5FlVnhb+qSjwVOvo=;
 b=f429iQEgzRtYhaJ7rcHd9LHRkKs+yaT9cMKs1N4Qab/mUEyl9RCifK7i
 SRGmaMACa36UubF8KQhrJsjwTTBI1ROzSRCtySMOu+MIiKgJFHHWg+taT
 fLEN8pL4btfwp66n7QOtmrk+F88ELpRKZUp5j3QzeJGpfv2gvLcsr+Cbn
 ssqm05u8ShF3TepJ29/FJMlL1dXSEk/LODr0F675OJuiP5aUW2E6OUSYq
 wy2AFymyPMAsKIs4fHltLuvg/WZE2YzePp2MDP1sVa62Kuo3sa62tC9Is
 F5AhGnA+qA7wkub+YcUmOwioh8LkT3A8B8gjH5TJCszzV3BpZKMI+1iNp A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="379375409"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="379375409"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 07:02:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="821364967"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="821364967"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.160])
 ([10.213.6.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 07:02:25 -0800
Message-ID: <97edb3e7-09a6-9a3e-24ad-9ead28e88a8f@intel.com>
Date: Thu, 8 Dec 2022 16:02:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20221208111217.3734461-1-andrzej.hajda@intel.com>
 <877cz213fa.fsf@intel.com>
 <a53c2ec0607493d46fe0fc9f1884cd5d32103058.camel@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <a53c2ec0607493d46fe0fc9f1884cd5d32103058.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: use fetch_and_zero if
 applicable
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

On 08.12.2022 14:36, Vivi, Rodrigo wrote:
> On Thu, 2022-12-08 at 14:32 +0200, Jani Nikula wrote:
>> On Thu, 08 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>>> Simplify the code.
>>
>> Personally, I absolutely hate fetch_and_zero().
>>
>> I understand the point, but there are two main traps:
>>
>> First, the name implies atomicity, which there is none at all.
>>
>> Second, the name implies it's part of a kernel core header, which it
>> isn't, and this just amplifies the first point.
>>
>> It's surprising and misleading, and those are not things I like about
>> interfaces in the kernel.
>>
>> I would not like to see this proliferate. If fetch_and_zero() was
>> atomic
>> *and* part of a core kernel header, it would be a different matter.
>> But
>> I don't think that's going to happen, exactly because it won't be
>> atomic
>> and the name implies it is.
> 
> +1 here.
> 
> Please let's go the other way around and try to kill macros like this.
> 
> we either kill or we ensure this gets accepted in the core kernel
> libraries.
> 

There is about 80 uses of the macro in i915. So I guessed this is 
accepted solution in i915 :) Moreover it looked to me as a nice
shortcut.

If not, I can replace it with xchg(ptr, 0), besides tiny overkill, 
assuming atomicity is not required here, it should work.

I can also expand it :) - quite big patch, but cocci should do the work.

Anyway I think it would be good to take some decision here, to avoid 
further confusions.

Regards
Andrzej


>>
>>
>> BR,
>> Jani.
>>
>>
>>>
>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_hotplug.c | 12 ++++--------
>>>   1 file changed, 4 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c
>>> b/drivers/gpu/drm/i915/display/intel_hotplug.c
>>> index 907ab7526cb478..2972d7533da44e 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>>> @@ -304,10 +304,8 @@ static void i915_digport_work_func(struct
>>> work_struct *work)
>>>          u32 old_bits = 0;
>>>   
>>>          spin_lock_irq(&dev_priv->irq_lock);
>>> -       long_port_mask = dev_priv->display.hotplug.long_port_mask;
>>> -       dev_priv->display.hotplug.long_port_mask = 0;
>>> -       short_port_mask = dev_priv-
>>>> display.hotplug.short_port_mask;
>>> -       dev_priv->display.hotplug.short_port_mask = 0;
>>> +       long_port_mask = fetch_and_zero(&dev_priv-
>>>> display.hotplug.long_port_mask);
>>> +       short_port_mask = fetch_and_zero(&dev_priv-
>>>> display.hotplug.short_port_mask);
>>>          spin_unlock_irq(&dev_priv->irq_lock);
>>>   
>>>          for_each_intel_encoder(&dev_priv->drm, encoder) {
>>> @@ -379,10 +377,8 @@ static void i915_hotplug_work_func(struct
>>> work_struct *work)
>>>   
>>>          spin_lock_irq(&dev_priv->irq_lock);
>>>   
>>> -       hpd_event_bits = dev_priv->display.hotplug.event_bits;
>>> -       dev_priv->display.hotplug.event_bits = 0;
>>> -       hpd_retry_bits = dev_priv->display.hotplug.retry_bits;
>>> -       dev_priv->display.hotplug.retry_bits = 0;
>>> +       hpd_event_bits = fetch_and_zero(&dev_priv-
>>>> display.hotplug.event_bits);
>>> +       hpd_retry_bits = fetch_and_zero(&dev_priv-
>>>> display.hotplug.retry_bits);
>>>   
>>>          /* Enable polling for connectors which had HPD IRQ storms
>>> */
>>>          intel_hpd_irq_storm_switch_to_polling(dev_priv);
>>
> 

