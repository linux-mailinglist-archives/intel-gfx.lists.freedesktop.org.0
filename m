Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD064D2C76
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 10:49:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01BF410E2FD;
	Wed,  9 Mar 2022 09:48:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D5910E328
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 09:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646819336; x=1678355336;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=cFfI6vG30MN8c6f0ChAcUW0bKNeCWZvgFlXcJRGc81k=;
 b=npO5+0CXCivrc22ylPhhSCZ0vUmHh3IFG7JxDkVRpv0R12xmp9xHIw2c
 vUVsmQpB/16pV2IALZT8XJBH7/uURCTgjBxWt8u8Bop1MB7LVj4llP1Ss
 gSO6R33TpRmqP1Ou/vva3y8EPZk1kCOsh1oXtW6PaBc7lAK/UMyDSESx8
 z2BxeL6FNbRLutubs6KH7Ut9tIV1F0FGTWD0e8irWDPFHILEY5NXVYic7
 rsNUpoRirsmDLJtZFTej/qq6avqgO2gpKaCbRHMQBIsIF8bufN4/k+NWu
 LDwqe/fbq8/sKe1XE7PWQ4hecRYeS2bK6CTMYBY5URITeurX6ZoLmwiIm A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="341364356"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="341364356"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:48:53 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="642092100"
Received: from hedwards-mobl1.ger.corp.intel.com (HELO [10.213.198.86])
 ([10.213.198.86])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:48:52 -0800
Message-ID: <f0c12164-b266-2513-b8e6-323186338181@linux.intel.com>
Date: Wed, 9 Mar 2022 09:48:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Takashi Iwai <tiwai@suse.de>
References: <20220308172759.920551-1-kai.vehmanen@linux.intel.com>
 <f9f6f831-a05d-2d20-8ade-ab717f342ba5@linux.intel.com>
 <alpine.DEB.2.22.394.2203091035350.3088432@eliteleevi.tm.intel.com>
 <9dabb68b-f2af-ae97-0fb2-869367c496bf@linux.intel.com>
 <s5h5yonjx7i.wl-tiwai@suse.de>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <s5h5yonjx7i.wl-tiwai@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] ALSA: hda/i915 - avoid hung task timeout
 in i915 wait
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
Cc: alsa-devel@alsa-project.org, Paul Menzel <pmenzel+alsa-devel@molgen.mpg.de>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 amadeuszx.slawinski@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/03/2022 09:23, Takashi Iwai wrote:
> On Wed, 09 Mar 2022 10:02:13 +0100,
> Tvrtko Ursulin wrote:
>>
>>
>> On 09/03/2022 08:39, Kai Vehmanen wrote:
>>> Hi,
>>>
>>> On Wed, 9 Mar 2022, Tvrtko Ursulin wrote:
>>>
>>>>> -			/* 60s timeout */
>>>>
>>>> Where does this 60s come from and why is the fix to work around
>>>> DEFAULT_HUNG_TASK_TIMEOUT in a hacky way deemed okay? For instance would
>>>> limiting the wait here to whatever the kconfig is set to be an option?
>>>
>>> this was discussed in
>>> https://lists.freedesktop.org/archives/intel-gfx/2022-February/290821.html
>>> ... and that thread concluded it's cleaner to split the wait than try
>>> to figure out hung-task configuration from middle of audio driver.
>>>
>>> The 60sec timeout comes from 2019 patch "ALSA: hda: Extend i915 component
>>> bind timeout" to fix an issue reported by Paul Menzel (cc'ed).
>>>
>>> This patch keeps the timeout intact.
>>
>> I did not spot discussion touching on the point I raised.
>>
>> How about not fight the hung task detector but mark your wait context
>> as "I really know what I'm doing - not stuck trust me".
> 
> The question is how often this problem hits.  Basically it's a very
> corner case, and I even think we may leave as is; that's a matter of
> configuration, and lowering such a bar should expect some
> side-effect. OTOH, if the problem happens in many cases, it's
> beneficial to fix in the core part, indeed.

Yes argument you raise can be made I agree.

>> Maybe using
>> wait_for_completion_killable_timeout would do it since
>> snd_hdac_i915_init is allowed to fail with an error already?
> 
> It makes it killable -- which is a complete behavior change.

Complete behaviour change how? Isn't this something ran on probe so 
likelihood of anyone sending SIGKILL to the modprobe process is only the 
init process? And in that case what is the fundamental difference in 
init giving up before the internal 60s in HDA driver does? I don't see a 
difference. Either party decided to abort the wait and code can just 
unwind and propagate the different error codes.

Regards,

Tvrtko
