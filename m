Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC42168CC3
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 06:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9BB46F5D2;
	Sat, 22 Feb 2020 05:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 187646F5D2
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 05:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=LDHL/AThXHk2XLcnmSPIgiF2udLEQTCOWZuGG6ZcOkI=; b=OGtEv7KBuCBn0o+Dr36YUFH0lR
 7I5zTGi/SM0mQJszYd1VKmDQh6oOsf7lheC3M5ujceKgebMdG1FcvL37z4FmHsHOw0oG+eG1mRYfu
 lZrc2sj8mhShaNZ52D6tz2A1UL0Zui9NRoxFCViAK/8dYL86ScaPM9NIRV/Pb2R6Wsnb6Xla1ZjEZ
 xn0ZQS0WNpTN3ZkGONJs6QJ+IS36nSkK+niwAoGtO2Km7Nq7HhWk/ocUJWzll/hUXibgcXKcH078E
 YFRnh9Ee8/RDHTk3Vm1n6t/u+qmrYmsRM6rr9RwABGLHryKFpKWQIJuSJWz+F0w7XMCoXty1V6ZHD
 cmdDRLOg==;
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Nix-0006td-2Z; Sat, 22 Feb 2020 05:53:11 +0000
To: Masahiro Yamada <masahiroy@kernel.org>
References: <20200221105414.14358-1-jani.nikula@intel.com>
 <CAK7LNATbVytK_3GscB8RUTR4zWFN48Faz6T+_O4OAJFpXR3TvQ@mail.gmail.com>
 <CAK7LNASJmps=DvnfvhXJBCG533PYMYX_Hv3CS-fK4o47S1wq+g@mail.gmail.com>
 <373b4c07-2355-6e78-e9f4-e1bf50322287@infradead.org>
 <CAK7LNAR838UVsXUxWFZFPTNbqqCw1V2+G0B6=k3GOghajMp35A@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <0f6712cd-87e5-5480-f01c-bfadd98368b5@infradead.org>
Date: Fri, 21 Feb 2020 21:53:10 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAK7LNAR838UVsXUxWFZFPTNbqqCw1V2+G0B6=k3GOghajMp35A@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix header test with GCOV
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/21/20 9:49 PM, Masahiro Yamada wrote:
> On Sat, Feb 22, 2020 at 2:25 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>>
>> On 2/21/20 8:53 PM, Masahiro Yamada wrote:
>>> On Sat, Feb 22, 2020 at 1:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>>>>
>>>> Hi Jani,
>>>>
>>>> On Fri, Feb 21, 2020 at 7:54 PM Jani Nikula <jani.nikula@intel.com> wrote:
>>>>>
>>>>> $(CC) with $(CFLAGS_GCOV) assumes the output filename with .gcno suffix
>>>>> appended is writable. This is not the case when the output filename is
>>>>> /dev/null:
>>>>>
>>>>>   HDRTEST drivers/gpu/drm/i915/display/intel_frontbuffer.h
>>>>> /dev/null:1:0: error: cannot open /dev/null.gcno
>>>>>   HDRTEST drivers/gpu/drm/i915/display/intel_ddi.h
>>>>> /dev/null:1:0: error: cannot open /dev/null.gcno
>>>>> make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
>>>>> drivers/gpu/drm/i915/display/intel_ddi.hdrtest] Error 1
>>>>> make[5]: *** Waiting for unfinished jobs....
>>>>> make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
>>>>> drivers/gpu/drm/i915/display/intel_frontbuffer.hdrtest] Error 1
>>>>>
>>>>> Filter out $(CFLAGS_GVOC) from the header test $(c_flags) as they don't
>>>>> make sense here anyway.
>>>>
>>>>
>>>>
>>>> Is GCOV the only case that produces a separate file?
>>>>
>>>> Could you also test CONFIG_DEBUG_INFO_SPLIT, please ?
>>>>
>>>>
>>>> The GCC manual says this:
>>>>
>>>> -gsplit-dwarf
>>>>
>>>>    Separate as much DWARF debugging information as possible into a
>>>> separate output
>>>>    file with the extension .dwo. This option allows the build system
>>>> to avoid linking
>>>>    files with debug information. To be useful, this option requires a debugger
>>>>    capable of reading .dwo files.
>>>>
>>>
>>>
>>> I just tested it.
>>>
>>> This is not a problem for header test
>>> because cmd_hdrtest uses '-S' instead of '-c'.
>>>
>>> If '-c' were used, we would see a similar error.
>>>
>>>
>>> So, gsplit-dwarf is OK.
>>
>> Yes, works for me also.
>>
>> (I think you have a faster build machine that I do. I began the build
>> almost immediately after reading your email. :)
> 
> 
> I use a reasonable PC for my development.
> (core-i9 with 4 physical cores)
> 
> 
> I just compiled under i915/ with this command:
> 
> make drivers/gpu/drm/i915/

Good trick.  I did a full build.


-- 
~Randy

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
