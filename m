Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F40A45FC801
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:13:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DF2010E519;
	Wed, 12 Oct 2022 15:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D4210E519
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665587598; x=1697123598;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=93rVxolX8iC6zOCUhlCpWzHf/yZx1F7iKKKZ1ThFa4g=;
 b=QC6iHtbRguxPupasNENA0BQ5HjqN23vA6lFJNOjdc0XMkpTHZ2Bsfl+V
 mNkplIK0D4Bjhs9QaCqwB6YlHtctW2XJogNdbh3CraLTcWYuQv/+LGPnf
 9Ys+WBtUy7xSxBryVXpEySZ/EqoHvS6J5HW33HF6btVT/VHbOC5kwvsiY
 KuvR9czv3mtV44NQGb1bngemWKSjXhDtbwuen7I9P79t/UwLRtEjhpusm
 I0DL7AWaQD6jOvWG3DLuMGxKq/Yr3UDf9zDBb/kbNe3Hbpa742++XBbQI
 1pN1H7QYzeWeoR2XNa4yW52wkEUwmdH9sksXfLF1SjvOefsTlqS2A0WCG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="292143923"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="292143923"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:13:16 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="626799374"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="626799374"
Received: from dionita-mobl.ger.corp.intel.com (HELO [10.252.24.124])
 ([10.252.24.124])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:13:14 -0700
Message-ID: <08298561-4ffd-2d26-ad32-9f7adc64c81c@intel.com>
Date: Wed, 12 Oct 2022 16:13:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-GB
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20221012083402.1069940-1-anshuman.gupta@intel.com>
 <6fb51e71-bc5c-16d1-ad13-33017035be83@intel.com> <Y0bV5mavoHl6pBqM@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <Y0bV5mavoHl6pBqM@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Temporary hammer to keep
 autosuspend control 'on'
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/10/2022 15:57, Rodrigo Vivi wrote:
> On Wed, Oct 12, 2022 at 10:48:30AM +0100, Matthew Auld wrote:
>> On 12/10/2022 09:34, Anshuman Gupta wrote:
>>> DGFX platforms has lmem and cpu can access the lmem objects
>>> via mmap and i915 internal i915_gem_object_pin_map() for
>>> i915 own usages. Both of these methods has pre-requisite
>>> requirement to keep GFX PCI endpoint in D0 for a supported
>>> iomem transaction over PCI link. (Refer PCIe specs 5.3.1.4.1)
>>>
>>> Both DG1/DG2 have a hardware bug that violates the PCIe specs
>>> and support the iomem read write transaction over PCIe bus despite
>>> endpoint is D3 state.
>>> Due to above H/W bug, we had never observed any issue with i915 runtime
>>> PM versus lmem access.
>>> But this issue becomes visible when PCIe gfx endpoint's upstream
>>> bridge enters to D3, at this point any lmem read/write access will be
>>> returned as unsupported request. But again this issue is not observed
>>> on every platform because it has been observed on few host machines
>>> DG1/DG2 endpoint's upstream bridge does not bind with pcieport driver.
>>> which really disables the PCIe  power savings and leaves the bridge
>>> at D0 state.
>>>
>>> Till we fix all issues related to runtime PM, we need
>>> to keep autosupend control to 'on' on all discrete platforms with lmem.
>>>
>>> Fixes: 527bab0473f2 ("drm/i915/rpm: Enable runtime pm autosuspend by default")
>>
>> So with this change all the runtime pm stuff is disabled on dgfx? i.e
>> intel_runtime_pm_get() always returns zero or so? Wondering if we should
>> also revert ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend") for
>> now, since that still needs some more fixes...
> 
> I don't believe we need to revert that. That's already one step forward towards
> the final solution. It is not complete but it is not wrong.
> And it is orthogonal to this protection right now.

That commit has some known bugs though, see 
https://patchwork.freedesktop.org/patch/504444/?series=108972&rev=1. But 
that patch appears stuck for a while now, so my question was if we 
should just revert for now, or does this patch now effectively make 
those known bugs a non-issue...

> 
>>
>>> Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/intel_runtime_pm.c | 11 +++++++++--
>>>    1 file changed, 9 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
>>> index 6ed5786bcd29..410a5cb58a61 100644
>>> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
>>> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
>>> @@ -591,8 +591,15 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
>>>    		pm_runtime_use_autosuspend(kdev);
>>>    	}
>>> -	/* Enable by default */
>>> -	pm_runtime_allow(kdev);
>>> +	/*
>>> +	 *  FIXME: Temp hammer to keep autosupend disable on lmem supported platforms.
>>> +	 *  As per PCIe specs 5.3.1.4.1, all iomem read write request over a PCIe
>>> +	 *  function will be unsupported in case PCIe endpoint function is in D3.
>>> +	 *  Let's keep i915 autosuspend control 'on' till we fix all known issue
>>> +	 *  with lmem access in D3.
>>> +	 */
>>> +	if (!HAS_LMEM(i915))
>>> +		pm_runtime_allow(kdev);
>>>    	/*
>>>    	 * The core calls the driver load handler with an RPM reference held.
