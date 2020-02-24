Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA88916A622
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 13:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AA4F6E455;
	Mon, 24 Feb 2020 12:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B3886E455
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 12:30:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 04:30:06 -0800
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="230635399"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 04:30:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>,
 Masahiro Yamada <masahiroy@kernel.org>
In-Reply-To: <0f6712cd-87e5-5480-f01c-bfadd98368b5@infradead.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200221105414.14358-1-jani.nikula@intel.com>
 <CAK7LNATbVytK_3GscB8RUTR4zWFN48Faz6T+_O4OAJFpXR3TvQ@mail.gmail.com>
 <CAK7LNASJmps=DvnfvhXJBCG533PYMYX_Hv3CS-fK4o47S1wq+g@mail.gmail.com>
 <373b4c07-2355-6e78-e9f4-e1bf50322287@infradead.org>
 <CAK7LNAR838UVsXUxWFZFPTNbqqCw1V2+G0B6=k3GOghajMp35A@mail.gmail.com>
 <0f6712cd-87e5-5480-f01c-bfadd98368b5@infradead.org>
Date: Mon, 24 Feb 2020 14:29:59 +0200
Message-ID: <87eeuktbg8.fsf@intel.com>
MIME-Version: 1.0
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 21 Feb 2020, Randy Dunlap <rdunlap@infradead.org> wrote:
> On 2/21/20 9:49 PM, Masahiro Yamada wrote:
>> On Sat, Feb 22, 2020 at 2:25 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>>>
>>> On 2/21/20 8:53 PM, Masahiro Yamada wrote:
>>>> On Sat, Feb 22, 2020 at 1:43 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>>>>>
>>>>> Hi Jani,
>>>>>
>>>>> On Fri, Feb 21, 2020 at 7:54 PM Jani Nikula <jani.nikula@intel.com> wrote:
>>>>>>
>>>>>> $(CC) with $(CFLAGS_GCOV) assumes the output filename with .gcno suffix
>>>>>> appended is writable. This is not the case when the output filename is
>>>>>> /dev/null:
>>>>>>
>>>>>>   HDRTEST drivers/gpu/drm/i915/display/intel_frontbuffer.h
>>>>>> /dev/null:1:0: error: cannot open /dev/null.gcno
>>>>>>   HDRTEST drivers/gpu/drm/i915/display/intel_ddi.h
>>>>>> /dev/null:1:0: error: cannot open /dev/null.gcno
>>>>>> make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
>>>>>> drivers/gpu/drm/i915/display/intel_ddi.hdrtest] Error 1
>>>>>> make[5]: *** Waiting for unfinished jobs....
>>>>>> make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
>>>>>> drivers/gpu/drm/i915/display/intel_frontbuffer.hdrtest] Error 1
>>>>>>
>>>>>> Filter out $(CFLAGS_GVOC) from the header test $(c_flags) as they don't
>>>>>> make sense here anyway.
>>>>>
>>>>>
>>>>>
>>>>> Is GCOV the only case that produces a separate file?
>>>>>
>>>>> Could you also test CONFIG_DEBUG_INFO_SPLIT, please ?
>>>>>
>>>>>
>>>>> The GCC manual says this:
>>>>>
>>>>> -gsplit-dwarf
>>>>>
>>>>>    Separate as much DWARF debugging information as possible into a
>>>>> separate output
>>>>>    file with the extension .dwo. This option allows the build system
>>>>> to avoid linking
>>>>>    files with debug information. To be useful, this option requires a debugger
>>>>>    capable of reading .dwo files.
>>>>>
>>>>
>>>>
>>>> I just tested it.
>>>>
>>>> This is not a problem for header test
>>>> because cmd_hdrtest uses '-S' instead of '-c'.
>>>>
>>>> If '-c' were used, we would see a similar error.
>>>>
>>>>
>>>> So, gsplit-dwarf is OK.
>>>
>>> Yes, works for me also.
>>>
>>> (I think you have a faster build machine that I do. I began the build
>>> almost immediately after reading your email. :)
>> 
>> 
>> I use a reasonable PC for my development.
>> (core-i9 with 4 physical cores)
>> 
>> 
>> I just compiled under i915/ with this command:
>> 
>> make drivers/gpu/drm/i915/
>
> Good trick.  I did a full build.

Thanks for the testing.

I also checked with some other options, did not see any failures. I'll
go with this for now, let's revisit as needed.

Another related thing is we try to hide this a bit from build testing
outside of our CI with "depends on !COMPILE_TEST" but I guess there's no
way to ensure something is not enabled on a randconfig build...

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
