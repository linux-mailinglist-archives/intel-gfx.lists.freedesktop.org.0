Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DBA549956
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 18:56:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9BE10F24B;
	Mon, 13 Jun 2022 16:56:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AF9E10F24B
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jun 2022 16:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655139388; x=1686675388;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=98vpAacnFaZ1Ir5uBaY8MdzPmSMNiDtPIBNzLDOArgs=;
 b=e3JAJXvSs6zD95ZC/dAPaVlDpru+XREIAjOQH3h2E/vyl8xvdzEqmCeZ
 gRfRxndpVMjQ3adO4S/bPa3ANs9kaYVYagBWy8yCg37v2nq/Qk564MlMp
 qYOyzpWCgArbUJgeyOtRwgIkEaks886kWPITVNBNyrbzpmwxlh6PCeLJ5
 Eh5fWZ9v2f6Q9292yhWVFM0IhrmGXhmqsVR2mK52f2wqvNK75BOuUZaaA
 4O/3txVMOCQMbDP5a/XpXGX79nGLFaYJvh4JYfhKnEHYt3sNL3ddA/7zo
 jM7PAJ3XvNcjk1FKtlyAeTmsEY9/4/dmADwy6tqgcJhOQRqL1T+78TcBO A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="340018743"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="340018743"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 09:56:27 -0700
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="651522437"
Received: from npower-mobl.ger.corp.intel.com (HELO [10.213.222.108])
 ([10.213.222.108])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 09:56:26 -0700
Message-ID: <f50ee482-ed77-a644-095f-b2a988306de2@linux.intel.com>
Date: Mon, 13 Jun 2022 17:56:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
 <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
 <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
 <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 00/15] HuC loading for DG2
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>
>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>
>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>> On DG2, HuC loading is performed by the GSC, via a PXP command. The 
>>>>> load
>>>>> operation itself is relatively simple (just send a message to the GSC
>>>>> with the physical address of the HuC in LMEM), but there are timing
>>>>> changes that requires special attention. In particular, to send a PXP
>>>>> command we need to first export the GSC driver and then wait for the
>>>>> mei-gsc and mei-pxp modules to start, which means that HuC load will
>>>>> complete after i915 load is complete. This means that there is a small
>>>>> window of time after i915 is registered and before HuC is loaded
>>>>> during which userspace could submit and/or checking the HuC load 
>>>>> status,
>>>>> although this is quite unlikely to happen (HuC is usually loaded 
>>>>> before
>>>>> kernel init/resume completes).
>>>>> We've consulted with the media team in regards to how to handle 
>>>>> this and
>>>>> they've asked us to do the following:
>>>>>
>>>>> 1) Report HuC as loaded in the getparam IOCTL even if load is still in
>>>>> progress. The media driver uses the IOCTL as a way to check if HuC is
>>>>> enabled and then includes a secondary check in the batches to get the
>>>>> actual status, so doing it this way allows userspace to keep working
>>>>> without changes.
>>>>>
>>>>> 2) Stall all userspace VCS submission until HuC is loaded. Stalls are
>>>>> expected to be very rare (if any), due to the fact that HuC is usually
>>>>> loaded before kernel init/resume is completed.
>>>>
>>>> Motivation to add these complications into i915 are not clear to me 
>>>> here. I mean there is no HuC on DG2 _yet_ is the premise of the 
>>>> series, right? So no backwards compatibility concerns. In this case 
>>>> why jump through the hoops and not let userspace handle all of this 
>>>> by just leaving the getparam return the true status?
>>>
>>> The main areas impacted by the fact that we can't guarantee that HuC 
>>> load is complete when i915 starts accepting submissions are boot and 
>>> suspend/resume, with the latter being the main problem; GT reset is 
>>> not a concern because HuC now survives it. A suspend/resume can be 
>>> transparent to userspace and therefore the HuC status can temporarily 
>>> flip from loaded to not without userspace knowledge, especially if we 
>>> start going into deeper suspend states and start causing HuC resets 
>>> when we go into runtime suspend. Note that this is different from 
>>> what happens during GT reset for older platforms, because in that 
>>> scenario we guarantee that HuC reload is complete before we restart 
>>> the submission back-end, so userspace doesn't notice that the HuC 
>>> status change. We had an internal discussion about this problem with 
>>> both media and i915 archs and the conclusion was that the best option 
>>> is for i915 to stall media submission while HuC (re-)load is in 
>>> progress.
>>
>> Resume is potentialy a good reason - I did not pick up on that from 
>> the cover letter. I read the statement about the unlikely and small 
>> window where HuC is not loaded during kernel init/resume and I guess 
>> did not pick up on the resume part.
>>
>> Waiting for GSC to load HuC from i915 resume is not an option?
> 
> GSC is an aux device exported by i915, so AFAIU GSC resume can't start 
> until i915 resume completes.

I'll dig into this in the next few days since I want to understand how 
exactly it works. Or someone can help explain.

If in the end conclusion will be that i915 resume indeed cannot wait for 
GSC, then I think auto-blocking of queued up contexts on media engines 
indeed sounds unavoidable. Otherwise, as you explained, user experience 
post resume wouldn't be good.

However, do we really need to lie in the getparam? How about extend or 
add a new one to separate the loading vs loaded states? Since userspace 
does not support DG2 HuC yet this should be doable.

>> Will there be runtime suspend happening on the GSC device behind 
>> i915's back, or i915 and GSC will always be able to transition the 
>> states in tandem?
> 
> They're always in sync. The GSC is part of the same HW PCI device as the 
> rest of the GPU, so they change HW state together.

Okay thanks, I wasn't sure if it is the same or separate device.

Regards,

Tvrtko
