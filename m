Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F4065503D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 13:18:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2734010E634;
	Fri, 23 Dec 2022 12:18:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B1D10E634
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 12:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671797897; x=1703333897;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KmXo4AXCeJKBTGcrdkKie6uM2Xn8mujdz1X+RV3yfy8=;
 b=DUUoWYAwkulwQAPNDUFAH3zkUoknkfSCAGEI5LtRcyxv82NHKgRMh4Vx
 ACW2mtDRCiiFko3AzcFi2HZg3vRELP3JSYbNpMQrmyA0vH0qv6UICadTt
 CkAMMYFzeCw6A+2ZWou3uodauo+TVqt5fYCn86enI8UG5XHsO/jG21eps
 MrW2G+SBfQaF5I37rP3M35fkFm8I3fl8BgKJ2Q8ssjAujR/D25d8ket6F
 MG3bhQdJp9pkTg9eWkdbW9d6jkxTj7KaGw4dfjBGefaoxmmOZT1TzO2ZG
 kFs+eioumHxUIF+Ir6MEiDldPsgs4RoAqHosysn8nF3wHG+ZNcFLeE3sa w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="317969028"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="317969028"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 04:18:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="684522243"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="684522243"
Received: from mirabhat-mobl1.amr.corp.intel.com (HELO [10.213.188.137])
 ([10.213.188.137])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 04:18:14 -0800
Message-ID: <0095266f-1422-8be6-f4ac-5e561da1165a@linux.intel.com>
Date: Fri, 23 Dec 2022 12:18:12 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Mirsad Goran Todorovac <mirsad.todorovac@alu.unizg.hr>,
 srinivas pandruvada <srinivas.pandruvada@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <f849cc70-b21f-6476-ba26-08989d1243c2@alu.unizg.hr>
 <05424a5351a847786377a548dba0759917d8046c.camel@linux.intel.com>
 <15ef1bb9-7312-5d98-8bf0-0af1a37cfd2a@linux.intel.com>
 <619bdecc-cf87-60a4-f50d-836f4c073ea7@alu.unizg.hr>
 <8e080674-36ab-9260-046e-f4e3c931a3b9@alu.unizg.hr>
 <96661293-32d7-0bb4-fb0e-28086eaaecc3@linux.intel.com>
 <d8d62c8a-32e0-9975-5ed5-b832bb8df549@alu.unizg.hr>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <d8d62c8a-32e0-9975-5ed5-b832bb8df549@alu.unizg.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] LOOKS GOOD: Possible regression in drm/i915 driver:
 memleak
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
Cc: intel-gfx@lists.freedesktop.org,
 Thorsten Leemhuis <regressions@leemhuis.info>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/12/2022 15:21, Mirsad Goran Todorovac wrote:
> On 12/22/2022 09:04, Tvrtko Ursulin wrote:
>> On 22/12/2022 00:12, Mirsad Goran Todorovac wrote:
>>> On 20. 12. 2022. 20:34, Mirsad Todorovac wrote:
>>>
>>> As I hear no reply from Tvrtko, and there is already 1d5h uptime with 
>>> no leaks (but
>>> the kworker with memstick_check nag I couldn't bisect on the only box 
>>> that reproduced it,
>>> because something in hw was not supported in pre 4.16 kernels on the 
>>> Lenovo V530S-07ICB.
>>> Or I am doing something wrong.)
>>>
>>> However, now I can find the memstick maintainers thanks to Tvrtko's 
>>> hint.
>>>
>>> If you no longer require my service, I would close this on my behalf.
>>>
>>> I hope I did not cause too much trouble. The knowledgeable knew that 
>>> this was not a security
>>> risk, but only a bug. (30 leaks of 64 bytes each were hardly to 
>>> exhaust memory in any realistic
>>> time.)
>>>
>>> However, having some experience with software development, I always 
>>> preferred bugs reported
>>> and fixed rather than concealed and lying in wait (or worse, found 
>>> first by a motivated
>>> adversary.) Forgive me this rant, I do not live from writing kernel 
>>> drivers, this is just a
>>> pet project as of time being ...
> Hi,
>> It is not forgotten - I was trying to reach out to the original author 
>> of the fixlet which worked for you. If that fails I will take it up on 
>> myself, but need to set aside some time to get into the exact problem 
>> space before I can vouch for the fix and send it on my own.
> That's good news. Possibly with some assistance I could bisect on pre 
> 4.16 kernels with the additional drivers.

Sorry, maybe I am confused, but from where does 4.16 come?

>> In the meantime definitely thanks a lot for testing this quickly and 
>> reporting back!
> Not at all, I considered it a privilege to assist your team.
>> What will happen next is, that when either the original author or 
>> myself are ready to send out the fix as a proper patch, you will be 
>> copied on it via the "Reported-by" and possibly "Tested-by" tags. 
>> Latter is if the patch remains identical. If it changes we might 
>> kindly ask you to re-test if possible.
> 
> I've seen the published patch and it seems like the same two lines 
> change (-1/+1).
> In case of a change, I will attempt to test with the same config, setup 
> and running programs.

Yes it is the same diff so no need to re-test really.

> I may need to correct myself in regard as to security aspect of this 
> patch as addressed in 786555987207.
> 
> QUOTE:
> 
>      Currently we create a new mmap_offset for every call to
>      mmap_offset_ioctl. This exposes ourselves to an abusive client that 
> may
>      simply create new mmap_offsets ad infinitum, which will exhaust 
> physical
>      memory and the virtual address space. In addition to the exhaustion, a
>      very long linear list of mmap_offsets causes other clients using the
>      object to incur long list walks -- these long lists can also be
>      generated by simply having many clients generate their own 
> mmap_offset.
> 
> It is unobvious whether the bug that caused chrome to trigger 30 
> memleaks could be exploited by an
> abusive script to exhaust larger parts of kernel memory and possibly 
> crash the kernel?

Indeed. Attackers imagination can be pretty impressive so I'd rather 
assume it is exploitable than that it isn't. Luckily it is "just" a 
memory leak rather and information leak or worse. Hopefully we can merge 
the fix soon, as soon as a willing reviewer is found.

Regards,

Tvrtko
