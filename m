Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5726B1D09
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 08:54:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7396F10E7A5;
	Thu,  9 Mar 2023 07:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C9410E7A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 07:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678348495; x=1709884495;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=7wselACG4fIE9JsGtdtFe8rIi1PyCkV9HFZEiDtaxQI=;
 b=YF6IFXh6UijLv1htvaDY1dGHPhNUJ+fTGkBd4nMbDk0OfphX59KNr7ga
 xXgodejTkJMycli8OZ8QXiQ0HdZMoxfeTQlYIwY2OZNpfHe+hCNhqqavM
 rsnNnRnq622YTGpH2kVp4qpN5Uk/lmq9aKa22aWfjmMQa46qzZVAg25sO
 z5m+YJK056Zthx9IZoSUNu37+GJxjwyy2z9U1RdK9o8ZkILQTYVnjHO4L
 7kOLJw7DHlgLg1NjlP8H5tSobhowBWPKF7SEQcunFMpaggbTIdBI76fsm
 +vdS04TGGTINmaVxcHwdp9bDFAC3njtjJH8RAzW8VxIMjnUDx9IhJlRTv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="324701729"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="324701729"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 23:54:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="1006635942"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="1006635942"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.18.176])
 ([10.213.18.176])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 23:54:53 -0800
Message-ID: <baa52f92-3a17-ce60-9ed1-39e12b396f13@intel.com>
Date: Thu, 9 Mar 2023 08:54:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <ZAiKuulQBp0569s/@intel.com>
 <20230308133624.2131582-1-andrzej.hajda@intel.com>
 <c743ac87-27d8-c986-ae2a-874b8381afe5@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <c743ac87-27d8-c986-ae2a-874b8381afe5@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: prevent forcewake releases
 during BAR resize
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, chris.p.wilson@linux.intel.com,
 Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 08.03.2023 18:29, Das, Nirmoy wrote:
> 
> On 3/8/2023 2:36 PM, Andrzej Hajda wrote:
>> Tests on DG2 machines show that releasing forcewakes during BAR resize
>> results later in forcewake ack timeouts.
> Do we have a fdo/issues url for that? Having that as References would be 
> nice.

The patch is result of issue reported internally, but...grepping 
bugtracker I've found potential candidates:

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6530
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7853

Maybe it would be good to add them on merge.
Anyway thx for a-b.

Regards
Andrzej

>>   Since forcewakes can be realeased
>> asynchronously the simplest way to prevent it is to get all forcewakes
>> for duration of BAR resizing.
>>
>> v2: hold rpm as well during resizing (Rodrigo)
>>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> 
> 
> Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> 
> 
>> ---
>> Please ignore resend of v1, my mistake.
>>
>> Regards
>> Andrzej
>> ---
>>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 25 +++++++++++++++------
>>   1 file changed, 18 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c 
>> b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> index 89fdfc67f8d1e0..2a3217e2890fc7 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
>> @@ -54,6 +54,7 @@ static void i915_resize_lmem_bar(struct 
>> drm_i915_private *i915, resource_size_t
>>       struct resource *root_res;
>>       resource_size_t rebar_size;
>>       resource_size_t current_size;
>> +    intel_wakeref_t wakeref;
>>       u32 pci_cmd;
>>       int i;
>> @@ -102,15 +103,25 @@ static void i915_resize_lmem_bar(struct 
>> drm_i915_private *i915, resource_size_t
>>           return;
>>       }
>> -    /* First disable PCI memory decoding references */
>> -    pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
>> -    pci_write_config_dword(pdev, PCI_COMMAND,
>> -                   pci_cmd & ~PCI_COMMAND_MEMORY);
>> +    /*
>> +     * Releasing forcewake during BAR resizing results in later 
>> forcewake
>> +     * ack timeouts and former can happen any time - it is asynchronous.
>> +     * Grabbing all forcewakes prevents it.
>> +     */
>> +    with_intel_runtime_pm(i915->uncore.rpm, wakeref) {
>> +        intel_uncore_forcewake_get(&i915->uncore, FORCEWAKE_ALL);
>> -    _resize_bar(i915, GEN12_LMEM_BAR, rebar_size);
>> +        /* First disable PCI memory decoding references */
>> +        pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
>> +        pci_write_config_dword(pdev, PCI_COMMAND,
>> +                       pci_cmd & ~PCI_COMMAND_MEMORY);
>> -    pci_assign_unassigned_bus_resources(pdev->bus);
>> -    pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
>> +        _resize_bar(i915, GEN12_LMEM_BAR, rebar_size);
>> +
>> +        pci_assign_unassigned_bus_resources(pdev->bus);
>> +        pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
>> +        intel_uncore_forcewake_put(&i915->uncore, FORCEWAKE_ALL);
>> +    }
>>   }
>>   #else
>>   static void i915_resize_lmem_bar(struct drm_i915_private *i915, 
>> resource_size_t lmem_size) {}

